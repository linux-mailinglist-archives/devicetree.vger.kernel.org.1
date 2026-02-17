Return-Path: <devicetree+bounces-266170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJl5JHx0lGnVDwIAu9opvQ
	(envelope-from <devicetree+bounces-266170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:00:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A9F14CE4D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:00:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A0318300863D
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:56:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B13936C0B7;
	Tue, 17 Feb 2026 13:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="cQwciBGz"
X-Original-To: devicetree@vger.kernel.org
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010025.outbound.protection.outlook.com [40.93.198.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1477136B078;
	Tue, 17 Feb 2026 13:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.198.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771336532; cv=fail; b=I6m1lPQeq+sRn564lUVDH7/CcKGoNoquuQKX0yWqCpG8x2AC+PU9C5KxXc8EuY45+FWpqye1jTrbHtCGHCzYFhh1FvlGZVKEg5XiyepF1chawMXnluuIBX242yvWtz14TCirp84g/qmLtRdaxPUViTaefpdenrEmqNbZguHYDlc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771336532; c=relaxed/simple;
	bh=143oOrmMYfK2ZCjAL3aEWk4sipc8a4Jw66qoHggF/8k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ns7QIstYGVpAtiP85ImuQTDaMZ7BH02d06s04lhS9NSczaXywjvQfBRxcJ1O2m+LP8ZBemgzw3vw+GyhCii59Wk3L0+TcMq2nkT48lfq0f7+mQRCWPjnl62IleJbDevVcMvvGsZquRYTnccd7jFp2gixAtHG8/3xiO0SgRVRIfM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=cQwciBGz; arc=fail smtp.client-ip=40.93.198.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UW6frGIdQX8/pDkHl7nDjOLKT5nfgcORY0yC3gBTFUhA8D7q98QGgc2u0eQq2OKGI+pieb3hkSxNTxKtn1P5udA0APgFnOWZg9yem6iU0OGy5P7l9vZ3cKdTV089bVcQmP6uYvkzgTrAx/QZm5RiUSwL7mGr25UdVPRJgPupquKd2qEIoa33JvRLQb9F24oa5xLRy1vLCw6j6Dch5f6IJxCFaMybYZ6b3DPZgJC4z/aaSG8cum5RL5kzyoowzqiVtpmai8Gm9t0znk8ioWfRakXu1D9aYAxY/yuLVuzH8C43mtqw/VUY3r51YJF7Bjb518l1bf4djLhe5Pb9yUIbxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QZFjciKFXeEbtpnHHUeEPzUHZfLHRDTh/GRTjatnXyg=;
 b=Hd0LnyciErpv53YtoiVxs3Ybw2FSC+l+H7A7K98jiSSU/2CWjtqDOyg0NhXQzRoyQKsEX/lUOWe81NubOLAIvVBDk9EmPH6WjCRfPRp806RV7Zb2t5lQUYvTV9VQtI79rNLla47FXpbS9Wmym76j8cZTB/GPYKFNPO3kNe76vxVd6bSBZvUylSgrEHxcal33llJb8x8UEjNIo3D+xBBUYh89cmZl02r4/sSQChKs7lTxR+u+J3vK09HNhC4n0YBYF+wM/cByB5swjXRKP5f3v0J7lmWZhs6cn3uHhDiMaclSTFM9Q2+W5uYkQPEbUeYa5b6qYnqDCRPdvP57fupTWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QZFjciKFXeEbtpnHHUeEPzUHZfLHRDTh/GRTjatnXyg=;
 b=cQwciBGzYMMKClG1KPZ+Z1cLndtz1Oy83l1stR5C22KruQ9n6fjdfrKgIAFm/uIvzhNVgFaXGgOc7pvqaQIdOzVqD/INlj+d7OVCkWGgYOioYKl6VaDmyxsHxXtxcBdRbZz/bz1GH7EEC/alfZaiDkPDs+n3OIAwCPL49doziuYo1APY4DHeIMKcfmw2tkvdNZA88vo2WrkU4GC6I47zJUalYS2yoUbBVz1vagR0/jauUC/NBzpOjvtYlCzjEzNjqW5XCeUFuxNlZEXBlnV7slWve8EfZIICuUAyCihd7Dq35pEucGrQM3LXREN7DjJZAIZmUOtVOD7C3VTYgYlcxw==
Received: from SJ0PR05CA0004.namprd05.prod.outlook.com (2603:10b6:a03:33b::9)
 by SAVPR22MB996660.namprd22.prod.outlook.com (2603:10b6:806:4e7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 13:55:27 +0000
Received: from CO1PEPF000075F4.namprd03.prod.outlook.com
 (2603:10b6:a03:33b:cafe::78) by SJ0PR05CA0004.outlook.office365.com
 (2603:10b6:a03:33b::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend Transport; Tue,
 17 Feb 2026 13:55:11 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=atlrelay1.compute.ge-healthcare.net;
Received: from atlrelay1.compute.ge-healthcare.net (165.85.157.49) by
 CO1PEPF000075F4.mail.protection.outlook.com (10.167.249.43) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 13:55:26 +0000
Received: from zeus.fihel.lab.ge-healthcare.net (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id A998EFFDA0;
	Tue, 17 Feb 2026 15:55:23 +0200 (EET)
From: Ian Ray <ian.ray@gehealthcare.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Ian Ray <ian.ray@gehealthcare.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V2 4/5] ARM: dts: imx: b850v3: Define GPIO line names
Date: Tue, 17 Feb 2026 15:55:19 +0200
Message-ID: <20260217135521.65742-5-ian.ray@gehealthcare.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20260217135521.65742-1-ian.ray@gehealthcare.com>
References: <20260217135521.65742-1-ian.ray@gehealthcare.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000075F4:EE_|SAVPR22MB996660:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 87e9efe3-a5a6-48ce-4e5d-08de6e2c3499
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|376014|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?gUu/QFPD5qo2LrTzdEmYmg+KHP/CSGh6JOJ5Kwuqa/mRdmshqXRwje6XzGsS?=
 =?us-ascii?Q?VAHlwWqcfFqdbPdAQklGcT+EinitDjCi/XpgR+v0ieMlBIAVlqWLv/cTnRUT?=
 =?us-ascii?Q?Mz8kmG5nLDEVBF2ILtieSfLT8dKaFkBmZBGljV+PEzAfRfYbpDCmkE/X82bl?=
 =?us-ascii?Q?5G64j2g7wvVKwa/DZ94Ef847w83bnV0HEVqAHMrT0k2B1yNtNoqHzytvcVWQ?=
 =?us-ascii?Q?oecuPsL1Wl23e8ylBUvuf+0/EKgQE25ughCnB5El5XpYjClw+ovOBNiWGymv?=
 =?us-ascii?Q?NCZbcAdRntSnf26kwz175FWP/511wFHBNjB71JQ+odQJEXAvi8gkCciY0I2x?=
 =?us-ascii?Q?sMqOqg3MpW8N+427HgUDyQwpMtfBWiqRCwFnuYVC1YU3f9YvPS+fWcMjXdlU?=
 =?us-ascii?Q?59EhdU/ChbRqdRMcKu1XknUZayHYAhuiDRf//dzfQOC+0PvpMwU+TIEXiuaH?=
 =?us-ascii?Q?ljQPcKotNlM1OlNtevgToZ3MjV4Z3TJBiD9yU46DWul/IyS9xZcX5Q1YlCjp?=
 =?us-ascii?Q?Q/HXEl3+Ib5H5bN52xsFmI3izQU0pnRL/LDsIO3Fm4CqqKiDIZOfNi6RUD4S?=
 =?us-ascii?Q?jUsjHMTmkblWutgQgYuyoG6mKntaxo4ynCl+b3ajMK9uEaqruAjquFro624s?=
 =?us-ascii?Q?OkBPINO7OzYz8fr8R/WCFUERFSJqJt7DeEVF9LJd2ZOmMFEbNgv2qGKIGiIT?=
 =?us-ascii?Q?n4MqQc8MYnDpystN3r/9vCVcoFxqUYa9ANToq16R7RoQGX2SW+ogpocyf5MA?=
 =?us-ascii?Q?I6ZISXSfos42TB1GlFJDeqmtylPreH+9y4Mlb+GM9lvo2LQMUgCxc4fymwxS?=
 =?us-ascii?Q?H/WHIg/FM9NjPLBNaNtq0lBo5+ZEqfUTKGmuBHdN+/7G8iaPrNCuD8UxyG8O?=
 =?us-ascii?Q?9RaoZ0GcU2cXRYIxX9D61UC7kcrAJ0UcvwLYU2yKFEnpgAt1Z+/ePJ2VZztX?=
 =?us-ascii?Q?zYsL8GnG8xFTMzGiW89GN5krhCfFH3rRZOun9Opv4dQc2MVj027N6X91yk89?=
 =?us-ascii?Q?3pmdwhP4kGzjzzfGIy/TWjOc0UecWXFUw6tg5hdNadsuXhxaQ+98EGYnbUwr?=
 =?us-ascii?Q?VNxRxRScmEcPujzeIfQCajOYMHubl7WELI6Zd1mIk443+GWIAoMHQ8iNFgGC?=
 =?us-ascii?Q?laiZUk4H2/GWg8zGmWq7j+9zHoJqWCdoN8hLQv3+RiX75v4PzkprRT44MDn3?=
 =?us-ascii?Q?0ilPZQLu2ijQzqo+8FDuWjVXPkSFBPRPjzP5ROgxo2D/vbODC8OjOjYdQwzD?=
 =?us-ascii?Q?Rmzysgl7YTOtgmrcaSqJ3TpYda4lMyRU6oD8A+QqZ2XS5MrtrY72zXgj4R7V?=
 =?us-ascii?Q?BFK9biH4/JqM2frbRvfJovF9f2ox0gb8XO2MkknNFWwOhInAqRQt9H7cJpo0?=
 =?us-ascii?Q?Gwydc63/aHIgXsfg9ZRyHj9myzgAO2AbrZNcOTzPGgJcGErjh/9bHGlq53g/?=
 =?us-ascii?Q?G7thN4T+dflO7TqXi19Vuc93IZF1XUE1wmj7ZFst6Hd27bzdwCQykDx97ihO?=
 =?us-ascii?Q?3SkbtR6GBjArVG2aEq/uZ8Pn2viOm157aGU+dRaNeGNwoRBmjJTKf7Mcd1/C?=
 =?us-ascii?Q?hmgisdNvjRvHSJbbp2kkgMhQJPtu9OTUaxzlQ2Fb+664vYud4xPowMxN8/I+?=
 =?us-ascii?Q?dcw+kVxs1PyeqjomeOIR8UYAVn7t9gp4GnmKRZthYiZ3jf9lBJIcnWsMg7qi?=
 =?us-ascii?Q?bI1g5g=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:atlrelay1.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(376014)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	xPfWdS0pGFr/cLSatcBBQExNIct7p6XALzUcw/MTzNz2uWBqZppZIYZF1FBHc0f1d1Z56XLOfc2+kdiHvtH1mDpZ56kgfmE1BYsdO76oOPMZyWmLi0bOr0+CtP2cAcfeFci8XMTGA/5Eln6DFVFtLUJdp62bND0i0pm0duEnWHdDEoW3J6OIziuInsiAPEwshNRceQe3Ka/cohPoIfp2B8fKwtykSrGnfWQ+WLP6Pm6MXPKVdu/M21Sx2iy/Z2nvnd1Z1/DT7/kZ4Oijw2ohDrQ22wUfzUN7kUw0DXGSO/xH6BZbNZ22+lq0tiQYnc/QR6sZ1GAd8THHKhq/RuKO63o/3ZQ7ENn2z8dTr0+cvjlyl9BjMXiXPW1LGiTcMr3M1NPkftsIrEvOZ8kbHd64KiXCZrz8CjE82e3+GwjQ/Oe25QW1Qtx0T6oQLyBs2PMB
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 13:55:26.9106
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 87e9efe3-a5a6-48ce-4e5d-08de6e2c3499
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[atlrelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-CO1PEPF000075F4.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAVPR22MB996660
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266170-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gehealthcare.com:mid,gehealthcare.com:dkim,gehealthcare.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F1A9F14CE4D
X-Rspamd-Action: no action

Define GPIO line names for gpio4.

Signed-off-by: Ian Ray <ian.ray@gehealthcare.com>
---
 arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
index fa5814287f71..e5e66d536a2d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-b850v3.dts
@@ -53,6 +53,18 @@ chosen {
 	};
 };
 
+&gpio4 {
+	gpio-line-names =
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "PWGIN", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "";
+};
+
 &hdmi {
 	ddc-i2c-bus = <&mux2_i2c1>;
 };
-- 
2.49.0


