Return-Path: <devicetree+bounces-87774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BCB93AF02
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 11:25:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFCFB1C2346F
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 09:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 456561581F7;
	Wed, 24 Jul 2024 09:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="VrLKj3nD"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010010.outbound.protection.outlook.com [52.101.69.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DFF8156F41;
	Wed, 24 Jul 2024 09:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.69.10
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721812994; cv=fail; b=qgFwCH1o8Uaw4YCDw0/mceMTl7WMgUYQOG+U7PMCF763FKiZpjt9DBaI3/A78ql0gCZfGu4U1xcTTTPjf58KU9ALP2PLPYhYS2GFig3Bn0107y9WEhuy1qaH66ww/VTaPvcrnDfGevtIauwcbrMqjL2XYVFuoJdWErmPL0BwtCI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721812994; c=relaxed/simple;
	bh=HwpX2H5/waT+v77FfPi6R67zpLkm2txcrlzz1kvOefs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=f7jRRqL+6GuxO+JNn5sxpd1wiVwhhyKPEieq+50U1L7WTgOpv51WJAcs3WENP14qKeyX/h0zSdwJyU55EQKEJOroFtikhd156Hqcu+V3sGB/X+gwXSXN7In9v3ZQXxNPvA29P9bCUcI+up5PVn+8++PfgPd8GIi9mYfHmUJ0nNI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=VrLKj3nD; arc=fail smtp.client-ip=52.101.69.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lypJpjZbu2v996Y1SoEvaOFF6DYRn0PxSgLvee4VJ17onlL0nuIGRprowCbwSxQXlfSbLcI6ugKnKKODZ8h65lFtsAY2Yi6U3dVv6NyzgVh3TVoUl9YGfzZ8dUtCQKX8g0Ohb+bIrIbc59NA1FcR69JPGuDcC6NSFR+FxtUOJ8M76tL8y0X63fyTHVU62NlsDrmpYK+GP7oqYyaYhlNbkV4XVtdasuQ9YxSr/yak+qsT/UHCAW/RE1NMBTKDahi+9CUw9JPGrYyJqvh9B0Gsjo0Q5ClrN0AflsHPpz+pZ/nxnlLQWXwnyM4ASUechupxncg9mj1b7ZoktstuBXZuhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4g/3EQftbQ33UVUEwnG9ChHdXobRT2beBoGetzCS+8Y=;
 b=HUvPRbzRdsCz70sZEzOP3aIQQuNWcV5SYPI6I1n6Nd/yRwarpP8JWZ/X5ka4MDuJsfLMoLLWn1PeCbYmFYKdD78+TvJnVIw9yFNdheYp1tyxjmb9x47joMhP65ipvV48KbwuLSu+KgRP8nQgIMUbQ6zo7UdKM6owy9k9zlR9dpSFnYSeAg+zS93p4oiqFaXNY9FsShoHugsd01i5CDOgWi0EHNMOqPDOyNbcLIrX2tt9u1J0VgMp/wEMuyieykXtSJHyZCXIoA860lwi2fViJeTVyTnG2fJxyZqGHX7Y+uMWHeiXkHSmxs0SuBi5CO0oB0Le4HLqjor/jadIdfizlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4g/3EQftbQ33UVUEwnG9ChHdXobRT2beBoGetzCS+8Y=;
 b=VrLKj3nDa4Z4xo9PX/d/f8Iqdk1kPZTJysUM56gpuj1QUewHX9Djn/iCpvAD/2hC+ccCBnZz0so6XsF+IwOdT4Ijv+pGdLO2oi+BkhS5PlfctQZlyvwgmc3BYLXl8uXlNEl4Yar8zQhlKg/VdnvUs87DF1jdlZnJmkQMvo7qlsRrHSPO+l0oGfG+EPM+6mE2h84BB9ptPjEJuzb9/cCzbVWN9EfyXmAUR0Cj3jokLrCHqyX3s5X45bYQFIowdRhnn2bNn5I93f4JAfWITfGPemIKAN522q8BbTrEXFrZ4pRrcSlPCcjKTQXxyRJCTzjGG2VPxxYlcvjXkKnuMHnrOQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB8040.eurprd04.prod.outlook.com (2603:10a6:20b:2a9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Wed, 24 Jul
 2024 09:23:09 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::d1ce:ea15:6648:6f90%2]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 09:23:09 +0000
From: Liu Ying <victor.liu@nxp.com>
To: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
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
	francesco@dolcini.it,
	frank.li@nxp.com
Subject: [DO NOT MERGE PATCH v3 18/19] arm64: dts: imx8qxp-mek: Enable display controller
Date: Wed, 24 Jul 2024 17:29:49 +0800
Message-Id: <20240724092950.752536-19-victor.liu@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20240724092950.752536-1-victor.liu@nxp.com>
References: <20240724092950.752536-1-victor.liu@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR01CA0193.apcprd01.prod.exchangelabs.com
 (2603:1096:4:189::18) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB8040:EE_
X-MS-Office365-Filtering-Correlation-Id: 461076e3-859f-4d28-0fd3-08dcabc23bb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ZDM6UTVcetQwC0mTPhv6g/peKFXyqI9rdw/vnLyYbtNzZfPbwFiVRpC49fSY?=
 =?us-ascii?Q?n5AV4wFi9xrqcWLe1HZOhr1DxKpNVADbcMEPMD3VNTgXz7k6LIzkkL7Khisc?=
 =?us-ascii?Q?Hrf0CDa3sPn3erAw/vVKp6M6NR/apnaO4s1t/2SS5qv6vtAe3byJ14plJACO?=
 =?us-ascii?Q?5kEhL4XXhaKcSvafGuIALK/uHXpmbc0bsiUJJvknHsdVMuBbfz+EHI9wFmFt?=
 =?us-ascii?Q?q4r1ge5OpfIuBQhfcZxRMLk1AdhA9YcCoGzkvt/2uLfQzOJGj87dUqp8BK3v?=
 =?us-ascii?Q?+elkkUCw6vmCnMDRJ8Ks7/MkJwVczeiWiWltexwjqXZenGeORHyWfZ9LK7kt?=
 =?us-ascii?Q?LKJsFPSCc/CmQbJixZ3ZZaZYrQjRS1g3Z/aCvZrVmsJWmKCVPXwLM5OwlALw?=
 =?us-ascii?Q?eGZKjLqKexpZ/D8rJCdRkrEcSHHo01pwwJ5gZP/9Cbt7X7f25UOdrGCbA9XF?=
 =?us-ascii?Q?bwq9Nbm1eFrQe3AjRJtoOWal+3uVoP0KBgo0NCl/NEeWCPQZ1hZzDC8WDCrx?=
 =?us-ascii?Q?5AZTsjptcqzOuQXWfbX0pOTNU12PBGdPOFPxSMAyOz16mIvgS4NUkYuFp4mJ?=
 =?us-ascii?Q?wB4U8dxdDpeeizJOBJTubHnto5RFlqUs8NfnqBzJrsmqC6dCXu2nrGWakd46?=
 =?us-ascii?Q?qYUs38T4sD11JiEd5mZqHvxFik8aMOwS0Sh/E6PeZo1CsaWG2zW0OQWbqHeW?=
 =?us-ascii?Q?ABrhLCh6Y7k44zZFXYvIoQ0aEjwnkIgvuCMtrGzqpLM0I9HtdMRqwILn+8db?=
 =?us-ascii?Q?xphzjw6tttkOWxgys9euGlUN4vGEyZNilg6mvTGUMzDbXIqCSeKZpJxKOEeB?=
 =?us-ascii?Q?W3FmbOxRW09jXBbaik5alKYkOKjnUfnnKAI5wEhEJIh5T85tiWHJwBte2uBm?=
 =?us-ascii?Q?benDv+AqgkLAOTBrACRkS3/2Td2lRRC8EQ23tanrSkucVlF9xcsBg3mJdB7A?=
 =?us-ascii?Q?vCebE+4jHn/dRLz9OjduOvZwYIcWUt2WMGrBQgERFLsgNt1O8ho1c8OJaoPN?=
 =?us-ascii?Q?Xoc6ISlqifqxtOyAdBefLOeoYvG6ghzBD1oQmMQEJt4eGOnOjQRpohApN0AU?=
 =?us-ascii?Q?4KySQJkh8yZo1shFYJA/RtPsr5Fouh1EznysIbHVD4zicUMzbeVZan9dK4Le?=
 =?us-ascii?Q?UUeD2tOntjn9V9pCYadxsC7DlSp07aLrH/iQS++9OZGjx+gjZnyzlMbo+9LL?=
 =?us-ascii?Q?9WrZJNIyT9SYHA2WYUC+CI9AGMJhahuLvN88NnCTkKyguJD0n8KWSVFpF9ZM?=
 =?us-ascii?Q?aGV35Yyldp2V9OdgyIfZGXVkwGDnrWWPZXiYwUFj4HE96+liSXAIn1ECsXmQ?=
 =?us-ascii?Q?17hwMhQlzdp77hEssRXL5pxeHMZl1fBz3QzW9a493IucSm6ZLczxwIfBAJVn?=
 =?us-ascii?Q?XOocM3no7KXpQgSG+EEcL/bZtnlFZdIVf31GEcJN6kjPDwUpVw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?T9JcgaVqyajiZ7RodzYEhRiEJmI8PSI+/z6uJ/c5clY39CUK1rCI9W2ufuIc?=
 =?us-ascii?Q?bqo7rNUXYQwAesxDlDJf0IV4AcDLe+mpdNTe0hcKb/9khUSpglaftOQWJ5Rz?=
 =?us-ascii?Q?flnD5WHOK2+J8HW2SjNMsRmdmh/BDpRwIZjDDmbJ77w5Lg1NE/hUa8jz2dtC?=
 =?us-ascii?Q?569T9hXDrGTmURfXbAJuzByZHfOQ4X1XdaEXFWSIdzrtzDAw+9zHkyAQXbIu?=
 =?us-ascii?Q?NY3m32BZ9IAVo9KvdZusL4sxIDaZaVS5tRRIm0XXuLhEPzlJ+NLcyUTGMgD8?=
 =?us-ascii?Q?AoSbl+NRiVYZ6Xf+rk3BroMesJWuyhSIQCHpoZymDnn0nElC4eXiVy4cX1Rm?=
 =?us-ascii?Q?VDQ1LcCJOp5OdHmA3hQeCcFFqe5O2I1fRU5Z3N8rf0gk3ywPO2m+immmx1w7?=
 =?us-ascii?Q?X+nBygIFvjxsfih3/PzsuXOLR7eECxTY2tCttuPonSc3aAOHhsAlywwY+r8l?=
 =?us-ascii?Q?ZqGPcw1mwWqh5D+0uLRCuTyxRkSKszNa75Zorw/WScmzzEP8F7xAOV5U9MRZ?=
 =?us-ascii?Q?77HaSXgWLNpRy7uNr/lXDm+VOgrrIdEvn0mCldFuu9vEVDoO3HhG9d9BT5t2?=
 =?us-ascii?Q?kwjQqwNPn7b5mlDEh4CQvUcyshjcHIxUM3cUENNlTQ1dqeZJR3XXO7tbQOLp?=
 =?us-ascii?Q?7Nd1Fta3ss5tnGl6STlK/hchmNvqu/mOTqiBbCC/P1cnyT3WcxCB6+q2O2Ec?=
 =?us-ascii?Q?uL0eac001ibA3li0mUC3lNM7eInyY87mQw/M5CjTVSuz4su4tdMtQ9wfLWww?=
 =?us-ascii?Q?Poz1Ee1/whvl7+wgDJ0k8gb9ycZxkOGiMgB5VeWjUkxmMLaaeV0rwP/jeDjq?=
 =?us-ascii?Q?YUmBCdVMSU3k8UQC5VztmOvp3RIqbxAx8mBhvLsVGWo9hxrknVFJ++jREw3M?=
 =?us-ascii?Q?lb5EQF0ihFFVuSHabNEgPUwVKJWZnfkvE/oxyku462VBdOO4vPK+PZJ27rAY?=
 =?us-ascii?Q?fzVxGfqgBO3arPAa4vxTZYdfSKtEhFfZ04l2W5DWNwdvk2Vzwt+dZDiSq9Ns?=
 =?us-ascii?Q?7rA1chYR0KBqUk0X9Oe4AGQH3WXGHbOIdf1NLGW8exAjY5lYWiFahhkmWHEy?=
 =?us-ascii?Q?kXpHmiyF314OvRK1rZcTd8fqQINGlgXCKttdaU/YH7AKgFnpKK29NaZvl0cq?=
 =?us-ascii?Q?zBEztJIcwL3o4DNlaVHJJXKiMk66KqixSh7M/zfaYfU4v1cR6uM/s4P8FbGe?=
 =?us-ascii?Q?tNT9nCsf9vJP9457V19SenOoHEbJbzHAhOnMXodGva3rUXySe+5pvHFIk5zI?=
 =?us-ascii?Q?Wp9G9vWQOUjnouRuI6sr0klkpyki3+7v+1H4Hm+/lhObcL0JcL41ZGIh7cNp?=
 =?us-ascii?Q?BZ5CcmQWMq9rg9YObT82ux3UHvDawb89vuwRBY4KWzJR4pSyv1FsP6pJ9CU4?=
 =?us-ascii?Q?LpYrDr7rgKA3JO5p4kQCH85rEAAXn2eexKHjDBdS8gVOd93nHNwO/ZpGGqBj?=
 =?us-ascii?Q?1NoTU9FfrDznlHtYHQgjA2OtM/oY49v169+YJiDyKQAGfiAp2O8N9DpmUKHW?=
 =?us-ascii?Q?nncV2nNlspEbUO1FBeARapI920SGp14OAIcKk3HAzogd+qMsNj2mG8PUrFpY?=
 =?us-ascii?Q?/yds/A/iLk0T13rm5KvuoM1D3o2W4gldgEcKZbQQ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 461076e3-859f-4d28-0fd3-08dcabc23bb7
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 09:23:09.6789
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nmfuo74IzYDxfNh1giY1spniM9VyBK1YM0SCwD8LHKFXxiGHW+The7Zv+c0iyd8/LSd3kNzsiQUSdf9NBHH7mQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8040

Enable display controller for i.MX8qxp MEK.

Signed-off-by: Liu Ying <victor.liu@nxp.com>
---
v3:
* No change.

v2:
* New patch. (Francesco)

 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index 936ba5ecdcac..bf88f189c6fe 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -62,6 +62,10 @@ sound-wm8960 {
 	};
 };
 
+&dc0 {
+	status = "okay";
+};
+
 &dsp {
 	memory-region = <&dsp_reserved>;
 	status = "okay";
-- 
2.34.1


