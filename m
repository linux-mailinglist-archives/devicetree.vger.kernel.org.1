Return-Path: <devicetree+bounces-243182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B14C94B59
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 05:19:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DC31F342F96
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 04:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBEBE7260F;
	Sun, 30 Nov 2025 04:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="TO0zaPXC"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023136.outbound.protection.outlook.com [52.101.72.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8396736D4EF;
	Sun, 30 Nov 2025 04:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.136
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764476351; cv=fail; b=VwnePN25zFpr8QBnKh64um6kFyQDquQCRRns4Gp7YY+fCkQlMaDa3iCksr8/4yjBjGNYjIFSEosrCoTrwuaUTYZ+VItMb+1euBRYynC+y0P+0dtnNoTm9iU+SfSdHGB4Aw1oRR+um/trlgMslTEIZow1GA57m08xLXC06RjxoEs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764476351; c=relaxed/simple;
	bh=ZrRRtPYPEChvxfeBZdfAh+u4C/VDrxrj1IydJ+GBQnc=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=LXerdw9FRXtfVlnFy2NlisYyWqzUCevKVdoDX9HUDy7srz5pdYbaSJHfv8V6aIZ8mgxRPY4BUiKqL0vFwvB3uiztow9CCypFsrZGfkMQrOgF5DIN4KCLddTNLZ8Zsxg0pCg8veygVQE1CclRl6yfoLrtcvYyWbvNIzIG4sQdbms=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=TO0zaPXC; arc=fail smtp.client-ip=52.101.72.136
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PnztsmbX8yVCGTJ9t9Aw6dbVPrQLsmw3MH8ROztC9jyl0lsJmNR2ohtlE7/s+2ULLFZn4aqY92UVaP8bjT4CTyhr0ptU/x/IfJrXFJDsVmCtQdYDysqfeC2HR8gpDxuZR3CgUUNmVLFXOKDwJv4caE/EyVd9ehYuvkkpazt7BTz74KQOH785iKDJM8k0reN1XcAYVopNjGH77FRsIVVaTPldSzpfXMDdBp8ppekeDhz6P/9ucCd71M0zKKxtxzuk9eR1BKCU8FU4qWTzt42pwzeq8+HZ4dbnBoS1ZvJ8A1LHk5ltkq3AmSfqZSzh096zRqYueqsZlj/FpTtguEsOYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ON54VBPuaPOx/W+zJleaVcYOSzJ3yCHtWxHE1bgcAOA=;
 b=UOWV2+lxkf214eKsC2EVXNEGPXM4wHUWYZS1spApBWFgF7ODm0j4nFAY12jILmmuxmyh+Ch20FmeSajTBxUNzo8vaABIr5upFnqQclE3aRMtIL8bv2t+v4Ekml7LnPssF4F+Eoia6allg+uHNs62dn5KMGiZaBo5P7eYpCfVkQQRqWzNEbw6PZnb/hfSRUxPs7YCx50TuEUCVDtZ8CkQh6MAEVmU8GQmncTCZtn2SyqYu/UjW6TNcjTSel0RLdtcD2xpMjXyERoiSef2UgQynjCTSMAVD2orWIHw2+LGx572W3IOd4R1lGikZ/n6j48Mh/94kOrsjigOPK8oWEW7Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ON54VBPuaPOx/W+zJleaVcYOSzJ3yCHtWxHE1bgcAOA=;
 b=TO0zaPXCxx71fgjAuhZiFOJC620tVJW71yTSQJ93ssBGmNIVt5vnlC/0KoEaPW1VG6RKMKNIJrl3xCki4nWOv1BtoNDqsmxU5ffoXm7/47A4o/ZIQPEyi03QXv3HrkUzuh/y4lscLelx85nnNpnsAxLDzN57i4Eqx/j4wxUbkNWD5gYlRshKBBwOnyr4Eo2Gn+p2q2brDgygCPbxSlZMsX2dtcGtxJlJkUushglgAlM1PRduHbzS+h2N2/ImtFRReWeZaaQi6wIerYePDzzLyjHLQYt52Xpd0c+ZtYTBUGqkQvmGYclY9MOPxmUKmiDC0/Lq7VM5pROCRezgH4q2xg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from GV2PR08MB8121.eurprd08.prod.outlook.com (2603:10a6:150:7d::22)
 by DU0PR08MB9049.eurprd08.prod.outlook.com (2603:10a6:10:471::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Sun, 30 Nov
 2025 04:19:02 +0000
Received: from GV2PR08MB8121.eurprd08.prod.outlook.com
 ([fe80::4cd3:da80:2532:daa0]) by GV2PR08MB8121.eurprd08.prod.outlook.com
 ([fe80::4cd3:da80:2532:daa0%3]) with mapi id 15.20.9366.012; Sun, 30 Nov 2025
 04:19:02 +0000
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
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>,
	Andreas Gnau <andreas.gnau@iopsys.eu>
Subject: [PATCH 0/2] arm: dts: airoha: en7523: add reset controller and support and SNAND node
Date: Sun, 30 Nov 2025 07:18:52 +0300
Message-ID: <20251130041854.2909001-1-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR2P281CA0088.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::13) To GV2PR08MB8121.eurprd08.prod.outlook.com
 (2603:10a6:150:7d::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR08MB8121:EE_|DU0PR08MB9049:EE_
X-MS-Office365-Filtering-Correlation-Id: 478a9364-478c-4668-0947-08de2fc7977f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?TdN4dERBdjZhjr1mqSsehbYCPi7vlv+sROF6FDvpLXH6osYiqaCn11uX9cCO?=
 =?us-ascii?Q?CMJEvJSvMnCrM+zeM9cNTr2IJ/ajN9FYPKBNBx/5AfUcAeUKm20SHYZbRmtL?=
 =?us-ascii?Q?9FRAPeC3tIwgrX3NFJw65J8hRSiBLiu5qPixtYX3mGbJqOX/KkR8qW5SiQm9?=
 =?us-ascii?Q?O60axFB1xfU6dyn6BBVrAdyGhFuOsRaGDipOoIJmJ8XaJhhXT3XA2N/lOeIZ?=
 =?us-ascii?Q?MP6M2WwaKBEHwbtYmR5+hQ/fNvRsMtpoDyQxGOwVmBqv8kSU3HXAyYRDTpzv?=
 =?us-ascii?Q?VfhWzczkG7tZs7g6dP2XP/OPnIsqbpE67hPU4SoPycjiDwzWLAEGwbnGexik?=
 =?us-ascii?Q?7oJIHStvK1syyx8io8wlcLOp74nW1Mt/Ed5FTKtCVmzgcqXQbTKd0pqP9vy+?=
 =?us-ascii?Q?UFuelb176NpleNwB3M+NImsCfaTrwWn9RFKkqxpWVBEfMeicOaTlh8AjSglo?=
 =?us-ascii?Q?6gDyfiGHvErRp/Ckxo1XdoYTedI5OCbuqjer2MZeweRdctRqqNsXyV5ELWzj?=
 =?us-ascii?Q?/U2PRUjXowgYIDh+5x4GqS219R9Fdoo8Nem8jcK8KZSMO7hNnPbUpBpPB858?=
 =?us-ascii?Q?G35ZL2k/MUtdI9KJyCmf1xJB4qUEW1Wzm5Pq6O+ClohiG1lK9fPBwVq5qM9R?=
 =?us-ascii?Q?ckB1w4mRb0SjxpYUQt9ZPfM0oL4hwKC0/k6e9Y1JjJWMM+Xdr505r+Z/gIbs?=
 =?us-ascii?Q?mQR/IoFr8ksvDCVxrlwOIAbpuYRoDiz+kqB21lAlLua5Ig+mrQiKXL2jFzoM?=
 =?us-ascii?Q?CrdZjKBVg2KnnMfqeUaFtbeuNAqSJvn2Y4tOHYvM6I1EiXdqcz+dAmReKBRS?=
 =?us-ascii?Q?P8s/w0hOUVhXEwToEcYi1CLEnkZ8pUNijTJPJ6WwRZp51DJKIInmJioxqTAn?=
 =?us-ascii?Q?ro7LwmaTO9EWBqG7B/pdJMgFCdQ1qfRFcni5jS5m+zkNOmYx2Rv4jWwdL9ev?=
 =?us-ascii?Q?ioUOuqnl8SHdo6tdUHhfDE1cG4xDMtzDppxaOOnYd/bhy+RnXtn2PsT+Xw+u?=
 =?us-ascii?Q?VwaVnLEu+CXLaXFsUxDGnemSsuXGT9Hu/zNlNCCH2CwGonv7Q4CGrG4J7/J7?=
 =?us-ascii?Q?qVkNe4yX1MNFXvUGdeZbk0WPOmZwh4MIDyPqx4bkJpSNgmT2WcafZ2KVGWxm?=
 =?us-ascii?Q?xNKhONsl5MkKW54JeeHG+MUGOVD7C1lL0rIXmR4tBlV5H23J/kx6MRADqMx2?=
 =?us-ascii?Q?QHlTx2YjsrzWIM9qwF2t+7HPM8tUsv9F4UEz1uks8uvBMt3yIP/rCFhPlb4N?=
 =?us-ascii?Q?tTHv3nFPw5I9v0+QEMNIbOevPao/9MAzNef1BQAvNPFtwsmwImp7tWWax18N?=
 =?us-ascii?Q?w8k9SWLxfEEkax8NSlUmExg79/NBnLxkRdH1IOVAZdVOQj1vZkCkkLDehQIj?=
 =?us-ascii?Q?nFfk0zBVM7fjEkmuZubGflrjuYUPHGwJ7TCGoMR2y71iGMTChpnH8Zf9RZag?=
 =?us-ascii?Q?GoLrC9IlDmLdIjIM4v0BECBQsYK9FCiru8M863GraLUQH+ZUcl3+NShKGALL?=
 =?us-ascii?Q?NhZcv98Vd8VJ+APpDlCJTVXhEaa1oUPsJkS2?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR08MB8121.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?CUYkNtq8FwmSj6nfq8rwNFwI0ugwb9N6ohkd1UubeKInXekomo+Ze+ifOD5X?=
 =?us-ascii?Q?e/ZvMyu6zMzbrvww2t/hWNmIYjzBirgLXPW2YWeg049hyHczB496fqhW+P62?=
 =?us-ascii?Q?gMYG0z+tOoC4fM9i116zZz1ViTJ+lQDYYuVPGaEw0DHxrZZD2yd+vrOp+Rc6?=
 =?us-ascii?Q?R2ew/vJAu53IGjPqHv8jIQb0g4FwZOn8gmBk+Fv5sUhLbB6BQJyjwvwJFaim?=
 =?us-ascii?Q?PqwNpsOAdEaV3/9LY3yzWY2xPuW4XRpaMjAs7cOqR++CD5vY1KR8u8/a38iP?=
 =?us-ascii?Q?lc///r6kVQCYWBOI3aC6Uu0yA/+HOukwy3yAxW36JY+EjPcFPAxTo3vb6+4K?=
 =?us-ascii?Q?Rkh83E6jdsmQeY+O3d7T+9w1x34T0t5Y2M/K/BDMzv7cuo1HGANz0RZhMG50?=
 =?us-ascii?Q?M4HWvraAt4ugNh9c1XHsF1Wuc0i+nmkfhvkUWlrH4hIJeQEBiBMQfB/4GktN?=
 =?us-ascii?Q?sWbq4d8K3xVXCWREAQ4n9meXKyM8VTX9dwVLf8nmskO2JdUW5V4S19chq77b?=
 =?us-ascii?Q?2gZWljBGc0MaCCqRTjGyCDbeEyLFSopmqSnvhCIzqBp0N0y3qQRfJHbDttww?=
 =?us-ascii?Q?kHEai7XEXz/rMEbCnvhdmOCOyHiVNZzNoLNqMS8XAVqIO6w2spq1BAj0ABVa?=
 =?us-ascii?Q?tmJLGXKf3xppKPPULoA4tMzlu+YmfNA1I29Ho8KAyztRZnjAmTkkD0OwhEia?=
 =?us-ascii?Q?sQV9nuctjPpekS7CBhE4bGgSpttpyn7EEXmKn1iX1/neyT063hXFCBR12tHo?=
 =?us-ascii?Q?Dgxlsqf+m+oz0rg0yUbI819xqmEGr5gS5mp2ONl/sO9l/Jpwb1EUuRIr7zs2?=
 =?us-ascii?Q?ZPiNqc1b7FeuiBsiwylLznuePyjRwBFXaq8Y92awKA3RJxJbVlLAWt8exxYo?=
 =?us-ascii?Q?3yXM5jPTShJv0oEtitP6ulghvFpgf+7fZyte4S+2XhQlQEZ0QAmUEOOF2RnW?=
 =?us-ascii?Q?bJTyeELW+h2uGu7PGGJob17959w+Hf4aAAY6FFRd1vq7V+00BeDUM0Jh4TN4?=
 =?us-ascii?Q?e9te3YIn7s+yZ0uX/Cxcd7l6uPSlj2bn4KvtLykeHDYOkgZrsa4GiE/fyzTS?=
 =?us-ascii?Q?LDwH5lyDxKk/L513P2FSv2nniBwRyxswrQ9cb5jESMJpGLJCXaQeeC3XSak+?=
 =?us-ascii?Q?JWQmdWoXWI6foErgcS2ihGpdDPLvw0HP9fFRwV2PPbN6hdS77icYtRN31W5Y?=
 =?us-ascii?Q?Q0yyWLmGZL+wsqQiGX9rcIMw+5/qF4JU3nIeq4iz2GaZg7WfoDInOHR1Tw7/?=
 =?us-ascii?Q?iz/FrkKxdACFgHz1mWUWzT395ZjEYUL9y7POJgKYRLeuZsf0Grj39FoxaCW7?=
 =?us-ascii?Q?olIUF0EKOvR6BS/uyzALl1QloudmeVB1+uBrBYNICJBtN1F1C6ecWwf0QdQb?=
 =?us-ascii?Q?5Bh10Q+db0BX6/C6+MaN+Is5o8no5WEuSvkmhKrMSI9QfeSdvwaskrqfCDdC?=
 =?us-ascii?Q?s/RLoTatNNNeOpke+eutW/x7K/PU4jkebiDgd6igJ7UiN4HXavFbd2/Bz9q0?=
 =?us-ascii?Q?TAAcBK6UxeOvgWk/NjjScw+coNgY47fdQZdnxXdaITQHhe1Y6i6Ygt6G/RHT?=
 =?us-ascii?Q?7K6RwP0v/V11bTFaDhclysqtOOYbUMDORyftMs4wl86Oyjs1bx+PmQwRkCUK?=
 =?us-ascii?Q?XwMJg3Oy/Yg/hX4eXNHCD1I=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 478a9364-478c-4668-0947-08de2fc7977f
X-MS-Exchange-CrossTenant-AuthSource: GV2PR08MB8121.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2025 04:19:02.4433
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 19Y1x5ahg1hsYnG7c9D+jP/0LxY5VcDTxp51XoihSd0YjJetSDXFXFEjcLhaGT8p+0cWTVJAEd2e6kIXx51bgPjhcRNZjSkXZ2hieNIurYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9049

These two patches updates dts for en7523 SoC with the recently
added features:
 * reset controller support
 * spinand flashes support

Initially these patches were parts of the following series:

  https://lore.kernel.org/lkml/20251012121707.2296160-1-mikhail.kshevetskiy@iopsys.eu/
  https://lore.kernel.org/lkml/20251017201126.493496-1-mikhail.kshevetskiy@iopsys.eu/

All other patches (except patches from this series) were already accepted
to linux next.

This series just groups remaining patches together.

Mikhail Kshevetskiy (2):
  arm: dts: airoha: en7523: add reset-controller support
  arm: dts: airoha: en7523: add SNAND node

 arch/arm/boot/dts/airoha/en7523.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

-- 
2.51.0


