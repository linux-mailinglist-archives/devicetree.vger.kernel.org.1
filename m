Return-Path: <devicetree+bounces-275898-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHB/IYpmt2mQQwEAu9opvQ
	(envelope-from <devicetree+bounces-275898-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:10:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D90D9293CFA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:10:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78EE83014135
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 449F730AD1C;
	Mon, 16 Mar 2026 02:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="BOotWcuB"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010036.outbound.protection.outlook.com [52.101.69.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA8952DFA4A;
	Mon, 16 Mar 2026 02:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.36
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773627001; cv=fail; b=PqB65FjK2CPQ3gW6CTVZ9ZRoDqqymFxFroZlp56/GozP57cXPd7NuaUZNSprdQj01J71B+pg12VDtfbR31EDPp7M/00BPttR4tJjSoSnvA5VfXoNUfr9Jif5CUsYONrq/sdoKPtArOfttlHnYMBFhg9vXlT5C/Fn3DAqdgOrF8Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773627001; c=relaxed/simple;
	bh=kgSlXV6kuqzgw82sI1Onxk0crSwIWEKAR6Nz0OmcVso=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=T1RQuhyCw06z3i6hKosUkB7OZt2ih87Mr4pPoq9GvKi5uEifuITygPb1t5u5quEl6McIx3dtpIpw9qnqwrMl5micG5XXlNkvFzxeTY4t5dKw7GlLZAOupEgYIwfkGTvQ8RKl27XB2OFgevDyj3g1bkw3Gmnupuu3fbDRwYlANdo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=BOotWcuB; arc=fail smtp.client-ip=52.101.69.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y9EhwXEZcIpUSf98icFQRCi8tKHcMG39Ac93VY5yxtiv3zwqlmchCesI+ssXfziaNKDELfpezLzwpaqYjFuxvkq8+uMiImO4JdSgsp5lZ3ZxXQLAjXZBhlHP19vLUGClTMPfQD24IZiRrJSgos/kQQ1IJdxR4xz10ToV2ciiJcoiAG+VZOOP3TLfP/lPS2ZXd06ldy5HmWJoNUN5Y6PpiZwD9yXgVYH9O4vhsUU6MrCo+BWjTLL2G5FBr5cmpBqyWos8r/FdyBDSPabaH2B/UwLli4XsZ8RBx7bk1+0eKMTPzli3RjLcQUhIW75BT0bWHk/HQ0Kf/p1lXMGUsAKr0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cZGsfqXmCiOZTKUubiCa2SABX4GROzvf6PIW7yIL0k4=;
 b=xoZXE3Y+e/2qEtJG8mGorVB18DIKF8KpdNmshF9D4/x2NylwP8O89+8XPd51CnLQMB0LxIVisFfBIVmE0sWDgyFnuqIp40Yio1tT9ZMmmMHyTmTXZiEQjvSPvP6bHjedKze5Yr3u29pVm/soVcqpqiAZVX4F862s2orTyqkFfdpSUxY08ULP/hJY6H5NpeZevGXzr+Ldc70x9QRW2tOxXCHGUwGdLFLzDVxKfMV8wB0C/oCwf/0Gb4L+Xyw3+6CxfaQa2o6cf5Zs+394LDv3fM4nhuSBrlDRb9I46RNzsfeYdflcYMbC3acQ69Hlt6z+Hp+g4mSNb1NOGsxbnzVsUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cZGsfqXmCiOZTKUubiCa2SABX4GROzvf6PIW7yIL0k4=;
 b=BOotWcuBONO6U4aH4yRLfo1wJ8Q4de54lpV0VxZZ2RPSBxP3nArzb62ljG0jiB3pYKoqLa0H1fWvtZgeI8UZjBN4ddkc1qYlhzd8M/n0DGcni9cIKdZV/JPEk5MR+obPmWog9wbRloD1ZYe5Muv9I51AtaZnpTe4QYQN5Snkb8cmFKwlFCro2W7YD7taXxarwZ+nXlQTt+oMwbrea9gc0YxTUz6d6wHkxclR6ZTavm1PvBtgE1X8cmo2TqaYPnjZKVTOdMTk2/Wob3ZBKo/GXF6/18JArUh0vDbB/XCCd0B187w6FMvScu1hL8EO3ilUrsLpZpy3A+FbUlOnuZdH8A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB7044.eurprd04.prod.outlook.com (2603:10a6:208:191::20)
 by PA4PR04MB8047.eurprd04.prod.outlook.com (2603:10a6:102:cf::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.24; Mon, 16 Mar
 2026 02:09:30 +0000
Received: from AM0PR04MB7044.eurprd04.prod.outlook.com
 ([fe80::bab2:d15c:fcf8:ef2b]) by AM0PR04MB7044.eurprd04.prod.outlook.com
 ([fe80::bab2:d15c:fcf8:ef2b%4]) with mapi id 15.20.9700.022; Mon, 16 Mar 2026
 02:09:57 +0000
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] arm64: dts: imx952: Add audio device nodes
Date: Mon, 16 Mar 2026 10:14:36 +0800
Message-Id: <20260316021439.2971610-2-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260316021439.2971610-1-shengjiu.wang@nxp.com>
References: <20260316021439.2971610-1-shengjiu.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA5P287CA0043.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::6) To AM0PR04MB7044.eurprd04.prod.outlook.com
 (2603:10a6:208:191::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB7044:EE_|PA4PR04MB8047:EE_
X-MS-Office365-Filtering-Correlation-Id: 086391e4-c595-4cf0-6c4e-08de83011f2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|19092799006|1800799024|366016|56012099003|18002099003|22082099003|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
	LiMy/NN146kVjpstIwsOZ/GQbD4G3rzSyPMQ3y8eCLi5/b8x2ZBQ7gyJbPds8ISmzYFGb6dUZjU0wsHYkvVdkNZFFyt2wTkY8BkDAhBiof2JE/FrkrmGNu/BcGpYSo7++BhDMj1kZwdCYYaHuCy/KNmpoESPFmvVHQMwxZZRDQud7IZHIR067+bZcGXBFbKyABZLArGlpKwZJXMTVqu+z4jT9RaBFIeZprmaIuQi4cOlk2x8LTCSNQdnBXnuc/GEWdgQod5ICAxehBx9F24P+SzqHUSs00hk+HLs6z3sNygctSzFeCLZR0qkDTUJaotsO+rGBB65omc/KewB7CrxAcgU/JP8gMJZZAFjV/6DaScdtbBVYDCkz3tu86Hr1tTq/hzvIpHLe7qUOLKj+dyZ2E6jR75sVyoZ+hZVR4FQJvewWdNQ27o5mEvYk3dBcj7CWyqZHmyJYPhO16JyjXNon16UElb3xT46E+S5m6CLfyaXQyDgQsxvs8r5VBgg1B9Y6p5W/A6dX7sQomGses9SnE0u1wzjF7A3fpg4vh/nGLKtK71RCOsA87vHBG7Zt8rAY772HVxvblf7sHtJzJCLDlcwUBZLHfBvOWXD4bNgE9O+RBrVTFAcCFoeCAPQ1+HySj4py12VdPDYz2UT7d40Qh7JeVpc8p4b9nqHovFo0bPyMZhLXgRdn+0lkWrp8AOptiqR/C+Qo2vWYUF6zWaHZ5HzmAvCWLtIktiGqzdGE/oqr19cDuoeuj2S1TdiRP923j445kcRTHwQz0nfj0pUMK5ojTQ4LVqmWEFVTiQm3TZC/9NOLrveiGZV+S1D0XME
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB7044.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(19092799006)(1800799024)(366016)(56012099003)(18002099003)(22082099003)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?v8/MpYXqXPZ0OMUeNrmlUxIS9nLHtY9GkGLwA6OPWbO10PNwQIAg9r8sBDQ4?=
 =?us-ascii?Q?QyxZTl/n4W4ozSktS9eUXDhur9PFWAioe/WDS5apfKCEXZMze6C2BPrxXblN?=
 =?us-ascii?Q?SuCqtAd/YLjAXBKSp65wJulIaVuZooWV04eZJczuPBwnkEqXGO8niTvM1Ejb?=
 =?us-ascii?Q?tMnO6FhKK9UC/PMrCvynLNgf4gD3tgBSSS8XyBXvR1TqNU0YeI4/7sW47AiY?=
 =?us-ascii?Q?bkY8T7VyPPOwUhV2n8VjoOgBs9pDRS31kLbeUdibbVU2DC8A2hSJW8xuftHc?=
 =?us-ascii?Q?x7APJSnjtu0y7CQkNe4J//HnQ3bjwc7sdD/da5MvmOzy1OUWwKAZRQa5xNNQ?=
 =?us-ascii?Q?rHS+FbFunAvKVUHH0Ksm4Uws0dcpBlHMNuWD5walbF1GNk8O6KQWrXDu11VM?=
 =?us-ascii?Q?QMWr7q20Ssqp9SQQmzs1mJPbplsERwUkZi4dLaHKAyqT0iXHsBmYaFr6A29N?=
 =?us-ascii?Q?NWHyS4wNNcz/joHINbdLB7eBoGLFimCp1PAafA84EEKknUXL9eb35qTi/AoX?=
 =?us-ascii?Q?VnrPyCLKtiVT0GUBGc4mVJH2e4Ppm2+MyEXEKjjwEFkB7ZU/hf2NebR5dZzT?=
 =?us-ascii?Q?KujLsqf3zRb9K/qsozUSu/fQjWeEmY7p3NsqVDk321bPZGOEx2+lIrDBfbXn?=
 =?us-ascii?Q?ILFc+X5kLRT7lf4PoO47wfu3BBoASAEI7rc7oP7W3FZyHyw5Z1nV6thTuzrS?=
 =?us-ascii?Q?mg8xaiLJVC6q6db+CuQdJ8zBqUNSciutKInOwg+Xl4dCypTQwmh/j0A/YoIY?=
 =?us-ascii?Q?uHSM4RVAEpimAHu8d/UkWP4SJB0TW+nxVACccuo+fOy8auTfAYL9ohjv5LUC?=
 =?us-ascii?Q?hJ+e34Z32EC55uwG3vWLACHYm0c+CzDwBA44nGLjMOlVCOVy7HIm1ej8kezI?=
 =?us-ascii?Q?0tPJruuGuGXBYJ4p/2TsFwt7RsDldCPU7BwnGYCYkvEECbzYy/9I2RktPOJz?=
 =?us-ascii?Q?JlQcjI4a5xdAVquOYbNxcPTjDyp9sMgD6cgca4tpEGaHQ6MVNxukmc0atK4m?=
 =?us-ascii?Q?8f3th3tCVnmwmOV9HLafemRNhq5/iULCbPOVBNKz9GTTWYBzxfoG5kWjDSP2?=
 =?us-ascii?Q?wk1av2g5Vo95nCRu5hdGi07vwKeWfjmJVMuLvhv0WYA7dmloJ5TiHYByclCW?=
 =?us-ascii?Q?QmU0o6m5U1QaYuhouUKMqLI3Ilgykk5xfVknUArqEA+MfPHdx3YNYsR9Dxgg?=
 =?us-ascii?Q?b278HFpe9976nyc6la4pYvAxhfByEQi/Qxf21m4Lrl7U8PpWwEocsTwQn5sB?=
 =?us-ascii?Q?O8JzkqB3o4iuOmAI4rpR32QpTzAovOMTi5qFCOJLYPLHfbNBPvcw8goO/fEI?=
 =?us-ascii?Q?R/NRuKg9DmA8LxsALiElXhXNNg/SYnVzoCyZcno2+H0jXj6sUjwbnqYOJrIz?=
 =?us-ascii?Q?FIdryowS/AmOtqxGrGV89dOsAv+SAQIQtu3rsM8EM2uRwAj5UbyY8kjaOHwe?=
 =?us-ascii?Q?hg/ApKIq/K0sCFTPpHF2XjV9zrKHmjvrEXMEVapnBOTawnX8pErNl/vCK2Xz?=
 =?us-ascii?Q?XRXFuK5pHSNcs1fL9vf5qCK2U9FZux0LDlk8PMLQ0LJraCzIMKO7egzBTkPf?=
 =?us-ascii?Q?TbN15t7BsdGaGII0NrIj6g3FZEfM5SmTsy8u7FPVr9oF9941Fomh2w1JRkrN?=
 =?us-ascii?Q?vDD514j4/6D4WuuQaEU+dI/O/ktS03d4pQYTqDEPJu1CYur7ZdlhMI2MoMFE?=
 =?us-ascii?Q?LQKl7mbpkCqdG2wwobcvDd19joVm0UWj30W0sViNmPFNnTEuvxpyBsdNV3Tu?=
 =?us-ascii?Q?qL4CbK7O0A=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 086391e4-c595-4cf0-6c4e-08de83011f2e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB7044.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 02:09:57.6890
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gnEaK5nUdB7poarPkQZ5QhlGvsTHKR+zACy03oWZ9M5/rOT1ygSL2LGgCNeEBwOUR8ne6pTc7LAzpx3wN+vcVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB8047
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275898-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiu.wang@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D90D9293CFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add audio device nodes, include SAI, MICFIL, ASRC, Audio Mixer.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx952.dtsi | 203 ++++++++++++++++++++++
 1 file changed, 203 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx952.dtsi b/arch/arm64/boot/dts/freescale/imx952.dtsi
index 0f86b5626cdd..5e40f07dc10a 100644
--- a/arch/arm64/boot/dts/freescale/imx952.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx952.dtsi
@@ -823,6 +823,160 @@ usdhc3: mmc@42c40000 {
 			};
 		};
 
+		aips5: bus@43000000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0 0x43000000 0 0x800000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x43000000 0x0 0x43000000 0x800000>;
+
+			asrc1: asrc@43000000 {
+				compatible = "fsl,imx952-asrc";
+				reg = <0x43000000 0x10000>;
+				interrupts = <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX952_CLK_BUSWAKEUP>,
+					 <&scmi_clk IMX952_CLK_BUSWAKEUP>,
+					 <&scmi_clk IMX952_CLK_ASRC1>,
+					 <&scmi_clk IMX952_CLK_ASRC2>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>;
+				clock-names = "mem", "ipg",
+					      "asrck_0", "asrck_1", "asrck_2", "asrck_3",
+					      "asrck_4", "asrck_5", "asrck_6", "asrck_7",
+					      "asrck_8", "asrck_9", "asrck_a", "asrck_b",
+					      "asrck_c", "asrck_d", "asrck_e", "asrck_f",
+					      "spba";
+				dmas = <&edma2 97 0 0>, <&edma2 98 0 0>, <&edma2 99 0 0>,
+				       <&edma2 100 0 FSL_EDMA_RX>, <&edma2 101 0 FSL_EDMA_RX>,
+				       <&edma2 102 0 FSL_EDMA_RX>;
+				/* tx* is output channel of asrc, it is rx channel for eDMA */
+				dma-names = "rxa", "rxb", "rxc",
+					    "txa", "txb", "txc";
+				#sound-dai-cells = <0>;
+				fsl,asrc-rate  = <8000>;
+				fsl,asrc-width = <16>;
+				status = "disabled";
+			};
+
+			asrc2: asrc@430f0000 {
+				compatible = "fsl,imx952-asrc";
+				reg = <0x430f0000 0x10000>;
+				interrupts = <GIC_SPI 384 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX952_CLK_BUSWAKEUP>,
+					 <&scmi_clk IMX952_CLK_BUSWAKEUP>,
+					 <&scmi_clk IMX952_CLK_ASRC1>,
+					 <&scmi_clk IMX952_CLK_ASRC2>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>,
+					 <&clk_dummy>;
+				clock-names = "mem", "ipg",
+					      "asrck_0", "asrck_1", "asrck_2", "asrck_3",
+					      "asrck_4", "asrck_5", "asrck_6", "asrck_7",
+					      "asrck_8", "asrck_9", "asrck_a", "asrck_b",
+					      "asrck_c", "asrck_d", "asrck_e", "asrck_f",
+					      "spba";
+				dmas = <&edma2 103 0 0>, <&edma2 104 0 0>, <&edma2 105 0 0>,
+				       <&edma2 106 0 FSL_EDMA_RX>, <&edma2 107 0 FSL_EDMA_RX>,
+				       <&edma2 108 0 FSL_EDMA_RX>;
+				/* tx* is output channel of asrc, it is rx channel for eDMA */
+				dma-names = "rxa", "rxb", "rxc",
+					    "txa", "txb", "txc";
+				#sound-dai-cells = <0>;
+				fsl,asrc-rate  = <8000>;
+				fsl,asrc-width = <16>;
+				status = "disabled";
+			};
+
+			amix: amix@431f0000 {
+				compatible = "fsl,imx952-audmix";
+				reg = <0x431f0000 0x10000>;
+				clocks = <&scmi_clk IMX952_CLK_AUDMIX1>;
+				clock-names = "ipg";
+				status = "disabled";
+			};
+
+			sai3: sai@433e0000 {
+				compatible = "fsl,imx952-sai", "fsl,imx95-sai";
+				reg = <0x433e0000 0x10000>;
+				interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX952_CLK_BUSWAKEUP>, <&clk_dummy>,
+					 <&scmi_clk IMX952_CLK_SAI3>, <&clk_dummy>,
+					 <&clk_dummy>;
+				clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+				dmas = <&edma2 61 0 FSL_EDMA_RX>, <&edma2 60 0 0>;
+				dma-names = "rx", "tx";
+				#sound-dai-cells = <0>;
+				status = "disabled";
+			};
+
+			sai4: sai@433f0000 {
+				compatible = "fsl,imx952-sai", "fsl,imx95-sai";
+				reg = <0x433f0000 0x10000>;
+				interrupts = <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX952_CLK_BUSWAKEUP>, <&clk_dummy>,
+					 <&scmi_clk IMX952_CLK_SAI4>, <&clk_dummy>,
+					 <&clk_dummy>;
+				clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+				dmas = <&edma2 68 0 FSL_EDMA_RX>, <&edma2 67 0 0>;
+				dma-names = "rx", "tx";
+				#sound-dai-cells = <0>;
+				status = "disabled";
+			};
+
+			sai5: sai@43400000 {
+				compatible = "fsl,imx952-sai", "fsl,imx95-sai";
+				reg = <0x43400000 0x10000>;
+				interrupts = <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX952_CLK_BUSWAKEUP>, <&clk_dummy>,
+					 <&scmi_clk IMX952_CLK_SAI5>, <&clk_dummy>,
+					 <&clk_dummy>;
+				clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+				dmas = <&edma2 70 0 FSL_EDMA_RX>, <&edma2 69 0 0>;
+				dma-names = "rx", "tx";
+				#sound-dai-cells = <0>;
+				status = "disabled";
+			};
+
+			sai6: sai@43410000 {
+				compatible = "fsl,imx952-sai", "fsl,imx95-sai";
+				reg = <0x43410000 0x10000>;
+				interrupts = <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX952_CLK_BUSWAKEUP>, <&clk_dummy>,
+					 <&scmi_clk IMX952_CLK_SAI3>, <&clk_dummy>,
+					 <&clk_dummy>;
+				clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+				dmas = <&edma2 96 0 FSL_EDMA_RX>, <&edma2 95 0 0>;
+				dma-names = "rx", "tx";
+				#sound-dai-cells = <0>;
+				status = "disabled";
+			};
+		};
+
 		gpio2: gpio@43810000 {
 			compatible = "fsl,imx95-gpio", "fsl,imx8ulp-gpio";
 			reg = <0x0 0x43810000 0x0 0x1000>;
@@ -1062,6 +1216,40 @@ flexcan1: can@443a0000 {
 				status = "disabled";
 			};
 
+			sai1: sai@443b0000 {
+				compatible = "fsl,imx952-sai", "fsl,imx95-sai";
+				reg = <0x443b0000 0x10000>;
+				interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX952_CLK_BUSAON>, <&clk_dummy>,
+					 <&scmi_clk IMX952_CLK_SAI1>, <&clk_dummy>,
+					 <&clk_dummy>;
+				clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+				dmas = <&edma1 25 0 FSL_EDMA_RX>, <&edma1 24 0 0>;
+				dma-names = "rx", "tx";
+				#sound-dai-cells = <0>;
+				status = "disabled";
+			};
+
+			micfil: micfil@44520000 {
+				compatible = "fsl,imx943-micfil";
+				reg = <0x44520000 0x10000>;
+				interrupts = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&scmi_clk IMX952_CLK_BUSAON>,
+					 <&scmi_clk IMX952_CLK_PDM>,
+					 <&scmi_clk IMX952_CLK_AUDIOPLL1>,
+					 <&scmi_clk IMX952_CLK_AUDIOPLL2>,
+					 <&clk_dummy>;
+				clock-names = "ipg_clk", "ipg_clk_app",
+					      "pll8k", "pll11k", "clkext3";
+				dmas = <&edma1 6 0 (FSL_EDMA_MULTI_FIFO | FSL_EDMA_RX)>;
+				dma-names = "rx";
+				#sound-dai-cells = <0>;
+				status = "disabled";
+			};
+
 			adc1: adc@44530000 {
 				compatible = "nxp,imx93-adc";
 				reg = <0x44530000 0x10000>;
@@ -1281,5 +1469,20 @@ usbmisc2: usbmisc@4c200200 {
 			reg = <0x0 0x4c200200 0x0 0x200>,
 			      <0x0 0x4c010014 0x0 0x4>;
 		};
+
+		sai2: sai@4c880000 {
+			compatible = "fsl,imx952-sai", "fsl,imx95-sai";
+			reg = <0x0 0x4c880000 0x0 0x10000>;
+			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&scmi_clk IMX952_CLK_BUSNETCMIX>, <&clk_dummy>,
+				 <&scmi_clk IMX952_CLK_SAI2>, <&clk_dummy>,
+				 <&clk_dummy>;
+			clock-names = "bus", "mclk0", "mclk1", "mclk2", "mclk3";
+			dmas = <&edma2 59 0 FSL_EDMA_RX>, <&edma2 58 0 0>;
+			dma-names = "rx", "tx";
+			#sound-dai-cells = <0>;
+			power-domains = <&scmi_devpd IMX952_PD_NETC>;
+			status = "disabled";
+		};
 	};
 };
-- 
2.34.1


