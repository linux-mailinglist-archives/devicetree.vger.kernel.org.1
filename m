Return-Path: <devicetree+bounces-137939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3403A0B253
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 10:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DADEA16761D
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D242397BF;
	Mon, 13 Jan 2025 09:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="P+D6hKBA"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2073.outbound.protection.outlook.com [40.107.249.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573B12397A9;
	Mon, 13 Jan 2025 09:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.249.73
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736759099; cv=fail; b=HHPn8d0+d16AWycroMQU530jHmJG9kA92395yE/R7LW8RVYtPzr44RLHrh8sKP6TtOZodJfKko8pTCtpccGbpUC/Fmk6XK92hNcoSZW+xInZSbF/m1C2a5JtAwXxb6dp+0fAJnn4z3lnEow9Fq3vCZfb3lJpPFgHrnUtFqMjbOs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736759099; c=relaxed/simple;
	bh=chDoiAAhpA8Kl7+L5JwqG825Quq31hxgZKmsympg48A=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=t3o+CH8vdldPw6jF1kedBEAV9oCIYpzJ0wyaFAayFRW/a0iLqUaAhYXQEw0OgIjv5qEpSnBAh8GDX4WmrFpCs8W6aTNT+GysbCNbz9k4o1mtjz0G2bJaN4ZXY9bo5Frx0dbfCHlbZbW7AgjrT5iahi40Ui5cU/zjMdikNGbYDwc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=P+D6hKBA; arc=fail smtp.client-ip=40.107.249.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bt5qi792tNYHRgnrZugJ+Z0uWjGjt8inaG1FUvCxX9Ogo3u5dvpP7r1RXvGyM5lXsUbjQzPsCZb/ZFl2k1Qh+/y+K9MYJNEElS5BePo3mKWMyHvr5M82722hmHDFXfG4noMEOTR2tDRNMcSwaVb2qnOSln89bCastnrtVpsYfo1/8LlNVVbeHdVD9rs1n3s4Y1mbTEG5q4uFryZzmoo49LaIkqfc1aNRGeLmUO7L9EhJd37YZBJ/eJw1ApO19u6eg5OslCWruYXngsHiwTsGweo4SP7HW0id8Cw/tgpsH5bnd72bzPzLWwlly8MYogR0hMOuSuxb78Jw/yAbcpF/Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hg/chxatBh6+Fdzh9Cw7OI/JL5X2j75Nrzl5R3HDaIs=;
 b=tFf5T8ShJU60g4t9SbCIICjBnqwlGTaaMdEgolDXvSBZRgCFip9gP0K5zXTCWgTVk43tYZiiD4B9KpMAz4Pq9W/WMLinRm2MHdguHMpyrQurPKFp7k8g4qrofb0fzQ9T45t2RQb+2EUFuZP9kVCcOQH52BElYT0JMKLn/FW78qLn6u2JL2enD8e0tstGA66EUM3uT/8bCcmCvWWQHttb+yz+M64KYmglpZi0GO2v5n8XVj/kTfC6h1kSvsBCg0aQXHHR0vLgrXQyksXei1nB0FH2R10ZiCxEJVYH7i5d0EmbTRZBaZaF3PU8hjpepxpx+x5MNK/T1DPgFkrsn9ZVrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hg/chxatBh6+Fdzh9Cw7OI/JL5X2j75Nrzl5R3HDaIs=;
 b=P+D6hKBA7iw1IPgDF27iQn5dMfS5oyZEIO77N2ItVLbYXB75hQorFOZbTcxRu0QHOLhHCElVWCSQzQiTVk/WXilWYUmrvTlar57vMCYylbgwwjSrnakbfVPCucHgple3HDpvJxJZt/D7mu0RFEGsRBaLCSi9rXWKd1UmcEa3BpxzroshWBZZh+GGgEPeVxHGAC6ELz8K1Lvdd97ki2RwlxVIK0unr2YzMTXsKsL1gGxwZH1by+rXxXcUyWAc9BSaLd0R4Dx6JydyL9fpAXhgtDIFyHMAjv2ZAKBHSS1Hmw4+TIcP7SsBJ8xalxP5zL7ADWsIvv/lgjMGI8LT0d7JHw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB7044.eurprd04.prod.outlook.com (2603:10a6:208:191::20)
 by GV1PR04MB10377.eurprd04.prod.outlook.com (2603:10a6:150:1d1::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 09:04:54 +0000
Received: from AM0PR04MB7044.eurprd04.prod.outlook.com
 ([fe80::7be0:296:768c:e891]) by AM0PR04MB7044.eurprd04.prod.outlook.com
 ([fe80::7be0:296:768c:e891%3]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 09:04:54 +0000
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: shengjiu.wang@gmail.com,
	Xiubo.Lee@gmail.com,
	festevam@gmail.com,
	nicoleotsuka@gmail.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-sound@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/2] ASoC: dt-bindings: fsl,mqs: Add compatible string for i.MX943 platform
Date: Mon, 13 Jan 2025 17:03:21 +0800
Message-Id: <20250113090321.3193464-3-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20250113090321.3193464-1-shengjiu.wang@nxp.com>
References: <20250113090321.3193464-1-shengjiu.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0045.apcprd02.prod.outlook.com
 (2603:1096:4:196::21) To AM0PR04MB7044.eurprd04.prod.outlook.com
 (2603:10a6:208:191::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB7044:EE_|GV1PR04MB10377:EE_
X-MS-Office365-Filtering-Correlation-Id: 5da4eb86-9227-4aeb-c9fd-08dd33b1589f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|7416014|52116014|376014|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?XoMPe3tvoMX/cV6FtyODoMJwO0y4/YUHOQwtFtR7rviwszOf+kbdtj85kCmp?=
 =?us-ascii?Q?h/lHuX8Xnq9McaOmMxmuTl3RY1v4me9QR+JCB2ZmBQUTzItceakt1KdVQlpQ?=
 =?us-ascii?Q?XGyxWd8edj4mysI0dfcsl6iUF1VTGGssvng/TZ5eoHz2aeUWgJOBIk6miXbs?=
 =?us-ascii?Q?y3M8G7J7qbTMUC7jyTx6eILOfycbk9DD5EQOrTLaQL+W6eXc8bEXnzFOEMiz?=
 =?us-ascii?Q?pB+YCFgv4hjEcpHdpOsdmi30SajQ9fK8RZhqY+aSbqWEqm8A2qCDWl0U3CPY?=
 =?us-ascii?Q?VTBa7Lut06gxrf6Oy1TZ+KDg2jDy6rgjI+bJHBIrzaJ7bV/NQzjTTN807CoE?=
 =?us-ascii?Q?zJDqYj54G65xppeDxG3VEv9sRsBF/5JsjiOE3HhAWPCFxf7q6sVHJFj27nzG?=
 =?us-ascii?Q?9HhNJtdTC44dL3ZdNLvm3iBrrnhSlPTubcM7E9F2kxDLXvSZXEDNq2u/rNyI?=
 =?us-ascii?Q?wlCiqcjNZ5TaxFoYanL48rioUY5j9E691FBsxZEWGAQxl0Ws6wr7uvO4P8nF?=
 =?us-ascii?Q?PeGzlEKs1Lx7MHf/lwUFOZkIb4SDeYUudhWS74Sq1xN3cXnX8EiftM0BODtS?=
 =?us-ascii?Q?nIgWe6pgPjyuW6hXzxumOGKG1S0d+XjqP2eT/rPhlWBss80gOggcjEVl36u5?=
 =?us-ascii?Q?THEApabxl9CcvnhYcx3HdRbPTiAF+/3vLdxjYE7kh4zQi9wOAQs2g9++k5eR?=
 =?us-ascii?Q?QdXpt5neowWEo+Yhm5TO6DDkrR7kUv8h46sBWxUt/9fgwELrEBRW2iDmJ2VC?=
 =?us-ascii?Q?MLou5zpap/Y8TP5nAEyhOHmhzpjIU8H6F8zfvXxKcNDgWY9gxxuHy4K40k+m?=
 =?us-ascii?Q?anZOLnn/JjyGHx/Z13Qnt8BkaiK7RAYtToft8yeX2mI+Uz/y/QXozkWlFbVR?=
 =?us-ascii?Q?kqOj2j7HZlDaYHaEvu7NREQVUxPU+lvCrvKWwYKelEs0sajJ9Y1g30ltgykK?=
 =?us-ascii?Q?YstWZhB7ApH5rtZYH78JEsza3j8jQJHNTy8tFM9z419YT8rCalT5+pJ1eAbF?=
 =?us-ascii?Q?dThRfo6UmFsWkNQY/kfRa/zFQa0A8sRGc/3mbWmWDY7MsGU0kpUm0p4m1Eih?=
 =?us-ascii?Q?z3QEM7xfLchxLroGQgRIhSwatNFy67ZJ22G+0qS2F3TwvDv8VKSImFILKKyY?=
 =?us-ascii?Q?eNDO4RsewC0nMBBt9gaRKsstgLI4EF8VThfrVgKmnp1nfkArv36D1hx+t2jf?=
 =?us-ascii?Q?S45KY6OmvtGzIhgfPVSBbNsWLbNF6zEqLf9OdwyCVsuzZPUYMJndjRCfbCAm?=
 =?us-ascii?Q?TH7bNvv563lWFb7FCLt9KIB6Iif9LjOI0foJEa8LDLq8BYLTKfl6XpiPfqvp?=
 =?us-ascii?Q?c3uFbX9NufyrJGMgiHdsHvCXbPwCZt8Bxl6EBFwL1wQQGy33dVTxNZKfXEVi?=
 =?us-ascii?Q?Ps6vYGn4XNKkwPBnTVVzsBDwZWw62MT5qUof7Qiiz36ITMxm/kffHdiyYTTA?=
 =?us-ascii?Q?m+I6tSrMU3OJ1tkV801uXKWmBjGUDHE4QliHbmwL2bOTeIKvVFIp+w=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB7044.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(52116014)(376014)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?re2mq4HY/HYO98QSOtHRyastGhU3hsFV937DLcyvlOJTXnG5amSo7MVCYi/O?=
 =?us-ascii?Q?73pqArZwmRvrPpe/iOMVLE6IxJcKPjiMOnRY1hOLRhNW1kgp7yuceVsehUMf?=
 =?us-ascii?Q?jSEUWN72eHflpLpp4SVO0h3jUSEGnn3/N9Kj0TLHWtVMXs/gVqgLCdXUxjOV?=
 =?us-ascii?Q?h2p5hASPuMSeo7ePSGej0NncKcSYPwjrm1A2ek70rRqlOZ5us/VecnxBxyC2?=
 =?us-ascii?Q?oF4YGysdjrKadEHK7Feh3BQv3tsz5wIcniuG+56l3P9K4T/L7RXC+LjML9vY?=
 =?us-ascii?Q?qGHRTHT2mShBhwMzVWuxl4RKndZe9WPbgcOHjo5WuvPSmMy2LnVdNtixbY5P?=
 =?us-ascii?Q?2q3rW43/eJ0bGRcaeu+PfeTT7SMLCmZEdS2C3NQtHzN464xs0yULDMMiNIp0?=
 =?us-ascii?Q?0RVlsueZC3THnGTwKt9qMtXiH/Kb66XGtraKm/rlQd+kzS5YsnHc1g84D5Qr?=
 =?us-ascii?Q?SCHxvVRmrTMgWIMRHDUkC4g0IkFblrPBk5Y/l3fun+bfB1WyT9VNMtxlcNbN?=
 =?us-ascii?Q?wzn/BmkBF+tMaLMlRCD3K+HKNtq2WkPDwzf3kvdTpQ0VICAxSdH6IB9Tua2a?=
 =?us-ascii?Q?EpXEF89cuC6ncQ3HSFxe8X4JSxv7YmoMRW+zRklPA8HiyndaTIbxRCAKqP+l?=
 =?us-ascii?Q?gNXd88S8LSvO2yyQ38PihMXTm5SlaOcJ0htAqXOfcwbPL8RsNUZ/mUlWqXBi?=
 =?us-ascii?Q?nu2jNC6GFhV+25Q6hywdIym8S4YYNJqUGAilSivtEb7iH/LOi4yZhy+ZjaqC?=
 =?us-ascii?Q?rvgDwIhmSMFA6cyTk/rsZASEiq0+WH29Mx4aomOTUM+LM5/8vAVu/dvhstnB?=
 =?us-ascii?Q?V9WmAO8W2Gr7Bknl3J84Ha8cblGee+bVywF4peXfwP3nWiuBn/7BPRhqMGRa?=
 =?us-ascii?Q?nPsWyTG4MGAZR3i89Gly8U/WYPUlzP38ow6woUh3P68Olh14dFgSpuf8XHGR?=
 =?us-ascii?Q?TSuHqyEWFsfAO4mqlQM3/7I86YpEZO6PAzgWlsw3NDVwGWJKWt3Tzk+r9nD6?=
 =?us-ascii?Q?4rSyDntt5eppJGf4GLAE7Ya8XyZcCN8wbbtngNMkFWCRJGW5IJg5dEJwR2rB?=
 =?us-ascii?Q?CFvXu02m1iI/uEr8tu3Tb/5ZpV7EZvCZWr85t6ltuERZh0XjXFe15vFfU8jD?=
 =?us-ascii?Q?60GpVqUyQXHBALFRtJ1jM5AWBe3thm45vcOJRAE1a55t7rdxjHZliC7ZsxfB?=
 =?us-ascii?Q?qeJfj51uN7GzcWfVQwlxv7dXDmMUC4wT563/G6Epw5UTyFuh/k3BX30PapU8?=
 =?us-ascii?Q?WxsSUlTwRW6nU19o+ujFGteXYAtuf4B2D2kWoDT/D9y/ml6QlQVBI7Vh6/DH?=
 =?us-ascii?Q?L1elmt3A3rPM4qOCwODuQ61A9L3zL4+DEc83OnJUsdTjicKoBYBBs7Ep8Hxh?=
 =?us-ascii?Q?aX0MAzwcXnUFV5WQvIM7hrViZJcFZbin0BVMNpDdjrvgF4WhPUMLlnRD0SDy?=
 =?us-ascii?Q?dpdoLpW2h0C2HHa6W42NQ6EYvoVekxu/NOxK1dJOmEmJDAlOPULLGn5YbcTk?=
 =?us-ascii?Q?sjmMhW4JWjYOferFPx3Kep+TtU38Rhl+P+z5Tugb+6ilVVHP/lelGSfdSsFc?=
 =?us-ascii?Q?vpuAbo3XOUi/BvdPahJ90QFex26tXVICx42rxSto?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5da4eb86-9227-4aeb-c9fd-08dd33b1589f
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB7044.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 09:04:54.8840
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: roYzdPDWcP4bykk9ZFMb+Npmns+/ntmU/PdueeRYa9Vl8ix+IkZuIIM+oaBsi+JJ+bn84nPXoZBJyWbDGNDxuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10377

There are two MQS instances on the i.MX943 platform.
The definition of bit positions in the control register are
different. In order to support these MQS modules, define
two compatible strings to distinguish them.

As one instance is in the always-on domain, another is in the
wakeup domain, so the compatible strings are
"fsl,imx943-aonmix-mqs", "fsl,imx943-wakeupmix-mqs".

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 Documentation/devicetree/bindings/sound/fsl,mqs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/fsl,mqs.yaml b/Documentation/devicetree/bindings/sound/fsl,mqs.yaml
index 030ccc173130..8c22e8348b14 100644
--- a/Documentation/devicetree/bindings/sound/fsl,mqs.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,mqs.yaml
@@ -23,6 +23,8 @@ properties:
       - fsl,imx8qm-mqs
       - fsl,imx8qxp-mqs
       - fsl,imx93-mqs
+      - fsl,imx943-aonmix-mqs
+      - fsl,imx943-wakeupmix-mqs
       - fsl,imx95-aonmix-mqs
       - fsl,imx95-netcmix-mqs
 
-- 
2.34.1


