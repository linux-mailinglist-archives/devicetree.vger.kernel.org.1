Return-Path: <devicetree+bounces-246119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA94CB8BA4
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 365F530B2471
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BA8C31DD98;
	Fri, 12 Dec 2025 11:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="reL1CUjB"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013000.outbound.protection.outlook.com [40.93.196.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2A131D726;
	Fri, 12 Dec 2025 11:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765539335; cv=fail; b=lmDZT9Dbd+zCDKLUPgPDPFTKKFJqDGuWIaN2eZMWfCx1owgXlW00Dpf04nSwdLgYLFYFs/AzCO1LqObzH7bM4JnC+ZGGLyhcLko9SUMUBqOh4F+35PShwWcr7O9evjk6Kf4oItznvDIRBWTWbFtw68yLMEgnVHtXMcEItSxTKiM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765539335; c=relaxed/simple;
	bh=DWybwPYkUzi0yNkSoleUHLuQNxyLQd3kqtjubQyQTvs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=cGfkoa1UqMuFjcNk5W+qMEFxIP8MWZEM3poDLALuphiL9SLPfewe9HBIBiC3WKuPJ6aj5Bz8KZaSI0yfB/Gc2fmDxLL3eVDoRDiyrPkJF3wg4zkNUXhN2nK7CorDQKqCMDmE2RG/Y3VLI744paQArD6R4vTRwZEWQSdPJPQ0BFQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=reL1CUjB; arc=fail smtp.client-ip=40.93.196.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WIZmNkYoXXQs/r/7GjtHC9CLvkXd0P91kQPU1XaM2eQDdIp9gQJsgMqGz1yj9twbGEFzwx3T9O1hKE8Ht9e95D6QGf0ll5jqFbBXKWxbowzlBMWRO5fmpmE3TdK2KdrGB0+xFO1H+LWm28P12gYhPc5FikSU3+JCRflFaMl1nfXeo4pNU2lrWrmx6/0GQLbiWe3V21BuwtbKabl/ukYcx3OzjgWyIt2RrAZVO/zIWHtE38r0XXJLGBLGD09WpUA02IGI2+P/uy/MtBvAT2xKBq3dSrH81ahQtg+Rh9M/UDvGLCCGTKwfbt0FENubv3plauZLc+zv7LQUbKg+HBdSOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qpiOcvuNAnSA+3ODzo9yZpYQT5EwuDaX8RnV3wi8tF4=;
 b=TpFaeRsg17oFQ5XnAtRz3YSal0qhjWhHYamVcDRATF3sP4iiy2WCiCmV62t1VeDPLOjmF00RtmxZD3wTn3bS4ZCaCrMPk1p/DQibaqOQmhfNl8gZhgGVvn3spAwBa7Zgoo/W2xjUT1hY8F5QlebPrIESKCSTNj3xF+zd3l6KjnjqPRSZtwA2tZJiPfq8OfFQlv+D8hZDgs8RE8K5qFjUtemIzn+wv0CxbgrReVpYTUguhhbEOTAdegxQGLm4eEziVHhwMcRIdTEqIEoF/9VCBXEDaNkGdhYNyIpHCVCXK0l6ESbhElR/lnem51mxqQ2NiBKzGTTYfLmAad/+7GulIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qpiOcvuNAnSA+3ODzo9yZpYQT5EwuDaX8RnV3wi8tF4=;
 b=reL1CUjBOn6sYsgcuFkSs9gbYFbhSzhii6IqFjclYVTyjF+oYPf3hncv2fdxojfB3cPhRlWPXqna+ixjxQXvR+IxOvDu3ExzsjJ8Nb8NcAW4nZM3iKErFvwZi4Dh6zuYyq0ExVK2VgpRcl6hoMYv01l/q/Ks3CO7awB7VL+rCVRzM7yDgBh711IPUs8UgTjWK1b3pQMv/9gDfcq5SJiI1AKuW0PZx0l6ymawypIdq/FCskJGnlMe57Q9iOny2OmUl3u23V0IYGl396IAvmszB7+5nMxy5MOUPIqxG+LTZ3ZDqctz7ySkBBvywnAQ7VRIv+d9jwFHNjBkAOk7tX83Pg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from MW4PR03MB6555.namprd03.prod.outlook.com (2603:10b6:303:126::12)
 by SJ2PR03MB7473.namprd03.prod.outlook.com (2603:10b6:a03:554::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 11:35:27 +0000
Received: from MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb]) by MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 11:35:27 +0000
From: hangsuan.wang@altera.com
To: linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Thierry Reding <treding@nvidia.com>,
	Lee Jones <lee@kernel.org>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Andrei Simion <andrei.simion@microchip.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Mahesh Rao <mahesh.rao@altera.com>
Cc: Marek <marex@denx.de>,
	Simon <simon.k.r.goldschmidt@gmail.com>,
	linux-drivers-review@altera.com,
	Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>,
	Khairul Anuar Romli <khairul.anuar.romli@altera.com>
Subject: [PATCH 2/4] dt-bindings: firmware: stratix10-svc: add fcs-config property
Date: Fri, 12 Dec 2025 03:35:20 -0800
Message-ID: <c5b2e76a7dd04d2143580c4574def095d3f0550c.1765534135.git.hang.suan.wang@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1765534135.git.hang.suan.wang@altera.com>
References: <cover.1765534135.git.hang.suan.wang@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0372.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::17) To MW4PR03MB6555.namprd03.prod.outlook.com
 (2603:10b6:303:126::12)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR03MB6555:EE_|SJ2PR03MB7473:EE_
X-MS-Office365-Filtering-Correlation-Id: 737d6fed-b3d8-4929-6a2e-08de39728bed
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?E94qXc6QPVZzAUhwjwUPRCXkySdANyCT72zXU/g7C7jFPFgvvoHtcPUhhcQi?=
 =?us-ascii?Q?Ri8nRTeFhP5pzFBsIxsaej0YeF5G4ozPx2OvSgfIBtYh1+8Gw/0N7z8zyLyv?=
 =?us-ascii?Q?kA30SYD3hnVT+J62a1U5Lm9VB4wCir/rnWEZ1Ph7cN4tP2Kwmb9MNRTkbxrh?=
 =?us-ascii?Q?iWgMLpDtYqvK3FVG/jRQmRphUIm4bm/SRr8SfqaSerTCY3VLOjZ4SdJstdrL?=
 =?us-ascii?Q?yQsOj5EREqH8xUXsOS84/syYMh59VoelnuTOSeK/+FWzaAAeP6GDL+uIX/dB?=
 =?us-ascii?Q?s1KHPPNFmXElqY9tkPL3h6ms/QZRv/ySoqSt/kbFo/la6EEk4fNsCS7GKoWw?=
 =?us-ascii?Q?dyPghKYohf2yk+nvRgS5wa+X94bi6HuuDE+wXnp7m10bMCjCKqOLjuXIC6Pc?=
 =?us-ascii?Q?uQ788tCHpyWZcRKEzbQlHGyFxIDEvmIfFr9XS72/VwkcZr37S5o5v/1K3ahb?=
 =?us-ascii?Q?KYSLYXe1eMIotha1FF/1JHlDq7mH2h8qkw9BiJH14jnsQhy+W/LIB/zfNNj6?=
 =?us-ascii?Q?Ju0n/ywTWSUb6LXJsIR8EgOqhc9dgaybE+gVIwyIchku8M+DyydaenatzgZ0?=
 =?us-ascii?Q?iZt3xDWCWLXAwTxNWy6EdyuYdHrq2pstTD9/6RKn7VAARPwr/W2RTY3wNf8O?=
 =?us-ascii?Q?QfoBC5RRlCNMrOv9t3Yp6AAqrWGJvpYsQbqvV80wOUYtOsoWbngGNmDOol1I?=
 =?us-ascii?Q?JtHwJh9poe8f5pbxt7xM2uxWPaSiekoact5ptiTQ53WTLq5i5kzzwabUsaPb?=
 =?us-ascii?Q?nYN7f73uioSHKS1ZujKs4AvgWlqe6RNrbdmDI8MXqJThYHlBrFp3gZzrQiy/?=
 =?us-ascii?Q?YQIm5vA8UKotv7PottxBBHQYvhllG10kMer83/fMAHnF3sVDOKp4H7v28QmA?=
 =?us-ascii?Q?q3caR4pa2NZ9HZ3KF9nb7gabQfD1Tksbw0jYrW11FtXn4xAMH7MG5+vXBSAh?=
 =?us-ascii?Q?oXyzhVSUFtypOK/70eKCc/iuio541wV7UfjhYceKcQvez0MSOsx+ySPbMrqR?=
 =?us-ascii?Q?Ph4ej8fJsDuJJSG/J+Zgl8ZwPM/osUg9ZeX/8zeXls3i2uNcUyAqFdjfnfKd?=
 =?us-ascii?Q?gjV/JtKK4XEDptLRL0HK6ZNfr4wQOZxSpuCZTLDtsGEBi+Eix+bSzx6dcle6?=
 =?us-ascii?Q?D1/FQHEuKpMmiv3MvXZWfuXvf8fV5Dp8tjT/NPGPXNA7a4uM8Z2Xp4ZF5U25?=
 =?us-ascii?Q?+s62TSaR5NxQbbn9jqqnHuJSeJysqDbaCx/hU7HSfJ79Ts2acro1LJAaf9Q2?=
 =?us-ascii?Q?hC5VDn+wn9sRXyVBhVTzPcAlyXY3w1y0wyIZkBgOFiFcpGgZhYZGrY/K7qQP?=
 =?us-ascii?Q?lpUqu+h4eYjJ6znY9P+kWaBLKnaIw/wIZWs/Cvfz/JkFJCgj7bs7Wtp/G/EQ?=
 =?us-ascii?Q?jvDf8YtWsxIFDmloESo4x0JhIZJ1Ercvv2Z/ZC1wAPgjGqzhJxFBeafRYxKa?=
 =?us-ascii?Q?Y3uVWqsYlzbbylY4j+pNGU6HSNahjTUBAMKRlvWo8RiyPkKvgbAl3X2E0oUB?=
 =?us-ascii?Q?FL/F5kqnr1zWzo0=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR03MB6555.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?32nwolQMHFbOubF8u/Zd907+cky5yJFfpEtUa73NBSS06HOdH4mcnza4S/E8?=
 =?us-ascii?Q?7qz2LScJE9HWneRO0mm916VlH/bc17j9bctm03ZJ9tDLBUa+69nxtfiSCo0D?=
 =?us-ascii?Q?9fFgemHNP/btQZpZ3TkSGuoCITkfJjVnCsSadF73IvzrplFN+uorrgpS6vcy?=
 =?us-ascii?Q?KJRUpFbgq1Gx43vapvBe0JyOoboiL/Vl5OxVouoBddUAGzU/+ax8+Y9qsCjK?=
 =?us-ascii?Q?Gzd533Su9jFndhgwc4v5kunHScB6TZx/t7rvKchG1ov2B7YkHyeNeo+d5ViC?=
 =?us-ascii?Q?xTdIUh62SDoXJEdC1QZi9WBeLzp9Pc00o6gtkmQhlds9OB2r+A0xr+HL+Uo5?=
 =?us-ascii?Q?NFMbkdPid5nSHox21cyP1/snj/5JYO3DXkX9DA6T4znqBQjnCx/br8tz8MbW?=
 =?us-ascii?Q?d/a9zqamjAH41m7Fmrq/3V9Z4b5qrFm3en+pSOFgC92xCk/PyLfDzHVUaVbI?=
 =?us-ascii?Q?axySE2tNgVkvfjvPyQO8uCwiyup3iRPd+DjE01c1tTDZ1Dlo59pPK4zEWnxM?=
 =?us-ascii?Q?NrWgZPlYZVKOkN2EvYtny6PaaDrZ+5d4DZx4PAySx46GjF1HhXtD37IVwhGy?=
 =?us-ascii?Q?0dWKpzj+ht3R+hCeN9xSc0g+EgnQWhOwDp6hp66Y7DyTnvuavslFJ19Vd262?=
 =?us-ascii?Q?nULf34edPZYYq0U1Ki6DxQcN40oVdfoJJr3Mk3IyMKLIHHYHI1t5+Vn3pqE4?=
 =?us-ascii?Q?D6R8Lfki694jisbAReZuLPhQ70FRNvZ+nWIKs6xff4KwJb3o/3Y+QjF+/w1V?=
 =?us-ascii?Q?0lsWPADB9+XnciuMeDEYAI+hRg79oxcTkEEPdf+oKaT1fWGRXrQNRal70MBB?=
 =?us-ascii?Q?q/dIydXhGZMO+jV7aPNY8Qu+3TWcFDHL75BT99/Api0/ZfER3u8SlSUmQ90Z?=
 =?us-ascii?Q?V24eB4FUsc8IIMmfEtkL3VN4BQdySZ5dJIehYjNDoR7CdIulUkxWDOY8T1GT?=
 =?us-ascii?Q?muNzNdTlYQp8BwHPc2rI9Kzr/5PUhHE0QQHdyeSkrHDucOSE+5zsiesnTPoV?=
 =?us-ascii?Q?5d64hyB21+Q2sOpQhoZrTxsea6U+6fb18YY/72WAV0mdlx+dJDzSlm5RCfrO?=
 =?us-ascii?Q?gSHUo8kgldkN7NugZjFUqXlHckBsBBHeFQf4Qka8lf95SWQWkdqutDkRqmXX?=
 =?us-ascii?Q?bDKBTxAOPm6ShQufIefkybIRx5nsT7wxg1YIWEPdoqjryMBnBxXu0qImEf8I?=
 =?us-ascii?Q?K8atGmvjTye3mTfEbNz+L1mBS8vaVzSdiGCBoiBHWwv0ZHnCBglPGC/hnF3V?=
 =?us-ascii?Q?Su/YIjIOTGo6XPQg3SC+EdW/+xJFmYtIkcFopCHVWy4Xof9unY46AMtFsB/o?=
 =?us-ascii?Q?tXZRX9L5qlBWmdm67z1MRAb1nMaqDpLVbahHuHt8DPlRmRlkZaXhSjqFvEX3?=
 =?us-ascii?Q?i+pMi9oHhpQUrAICcH+R6A0/xcsLSNR5ZZzqho9AlOaoHp5oiLj8SaHg0K4k?=
 =?us-ascii?Q?AS/BH2aV3wTvLLPe6RiVv5VLafjl4Q5CPmEbK7toaWbAlDreMlavG1zjz627?=
 =?us-ascii?Q?xlhW780dfEiLaU5U/6ZNEoYIByApjPMYTaHHT0Vhd235qxla3W7ee0cb0Lks?=
 =?us-ascii?Q?RzO9zXdVcMiRQNwOsTlIm7UI7J26lwFfuErGD7obFXu7U/S1hQLuISFE9eqL?=
 =?us-ascii?Q?Uw=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 737d6fed-b3d8-4929-6a2e-08de39728bed
X-MS-Exchange-CrossTenant-AuthSource: MW4PR03MB6555.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 11:35:27.2102
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5WCOQ7J7NyigMJc24vdDUgoGY4qAmJ+mYn0uEnSydtpvONXH2ofPeWzandvlUocm54ihMUdSJ68yV5Pr9JvCmlXSxDCLajwmCduJhKYX7AY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR03MB7473

From: "Wang, Hang Suan" <hangsuan.wang@altera.com>

Altera SoC FPGA Crypto Service (fcs) provide hardware crypto features
through mailbox. Fcs property has to be added to compliance with device
tree schema fcs bindings and driver.

Signed-off-by: Wang, Hang Suan <hangsuan.wang@altera.com>
---
---
 .../devicetree/bindings/firmware/intel,stratix10-svc.yaml     | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/firmware/intel,stratix10-svc.yaml b/Documentation/devicetree/bindings/firmware/intel,stratix10-svc.yaml
index b42cfa78b28b..c105f8dc4b7d 100644
--- a/Documentation/devicetree/bindings/firmware/intel,stratix10-svc.yaml
+++ b/Documentation/devicetree/bindings/firmware/intel,stratix10-svc.yaml
@@ -62,6 +62,10 @@ properties:
     $ref: /schemas/fpga/intel,stratix10-soc-fpga-mgr.yaml
     description: Optional child node for fpga manager to perform fabric configuration.
 
+  fcs-config:
+    $ref: /schemas/misc/intel,agilex5-soc-fcs-config.yaml
+    description: Optional child node for fcs Fpga Crypto Service (fcs) to perform SoC Crypto Engine.
+
 required:
   - compatible
   - method
-- 
2.43.7


