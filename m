Return-Path: <devicetree+bounces-245585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C791ECB2AE8
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 11:27:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 15249301D1A1
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 10:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A97130E855;
	Wed, 10 Dec 2025 10:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=phytecmesstechnikgmbh.onmicrosoft.com header.i=@phytecmesstechnikgmbh.onmicrosoft.com header.b="XYAJ7YnQ"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11021120.outbound.protection.outlook.com [52.101.65.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF4E30DEB5;
	Wed, 10 Dec 2025 10:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.120
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765361787; cv=fail; b=JhkspcbBhIsYpJVYSqB7EI17TmG/sIDDvQV8HYkE0OYqN6N16Qr1SMZ2vKF//V8cpUbNwarvIp5t5WG+jMP6zrzT4az0d4yHTZ5ceD5QBn0yCHME1yEm2jk38W4Vp6ZL+OJop2EVUwVHrPPgHYxg3QnslMJ0YNkJ0rIxnCHNnSo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765361787; c=relaxed/simple;
	bh=q1AW4N+zYwoNyJpPdAbCdTcbXe7hNkglc7x4dRU2iwI=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n6HUyJcuqaehl5fPKGLWLv5IKlTaSl54RzEx4uNXk01s37IVVVND/wfAAmD+DCtP9lYTblOma5JRW2nmLoYu/Yoc462b9rmccJDkSPrWsOYRIiA5Ugy6IhtZb2XxaiKL7dToYqALKHobTK+8psRoqnQmvkaRFslCrE5ADhdIAOc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.fr; spf=pass smtp.mailfrom=phytec.fr; dkim=pass (1024-bit key) header.d=phytecmesstechnikgmbh.onmicrosoft.com header.i=@phytecmesstechnikgmbh.onmicrosoft.com header.b=XYAJ7YnQ; arc=fail smtp.client-ip=52.101.65.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.fr
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qRNCpoHrKGLOHDCh9u4tiRf5sVEers6r85SJUgHULTg34WWsKhaNMPIDyA/fvwxKwqLtdry6oiBp8E+aa+dwr2IX+ing2WRpjb+JG6bsrC5yZ1WnyKhi0vCl209zTL92OUC2qUNN5wsAS3SMnJxiyJnbJceibgnoLWUaN+lJXwE9k9BIBTiQn6vNYrKtng/u6N+xLhKpn98P9sbNcGYrLRE8UtThtXPM0xwPI+JD5Z3R9vE5i6Jr00uc/vRjRg6HFYstgPU43juhu3iAcxanxpunT08Xez0pnxAiNeAAHVcW8fIReR+DcibqWHG3tlle8dQvSrk8hICcq6GHdxJdHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5abZY0SB9KzkKudzsNwj4y7+tQ/rWq4t+Pl8mssI4lg=;
 b=UHfvluuhHPMhXX4He/z71WhHgVDiNJsJJoTUOMzDVwT79LHS45vSf8cPkjLiowMhJpeIEqX+bfQX6NbOFPu0Fgas/RBkfRZXKGEF42AVOtLf/h/rMm8NVt0Z/a0mUqY+4CNmyilmiFwHPR50BKGufHbB2g1rg2LCCbA585tvy5ietFQo6QIFC7exaA22+GqzRVM5581m0CdbMXHM4/laxOG/FcrurRNWTa9VA0s5qeUMYcoWncjsQ+yPKhKK5GZBrHDTR/iLtqslyrEXmHQDI+JFKdIK2Wijjpyrw4KfzzabgcgXOkveKxUrAkcpRRPVNnfg2dT34gUb56pPLORRcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 91.26.50.189) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=phytec.fr;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=phytec.fr; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=phytecmesstechnikgmbh.onmicrosoft.com;
 s=selector1-phytecmesstechnikgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5abZY0SB9KzkKudzsNwj4y7+tQ/rWq4t+Pl8mssI4lg=;
 b=XYAJ7YnQnmGYfAsoLC2ITh2xiSAPw1hMlfZBFy+dYjMoRSf5FTCkCWsn1rIHd8WGxEYWBK0H8qUxpwLzHOVkX6X/fi9WL/ikzYkwbzv5IkDRZ2GL6yZwkRuBBxDOgTXHtv6W+Ps0ZOx86WaAA0JDBLacy0wqfjzv3BGGlC2nw0g=
Received: from DB9PR01CA0015.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::20) by AS1P195MB1446.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:20b:4a8::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 10:16:21 +0000
Received: from DU2PEPF00028D09.eurprd03.prod.outlook.com
 (2603:10a6:10:1d8:cafe::c6) by DB9PR01CA0015.outlook.office365.com
 (2603:10a6:10:1d8::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9412.8 via Frontend Transport; Wed,
 10 Dec 2025 10:16:09 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.fr; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.fr;
Received-SPF: Fail (protection.outlook.com: domain of phytec.fr does not
 designate 91.26.50.189 as permitted sender) receiver=protection.outlook.com;
 client-ip=91.26.50.189; helo=Postix.phytec.de;
Received: from Postix.phytec.de (91.26.50.189) by
 DU2PEPF00028D09.mail.protection.outlook.com (10.167.242.169) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9412.4 via Frontend Transport; Wed, 10 Dec 2025 10:16:21 +0000
Received: from Postix.phytec.de (172.25.0.11) by Postix.phytec.de
 (172.25.0.11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.29; Wed, 10 Dec
 2025 11:16:16 +0100
Received: from idefix.phytec.de (172.25.0.20) by mailrelayint.phytec.de
 (172.25.0.11) with Microsoft SMTP Server id 15.2.2562.29 via Frontend
 Transport; Wed, 10 Dec 2025 11:16:16 +0100
Received: from pc.home ([172.25.39.2])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2025121011161599-318 ;
          Wed, 10 Dec 2025 11:16:15 +0100 
From: Christophe Parant <c.parant@phytec.fr>
To: <devicetree@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
	<upstream@lists.phytec.de>
Subject: [PATCH RESEND v2 09/11] ARM: dts: stm32: phycore-stm32mp15: Disable optional SoM peripherals
Date: Wed, 10 Dec 2025 11:16:09 +0100
Message-ID: <20251210101611.27008-10-c.parant@phytec.fr>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251210101611.27008-1-c.parant@phytec.fr>
References: <20251210101611.27008-1-c.parant@phytec.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 10.12.2025 11:16:16,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 10.12.2025 11:16:16
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PEPF00028D09:EE_|AS1P195MB1446:EE_
X-MS-Office365-Filtering-Correlation-Id: 3aac747c-edb9-46ab-9afb-08de37d52ab4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?49NcFUqu3/7u4ZuoNqgsAvv5rjhZhDp44tX1jjgEO7+MtClHVpVJq5SixqLV?=
 =?us-ascii?Q?JB5+xuWUg7WlRFyDxbLZxmmmoud3JZ8VJtv7mO0ibdzC4xOQM+k3u1bp4T1R?=
 =?us-ascii?Q?0IxoaOZNmQVtJ31CvVbISuDG1bt7fZy+Vxzk4XH/obutT4I+jDgdFsmpf0wR?=
 =?us-ascii?Q?MuBGarkptNQLPp5tKj/rpE4kdcPbKA82ZqtI2J1FX2CztoJN58aX29Z07p+u?=
 =?us-ascii?Q?4Xd9bRVTRuDW0RAkPTOUKQOpSPN+D7l/diYUOXTruf5NyJritFLbT99vXF3Z?=
 =?us-ascii?Q?FOgPDMW9sDVtwzrvUCJ0UCDuY0dbtS+jjyi9q+Jgv9Une8a+2MOXmoSbX7n2?=
 =?us-ascii?Q?dz6HKbUiBtc66wB6n8FRhhbjd0+GAb/NGGfonntktBr7IoHoN1TuaflLe8TH?=
 =?us-ascii?Q?L+pP+xsqsW3LWzcZzuTog1Dyky6OMpsr+wXiuxO9CLoRczC21upU8MX02MYf?=
 =?us-ascii?Q?32wDCi0cIWRQbaJ8lLKZM7gBWVoREk1B7y3E9gK74qFD8mYbBGqW3XWG0efZ?=
 =?us-ascii?Q?4a0Jw40ZrV4XM2Ur6usZ7ikTEi+aiKDg4klPbK/P77depeKgnY5Rtn3PxQrG?=
 =?us-ascii?Q?G/njerGpW/OghjkPdsM5J14UAD9lZsCstgru1+ilaNjkCJ+QEd6lgJTJf8Ht?=
 =?us-ascii?Q?z7PRHfo8kDQXDfNDN4eI2e5XHe9sxAQLzJwyYijOYiRWZFM40+76dQMhOOn7?=
 =?us-ascii?Q?PP2G+GIhof+DpIoY7su3/M/N1thzYyM+asjUpsVZZkqioWB33hU1ZC0xmzri?=
 =?us-ascii?Q?gB1QJTAZkPCvG2pF92qqSOc4b1qRuOFNCu/K103nF5pUvVM3c6kNLkLzOgpA?=
 =?us-ascii?Q?mevO1ujq+/wN+iTyUjkxg3rZS3eqMKgHrX23tlGhZquqsa7uUMKt4yPJcDAW?=
 =?us-ascii?Q?lnw7ZWzf18JMuflkzB3BUxrnzMBQWisgRD+8dQnOgOZtH3oQoPKFskVFW2Xf?=
 =?us-ascii?Q?M5mz60CpsqkaaTbgF00+sTqnTXS8ld4dy1XWLoii8jJLIsDUFaSqUpdRdNtw?=
 =?us-ascii?Q?59Wg/u61swNA1uofgE1SckKhw+9lGzRnPA+0a91cJ/WGQLSju1oOOadlWfww?=
 =?us-ascii?Q?3n1E59IiVd1mAecq9B0k0zgEgPSjjv6HX3HXh32jlZboSMpenBo/enKKbG50?=
 =?us-ascii?Q?IR0OB3pfAgtRfPZh9GsUJ0zlzkIb9del7t1ZkRMIB/kO1KGpmblpllBkjelL?=
 =?us-ascii?Q?mHpK/J3IQcP5VYm33bk49Mua+PJ6NNXtUTx2g+LfJU4B+rlzXgOb6tFvYK1c?=
 =?us-ascii?Q?cPAFE2PyDTgtvluRhMr3VU3PlkrtT4Dd9v730nLntsJ5CEvW9tDHTNG6sSjZ?=
 =?us-ascii?Q?Odb4qVzc7qD/r7vkpVgeMJzncabbO+63q4VGpZ6167Q5qXTttEY0KejNDEqE?=
 =?us-ascii?Q?XFNob+tGBRYcGMhabXEWigv7vcRLVRyLw0zio3GqJomjEJNRPA7DfzA0Aql5?=
 =?us-ascii?Q?TlyDCEf0QwpZJ/5I4/1NAnxHt+qKRESZcdQvv7GxyS3CGylr/3Oi/E/ZKz8U?=
 =?us-ascii?Q?leEjyzEyfPHQJY81G6L52Lk58bCFywDFa1Rg5CryAU/MABTYy30WGCkZtfV2?=
 =?us-ascii?Q?zCdULmfeJslmcnXZlMw=3D?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:Postix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(376014);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.fr
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2025 10:16:21.6501
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3aac747c-edb9-46ab-9afb-08de37d52ab4
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Postix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	DU2PEPF00028D09.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1P195MB1446

Following peripherals are optional on phyCORE-STM32MP15x following
PHYTEC standard SoM variants: external RTC, EEPROM, SPI NOR.
Also NAND (fmc) can be populated instead of eMMC (sdmmc2).

So disable those peripherals on SoM dtsi file and enable them on board
dts file.
Additionally, enable by default the "DTS" SoC IP on common SoM dtsi file
as it is not an optional IP in STM32MP15x SoC.

Signed-off-by: Christophe Parant <c.parant@phytec.fr>
---
 arch/arm/boot/dts/st/stm32mp157c-phyboard-sargas-rdk.dts | 8 --------
 arch/arm/boot/dts/st/stm32mp15xx-phycore-som.dtsi        | 9 ++++++++-
 2 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp157c-phyboard-sargas-rdk.dts b/arc=
h/arm/boot/dts/st/stm32mp157c-phyboard-sargas-rdk.dts
index f7c02a381304..c90b12a479c9 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-phyboard-sargas-rdk.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-phyboard-sargas-rdk.dts
@@ -22,14 +22,6 @@ &cryp1 {
 	status =3D "okay";
 };
=20
-&dts {
-	status =3D "okay";
-};
-
-&fmc {
-	status =3D "disabled";
-};
-
 &gpu {
 	status =3D "okay";
 };
diff --git a/arch/arm/boot/dts/st/stm32mp15xx-phycore-som.dtsi b/arch/arm/b=
oot/dts/st/stm32mp15xx-phycore-som.dtsi
index ce859b94ae26..3f60f184978c 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-phycore-som.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-phycore-som.dtsi
@@ -265,11 +265,13 @@ i2c4=5Feeprom: eeprom@50 {
 		compatible =3D "microchip,24c32",
 			     "atmel,24c32";
 		reg =3D <0x50>;
+		status =3D "disabled";
 	};
=20
 	i2c4=5Frtc: rtc@52 {
 		compatible =3D "microcrystal,rv3028";
 		reg =3D <0x52>;
+		status =3D "disabled";
 	};
 };
=20
@@ -307,7 +309,7 @@ &qspi=5Fbk1=5Fsleep=5Fpins=5Fa
 		     &qspi=5Fcs1=5Fsleep=5Fpins=5Fa>;
 	reg =3D <0x58003000 0x1000>,
 	      <0x70000000 0x1000000>;
-	status =3D "okay";
+	status =3D "disabled";
=20
 	flash0: flash@0 {
 		compatible =3D "winbond,w25q128", "jedec,spi-nor";
@@ -328,6 +330,10 @@ &rtc {
 	status =3D "okay";
 };
=20
+&dts {
+	status =3D "okay";
+};
+
 &sdmmc2 {
 	pinctrl-names =3D "default", "opendrain", "sleep";
 	pinctrl-0 =3D <&sdmmc2=5Fb4=5Fpins=5Fa &sdmmc2=5Fd47=5Fpins=5Fe>;
@@ -341,4 +347,5 @@ &sdmmc2 {
 	vmmc-supply =3D <&v3v3>;
 	vqmmc-supply =3D <&v3v3>;
 	mmc-ddr-3=5F3v;
+	status =3D "disabled";
 };
--=20
2.34.1


