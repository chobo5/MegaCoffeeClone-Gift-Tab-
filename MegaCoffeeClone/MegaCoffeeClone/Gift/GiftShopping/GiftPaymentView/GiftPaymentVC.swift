//
//  GiftPaymentVC.swift
//  MegaCoffeeClone
//
//  Created by 원준연 on 2022/11/26.
//

import UIKit
import ContactsUI

class GiftPaymentVC: UIViewController{
    

    @IBOutlet weak var paymentTableView: UITableView!
    
    struct Contact {
        let name: String
        let phoneNumber: String
    }
    
    var contactArray = [Contact]()
    
    var giftSelf = false
    
    let coreDataManager = CoreDataManager.shared
    
    var isTextOpened = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        paymentTableView.register(UINib(nibName: "GiftContactTableViewCell", bundle: nil), forCellReuseIdentifier: "contactCell")
        
        paymentTableView.register(UINib(nibName: "GiftShoppingBasketTableViewCell", bundle: nil), forCellReuseIdentifier: "tableShoppingCell")
        
    
    }
    
    //연락처뷰를 띄어준다
    func presentContactPicker() {
        let contactPickerVC = CNContactPickerViewController()
        contactPickerVC.delegate = self
        contactPickerVC.displayedPropertyKeys = [CNContactGivenNameKey,
                                                 CNContactFamilyNameKey,
                                                 CNContactPhoneNumbersKey]
        present(contactPickerVC, animated: true)
    }
    
    
}

extension GiftPaymentVC: CNContactPickerDelegate{
    
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        // You can fetch selected name and number in the following way
        
        // user name
        let userGivenName:String = contact.givenName
        let userFamilyName: String = contact.familyName
        
        // user phone number
        let userPhoneNumbers:[CNLabeledValue<CNPhoneNumber>] = contact.phoneNumbers
        let firstPhoneNumber:CNPhoneNumber = userPhoneNumbers[0].value
        
        
        // user phone number string
        let primaryPhoneNumberStr:String = firstPhoneNumber.stringValue
        
        let newContact = Contact(name: primaryPhoneNumberStr, phoneNumber: "\(userGivenName)\(userFamilyName)")
        
        contactArray.append(newContact)
        paymentTableView.reloadData()
        
        
    }
}

extension GiftPaymentVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }

    //MARK: - paymentTableView HeaderView 설정
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            //메시지 입력 섹션
            let headerView = UIView()
            let enterMessageLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 90, height: 35))
            headerView.addSubview(enterMessageLabel)
            enterMessageLabel.text = "메시지 입력"
            enterMessageLabel.font = UIFont.systemFont(ofSize: 17, weight: .bold)
            
            return headerView
            
        } else if section == 1 {
            //보내는 사람 섹션
            let headerView = UIView()
            let senderLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 90, height: 35))
            headerView.addSubview(senderLabel)
            senderLabel.text = "보내는 사람"
            senderLabel.font = UIFont.systemFont(ofSize: 17, weight: .bold)
            
            return headerView
            
        } else if section == 2 {
            //전송 수단 섹션
            let headerView = UIView()
            let sendMethodLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 90, height: 35))
            headerView.addSubview(sendMethodLabel)
            sendMethodLabel.text = "전송 수단"
            sendMethodLabel.font = UIFont.systemFont(ofSize: 17, weight: .bold)
            
            return headerView
            
        } else if section == 3 {
            //받는 사람 섹션
            let headerView = UIView()
            let recieverLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 90, height: 35))
            let contactButton = UIButton(frame: CGRect(x: self.view.frame.width - 100, y: 10, width: 90, height: 35))
            headerView.addSubview(recieverLabel)
            headerView.addSubview(contactButton)
            
            //받는사람 레이블 설정
            recieverLabel.text = "받는 사람"
            recieverLabel.font = UIFont.systemFont(ofSize: 17, weight: .bold)
            
            //연락처 추가 버튼 설정
            contactButton.setTitle("연락처 추가", for: .normal)
            contactButton.setTitleColor(.black, for: .normal)
            contactButton.layer.borderColor = UIColor.systemGray3.cgColor
            contactButton.layer.cornerRadius = 18
            contactButton.layer.borderWidth = 0.5
            contactButton.contentHorizontalAlignment = .center
            contactButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
            contactButton.addTarget(self, action: #selector(addContactButtonTapped), for: .touchUpInside)
            contactButton.tag = section
            if giftSelf == true {
                contactButton.isHidden = true
            } else {
                contactButton.isHidden = false
            }
            
            return headerView
        } else if section == 4 {
            //결제 수단 섹션
            let headerView = UIView()
            let paymentMethodLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 150, height: 35))
            headerView.addSubview(paymentMethodLabel)
            //결제 수단 레이블 설정
            paymentMethodLabel.text = "결제수단"
            paymentMethodLabel.font = UIFont.systemFont(ofSize: 17, weight: .bold)
            
            return headerView
        } else {
            let headerView = UIView()
            
            return headerView
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0...4:
            return 50
        default:
            return 0
        }
    }
    
    
   
    //MARK: - paymentTableView Cell 설정
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 3 {
            return contactArray.count
        }else if section == 5 {
            return coreDataManager.itemArray.count
        }else if section == 6 {
            return 3
        }else {
            return 1
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "textViewCell", for: indexPath)
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "senderCell", for: indexPath)
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "sendMethodCell", for: indexPath)
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! GiftContactTableViewCell
            //초기에 contactArray(연락처배열)은 비어있기때문에 다음과 같이 처리한다.
            if contactArray.count != 0 {
                cell.nameLabel.text = contactArray[indexPath.row].phoneNumber
                cell.phoneNumberLabel.text = contactArray[indexPath.row].name
            }
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.section == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "paymentMethodCell", for: indexPath)
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.section == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableShoppingCell", for: indexPath) as! GiftShoppingBasketTableViewCell
            if let image = coreDataManager.itemArray[indexPath.row].image {
                cell.productImageview.image = UIImage(named: image)
            }
            cell.nameLabel.text = coreDataManager.itemArray[indexPath.row].name!
            cell.priceLabel.text = "\(coreDataManager.itemArray[indexPath.row].total)원"
            cell.numberOfLabel.text = "\(coreDataManager.itemArray[indexPath.row].number)개"
            cell.plusView.isHidden = true
            cell.minusView.isHidden = true
            cell.cancelView.isHidden = true
            cell.selectionStyle = .none
            return cell
            
        } else {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "totalPriceCell", for: indexPath) as! GiftTotalPriceTableViewCell
                cell.selectionStyle = .none
                return cell
            }else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath) as! GiftNoteTableViewCell
                cell.moreButton.addTarget(self, action: #selector(moreButtonClicked), for: .touchUpInside)
                cell.selectionStyle = .none
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "payButtonCell", for: indexPath)
                cell.selectionStyle = .none
                return cell
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 6 {
            print("indexPath",indexPath)
            if indexPath.row == 1 {
                
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        }else if indexPath.section == 3 {
            return 50
        }else if indexPath.section == 4 {
            return 40
        }else if indexPath.section == 5 {
            return 100
        } else if indexPath.section == 6 {
            if indexPath.row == 0 {
                return 70
            }else if indexPath.row == 1 {
                if isTextOpened == true {
                    return 460
                }else {
                    return 50
                }
            }else {
                return 60
            }
        } else { //섹션 1,2
            return 80
        }
    }
    
    //MARK: - paymentTableView FooterView 설정
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 3 {
            let footerView = UIView()
            let giftSelfButton = UIButton(frame: CGRect(x: 10, y: 20, width: 200, height: 35))
            let space = UIView(frame: CGRect(x: 0, y: 60, width: 1000, height: 7))
            footerView.addSubview(giftSelfButton)
            footerView.addSubview(space)
            space.backgroundColor = UIColor.systemGray6
            //나에게 선물하기 버튼
            giftSelfButton.setImage(UIImage(systemName: "circle"), for: .normal)
            giftSelfButton.tintColor = UIColor.black
            giftSelfButton.setTitle("나에게 선물하기", for: .normal)
            giftSelfButton.setTitleColor(.black, for: .normal)
            giftSelfButton.contentHorizontalAlignment = .leading
            giftSelfButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .regular)
            giftSelfButton.addTarget(self, action: #selector(giftSelfButtonTapped), for: .touchUpInside)
            giftSelfButton.tag = section
            if giftSelf == true {
                giftSelfButton.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .normal)
            } else {
                giftSelfButton.setImage(UIImage(systemName: "circle"), for: .normal)
            }
            
            return footerView
        }else {
            let footerView = UIView()
            footerView.backgroundColor = UIColor.systemGray6
            return footerView
        }
    }
    
    
    //연락처 추가 버튼 클릭시
    @objc func addContactButtonTapped(_ sender: UIButton) {
        presentContactPicker()
    }
    
    //나에게 선물하기 버튼 클릭시
    @objc func giftSelfButtonTapped(_ sender: UIButton) {
        giftSelf.toggle()
        contactArray.removeAll()
        paymentTableView.reloadData()
        // contactButton과 giftSelfButton에 접근할수 없어 giftSelf만 toggle해준다.
    }
    
    @objc func moreButtonClicked(_ sender: UIButton) {
        isTextOpened.toggle()
        self.paymentTableView.reloadRows(at: [IndexPath(row: 2, section: 6)], with: .automatic)
        UIView.animate(withDuration: 0.3) {
                sender.transform = sender.transform.rotated(by: .pi) // pi는 180도에 해당하는 라디안 값입니다.
            }
        self.paymentTableView.scrollToRow(at: IndexPath(row: 2, section: 6), at: .bottom, animated: true)
    }

    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        switch section {
        case 3:
            return 50
        default:
            return 7
        }
    }
    
}
