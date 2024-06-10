Return-Path: <devicetree+bounces-74107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E9A902022
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 13:10:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 582E12879EE
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 11:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8822E7BB0A;
	Mon, 10 Jun 2024 11:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="2avrT7jY"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C6674C14
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 11:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718017819; cv=none; b=mIkr0k/q60MDtcScST2/CrTq8nwh0Tb2Upf9osuScmyRlPXbn4l+Ox7KY2QZSdewl9OP4NrieEQOg2cXoLvhr7KYtRw5C/AXwXUMb0IDSVmRieix1xQPFWjft28gsXJ1UospdC8w+ySWY4bnJ58obID1EC9VwH5tN8AfRq48EQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718017819; c=relaxed/simple;
	bh=NsjQbAmUmlOlgifCA2KPWGuT+GynfWTjmgtIMLdbQcc=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=KXYKrUdvWMW8tAqLpqkFE5xUXxwefgLyjVtrlMvhDezKcSkEQ5ckPsxXg5tt9hBRKVIABlpumqxQJwHTnRJKZY7Y3BpVIKIN5GrpYPlkwGkeyTAjttPFD6UzrqexaQ3F/3g4Ljws9JnQruz3GuVlaxsv/Z/0C3ITBo+JwIRdJ7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=2avrT7jY; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1718017817; x=1749553817;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=NsjQbAmUmlOlgifCA2KPWGuT+GynfWTjmgtIMLdbQcc=;
  b=2avrT7jYbrkw33l4szAAfgUrqMR+Ew1lCNlKyG3U0lXIeMcC4VGscH76
   I4DaqMfFYh2pJkEw1BaE4lJAYwvveCk/hVBQ/OmG6kMJW3H+oKkUP4ZZA
   zWX7qYKWBEJHCHNTxkhZPDBTtRzmJmRVWHfYSCt2b1FIgRoVRG2FY6A0D
   Ub8Gn1JA75DywHRs9m1QpI3W8cv4KFlmAVlQQSj1q+wH7PtS2rv8HPj8k
   QCRdr5txjymTNOKdfE8+cngx02QrnPlp39F1BhT90ACRHb3fHqMaqljVn
   NAIv7KdTwTuzKEiEpHc7xunPviupL1doimMQPabKVjN58EwDkeAcp/fhA
   A==;
X-CSE-ConnectionGUID: BcDt+H4qQZa2Sjv9BSuOAw==
X-CSE-MsgGUID: qoMeJWC2RsKc3uE6dYlZFQ==
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; 
   d="scan'208";a="194602811"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Jun 2024 04:10:15 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 10 Jun 2024 04:09:35 -0700
Received: from wendy.microchip.com (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.35 via Frontend
 Transport; Mon, 10 Jun 2024 04:09:33 -0700
From: Conor Dooley <conor.dooley@microchip.com>
To: <linux-riscv@lists.infradead.org>
CC: <conor@kernel.org>, <conor.dooley@microchip.com>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, "Daire
 McNamara" <daire.mcnamara@microchip.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Samuel Holland
	<samuel.holland@sifive.com>, <devicetree@vger.kernel.org>
Subject: [PATCH v1 0/5] PolarFire SoC Icicle Reference Design PCIe ?support?/fixes
Date: Mon, 10 Jun 2024 12:09:12 +0100
Message-ID: <20240610-vertical-frugally-a92a55427dd9@wendy>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2570; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=NsjQbAmUmlOlgifCA2KPWGuT+GynfWTjmgtIMLdbQcc=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDGlp927uk9Wy2+Gote/W7y99N4VsbkT1zpL58l5DvH/7rS0y Qtr/OkpZGMQ4GGTFFFkSb/e1SK3/47LDuectzBxWJpAhDFycAjCRfy8ZGc7/05c6kzE9atczjjN77w ZtXtqkaB7AsTK/vjTnrbv4TF9GhnUpE1bHL2zUEgp3OMeow9q/JPpPFleUQZKnppDe1RO/+AE=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Hey all,

Here's some patches that add an Erratum to enable non-coherent DMA
support for PolarFire SoC. By nature of being an FPGA, and due to the
PCIe root ports being only 32-bit capable, many bitstreams configure the
FPGA fabric such that peripherals in the fabric become non-coherent. The
PCIe root ports on PolarFire SoC are connected to the core-complex via
the fabric, and therefore can be (and regularly are) made DMA
non-coherent. The Icicle Kit Reference Design has been configuring the
PCIe root port in this manner since late 2022 and in a way unsupported
by mainline since earlier that year. Adding this non-coherent DMA
support makes PCIe functional on those FPGA designs. Daire did almost all
the work to figure out how to support these kinds of designs, and this
series depends on his patches to introduce the required dma-ranges
handling for the root port driver:
https://lore.kernel.org/linux-pci/20240531085333.2501399-1-daire.mcnamara@microchip.com/

The final patch depends on:
https://lore.kernel.org/linux-pci/20240527-slather-backfire-db4605ae7cd7@wendy/

I'm not sure if an Erratum is really the right way to go about doing
this, but I didn't want to make ARCH_MICROCHIP depend on NONPORTABLE.
An alternative would be to add a menu under drivers/soc like Renesas
does and allow it to be toggled as an option there instead.

Thanks,
Conor.

CC: Paul Walmsley <paul.walmsley@sifive.com>
CC: Palmer Dabbelt <palmer@dabbelt.com>
CC: Conor Dooley <conor.dooley@microchip.com>
CC: Daire McNamara <daire.mcnamara@microchip.com>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Samuel Holland <samuel.holland@sifive.com>
CC: linux-riscv@lists.infradead.org
CC: devicetree@vger.kernel.org

Conor Dooley (5):
  cache: ccache: allow building for PolarFire
  cache: ccache: add mpfs to nonstandard cache ops list
  RISC-V: Add an MPFS erratum for PCIe
  riscv: dts: microchip: modify memory map & add dma-ranges for pcie on
    icicle
  riscv: dts: microchip: update pcie reg properties

 arch/riscv/Kconfig.errata                     | 19 +++++
 .../dts/microchip/mpfs-icicle-kit-fabric.dtsi | 77 ++++++++++++-------
 .../boot/dts/microchip/mpfs-icicle-kit.dts    | 44 +++++++++--
 .../dts/microchip/mpfs-m100pfs-fabric.dtsi    |  6 +-
 .../dts/microchip/mpfs-polarberry-fabric.dtsi |  6 +-
 drivers/cache/Kconfig                         |  2 +-
 drivers/cache/sifive_ccache.c                 |  2 +
 7 files changed, 116 insertions(+), 40 deletions(-)

-- 
2.43.2


