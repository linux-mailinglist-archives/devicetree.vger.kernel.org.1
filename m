Return-Path: <devicetree+bounces-73767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4536090089E
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 17:22:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BEB37292D2E
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 15:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58B1D195808;
	Fri,  7 Jun 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b="QvPVVul6"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (mail-dbaeur03on2048.outbound.protection.outlook.com [40.107.104.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641D125740;
	Fri,  7 Jun 2024 15:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.104.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717773743; cv=fail; b=ex5QTG3CS/KwHvcJzcfDvmTbx+xTqtoDDvO1KSaWm0uIMq0Yn8/HbZ3UYOOUzgVyEa4VYnO+CGrP8dFUUU3mGxVslsxue6KhizqhACqQdbrKhF/g1VTS0LDcNNXu/nbO2mz25HZ9irZ94ISCRG46BSqO47dUJVyQRMSRC13oFyk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717773743; c=relaxed/simple;
	bh=4SwNds07Ms3BHrHUkJ6JO1w1OeMW/7UR846hTnJTL2I=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=jO1qaBPT/QAP3K98yNzczh5VBwJq1gqCGZVBXKLxA61AexdeXAghQXHtCRPJId7GXYEVCNYgL8QO7wbaz3QHzxt4AIytFIHq+0taautbj6F96nrPzqm3oGvkXvr9x1zljwh3X0HiRlKVOgZ2mJwoZdFWfLQQzyWDUKmDoWRKXBI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com; spf=pass smtp.mailfrom=axis.com; dkim=pass (1024-bit key) header.d=axis.com header.i=@axis.com header.b=QvPVVul6; arc=fail smtp.client-ip=40.107.104.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=axis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axis.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QqtNyCP853pI9hkiWvVI3s4NH7hSHJQaWpV7hqgH5oqZVwXfIEltwqaqq1116ZxhjlCosJdbfoyq99M0iJbE+Z6NvvCK84cBpn3eHqga1rRFta0nZpPrNfz4x6V4A6H7R2loUyYmsjQLgi5W0XS+TfhHxFq3/bMST+9ejhpVpKn0p12eYBcQkPnupOxI7foNMbgTtR6131k43MjQarCPDX9gpMRcdub1IrjT7Jvmxm1OcqJ72zvslKa9+fH/eTtgtIKQY7rYVfeaCqPPVTYImmoLbn6EP2XzR6i7691wQ/ZfaCN9z7gtAIUT1ZSUqL6p3lghEbzhgxPrC5R6h2bVow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FD7ltYLFNwYlo90dNenSIQx9RK9e0ozIIk/XOvmTLbQ=;
 b=JPyNiZhhL/2lWkj8UlipzhXwoZdY7LA25Q8uJ4o0mN8euWEtXOZXvH09SkqQzEsIjLuZtQQpqFnk7OkCnUXqwSj023P9PvY6z8q7bdWKHdYdlaeeA7NvfLJD+8hiepe5yr/tEzzGdxmw2qKCCLoWncapJVhQJmNjPZP2uzym+X00sdQ0bHiZaM0eh98LHZodzJvl+wFYeyQpx1JRQGKWHNvl7uCLApNdmts9FHdX0rX5l/IKZm7w0RAqYekU6vleXBoNfSD3o1BetZucCzoR4lAgqdIJxTrJ7Y4mAYej4noz7o+8/JlgYk98WUGaRzRfXjpSVX+I/4FthiPvrQEs6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 195.60.68.100) smtp.rcpttodomain=alsa-project.org smtp.mailfrom=axis.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=axis.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FD7ltYLFNwYlo90dNenSIQx9RK9e0ozIIk/XOvmTLbQ=;
 b=QvPVVul6ahqyOWOo+SD4MEVO8kHGE1A3WIyywkZgxamcz039a0wOdMLwQhk69HBe3NsoZBFn1LAHtuMZT6oJR/KljuyIB2/q+Oik7vwxxb6YrQWsloD56EgIGDqRvkBaYe6tj+8juaWfr+gpbgNHFvYJAcaUVojd4+E5FpVLd0o=
Received: from DB7PR03CA0090.eurprd03.prod.outlook.com (2603:10a6:10:72::31)
 by GV1PR02MB8857.eurprd02.prod.outlook.com (2603:10a6:150:a2::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Fri, 7 Jun
 2024 15:22:16 +0000
Received: from DB5PEPF00014B99.eurprd02.prod.outlook.com
 (2603:10a6:10:72:cafe::d1) by DB7PR03CA0090.outlook.office365.com
 (2603:10a6:10:72::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7656.21 via Frontend
 Transport; Fri, 7 Jun 2024 15:22:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 195.60.68.100)
 smtp.mailfrom=axis.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=axis.com;
Received-SPF: Pass (protection.outlook.com: domain of axis.com designates
 195.60.68.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=195.60.68.100; helo=mail.axis.com; pr=C
Received: from mail.axis.com (195.60.68.100) by
 DB5PEPF00014B99.mail.protection.outlook.com (10.167.8.166) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7633.15 via Frontend Transport; Fri, 7 Jun 2024 15:22:15 +0000
Received: from SE-MAIL21W.axis.com (10.20.40.16) by se-mail01w.axis.com
 (10.20.40.7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Fri, 7 Jun
 2024 17:22:15 +0200
Received: from se-mail02w.axis.com (10.20.40.8) by SE-MAIL21W.axis.com
 (10.20.40.16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Fri, 7 Jun 2024
 17:22:14 +0200
Received: from se-intmail01x.se.axis.com (10.0.5.60) by se-mail02w.axis.com
 (10.20.40.8) with Microsoft SMTP Server id 15.1.2507.39 via Frontend
 Transport; Fri, 7 Jun 2024 17:22:14 +0200
Received: from pc49102-2217.se.axis.com (pc49102-2217.se.axis.com [10.88.7.5])
	by se-intmail01x.se.axis.com (Postfix) with ESMTP id DDB6D3328;
	Fri,  7 Jun 2024 17:22:14 +0200 (CEST)
Received: by pc49102-2217.se.axis.com (Postfix, from userid 9470)
	id C0A7A6476FDC; Fri,  7 Jun 2024 17:22:14 +0200 (CEST)
From: Ricard Wanderlof <ricard.wanderlof@axis.com>
Subject: [PATCH v3 0/2] tlv320adc3xxx: Allow MICBIAS pins to be used as
 GPOs
Date: Fri, 7 Jun 2024 17:22:03 +0200
Message-ID: <20240607-tlv320adc3xxx-micbias-gpo-v3-0-59dbec8b98f4@axis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJslY2YC/33NSwqDMBCA4auUrJuSp9Wueo/SRV7qQDWSSEgR7
 94olHbl7P6B+WZB0QVwEd1OCwouQQQ/luDnEzK9GjuHwZZGjDBBJKvx/EqcEWUNzznjAYwGFXE
 3eaxrLSw1tagsR+V+Cq6FvNuPZ+ke4uzDe3+V6Lb9qs2BmigmmBNieWOcMVLeVYZ4MX5AG5rYD
 6rI9QhiBdJUECVkW8b9Qeu6fgBwljBbCgEAAA==
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>, Baojun Xu
	<baojun.xu@ti.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Ricard Wanderlof
	<ricardw@axis.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
	<tiwai@suse.com>
CC: <alsa-devel@alsa-project.org>, <linux-sound@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Ricard
 Wanderlof" <ricard.wanderlof@axis.com>, <kernel@axis.com>
X-Mailer: b4 0.13.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5PEPF00014B99:EE_|GV1PR02MB8857:EE_
X-MS-Office365-Filtering-Correlation-Id: cc2e5388-59d6-467f-71d1-08dc87059cde
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230031|1800799015|36860700004|376005|7416005|82310400017|921011;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?V2llb2RBejRkY29pYy9ScGtNNW5ENS90RFBKdWYzWC9XcTVaZTVhNjcybnlL?=
 =?utf-8?B?aU5uazFENTdjdTBWKzhjYW5UK0lJSEVqTzZOc1pVZHlRYWlKbXZQWmxqbG1B?=
 =?utf-8?B?SnRoUDBQOWZGTGMwOHpKWno4RWE0N1FEYXBSN0VSZFh0Y0JPOXZqYVlabG02?=
 =?utf-8?B?dm50ZzlucGpSV1VZcWhlZG83d2srRGdpNkdDdlBDdEdjNnl1TC9qUkZ5MGZZ?=
 =?utf-8?B?cnVkbW9QSnZ5OXhwWDVUcGhrVHBQVnpvRWdTekF3S1NXdG1YL29TZ09XbHVU?=
 =?utf-8?B?Wjg3TURuWStrYXpTVHZNYkFoZ0pCNHVKTGplWlFFdUgxakNGbnNwMkZ5Nk52?=
 =?utf-8?B?ZmxvYWRac292Q0hab1ZFUVp2SmRYOFRHdWo5UXFEUldxZElrdklUaDlMaXBv?=
 =?utf-8?B?aTE5SW1zWmd5dzZsY1J5d1VFNDhWNzRwQ1NCcE16WUFCdTd5Y25DcjBkaERw?=
 =?utf-8?B?RTFCanpSOGczYzR4cE1ZUnNkU1MwZUg4N05xam9oUnJJdEFiYk5rU095NGFQ?=
 =?utf-8?B?RVFvUXlycGUzbVU5Tk9oMXd2UUJtOG5VQW55Z1FGd01qVnh6aXJyZUtrSGt5?=
 =?utf-8?B?R0xNaC9QSDNKemc4RzNabTlyc1BxaFR4bjRPSW9Ncm0vWnp1UEFZZjhJN3g2?=
 =?utf-8?B?U2o5Y3B3MEFpV09qcHB3NzFwdzh0V2JvbFlNNEkzTlY1MkpTTi9xLzVrUWJI?=
 =?utf-8?B?KzNwSzFLWnVNVUxoQ09TVUtGTWFlZ29ROTU4QUx4VUVkWEZtZ2VEU0dGZWhE?=
 =?utf-8?B?V1BtNG8wR20rRU5FajRpbUZzVFNxSWo2NUZEN3F1ZFVTNHVKcXB0YUVwN01S?=
 =?utf-8?B?bk9wZ0ZDa1ZnYUFjVlcxcTUrTzhCalBxQnlvYmgxWU43WTB1VzVlcmpPelRK?=
 =?utf-8?B?US8vZW9hV1dFTERKZjlmN0NDWE1QQ3VpblkvLzNWbjJsa2U3ZnFXTTl4Y25W?=
 =?utf-8?B?amdhcW85L3czQ2dRZk04ZE9nbjRWQlBleHRyNWx1QlpkWWpNU3dtOUZNSVIr?=
 =?utf-8?B?cWh1eTlIZFVpbWx2bXI3Z1dpbDBOcVZYMm9ScXkxRTlFeTdRcFZ1WjkrQzdo?=
 =?utf-8?B?VEo2UytOcDlPeFZIRzFob09GY0ZweGFPelhqekxyUThmT2NhQ3UxdW85dDZQ?=
 =?utf-8?B?VGpyR01YWkRHQVd2TDRoN0F0WVhqNnBBYkUyU21LVzhuVFhOcXRJeHMxdVZu?=
 =?utf-8?B?TWthTXpBZms3cXZ5WlhLenlqZnhiMGROV2Zib2crTEw2L1h1SThoUElTOFo2?=
 =?utf-8?B?RHlYYnlNV3N0bWdRU1AzU2JZVm5MNEsxMXg0RmNLVFJXU1dsRmhUd0c2ckRq?=
 =?utf-8?B?RUVGU2hVcExhZnJmeDFzbkhzSEpJbXNNU29FVm5nZDhtS0xKcUFxaTBsTXNW?=
 =?utf-8?B?dGRtRzgyVTIwck9jMGhZQzBrRzBvSEUzWnpLK0IreGZaSFdvaktOYjN2a01Q?=
 =?utf-8?B?RmVDTWJQOEozU0NreGpSNTlhYWJJeDlZN0F1bjF0SHFQcHhqK1JyNlU0K3Uv?=
 =?utf-8?B?QUZTampBUnpZbnBLZFZDcWFtQjIydUJMVWVDTWpnVDhRVkM4QlMxTmNMQXpM?=
 =?utf-8?B?RzVTRVRncGlWQUJteUp4ZEgwNkkrOWdhNUVkd055bDlZdkhjVk93cU16WU1C?=
 =?utf-8?B?OUxIcDQxcW45RzllOUsxdVA5amNHYklnMTVObGdNRUtBTXBvUjNoMGRvUHdx?=
 =?utf-8?B?czk2SHVlWnVNVTcyTTBwaVp3RzNsNkppOWVoRkROb2ZVOStram5QZlFhWHJy?=
 =?utf-8?B?aWZPK2FpSXQ5SHdFWXhIdXgrZzRxYll1N3B0WFZBV0ZEb3dtRVpCNG9scUpK?=
 =?utf-8?B?YkpYR2RZQlNwODFrSllNLzh6S3llcjRzeC9XZzJ5NFlmWUxJNHppU0NkZTZo?=
 =?utf-8?Q?vll81giTatO/N?=
X-Forefront-Antispam-Report:
	CIP:195.60.68.100;CTRY:SE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.axis.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230031)(1800799015)(36860700004)(376005)(7416005)(82310400017)(921011);DIR:OUT;SFP:1101;
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2024 15:22:15.5396
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cc2e5388-59d6-467f-71d1-08dc87059cde
X-MS-Exchange-CrossTenant-Id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=78703d3c-b907-432f-b066-88f7af9ca3af;Ip=[195.60.68.100];Helo=[mail.axis.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB5PEPF00014B99.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR02MB8857

In some cases, depending on system design, the MICBIAS pins on the
chip are not needed as such, but a couple of extra GPIO pins would be
useful. This patch allows the MICBIAS pins to be configured in the
device tree as general purpose output pins, controlled via the GPIO
framework.

Owing to their originally intended purpose there are some limitations:
when the MICBIAS pins are deactivated, they will float, so will likely
need a pulldown in many applications. When activated, they will
assume the voltage specified by the micbias1-vg and micbias2-vg
properties, respectively, meaning that the resulting output voltage
will be 2.0 V, 2.5 V or AVDD .

Signed-off-by: Ricard Wanderlof <ricard.wanderlof@axis.com>
---
Changes in v3:
- Correct typos in property names in dependencies section
- Add single quotes around properties in dependency lists (needed because
  the property names contain a comma)
- Link to v2: https://lore.kernel.org/r/20240607-tlv320adc3xxx-micbias-gpo-v2-0-b140a45ffffe@axis.com

Changes in v2:
- Correct typo in yaml document for ti,micbias2-vg property reference
- Add dependecies to yaml document for ti,micbias1-gio and ti,micbias2-gpo
- Link to v1: https://lore.kernel.org/r/20240529-tlv320adc3xxx-micbias-gpo-v1-0-300d39cecc55@axis.com

---
Ricard Wanderlof (2):
      ASoC: dt-bindings: tlv320adc3xxx: Add MICBIAS-as-GPO properties
      tlv320adc3xxx: Add support for using MICBIAS pins as GPO

 .../bindings/sound/ti,tlv320adc3xxx.yaml           |  24 +++++
 sound/soc/codecs/tlv320adc3xxx.c                   | 105 ++++++++++++++++-----
 2 files changed, 108 insertions(+), 21 deletions(-)
---
base-commit: 47d09270d7776e46858a161f94b735640b2fb056
change-id: 20240528-tlv320adc3xxx-micbias-gpo-b8b4d1c846d3

Best regards,
-- 
-- 
Ricard Wolf Wanderlof                           ricardw(at)axis.com
Axis Communications AB, Lund, Sweden            www.axis.com
Phone +46 46 272 2016                           Fax +46 46 13 61 30


