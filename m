Return-Path: <devicetree+bounces-133475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 765E49FAAB9
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 07:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 695F27A22A8
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 06:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0A9819DF47;
	Mon, 23 Dec 2024 06:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="ST2xhELr"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2081.outbound.protection.outlook.com [40.107.21.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE65819CC21;
	Mon, 23 Dec 2024 06:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.81
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734936251; cv=fail; b=u9ZcKEBwZPmpGoCiZlvKPvMYJvZVU0QUYn77laaf1rEMubcSRzCp62mQeSOc8JpNKo86IFb/GErA6+yrNtkdkdIZgtBgk8Toiqx2fDM/lj/XWydWDAMRaWpsGkPjdqIR4b3hZ3SyHYzqaxI3xBiH0XoZzuwPAGqpEuLFNLrOhqU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734936251; c=relaxed/simple;
	bh=zHEBOHbEl4sms09i4VRfcGOXKziYpX/bqU/0V62I/oU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=u44OviGpvPPMrFmO/d1G67h+06HHdC6jmfLeg9eIYHSGXlNesltQ8BCktFTnyGZgr0FK8Gw/E8PGYxAJp1i7FP0EStvTtO/GxJ4/55OVS4A5fiYM02egMITrFikPn2p0fUpYkfRzJPrJMFioDv6xCZVbOaF7SFIOUjb0+no7Gao=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=ST2xhELr; arc=fail smtp.client-ip=40.107.21.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ogegclShzF91xFi/atK3lBROJ3kP2pPc1fgN5GquevdjK1kWDiWC1wEQBPQz7gCkFgYSro9rvcfut8R5w+WgTiF+aP8FO0pP6Jxe/96zcZ6/VB6TEASgZs1/l9Jcm5/zwCkdTrrU3lzIX8jcEFQkspXd2dng1ubchZBGEKtrYTwwJKGeQpe50VG3GFfUOVU/egObw7Ar8boANHtVmfoAFJ2T2n1Hz2PMT2RwSImp+iYHiPS05JUtfm0hFwjwKHdm0e9eW1f8W22USEv86dyqUdnLeDqrYw47S6BUTt+bJ11I0CnvyuNz37PEVuFso9am0/NkriqP3nxdZr3A/+sVQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2/64GOZVZ7UPD/71DFazdO8NfU6O/0A3dnPczvkP/Js=;
 b=n0O8AtdLSSiJJl18eWDOfIYgR286cRMEps2NjVEVat01GHtZTObv2Qf6vXsVbzP+gehvURktNDwsTwzQEk97DWoJkEMFhldDKnrixKy9CkJoCqXaomGcj5G4+yGDI4P6JLDJsZAECu+oUqyAHOnp8/cWzqmo93lva2IbhhhLQgBgCLDZQvs2oOPFokiBHLAdzqPcZY4RUYxvqfY2afJWs7cWV+s2PpPLO8HDtzVZbDFPWSzwAriMqZTCN94GgINC6ZvPNPTbR70gUEMu3mxEW7EvrjU4NV7GYp6KcUvz7KtXH+MZUvWFcvtnBMCpk4yXY5MmrsYqTY8yqgpDZZHa8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2/64GOZVZ7UPD/71DFazdO8NfU6O/0A3dnPczvkP/Js=;
 b=ST2xhELrW76vyqbZXEaDm+1dbYVE9spMcnc6QO8VipcKZBsHhpV5jgUaOE+TPO9bgbAyNZtXHih5uPCYLv0HUunjkDnafuKFeRLM37aev32fAYsafKGqi4x9OzKVwx7Hhpm1dLHXBUUjPibTNaVXI4tLr9ZP91p9+ULwsaE82kGcSqkzQc5y4dxjPlRH2ZBiM3s6JkkV3g1jdvSs4jCIQKaUDd5Qz322dS2X8Olm7EKyWWPlYoSpKvmVuv1NQRx/9Fp9rmH5Dh6BLSU9NjCATkW5jbUC9EeXpBf/qmp8rgHi6nb4f7lBwo38ARsPh7hKl1ib5s8qSPQ9wYdU3iUSDg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB7941.eurprd04.prod.outlook.com (2603:10a6:20b:2a6::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.20; Mon, 23 Dec
 2024 06:44:03 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90%3]) with mapi id 15.20.8272.013; Mon, 23 Dec 2024
 06:44:03 +0000
From: Liu Ying <victor.liu@nxp.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	tglx@linutronix.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	aisheng.dong@nxp.com,
	agx@sigxcpu.org,
	u.kleine-koenig@baylibre.com,
	francesco@dolcini.it,
	frank.li@nxp.com,
	dmitry.baryshkov@linaro.org
Subject: [DO NOT MERGE PATCH v7 18/19] arm64: dts: imx8qxp-mek: Enable display controller
Date: Mon, 23 Dec 2024 14:41:46 +0800
Message-Id: <20241223064147.3961652-19-victor.liu@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241223064147.3961652-1-victor.liu@nxp.com>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0008.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::19) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB7941:EE_
X-MS-Office365-Filtering-Correlation-Id: a8d5d608-ed7a-4971-68bd-08dd231d30a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?5NNv8Gdqe9OcplE7lui5uWM0z5wAQGYBnrr85VtTu+D+7fldUqT2fS7y9fN6?=
 =?us-ascii?Q?zKuPK9g/XK/Bq38KxO7UZZQ6b/xBqY1iGi7eaJZWuHDxud8HRbjKelEQYb0q?=
 =?us-ascii?Q?fKIqeK24d0LwbYieJTBxXvMr5bRswU/uRq/XXW/eSXNKgaig3e/fcABtPPMZ?=
 =?us-ascii?Q?9ie+AisMLVoMoY8frQVDKf/kfyP54KCm2hfui3qfkvCnyBMhZ89bIaRYkImi?=
 =?us-ascii?Q?1pclK86wDch50ZmWf+xeHH3E/e/aAugijRBq/hGLG5msrn3B+XoabITDHqKq?=
 =?us-ascii?Q?a4p0c4IPHz0rqu8pV/uxVtG+U7fzWeACX41H8M0o6BZ/qduYt1swRTZuvrYm?=
 =?us-ascii?Q?AevxcxTOSCQ6EoK3au8bJGBsKfv/Y8lddjHwO1PijkBppJTj/br6w21jJlzp?=
 =?us-ascii?Q?YNjouLJRJ2bW7s57ikKhBe6iL4mSXpaziVn1TwElsJYGitruE97fj7yOkldY?=
 =?us-ascii?Q?HSydhkG1MsFYB02S13AzQzrMdIi78mrqc1y61USVEG383XeaDnaz5sC1B6rD?=
 =?us-ascii?Q?X746XZKLWpM2sar6WWXaVW1vE92LNoYnU9YrFoUE4a0/22U3xRaW+b9dHPnG?=
 =?us-ascii?Q?DTk+0vgf7aLT+SqwtjmTRAP90JRpGEK/q1WmfVkypSplGtqgRVeJlUbheQko?=
 =?us-ascii?Q?UwGnBLtsSsq1Frl1o5e/sJgyVJKuUpord8VsDB+cmkGQfzSDYKADNRXJlMio?=
 =?us-ascii?Q?ECrnX7jZi6V+MlZm4j5Tf8fvSO+eOa9v/61WG+8uVS8KRAbTLI4HaYPPCa2a?=
 =?us-ascii?Q?DqqwbhrySK9HjNq59mDMO8zbBs5ZJApeAS752oupmMtRcRi4lOya22rRAFfJ?=
 =?us-ascii?Q?xnuyP8ZOrlASnfy8atdFk1i2CEW8Zw0Byiyon1yiq2itUwsT5T7tQ/8hj0aG?=
 =?us-ascii?Q?Nixi4adXUD7zCX0n+kLl1F/Spii1C+OKwuuyMIFSc/CQpwYp2lEd0sNh421R?=
 =?us-ascii?Q?LgR/0l0krlkkMZQXJE1gAlaS3hGguNlz31PVFNMtEkX9ONLqp+pjFcwotU8Y?=
 =?us-ascii?Q?EcJFtH+32WE/16y3ABntq2wawCdd7zhFy4fHwNDhoFETw2TQF6irWGFXmL0+?=
 =?us-ascii?Q?MHJbq4vimMQhhs9/XF+fkCs8NjoDtre/PaE8M2I4dALhqDTX55xFTp2ZFsKb?=
 =?us-ascii?Q?waSjLSiJH/BihiSj1qjM9WORGNcvCo/skFGtzPh6pfLNS8xHo1nVLopEE5SW?=
 =?us-ascii?Q?XAuHoXyxt0x0W+A5ISMffYxs1UV6uzecJnEcU1q3w2Xj0mM0xQ00FhisHnYE?=
 =?us-ascii?Q?gEoyDuYWFwq0S/WiDkpB+lwGHKEpg5SqWV03kKLtttDwrUN7Ln/5CjrjTZeH?=
 =?us-ascii?Q?BEB1BzZXT2vGkS3f5w63xM6c5IOa92Y4HxGWfHhtcFJUmjQXx/3tXuTiNO6I?=
 =?us-ascii?Q?stWUFUNTG3fNKzhtlF0IpCAN1AOlxQcja1pwf/HfVCGBurWargnuGJ7B8ywL?=
 =?us-ascii?Q?QEDbOhDijSE6y0YsDlRYWex/k8CpCtQ7?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?HAlKjBKsfloIZaB14HAmPEDVZ4j+Tdx2INf18dlrYAyrZfPtA+cOfaIi7iu4?=
 =?us-ascii?Q?PMyfAzdEof7RmABo5rUMj3nMcW8zGwIJQSnl1DyIyNbsrvCJxHk+ZuAsnZ2X?=
 =?us-ascii?Q?AB1ILwlBg69wYCmFkFwI56hfr3VfVY5aZyzeHEFTTO75HyA/hAtys9XHJSPu?=
 =?us-ascii?Q?ot6juiiStxE9u/Dk4YxPe4yDp4F6U/GgfEreC5V2Qfw+rpZf1MvqCEAH2QcA?=
 =?us-ascii?Q?AacfKIVjRhuhOOZkxpr0a4F4Yf3Wv7ag/mYCtpM28F01+RgvxwwtGWeYqWUK?=
 =?us-ascii?Q?XzFz9+cN0VxPeSOtxSECQogrsl0GlsID+kH0/mfqa+37Qr43Wg9l27N57dgJ?=
 =?us-ascii?Q?E5Nk539+b4CEHdr/ohincORW5DnqY54ar4bcj+JIDNC+vowCyzzVr3BwU5v6?=
 =?us-ascii?Q?Ec/1suEuZ8S4MsQ3nf4OLHLBJ4qVeSyvefc5p4eh9A7qMDCMIkgGiBdVp/9n?=
 =?us-ascii?Q?4XUNfv+SvJrHqyN0YOqdZA3kpgYvLUbFtzMFQCDTiu/y5wmgd3Rt9pNq5WCr?=
 =?us-ascii?Q?scLKI3I7CjINdi2A8OD1MyZPHKknOTAEAp9m1FDkF4/WZOKADrXc5admpluF?=
 =?us-ascii?Q?P7vn/xCkfsuQa8Ycns+jemuMzSCVhRkSyO0SVGFGQXeg/PtTjPvGfhHcprdU?=
 =?us-ascii?Q?DY2DMa4h8uMaYZPzulAzLeG4dThuoQSHvAv+OhxA1mBafjekJQDHVVV7zO/l?=
 =?us-ascii?Q?A1JkfTC5yc7Jup0d+Q3S7GjYhVGePMhrlhtgtN5cXAJfpIzJYv3fLf5GQWvR?=
 =?us-ascii?Q?J2pKHqDbpgGAuBm4V1NWbuJvwG4mO4MEZcx7nTtAqa1M41CjUkWNSACAwd/0?=
 =?us-ascii?Q?xKQveJlTZMa5Km2KaviErEA7NkHbeGOLiR+fahkxzXEjhw5fmB39RkNcF7OA?=
 =?us-ascii?Q?AKMqM+H+nhWYwyDvwGbrB4xKT4ZQ8AaHDAR45xcW1qo+E6IDGsaIiSl0szA6?=
 =?us-ascii?Q?BEOTppQ4ltmNY4VQQ2s2s1WAmuphNpl6APPAuxBBu/WMrGmLAc4+hW85/60u?=
 =?us-ascii?Q?cl0WfsyBBytP6O7dKiTb10O0xeyLB7wHoAL1pXtblTcdPxnEUdyIJHMEo8sE?=
 =?us-ascii?Q?JD8tF0jj2yCLAE650YLoHsP1Nrvvk14rIUG6IpxyXtEM7aUEB1KqMj7dm3jW?=
 =?us-ascii?Q?IJzVrIAKP6T6mVVJAHxUw2+3DZ2gwk6DOQ66xy4Z5CEE0OEOkkexolMaUvqU?=
 =?us-ascii?Q?fe1KlRstlj1bemvHHRhAZf3yiuDS0XfPdvL1x8phlM0bpyVX6EczECD3K6uB?=
 =?us-ascii?Q?AVf02W2o52AzTrESW3xpo4BM/jYdFQ2mTqqoU5QUXDF603ywDKFk9e3IggSa?=
 =?us-ascii?Q?PtWPyO3Xxs6om4RPmAc/7tfXR8LD5z905qjE4dy55n6QbM3Q9oe/bBrnYkXA?=
 =?us-ascii?Q?FfgKITT0g+NllZGtg6UATD+Ni9IXZWr2Vn0QV9zObZLPhhA+5yD1UNEp47Z0?=
 =?us-ascii?Q?DnMjf46lbzOy4NaGyASGnJjfQZBe0hrStjhDeQO6mjPaxgKTJhmiJvx6ivOy?=
 =?us-ascii?Q?f7/n3YIQqjdLu5dKcsUbaHF6BzocuSkPcDljuyXzwywwnwa+3zpWUnNPCEy7?=
 =?us-ascii?Q?gHXmrBcmxyMxBgCDOaGZBtLXrhmBrFbmJiko5bhm?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8d5d608-ed7a-4971-68bd-08dd231d30a1
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2024 06:44:03.6529
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e0n8bjO5Q1/eW0HVxaZ+41q8oCgmwsz5x0r3HK3gu3yGDlwGk/GmohvY/Q4ObDb2sZSMyHwqcUHgkYpy5StjXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7941

Enable display controller for i.MX8qxp MEK.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
v7:
* No change.

v6:
* No change.

v5:
* No change.

v4:
* No change.

v3:
* No change.

v2:
* New patch. (Francesco)

 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index be79c793213a..c7b4015c7bf7 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -234,6 +234,10 @@ &asrc0 {
 	status = "okay";
 };
 
+&dc0 {
+	status = "okay";
+};
+
 &dsp {
 	memory-region = <&dsp_vdev0buffer>, <&dsp_vdev0vring0>,
 			<&dsp_vdev0vring1>, <&dsp_reserved>;
-- 
2.34.1


