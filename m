Return-Path: <devicetree+bounces-240691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C47C7413F
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:01:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CCD8C34CD81
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 13:01:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200E533508B;
	Thu, 20 Nov 2025 13:01:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CHN02-SH0-obe.outbound.protection.partner.outlook.cn (mail-sh0chn02on2098.outbound.protection.partner.outlook.cn [139.219.146.98])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99668313273;
	Thu, 20 Nov 2025 13:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=139.219.146.98
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763643710; cv=fail; b=CuVBtudTMGippoGln8hkgIlIK4yREZbpnaHDvb6NKyhG5Gg8jhXpKMK3ebW3HCgH2YFUgDZa1svitJAivSFU6gfCGqwbsJKM8oEdXzf3Ng0N5JCnR8FXGyTbbC3qceTRbywj6b7DABbjd/n+zCBzgZSh8JbTEHc9Tvoojs0/+qY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763643710; c=relaxed/simple;
	bh=gOXsAgSLVOpgr1q6sYmHfW71v+jHAI8Uot0jMiw97B8=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=lbaB30MJXYjTer7UI2e9do8uoP1w6VTbC3C6YborYgiIDwvF363LXqltw2OwmQEp8GupCeOLe3LcorurenuWJD74sdOYMs1lWf9haWMzd8pKwihMlMS5teKqM2wIAeacxIVtV0lbcldgqoBP8ofYK795lW2hJ3vg7YOSR4tCQjc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com; spf=pass smtp.mailfrom=starfivetech.com; arc=fail smtp.client-ip=139.219.146.98
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WKWHeo/yyeSAGs5Q5KdPl9N8ri0S1Z51AceLJqU+34aSyi7xK21+UuNGGgSuvrpQBpFUw0nBHDoqcoeEBiLPnoNOaCxWDnqrwJGUsrIxElFfhgw5ADUOO3ionVpCv97XhswmQ4erQeW2STeZTdNpmljeaK/loJxSyWi8k17vaTJusWCbH2bYgzTqonaN+64vjpaWXhJ2T5rlqFargLo0f+48BSx+9+CJUFhqSBvH07f3pUEUboxE+sn0ttp91OHH0BsrLCTjlG03LBqlwOodizhcZZq0t5ULMCl6tOVnt6It8siSxxN0ZsOFrouYZ083H8gNWS+P8eqzvs/NHC+zng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oXVe9HhV+s14gQMgqmBcYfkfdkOVFcqq8fi6h+yi80o=;
 b=fK3IwDY/nWT16t9jMC9dEeVYmzuFLMmEr15kfA2D21WUaiDtpRPCemW10q8alGJhJpBmgXuSGgswq+B0Kg5hI6cRMnIHwmAiQYOGGxyIR9RNfIe5SxD1tOgsrB73N+Z4EuWAuYkKypFhc6Tpyn7uOL/ALT5k4cFvKj8tHmGrapzKG0VLDqATHrn6mmqb+d3fRil2f4gc1rM7a31iZ+m3w+0fTO0MhCpEa/dgJtVGnIQd9VylSjHWyAUADjvdtEbi9W9rGjauSKjPlmLLd8PzRbc4FtRa4GY35YL/13xmPFLH4df8cCLVWYXCJQNS38miD9NcBESrxuYmCzlRXhsnfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=starfivetech.com; dmarc=pass action=none
 header.from=starfivetech.com; dkim=pass header.d=starfivetech.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=starfivetech.com;
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:7::14) by ZQ2PR01MB1275.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:10::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.24; Thu, 20 Nov
 2025 08:29:54 +0000
Received: from ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7]) by ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 ([fe80::2595:ef4d:fae:37d7%6]) with mapi id 15.20.9320.021; Thu, 20 Nov 2025
 08:29:54 +0000
From: Hal Feng <hal.feng@starfivetech.com>
To: Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <pjw@kernel.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	E Shattow <e@freeshell.de>
Cc: Hal Feng <hal.feng@starfivetech.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/5] Add support for StarFive VisionFive 2 Lite board
Date: Thu, 20 Nov 2025 16:29:41 +0800
Message-ID: <20251120082946.109378-1-hal.feng@starfivetech.com>
X-Mailer: git-send-email 2.43.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SH0PR01CA0008.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c311:5::20) To ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
 (2406:e500:c550:7::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: ZQ2PR01MB1307:EE_|ZQ2PR01MB1275:EE_
X-MS-Office365-Filtering-Correlation-Id: e32d36e1-2e14-413c-3a79-08de280efb49
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|7416014|52116014|366016|41320700013|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
	BxvS42DmFL+oKR2MYjhEoNZqjbpiGK+UMgnVYRjNJgmfs3VJsB/BESAZMLGSn85Ju+7AZ3cxHILJjCgqNYM8Ox3f5pcXleZmj73eT+w3dcaATmNaK9wp0+OfaRDLZ6n4eieKX3vXJW41+alIuB+9yjuQ1l9voSAC+w8Jxsp6bTDYnUgityUb/TCNpQ1PaGsxLP3SNluNpWgMZv5LTiH/uamkZNdMfBylrITebTdN346YDJzbsDqnhv9K6eoRTFTh8c1XiHaf05bTjMNLljN+h47UW9dO2MpJGodjHRxLAkeKdCEuBypZnymQ295+wJFjw8vhPLkhuiSum+dKcVZlLP+K1sAs4hRlsobiYjZIbHBoHC2od91tFOI6Nlu5ZqA1VySl5UiO1Lj8NMXyxvkyqyyGySLw5MJwirm2shj52OweZJnDtiQnnR2OAYPFG+6U/JzcAdLw+VVQQepdjuCl1XprBhSW9Py3XHisF2mLz0n4MvyJjeUkvrsA7msbKEYnYDMyzxcUTbBB5IZQM4xRTau9yt77i5yGOFCwcMmKXucTiFl2tBLCG4aMpyHJqNzUdjZaXd8MNcyEa7hlVDAQ13KLL4qtIYjaCdrMFEd7E90=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(52116014)(366016)(41320700013)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?yTIWyVFqILBr6BJAQiypRB/ij//4KIVINlt6LsnQJOOH9xbvmyHvczdfAQ4F?=
 =?us-ascii?Q?UMmMB3wzONpEV8DEhKGa+uIKFTU+dBdCsVpoIwfeaGh1rAT3nuIU8u8KhH5v?=
 =?us-ascii?Q?wXzAWDQcd6czctMmTJMX+5rHK/yK5SqaYWh6qWQg0gu3r+FLO/f1V2rq5Htb?=
 =?us-ascii?Q?6NMg7eV/bnBUPtILDrRlITIc3+/MDUTJl4vBcKLG6CiZOq3zmg9HOC+39SxO?=
 =?us-ascii?Q?c/ShAFVYLCesUBvXaBzaNJOg8Lxgt8oPSmWsY7hEa3V3g2TQmFTWIqYD74KV?=
 =?us-ascii?Q?h/5lE8LZecszQY5yrAuAgTyJqEPogmI1FC6WzQiTsXzAQUSA1hYvDn2j4k/4?=
 =?us-ascii?Q?3LwKbaLmh6gc2jpL7052jHveHIpQB5T/7kckQoDEaNbh5ySbHAitC3jwkNYK?=
 =?us-ascii?Q?DEL7GxiMOi6MjCmmLDQRSL7Omsd66AUn3UteFcAg0wDFGEr5/BVf27AS/63V?=
 =?us-ascii?Q?gvqQxo6uS5NnyQFE50ntP08f+vkcK+D2UxYvZASOshZobxayQemJeA41UPmi?=
 =?us-ascii?Q?rJJG9s+HFz/WpstF4UfgKJx3lga5E2AX+f6Z09/RfmyWRzrFzNKZlWDM+cG+?=
 =?us-ascii?Q?nMvJetSvWNN6LeUw91vSXbhvSgU/6Fj5OfYh0jecyxNlIpoYIcIyRRwj2nxF?=
 =?us-ascii?Q?iusMKNcbC/RF/sYABqAUiWlH4rdmJ/BNojokGljdYZaVeBpTN3eeVoYx8Txp?=
 =?us-ascii?Q?o0ImGciQcIRHRb0wltVqJHEJIrM4e+XmQ2igbA4nkAorQMgRI/AP8TmoFI/l?=
 =?us-ascii?Q?2wKMtVHF8R/jefdgKKzHYsvPFsg+kk4iGXNvlxJas2cmeau9tFNX6RTjgCgJ?=
 =?us-ascii?Q?fQ+CO1WBTdBIrqCxhxwkJBuC0FnCXVtKQBbopVrXrRv+mEpu6tLEWDsapHR6?=
 =?us-ascii?Q?fHPCfL76sJ9nFk75UcRNplVPoWcwbZjNJzN0pIuflw+uscP4c1doPRGwcwX/?=
 =?us-ascii?Q?47Snkan73eyExEdBilCcUOObzHefnftEqwVpC6UBRCEqWwhq6lc3C/RdxgZ9?=
 =?us-ascii?Q?ZZ9wVl/cRe998ZCXsC9eAoZoFGBVkGaITKfv7Lkthl3R/+dVFvs2mmWXJ1ZI?=
 =?us-ascii?Q?g3Wy04gkaAaiPZ60MtJ99DyC0IIUVKwkswutu+pVBD0jZSWqExciN9aHdRxX?=
 =?us-ascii?Q?8yVU7rIi+Upb4JbZrlPArVJZw/ppykSgyathGk05LTxZ+dLjqjnHwSclAQeN?=
 =?us-ascii?Q?gdJEyQM/vT6Xo8iUMjIXSHLpAx2P9g3/tsctngyZM+D0BOHQ6jFIFu129LIt?=
 =?us-ascii?Q?8rABPlHba28KBwO2/6qWdjQXok5rewTspOH+ffk9Vvc01bnUc7XIsGqH8RH+?=
 =?us-ascii?Q?VeNIAnSKx7QuPNEkgC97PSqrgeAwXHuBHh+F14CqGgwaAA20BhvFYeaDzgKc?=
 =?us-ascii?Q?kmIc/YFKj4uNPMM4TlDpRy+MEo2B9UYSd43hR9BmqaTnrY+xWrajG4J8w5ra?=
 =?us-ascii?Q?fQWa9u7qmhfuMVgLGp8j2C6Jm1cxlCYyUoRHsJaNE3eJ/Itok3+77ZicyMkZ?=
 =?us-ascii?Q?bJFxyYM5ino4MAM3wNtnZvYHOfCYaOW0oYG7m3eKXyuYrblUqtdb+entQ3gM?=
 =?us-ascii?Q?w1Kk6dtXYd2ZGFULYLa6lkeT6fRY4mf1CFnAeHOIplC8BQyrS05LCG0P2nUT?=
 =?us-ascii?Q?sQ=3D=3D?=
X-OriginatorOrg: starfivetech.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e32d36e1-2e14-413c-3a79-08de280efb49
X-MS-Exchange-CrossTenant-AuthSource: ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 08:29:54.4896
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 06fe3fa3-1221-43d3-861b-5a4ee687a85c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q1E8rI/i1NzuxilQ9D+bkTzhMiSbGMjhJPkVu68p/ozIIw0QpiTr9swlk89yAKPwk9f2KJWE18y50VVzpTA6xI1R3+UKmbT5Ecsb6WUK9Uw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ZQ2PR01MB1275

VisionFive 2 Lite is a mini SBC based on the StarFive JH7110S industrial
SoC which can run at -40~85 degrees centigrade and up to 1.25GHz.

Board features:
- JH7110S SoC
- 4/8 GiB LPDDR4 DRAM
- AXP15060 PMIC
- 40 pin GPIO header
- 1x USB 3.0 host port
- 3x USB 2.0 host port
- 1x M.2 M-Key (size: 2242)
- 1x MicroSD slot (optional non-removable 64GiB eMMC)
- 1x QSPI Flash
- 1x I2C EEPROM
- 1x 1Gbps Ethernet port
- SDIO-based Wi-Fi & UART-based Bluetooth
- 1x HDMI port
- 1x 2-lane DSI
- 1x 2-lane CSI

VisionFive 2 Lite schematics: https://doc-en.rvspace.org/VisionFive2Lite/PDF/VF2_LITE_V1.10_TF_20250818_SCH.pdf
VisionFive 2 Lite Quick Start Guide: https://doc-en.rvspace.org/VisionFive2Lite/VisionFive2LiteQSG/index.html
More documents: https://doc-en.rvspace.org/Doc_Center/visionfive_2_lite.html

Changes since v2:
- Drop patch 3, 4, 5.
patch 6:
- jh7110s-starfive-visionfive-2-lite.dtsi directly includes "jh7110.dtsi"
  instead of "jh7110s-common.dtsi".

Changes since v1:
- Drop patch 1 because it is applied.
- Rename jh7110.dtsi to jh711x.dtsi.
- Move the content of jh7110-common.dtsi to the new file
  jh711x-common.dtsi and move opp table to jh7110-common.dtsi.
patch 4:
- Move the uncommon nodes to jh7110-common.dtsi instead of board dts.
patch 5:
- Add jh7110s-common.dtsi and include it in jh7110s-starfive-visionfive-2-lite.dtsi.

Changes since RFC:
- Add jh7110s compatible to the generic cpufreq driver.
- Fix the dtbs_check error by adding the missing "enable-gpios" property
  in jh7110 pcie dt-bindings.
- Rebase on the latest mainline.
- Add VisionFive 2 Lite eMMC board device tree and add a common board dtsi
  for VisionFive 2 Lite variants.
- Add usb switch pin configuration (GPIO62).
- Improve the commit messages.

History:
v2: https://lore.kernel.org/all/20251107095530.114775-1-hal.feng@starfivetech.com/
v1: https://lore.kernel.org/all/20251016080054.12484-1-hal.feng@starfivetech.com/
RFC: https://lore.kernel.org/all/20250821100930.71404-1-hal.feng@starfivetech.com/

Hal Feng (5):
  dt-bindings: PCI: starfive,jh7110-pcie: Add enable-gpios property
  dt-bindings: riscv: Add StarFive JH7110S SoC and VisionFive 2 Lite
    board
  riscv: dts: starfive: Add common board dtsi for VisionFive 2 Lite
    variants
  riscv: dts: starfive: Add VisionFive 2 Lite board device tree
  riscv: dts: starfive: Add VisionFive 2 Lite eMMC board device tree

 .../bindings/pci/starfive,jh7110-pcie.yaml    |   4 +
 .../devicetree/bindings/riscv/starfive.yaml   |   6 +
 arch/riscv/boot/dts/starfive/Makefile         |   3 +
 ...h7110s-starfive-visionfive-2-lite-emmc.dts |  22 +
 .../jh7110s-starfive-visionfive-2-lite.dts    |  20 +
 .../jh7110s-starfive-visionfive-2-lite.dtsi   | 691 ++++++++++++++++++
 6 files changed, 746 insertions(+)
 create mode 100644 arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite-emmc.dts
 create mode 100644 arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dts
 create mode 100644 arch/riscv/boot/dts/starfive/jh7110s-starfive-visionfive-2-lite.dtsi


base-commit: fe4d0dea039f2befb93f27569593ec209843b0f5
-- 
2.43.2


