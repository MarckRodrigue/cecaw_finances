import 'Form_Credit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesCredit extends StatelessWidget {
  const ServicesCredit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: ListView(children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          margin: const EdgeInsets.all(20),
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/crédit.jpg'),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 4,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Text(
              'Services Credit'.toUpperCase(),
              style: GoogleFonts.raleway(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'La principale source de revenus de la CECAW c’est le crédit. Pour satisfaire les besoins d’une large proportion de la population, nous avons conçu une gamme assez diversifiée de produits relatifs au crédit. Toute personne qui souhaite obtenir un financement doit être membre de la CECAW, exercer une activité génératrice de revenus, avoir une ancienneté d’au moins 03 mois, mouvementer régulièrement son compte et s’engager à respecter les règles qui régissent l’octroi des crédits (convention de crédit).\n Crédits aux salariés Ces crédits à moyen terme accordés aux membres dont les salaires sont virés à la CECAW, nous l’avons dit plus haut peuvent être destinés soit à acheter un bien d’équipement soit à financer des besoins en amélioration de l’habitat soit à financer des investissements.\n Quelle que soit la nature du financement,L’employé doit: \n – Avoir domicilié le virement de ses revenus salariaux à la CECAW,\n – Avoir au moins un an d’ancienneté dans l’entreprise et être titularisé à son poste,\n – Etre salarié d’une entreprise de renom et dont la crédibilité est certaine,\n – Avoir eu à virer de manière ininterrompue son salaire pendant trois (3) mois à la CECAW.\n Crédits de campagne\n Les éleveurs, agriculteurs et pêcheurs peuvent également bénéficier des crédits à moyen terme à la CECAW. Ces crédits regroupés sous appellation « crédits de campagne » obéissent aux mêmes conditions. Les escomptes chèques. Elles sont accordées aux membres détenteur d’un chèque déposé pour encaissement et qui désirent obtenir une avance pour financer un besoin urgent et ponctuel.\n Les Escomptes facture \n C’est le financement d’une facture en attendant le paiement.\n Le Financement des bons de commande \n C\’est une solution financière apportée à un membre qui a reçu un bon de commande d’un particulier ou d’une société. Bon visant à effectuer une prestation de services ou à produire une œuvre.\nTaux d’intérêt mensuel 3%. \n Les facilités de caisse \n Ce sont de petits découverts:\n – Accordés à des salariés (avance sur salaire) pour faire face à des problèmes de liquidité avant la fin du mois; \n – Des personnes physiques ou morales pour résoudre des problèmes ponctuels de tension de trésorerie (avance sur compte courant). \n Avances sur stocks \n Concours financier accordé au membre (commerçant) et destiné à financer son approvisionnement en marchandises (notamment l’augmentation du stock) ;\n Sensibiliser les membres à la collecte journalière pour assurer le remboursement de ce type de crédit. \n Dédouanement ou enlèvement en douane\nCe type de crédit est accordé à toute personne qui dispose d’une marchandise devant faire l’objet d’un enlèvement en douane.\n Crédits de campagne \n Ce type de financement s’adresse aux membres qui exercent des activités agro pastorales et en commercialise les produits.\n Crédits à l’équipement \n L’agent de crédit qui reçoit une personne physique ou morale qui sollicite ce type de financement, devra au préalable s’assurer que cette personne respecte les conditions requises. \n Crédits à l’accompagnement des marchés \n Ici, l’agent de crédit doit évaluer la marge bénéficiaire du membre (différence entre montant inscrit sur le bon de commande et le coût effectif de réalisation de la prestation) \n Taux d\’intérêt mensuel 3%. \n Frais de gestion 2% \n Crédits à la consommation \n A la CECAW, les salariés et les personnes qui virent leur pension retraite sont les principaux consommateurs de ce type de crédit.\n Pour les salariés:\n – Avoir domicilié le virement de ses revenus salariaux à la CECAW, – Avoir au moins un an d’ancienneté dans l\’entreprise et être titularisé à son poste, – Etre salarié d’une entreprise de renom et dont la crédibilité est certaine,\n – Avoir eu à virer de manière ininterrompue son salaire pendant trois (3) mois à la CECAW.\n Crédits femmes\n Comme son nom l\’indique, il est exclusivement réservé aux femmes et leur permet de financer une activité génératrice de revenus\n Ces femmes réunies au sein d’un groupe, ont la possibilité d’avoir accès au crédit dès l’ouverture du compte.\n Elles sont constituées en groupe de 05 au moins et de 15 au plus \n Crédits épargne mobile \n C\’est un crédit accordé aux membres qui font l’épargne mobile, encore appelée collecte journalière. C\’est un crédit alloué au financement des petites activités et dont le remboursement s’effectue à travers la collecte journalière. Les prêts sociaux C\’est un crédit à l’origine accordé : – A un membre ayant déjà atteint le quota mensuel de retrait dans son compte d\’épargne (trois retraits par mois). Mais qui est de plus en plus sollicité par – Des membres qui veulent financer une activité génératrice de revenus, mais qui pour une raison ou une autre ne veulent pas recourir à un prêt classique ( taux d\’intérêt élevé pour certains) ou retirer leur épargne.',
                softWrap: true,
                textAlign: TextAlign.start,
                style: GoogleFonts.raleway(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  primary: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                ),
                child: Text(
                  'Souscrire'.toUpperCase(),
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FormCredit(),
                    ),
                  );
                }),
          ],
        )
      ]),
    );
  }
}
