Return-Path: <devicetree+bounces-269053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAlmFyQdoWlhqQQAu9opvQ
	(envelope-from <devicetree+bounces-269053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:27:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD631B2AF2
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:27:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 157FA30882EC
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA47F355F55;
	Fri, 27 Feb 2026 04:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="w0Vk45hW"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11023083.outbound.protection.outlook.com [52.101.83.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8A43563FB;
	Fri, 27 Feb 2026 04:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.83
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772166414; cv=fail; b=RxknJA9d0pibwdXBRuKCxVj5WBcFILmcML8piFOuAB+VmsfDTMHu73YE379366x5DcgqdZhHZjhGRb2KzAdjU2FG1+TsEpkmrtLvrog0653t3HQOkTXZamdd+Y5MQg7ndMvCZC4VhFq68cu4V2U54dP2h/nY8QzcsAv8+9PpeRg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772166414; c=relaxed/simple;
	bh=+UAhc/zzPiPCaXbF/XbVfQxRuLYEafKKsFNMdbe1wSI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kKS36R89qHojmc5bkQU+E1Ld3uppvo71ZJvtzmlvUlOTh/d8jeU0x0M/JMGN6fd017ABYQQEhveGIxRpGDEJfy6+AFJdn606s1JosAK3SFpO1Bosu9jQuWrC7OEpqAFeaI3BgVY+33sckDufJw5rocBoVc9U7SJcAhCO1OVrXp8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=w0Vk45hW; arc=fail smtp.client-ip=52.101.83.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tJhZawAboBcAsiA0WfrbyX1fTn26AwyulAPuk0AvitEooowWCjyqzmK160GcFldFba9AqfxOxT2kdhWe6qoSyYmL+7rcS5Eey+PvQTeGQk9cfgB6MaicS6MIqvUTNh2frTO4JaGjypO3rfsflzZdMoPxbzsWvj3YlhkQM025ILORGi0Sj1w/9QX1WNuqIs2dcxbHfA81PN+zjxGXMvgyy7jp9J+bjRU+b2n+lsQTe70HU9mjZZ6LGU0o2jcr6CqS/AuDuQOFM+rScVDRRDXetAXeHVB/oyq2yjtjk9ibh0KNWPyTA6nAwDNMJ5rOT2aO5h7lc8lAhoJJsCCkZ8nE6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ADTHSpRp+uv+dVOZtQkY5yAvdQXOfCFG4kzF4oSxP9Q=;
 b=mKXxtPbL1Q63ojyga17MO7bo/DyZue1KGNsdKLvW7JcVIT9D5BiI0f1mBaS9qcPTA21csOQAbtuoG2dvr8JErcCX6DUFCax2E/TinRyrqFrzWkWi282amtd1j53aM37k9ooUc0KEBR1OtOg104ZfGBHT9uJZAAhOVhB++ZbKws1yb5wlG83Cd15WGtpDocbA6DHoF6OxIQlx//G0dJHFGHh6Deu59k+hHybEtQhu90AKwHCuu1ThxTX6xmUKFnvu1gzZCaLa8twfHWQCTK48S6Py05xIx+ph0WhLCVKjTI2nCLOvmzCV0N31hcjJRRFZGnnAZ002eYT5w8p9ElVNsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ADTHSpRp+uv+dVOZtQkY5yAvdQXOfCFG4kzF4oSxP9Q=;
 b=w0Vk45hW3MzwmZ+6C2TsVmnmAFZzBSzlxPNcb6u+8cQ60FYpEvvcS2z5XIKl6oephoNQbOofnTfrs7WYNujgXC5f2mbpeagjHg4knLlckINxgKLKj7XIWVFAo7YQpr97EOXl5Pm6RRLNIByanG7Mdmt4oIJ1v1x+7qRr2YmTfRaNsbDrAOFp4d/P03nhL0fe1vyMSvMrclKSksjbK3YseBg3LlApQo4EQTB/wRAPwAprLRMsOrJBcMN7Z6WJAe7QPtKdf36MBMdnZnqTGJMeyN+qFEXmZ/Xh7Yib9VD67BwZoTpOfc7e+uXuIBTLuaGEyLeWm1IDfFCuLpO2V0nYOw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
 by AS2PR08MB8574.eurprd08.prod.outlook.com (2603:10a6:20b:55d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.15; Fri, 27 Feb
 2026 04:26:49 +0000
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc]) by DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc%4]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 04:26:49 +0000
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Subject: [PATCH RESEND v3 2/2] ARM: dts: airoha: en7523: add reset-controller support
Date: Fri, 27 Feb 2026 07:26:30 +0300
Message-ID: <20260227042630.3090808-3-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260227042630.3090808-1-mikhail.kshevetskiy@iopsys.eu>
References: <20260227042630.3090808-1-mikhail.kshevetskiy@iopsys.eu>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR0P281CA0165.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::13) To DU2PR08MB10037.eurprd08.prod.outlook.com
 (2603:10a6:10:49a::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR08MB10037:EE_|AS2PR08MB8574:EE_
X-MS-Office365-Filtering-Correlation-Id: d446facc-8b5f-4cb3-5552-08de75b86d00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	RMO2E14sUL1GRHdzdwAgSbfPLuaDiEmgr7zQuMIpxFFY24Gf/6XT2Mp3P8AqRdtlujv9Esstre7gOVM7Mb6ZOcRA0WFuIcfTPazqqDBY3L5cLe0WQVwwXsyBBH1pwmQZRE2ZL4svyqV25SQkpg60BVmuoam+Uwdv7qyaR5K8QNSlKZte/skxr8pXtWKieuDF6O39f2+AM797LxHxedKeAoPgoEk+Z+D/nKu7xWSapOI3Wl2LNBj7tOMIrB/IMbQEZRvClMEzvoeYvpveHt7DA48l2myiWeUvbTE3Srs0nSxoHtZQuREQ/QakkE3qzLpDmlq8ccUOH3cAClN4AxffWyXJVb9XY8yxPIeKJW215CoFeE6ibbJqBpbzVnnivgzwdpmeNt4Nv29xOghkKDoTAEfboOBIRJnFmtlbU8iVfq4pwOUzyOlKqt7rz5gsvNJAzPFE6rOg2xiVmULHkbQBvXpZ/Dw/97e330WrfLvHO5UGls6xDQEmcjLQziBa5Wstcltf7N/cT80o+CHI09H4vR1KtKZuBFxlAQrQveIeZpqBindfaVKeOBqjk0MRRT15xks0kvZqs10LYB9HM4z4/q6XEoaZOTaUTMZcifjMVTysFWSI3VKZV3NuVmVgvrhTaUQMt1diM724nhgy7zmTpMMQLMfPGOrsuFC+nvN/e3HCbGzloE8ARU7awsgsZuQbukbgQl66twNghge5S2l//td1P/pIjJ8d2ni6u0cTNBJyE0977STfiMXx/N4yJCNYd656kqqXVs3cyuoWsBu3Nmv7/3OioOq1Qn2E3riv7Gc=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB10037.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?A0MJguO95h3zed4eBj0R0GF1XK/vtFdXYE87K8f28JRsEGc6GXxqD699NHRc?=
 =?us-ascii?Q?5KOtx8+tAl8yfnhB/QECXIl/LDE4+0KOnllYZJkmF0HCCUqxEmnh1LjWOstI?=
 =?us-ascii?Q?LkVIOtt7UYCtJD+It/dmGCXun7pd1ahwSM5YiscSPtxD4QRuZfuLNHiZjjqt?=
 =?us-ascii?Q?4AVVK71tgIhXgAHza2v2yOjRqs6NuAW1N27KvXrYQh1oHTVUUR+m1R35m68K?=
 =?us-ascii?Q?Uv64L3M8B8z5YnYXoWzdspPwWlNOsbb7of3o/b5SFNXS3A0+WpJuiEEzZlRU?=
 =?us-ascii?Q?jVSe0MoM0XISDKZxtrWVuJXTBRxMlZO4izlrjfQfm9VFbpT4HzjrV6X1sfrq?=
 =?us-ascii?Q?/0zkPHBDl2xQuXeoXEGKBMIhZWzfu2HAA85FTdRjHauLeVSv+1e+oi3QXSsb?=
 =?us-ascii?Q?adTH6EHvxWw4PfXwiepqCufRmOc4KlndmP3h+fTCw19b8rqxF3SHxc+PjqIV?=
 =?us-ascii?Q?CwioRxEV5Ih2oCJHT27DELJRe4FNkdF9mPzAdHp68JBLfCPWAWhTYp7KVr9i?=
 =?us-ascii?Q?rdhOl5xLJcgyzWO5kfm3vu2YEsF517tdLZn5h8N8nMEvDNMokTyW0FXd8s+f?=
 =?us-ascii?Q?yI04RQKndnHgrBjiTzFaayAiVPVT8h4yruby/UeXQ8Q/Y43ExvGkalmuU4zx?=
 =?us-ascii?Q?Lvp/kdyzDNleY3uIeihWS2YXsvSW8Dfk+IuzbRJnPOc/MQH6yKM375Chq+hW?=
 =?us-ascii?Q?AINYDZdFwWlwhJRX46Zb1l79m7Q9iyKqhAzcgrRbgnUUfQavAzI5LyGgyP8W?=
 =?us-ascii?Q?lF5GXKTZZe6avl0nWlenldSqE9UWOACoOp32CEA+dSuTvODwjlVLTwHY6aPQ?=
 =?us-ascii?Q?DgjiLxHiVb0hG+w6u2Y9ct221Qu+ie3DZbZsj2xEYniPvMDqbpE9VnXAasMS?=
 =?us-ascii?Q?IIPzsAkYY0RKh03h5IthV1YZRAB8l1/GP0U1Iccethfq+uH9csJNFdBOg+CM?=
 =?us-ascii?Q?FWuhRZhKN4Q2i8mmNMD/qH/5U7xA3PtseUuip4E1ZgyiU482U9cYrqzxlwio?=
 =?us-ascii?Q?+0BMCGMy64i4yLa0r/tLpQkZ71CMR+Mfv31W3EjAsrGEHqbHTajrKTijT1eB?=
 =?us-ascii?Q?lWARvy7ajFvyGePWVexCB2Yz9Egrbg5RB6MBIBbj7AU/YC2UAYfR49hO0yX8?=
 =?us-ascii?Q?b9Cv8BZjoVbN+iGcedsR2M9kVR2XwYlfwrF57wjJ12+OFJjyUqd8SSSEfK1p?=
 =?us-ascii?Q?/itsyof9I8Fc8lp/kJZTe9H5M/82MP/d7vWQAKOyr4HTnUA2I4v2YLSwQEnd?=
 =?us-ascii?Q?QZuY420bcTZYlL7yJBQ6+UM/FhzSv8g112d5PjnyZNRVw7N0U9ylXe1b98uy?=
 =?us-ascii?Q?9hJcJkepTEJLK7nxJ09DvriWqdXcDoEMuDm1QGsdRpqUAx/h4jkTgg8dIEwD?=
 =?us-ascii?Q?u8WK6X7Thp1eaw0s6Sf8L3jzt8UUuSKFmTDQTd6nQYwoYLem1jruifrc5x55?=
 =?us-ascii?Q?rhSs7oYIPZqNLvUwx71exhmy2ErcY6RdRuQGxO5HuOa7V/5cZ7tzcRPDAGwP?=
 =?us-ascii?Q?5e2MFuuIzJXO1WGqZMGqhccciq+FbtupV1YQ1ndb/z/p73l9BQBXEOAqr6E/?=
 =?us-ascii?Q?CQFmW1CQwmLfx+5Sd7pU1EiPcOBau5uJYW5rlMGSYRRiMYFMx3QuZOejuWsX?=
 =?us-ascii?Q?s2WBx32LiRYTnLdvKEJ3mwbS6gpwVhUygoEj9E5inAiSMtZEcbEliJV+BR4X?=
 =?us-ascii?Q?ko23iN21gll1hFT9yG7oE8318nj6XOPIjTXhLwyOMdX8vcnvPocyvG/PDQBs?=
 =?us-ascii?Q?rtHZbfVCXFQ89jvW1qEGhTD3nNj9JyY=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: d446facc-8b5f-4cb3-5552-08de75b86d00
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB10037.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 04:26:49.8258
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ji8JF/KnPy3W9Tqy5jHyGMmqj8D5yteSLnDtYHgvau2UlOGMcE7g35vz1csnAJPNo1gz1znAzTTnmYw46oPoEqlo9DyPzbhDNeL8L8qLe7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8574
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[iopsys.eu,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[iopsys.eu:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269053-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	DKIM_TRACE(0.00)[iopsys.eu:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhail.kshevetskiy@iopsys.eu,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_PROHIBIT(0.00)[0.137.84.64:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iopsys.eu:mid,iopsys.eu:dkim,iopsys.eu:email,1fa20000:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CBD631B2AF2
X-Rspamd-Action: no action

This patch updates EN7523 dtsi to reflect the reset-controller
support for EN7523 SoC.

Signed-off-by: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm/boot/dts/airoha/en7523.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/airoha/en7523.dtsi b/arch/arm/boot/dts/airoha/en7523.dtsi
index 31191b8d1430..115cc44093ab 100644
--- a/arch/arm/boot/dts/airoha/en7523.dtsi
+++ b/arch/arm/boot/dts/airoha/en7523.dtsi
@@ -4,6 +4,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/clock/en7523-clk.h>
+#include <dt-bindings/reset/airoha,en7523-reset.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -91,6 +92,7 @@ scu: system-controller@1fa20000 {
 		reg = <0x1fa20000 0x400>,
 		      <0x1fb00000 0x1000>;
 		#clock-cells = <1>;
+		#reset-cells = <1>;
 	};
 
 	gic: interrupt-controller@9000000 {
-- 
2.51.0


