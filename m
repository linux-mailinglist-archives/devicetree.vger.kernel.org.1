Return-Path: <devicetree+bounces-18929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 362587F9192
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 07:09:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 615D01C20C66
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 06:08:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65FA56125;
	Sun, 26 Nov 2023 06:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="FMvBQqNQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 458E9110;
	Sat, 25 Nov 2023 22:08:40 -0800 (PST)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AQ636iJ027972;
	Sun, 26 Nov 2023 06:08:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=mGAPiwQH9ZnwXhYA9V18stSSqTp0PD6Oex4u6WDgTkU=;
 b=FMvBQqNQ97RijMq/5pP7swx1j+K9+GC0XLL6JAwdok6ye9ix0b/QaMr7/4k0nugA+pkN
 VBIC1RJ0H4KrpZTwcRsP5KXN+Lyl3JWDTN7C+W/4uvuHRop6bnc8P13C03IAC1cbdcuJ
 RJpHLyf7nN63lfEt4Akq6rn5ISRUTZ/bvPOjYliwQVNP7iWtH3tpkOsEOgs3MakCry0l
 YKtqaNNhMEcBOdeAdQ87SEDQg9Y1Gs94QrXEFfmJRuCGpI+9g1ccUnoxrVAGMH58vO8G
 Bw1XeIJnuN3HCKDHA7jySYv0z5w0If5jqPGfYvTTV4prA6/UU/53dtjdrsIs33GSuzIJ FQ== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uka7g9nnf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 26 Nov 2023 06:08:19 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AQ68IWA021577
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 26 Nov 2023 06:08:18 GMT
Received: from akronite-sh-dev02.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Sat, 25 Nov 2023 22:08:15 -0800
From: Luo Jie <quic_luoj@quicinc.com>
To: <andrew@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
        <kuba@kernel.org>, <pabeni@redhat.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <hkallweit1@gmail.com>, <linux@armlinux.org.uk>, <corbet@lwn.net>
CC: <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-doc@vger.kernel.org>
Subject: [PATCH v6 3/6] net: phy: at803x: add QCA8084 ethernet phy support
Date: Sun, 26 Nov 2023 14:07:29 +0800
Message-ID: <20231126060732.31764-4-quic_luoj@quicinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231126060732.31764-1-quic_luoj@quicinc.com>
References: <20231126060732.31764-1-quic_luoj@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: s6-0erMI-epKZLTX3V-qqy0Uem6zcHAm
X-Proofpoint-GUID: s6-0erMI-epKZLTX3V-qqy0Uem6zcHAm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-26_04,2023-11-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 clxscore=1015 suspectscore=0 lowpriorityscore=0 mlxscore=0
 bulkscore=0 mlxlogscore=986 adultscore=0 phishscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311260042

Add qca8084 PHY support, which is four-port PHY with maximum
link capability 2.5G, the features of each port is almost same
as QCA8081 and slave seed config is not needed.

Three kind of interface modes supported by qca8084.
PHY_INTERFACE_MODE_10G_QXGMII, PHY_INTERFACE_MODE_2500BASEX and
PHY_INTERFACE_MODE_SGMII.

The PCS(serdes) and clock are also needed to be configured to
bringup qca8084 PHY, which will be added in the pcs driver.

The additional CDT configurations used for qca8084.

Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
---
 drivers/net/phy/at803x.c | 50 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
index 37fb033e1c29..f376d794d170 100644
--- a/drivers/net/phy/at803x.c
+++ b/drivers/net/phy/at803x.c
@@ -176,6 +176,7 @@
 #define AT8030_PHY_ID_MASK			0xffffffef
 
 #define QCA8081_PHY_ID				0x004dd101
+#define QCA8084_PHY_ID				0x004dd180
 
 #define QCA8327_A_PHY_ID			0x004dd033
 #define QCA8327_B_PHY_ID			0x004dd034
@@ -1760,6 +1761,9 @@ static bool qca808x_is_prefer_master(struct phy_device *phydev)
 
 static bool qca808x_has_fast_retrain_or_slave_seed(struct phy_device *phydev)
 {
+	if (phydev_id_compare(phydev, QCA8084_PHY_ID))
+		return false;
+
 	return linkmode_test_bit(ETHTOOL_LINK_MODE_2500baseT_Full_BIT, phydev->supported);
 }
 
@@ -1824,6 +1828,23 @@ static int qca808x_read_status(struct phy_device *phydev)
 		return ret;
 
 	if (phydev->link) {
+		/* There are two PCSs available for QCA8084, which support the
+		 * following interface modes.
+		 *
+		 * 1. PHY_INTERFACE_MODE_10G_QXGMII utilizes PCS1 for all
+		 * available 4 ports, which is for all link speeds.
+		 *
+		 * 2. PHY_INTERFACE_MODE_2500BASEX utilizes PCS0 for the
+		 * fourth port, which is only for the link speed 2500M same
+		 * as QCA8081.
+		 *
+		 * 3. PHY_INTERFACE_MODE_SGMII utilizes PCS0 for the fourth
+		 * port, which is for the link speed 10M, 100M and 1000M same
+		 * as QCA8081.
+		 */
+		if (phydev->interface == PHY_INTERFACE_MODE_10G_QXGMII)
+			return 0;
+
 		if (phydev->speed == SPEED_2500)
 			phydev->interface = PHY_INTERFACE_MODE_2500BASEX;
 		else
@@ -1958,6 +1979,14 @@ static int qca808x_cable_test_start(struct phy_device *phydev)
 	phy_write_mmd(phydev, MDIO_MMD_PCS, 0x807a, 0xc060);
 	phy_write_mmd(phydev, MDIO_MMD_PCS, 0x807e, 0xb060);
 
+	if (phydev_id_compare(phydev, QCA8084_PHY_ID)) {
+		/* Adjust the positive and negative pulse thereshold of CDT */
+		phy_write_mmd(phydev, MDIO_MMD_PCS, 0x8075, 0xa060);
+
+		/* Disable the near echo bypass */
+		phy_modify_mmd(phydev, MDIO_MMD_PCS, 0x807f, BIT(15), 0);
+	}
+
 	return 0;
 }
 
@@ -2227,6 +2256,26 @@ static struct phy_driver at803x_driver[] = {
 	.cable_test_start	= qca808x_cable_test_start,
 	.cable_test_get_status	= qca808x_cable_test_get_status,
 	.link_change_notify	= qca808x_link_change_notify,
+}, {
+	/* Qualcomm QCA8084 */
+	PHY_ID_MATCH_MODEL(QCA8084_PHY_ID),
+	.name			= "Qualcomm QCA8084",
+	.flags			= PHY_POLL_CABLE_TEST,
+	.probe			= at803x_probe,
+	.config_intr		= at803x_config_intr,
+	.handle_interrupt	= at803x_handle_interrupt,
+	.get_tunable		= at803x_get_tunable,
+	.set_tunable		= at803x_set_tunable,
+	.set_wol		= at803x_set_wol,
+	.get_wol		= at803x_get_wol,
+	.get_features		= qca808x_get_features,
+	.config_aneg		= at803x_config_aneg,
+	.suspend		= genphy_suspend,
+	.resume			= genphy_resume,
+	.read_status		= qca808x_read_status,
+	.soft_reset		= qca808x_soft_reset,
+	.cable_test_start	= qca808x_cable_test_start,
+	.cable_test_get_status	= qca808x_cable_test_get_status,
 }, };
 
 module_phy_driver(at803x_driver);
@@ -2242,6 +2291,7 @@ static struct mdio_device_id __maybe_unused atheros_tbl[] = {
 	{ PHY_ID_MATCH_EXACT(QCA8327_B_PHY_ID) },
 	{ PHY_ID_MATCH_EXACT(QCA9561_PHY_ID) },
 	{ PHY_ID_MATCH_EXACT(QCA8081_PHY_ID) },
+	{ PHY_ID_MATCH_MODEL(QCA8084_PHY_ID) },
 	{ }
 };
 
-- 
2.42.0


