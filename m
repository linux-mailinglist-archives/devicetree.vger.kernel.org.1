Return-Path: <devicetree+bounces-65655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 178678BF6E6
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 09:20:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 443161C22802
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 07:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4475828373;
	Wed,  8 May 2024 07:20:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-BJS-obe.outbound.protection.partner.outlook.cn (mail-bjschn02on2102.outbound.protection.partner.outlook.cn [139.219.17.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D9126291;
	Wed,  8 May 2024 07:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.17.102
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715152825; cv=fail; b=P3BkcdzmwkxtFs39yC39wA2hQD+4LbUVkcLmKVviFbCX+O6aQr013yCUlsQIALM9Nhs5E03Ex44T06bMnIvXAn3Md60I9KmmyfQvZRLfIHlvZH2/Y9yuNOTXV16mwpYWerGsMa9DapcBfPNPVbP56p2bcd+0/LMATUClsqE1PmE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715152825; c=relaxed/simple;
	bh=HJvIUgUd9BUIe/soRVflVqY4v3qfdJyFFZPAdzMhiF4=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=O7hAYM5JQDkzG50iR5fv37BFY05rydEQJsA3iWO+tUZ0VaJpeI4YdZyXNI0CPn0UcGem/pLkVajPSAOFKXNJ6RvEMRAD3BzpMmLVdrlA5R1yW3SddPHlI8Cw3s0dvxgfcJvq9ZI3sljT7uAZ0UilfqmA17D31msIOtYVSZdKMfI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.17.102
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XEiZJDBbBRmCH1bZ4JQCX0mS1vpGHeET8k2l6rCbbXWr24aCnkszN09GQdkS1b3ylX6FrMNM66To+6UqmYC6TLrdsK5WQTRQGM77iii13fwI5YnTx5G4MpDOWMKmbfvpJJywA+nQLxqVuKYhuM5/HPD2HZVeMLpODxQOyOv8VhbwR/cWh0v7k2Mn42F55DwVbLfS25pNibwMfP/g5ZUEBiI+iOZFKD3czxlHf1IEWqjaeoETOSmHb1O7iu1x1Z81SEuVI/q619MkyYBf+UhtPX8ggmUVRHnhMtiZsIGrHRQuN6oc+Mo7u3XUdymZCGuNgndFkMnUOBYd6H1h7qigZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dt4ZLihArQkU8P3Z4dQamKHuAPsmwOivzAebXuv2eCg=;
 b=f3YJGsYL9QfZNn4/NKB2fbx5Q+lZoDuYi18+Vu/ICJK3d0HF+HKHraHv37nsNIim1ZbJkaoUy/7DTL1o7DyodHj5shiRH9VJSeFJJJHERaUz1UVDhOR01lw7J3qJVPJ5A37czY7WRVgfnB3sAMFxENriXscliz2HeEnT5+hugTcjCeq2DqGsZZoQAKXh3+sQ1NWnoN2dB1VmeeLASWJo2hU2Okye0w3MXTuMb04v16hIKVbW/qv0mEFSlAoHJvm/pGDrMj4tU+b62vkilNpPsjZie0s0mNOVKtQJUGZKAxCIwtvGKTbWbax6o9xyTdD7YpNVQUu+6HAg8/m/E2mmyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:8::10) by NTZPR01MB1050.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:1::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.43; Wed, 8 May
 2024 07:04:14 +0000
Received: from NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
 ([fe80::e903:99a6:10b7:304d]) by
 NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn ([fe80::e903:99a6:10b7:304d%6])
 with mapi id 15.20.7472.044; Wed, 8 May 2024 07:04:14 +0000
From: Xingyu Wu <xingyu.wu@starfivetech.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Claudiu Beznea <Claudiu.Beznea@microchip.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Cc: Xingyu Wu <xingyu.wu@starfivetech.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org
Subject: [PATCH v3 0/2] Add Cadence I2S-MC controller driver
Date: Wed,  8 May 2024 15:04:04 +0800
Message-Id: <20240508070406.286159-1-xingyu.wu@starfivetech.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BJSPR01CA0003.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c211:c::15) To NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c510:8::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: NTZPR01MB0956:EE_|NTZPR01MB1050:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cd88dfc-b97b-4555-b2f9-08dc6f2d1184
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	wHX/Ar0b39I7jKCJmreU35WEh8+Tw/6CxBMsWBWHWIrRpJEvkmwb2yIj2F1sEywT7Zw/R+v4a0QD7IzKxxqIRpLcDtGr06o6i/UR+Qw7TfxB0ZRtzh41SOuHDq/VN2XMLu/5G7vN5Fhr76UFwKdlkUdHcfLsGhC+4JbyrebeVuWMlESp1eNvHO1+2zqqmem21l1QhoejjDyuOsqDh4iCufPi9CEXGbcKUJKYE7mNRh9YmDk0eL8uO4Mui6VuykJ3w4o2JiVnKK/DzrgzcKLo+jGMEBIv1TgT/3U+P1WROpGQjivlPvK8IblJJsZxsb1oCV8J8GcEdJGKVRDpgYquHIyCJGOUdmql+b/DYUeySZQzQFmt5UlfYLr1+bYGwE+8V6ujNxcxEqExO4hvK+aqfzjgs380EciNkK7mTa3gvugxOtwCElizsgfpA007kPZiRbrxawKx1HEzNjgR4xEort8rmgg16kJ+K5fiXjY7enowPsSVUlUZNfucwqhMhmkaop4ylfzInxKffCKL6gw8DcbAPGE6io25hDpuBaXwZxneCn62Jd4+uUXQtOg5FMdvz0N9GKjHMcaWxlex/BavPFGINgK+jdg0eBjTOoo9d54fk7kRw8ohwGXrguVmxHg5
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230031)(52116005)(41320700004)(366007)(7416005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?BYRzGTpzG3OXVftv+nE7zA46n/grrmg6cF0l0BX9tZy6prcx3ic+9rH3tByY?=
 =?us-ascii?Q?fZccBkPlvN8rwtOHRx+JIUf556oZ2PAb2tpOwULDxhACWg5hfUbyNgWzxq1F?=
 =?us-ascii?Q?Vi21IfksOBAxeMFDU3em3eIrD440pVQ9XcLBpKtjSZsD9mgvtmvmA//xQLWW?=
 =?us-ascii?Q?Bmm3bfQiRR0qBE1gEkyFKW263oKafwiwyhq1GGNMRL7F3nJ/UCYEtBxSF1Tx?=
 =?us-ascii?Q?hblqL62nrTNJ5Ku9py1PcIrRgMq024/JkDxY9ajcHiPDRMi8Dtrxnbirfw0z?=
 =?us-ascii?Q?wAG739UCu+PofJlRdBBm3+7PP47SVfjflEjaMYF5dyiCaef7rs4mAw6iAv0b?=
 =?us-ascii?Q?2pyJIcYgS1UaWyelIHRWsnQZ0J/NZ7J/zP+1KTzjGXYOQW7G75L9jF7xY8Dp?=
 =?us-ascii?Q?wkHglLriAeLtpGTMSiT6Cb3tQA0O2nU5v14/69rr6kXeHKQkJG+U8OfXLB/f?=
 =?us-ascii?Q?/r7/ZmtV232lsHzmEw9qTnU15a0MLifxcLjh0l6hBb5GOr5T7Kfd4OCG2C8/?=
 =?us-ascii?Q?PhBbwKL6ncqvy7q6f33PsEnvUoQJ7pFETC2h6KBCa4sLkzg6nFhkaWA4Ccmz?=
 =?us-ascii?Q?ycVFOLiInT/9YO6xyDHbF99BZDVLhIIyB4uqWlH0+YAZebpMQBmkyDkaKRn/?=
 =?us-ascii?Q?bgQxoPLLxBhaqHHnY5Sqv+3vkNQHuCrQC2VjRwaesiWUPKJOUCGINzdf70FF?=
 =?us-ascii?Q?nnX3Tg4q9ZQRh2Fqnn9f6yyjEKSuEZ9fji73ZMFYDTt5dCNXQQxzgWClXdGx?=
 =?us-ascii?Q?ZdHYFsZvwJNQVg1HFw2vGRgIyEj9lPBMf8i/NkghztrJZSFytkg8m0a2xddJ?=
 =?us-ascii?Q?bs23rFHKh8axOF+mCj7y2N+4CTQUwZYPU9JoRjsl3jHuvv1whqDhXni/7PT5?=
 =?us-ascii?Q?8V0z5PsTSBIHmH/KkhLB+6eykttq9QlLA1dH0emEm2K57/IyE5CxRJEOC0/V?=
 =?us-ascii?Q?hrUNKRuIs5IAOtLZT9KmFJi5r/zAiBr9NQd/NKfbQ4vr30MWZz9TIBxFAGn3?=
 =?us-ascii?Q?EuDtY+WPqHpPIkwee8RdpUsb7LkHeJFyicQgoa98QGDMZsWBNKa7nvNw6CBo?=
 =?us-ascii?Q?c/6f7ca/i78jcSm4sps0oj5/h9lTEsUzF6nZALQYQLIxawvKsQ8LfXI0916c?=
 =?us-ascii?Q?3tsKIvyju8lzPf6m+VLRFo8hsva4YTAs4GOZSwFms1yzGFVM3pdEG/lo86sK?=
 =?us-ascii?Q?4lpTAPFRai1fXdvGu/d1x7ADcME3k9U9eiHf0+25eMlq3WkveZKUwp2AI2Bt?=
 =?us-ascii?Q?ccpSYs6GH1zlD9OkgNAeBBHwFnPq6OqOPUMmIQTZExPBwEuAnytvhimeqX5G?=
 =?us-ascii?Q?ULU6ri1omNjzKPk5jcXVeZ3znI3V2FXuwGD6u8harlmxwiXFQ2aAKH4Y1gJK?=
 =?us-ascii?Q?Xy5Ywj96sSMdGU4oKDGe5izp9nrZZOyPyieOCwj8LmBrlHjg0N9obK2qAkHc?=
 =?us-ascii?Q?ESvGFEyMkVLVV/LV6Ua6GgYzikmDZbv6ATqW/trnf3tSMaPdscf9jK0L0Rq0?=
 =?us-ascii?Q?KckslgrnPRAXutB22kxvyf/r9/9sYFkQ/mkSGf4Zqj2F68fAKrU9wEPMWakh?=
 =?us-ascii?Q?2Is/sAxBLtlQ9ZvzAEyNUvQElT8N1V9OLMQcOZ+Nq22PJXHlc2voEz+XktWc?=
 =?us-ascii?Q?YA=3D=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cd88dfc-b97b-4555-b2f9-08dc6f2d1184
X-MS-Exchange-CrossTenant-AuthSource: NTZPR01MB0956.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 07:04:13.9376
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jrAlNbgLL+u8q2D4gxRAQBwMuKtQs1LxKk/w05Xrr1iqtJMCtUKyrjJL+lW3vlKbz+8wrO1OY7GZLJ2HVsInriCc33dV4zhSHjxgMNNlIRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: NTZPR01MB1050

The Cadence Multi-channel I2S (I2S-MC) Controller implements a function of
the multi-channel (up to 8-channel) bus. Each stereo channel combines
functions of a transmitter and a receiver, and can switch freely between
them. Each channel has independent gating, clock and interruption control.
It also support some of these channels are used as playback and others can 
also be used as record in the same time.

Four I2S controllers are used on the StarFive JH8100 SoC. Two of the I2S 
controllers use two stereo channels, one of them use four channels, and 
one use eight. It had tested on the fpga with WM8960 and PDM.

Changes since v2:
- Dropped the description of interrupts in bindings.
- Modified the properties like 'compatible' and 'required'.
- Defined the special property in top-level and made it false in other
  case in the bindings.
- Added the test of other format in the driver.
- Changed the return values and switch the TX and RX channels for
  convenience.
- Modified the macros about 'SND_SOC_DAIFMT_CBM_CFM'.
- Added pm_runtime_set_active() to fix the state of pm_runtime.

v2: https://lore.kernel.org/all/20240320090239.168743-1-xingyu.wu@starfivetech.com/

Changes since v1: 
- Added new compatible for StarFive JH8100 SoC and a special property to
  be got as the max channels number in the bindings.
- Dropped the useless '|' in the bindings.
- Moved the drivers to a new folder named 'cdns' and modified the name
  of functions.

v1: https://lore.kernel.org/all/20231221033223.73201-1-xingyu.wu@starfivetech.com/

Xingyu Wu (2):
  ASoC: dt-bindings: Add bindings for Cadence I2S-MC controller
  ASoC: cdns: Add drivers of Cadence Multi-Channel I2S Controller

 .../bindings/sound/cdns,i2s-mc.yaml           | 109 +++
 MAINTAINERS                                   |   6 +
 sound/soc/Kconfig                             |   1 +
 sound/soc/Makefile                            |   1 +
 sound/soc/cdns/Kconfig                        |  18 +
 sound/soc/cdns/Makefile                       |   3 +
 sound/soc/cdns/cdns-i2s-mc-pcm.c              | 285 +++++++
 sound/soc/cdns/cdns-i2s-mc.c                  | 704 ++++++++++++++++++
 sound/soc/cdns/cdns-i2s-mc.h                  | 151 ++++
 9 files changed, 1278 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/cdns,i2s-mc.yaml
 create mode 100644 sound/soc/cdns/Kconfig
 create mode 100644 sound/soc/cdns/Makefile
 create mode 100644 sound/soc/cdns/cdns-i2s-mc-pcm.c
 create mode 100644 sound/soc/cdns/cdns-i2s-mc.c
 create mode 100644 sound/soc/cdns/cdns-i2s-mc.h

-- 
2.25.1


