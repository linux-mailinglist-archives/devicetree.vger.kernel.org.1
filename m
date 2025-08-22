Return-Path: <devicetree+bounces-207767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F9DB30C41
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 05:08:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BE2B17D3FD
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 03:06:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE1025DD07;
	Fri, 22 Aug 2025 03:06:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="nX/bHZnd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14729266565
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755831999; cv=none; b=IlrALAtGVNuNyB4KkFH7mKqxuNDBcrZjtAleInDEdo468obfvXdT814EDAQ9GeSKIkhWfRoBTkKIPsVF1uwxGGXWcitfnPvnE7GwQGifxZg8iqLEo0t1CnaH4Prl8g0t/aXyRdevUvvdS2TK0z1G1Nf+NQqN5LeedPzY72BXKHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755831999; c=relaxed/simple;
	bh=u7ekXjXJSlgmx+6qpcTRyF94IIALvz34gD+ScB8tY3k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PTOoJglcJA/eSnu4utPXFpbFJFMu6wuQNvllgpHLr0j3eKD6uPggyjCKNzmvu5jvZBNUaQASqYUiR0/Pw2uMxUfuuDO7lJULFXL4MjUQG0nfMtvPgIbuFKn1u3b/um3Y0hrzTeqie22gNKqY7kBnfUJuDHV7g2tom7pcvuFyAac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=nX/bHZnd; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-325195d1b1bso334471a91.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 20:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755831996; x=1756436796; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J6APY0iTgruqzu+Xt1WmIhK4gL27PQZoo5QbMl/JJBQ=;
        b=nX/bHZndneb1PmdDaYIlTl/sKXwlYOLFa+aUnPa/Efh+izCNu9qHT5qoTKZ6B/tlfX
         F9t7PRsTzd0bycw/v9HzHxdiF5skMzO/ywD441+7jBABRXgw7Ek0e1LzjA/sDXBX+2lT
         dh7oEj1P31UdAf73kbVmBbItsEs1d28ElDXk+5PYB7pvD8rEvW8rIa5VQJCBoDvvAZ9I
         L3x2MTNzivO8ezu4ZTcMOYTBsGUj2cuXMzp1iDdZhVXgp2k1tVmrZ50P2OnxmVkHdiaK
         EKjysxv4fUdY+jOttUzx25H7+wsrhBnwVkMsUCLVAIuzMoXqpgRP4iOb5LBiwnK9d/4j
         eIKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755831996; x=1756436796;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J6APY0iTgruqzu+Xt1WmIhK4gL27PQZoo5QbMl/JJBQ=;
        b=TU6c+3uGJUw82vQZ6qDCvDos0NtKXFwSZnXSTAEtn9HClVfY1i1iB625N81a2SSjRW
         PJkvE3U2WWCs75Z6delhlmJKw9oprOD/jPcGKCe30accKUtBYXQlPEMa3Az1pHYUf4rE
         lENBrHjLBWaPrRD/MvfiqejQ8nwt8JXrSJXYIVGo33/D6mDeb7y9h472ZKSNgYRl2MQT
         ux2q6OtoawPbQna0OWXpHWzVGOezTuH8h8tIht8Eodd3P2prc8LZ+WXfxY90bRasRwdf
         WJwX7AKtqtNEBFQKGHpwC6JtovRL5ZV36EbFXddH6rOwNYQ3ODN4rvfNKJVWPTnW2c4G
         z20Q==
X-Forwarded-Encrypted: i=1; AJvYcCUahkonfqZIwInbTv1oXBDGtEvpSAjpRy/ukb5ftaK2177hJO21inItEaBGThkE06lA7G1RQm7FXo7K@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0SaScoNu8psCmdFCw7bWjcDpjR1/t1Y46jY3F8Urui8P/l9k4
	XeOVyEfo8VAa7c7h9QmmuTnPKZxXsDgJfj/zmEbEPXmbeQrlFUz58Ft5aM/VeVR8xUw=
X-Gm-Gg: ASbGncuqzfx+dyQ3E6ZMKigwy9YcE/65+S0yBKF19R1a8Bzxm2guZIh78ysAXH0KGu9
	nPZtqkNG/LbwSDCtOh62zA+y3vl56/OSNywuK4sncbi8Xq8Gb9VL4d87VNIe3qJr0j6aEgoPyQI
	6LesA2ZfTUa25smcKdXWi8Kmq+8JLsrR5s+Lt+GPhJwYpOqGXSgWoE5ELak4UO3IaVBBIRJau/6
	U7+jl8fhrhPciqfIrnLToKJh/PRbittohVwFr4Bmhi4ekUd7OUROxrKsmjUVyGNgicD6k1cupAM
	rh5SU5NyPLOwwndFrKHhHFSFebyHcpW/chRUkQPJ+gDMZ+AX0FybyQOJkM62n08RTjhlzG7rXop
	OTd4r1ENxEc6O4LCL9aOGLlappQZ881EWU5PyWBA+YUK8
X-Google-Smtp-Source: AGHT+IGbrksi9Vl6DjeeywwPEHNBqOc6j8/i0ukCMTc/yG+kfQptCBbBbJ0xlFQr6PjQHtWsRfWM3Q==
X-Received: by 2002:a17:90b:17c6:b0:31e:beae:2934 with SMTP id 98e67ed59e1d1-32517749976mr2112592a91.18.1755831996181;
        Thu, 21 Aug 2025 20:06:36 -0700 (PDT)
Received: from [127.0.1.1] ([222.71.237.178])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b47769afc1bsm2756777a12.19.2025.08.21.20.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 20:06:35 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v5 0/8] dmaengine: mmp_pdma: Add SpacemiT K1 SoC support
 with 64-bit addressing
Date: Fri, 22 Aug 2025 11:06:26 +0800
Message-Id: <20250822-working_dma_0701_v2-v5-0-f5c0eda734cc@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALLep2gC/32P3WrEIBBGXyV4XRdHoya56nuUJRh/slISt5q6L
 UvevSZ70aWEwtx8A3PON3eUbPQ2oa66o2izTz7MJfCXCumLmkeLvSkZUUI5kQTwLcR3P4+9mVS
 /LfpMsTRUO06EUkaicnmN1vmvnfp2fuRoPz4LfHks0aCSxTpMk1+6KosTSBw1Rc/WrtqdAgAXb
 fRJZ2ys02F2fsTStcRJZmjDTJcBbZqLT0uI3/svme6ef2uXIVgNwtoWJBgqXjdLWlQ8lWo7MrM
 nDNTHGFYwzUAc10YCb/kBpv7FNMCPMXXBCAo13yopRv5g1nX9Aau66n6uAQAA
X-Change-ID: 20250701-working_dma_0701_v2-7d2cf506aad7
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, duje@dujemihanovic.xyz
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>, 
 Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
 Dan Carpenter <dan.carpenter@linaro.org>
X-Mailer: b4 0.14.2

This patchset adds support for SpacemiT K1 PDMA controller to the existing
mmp_pdma driver. The K1 PDMA controller is compatible with Marvell MMP PDMA
but extends it with 64-bit addressing capabilities through LPAE (Long
Physical Address Extension) bit and higher 32-bit address registers (DDADRH,
DSADRH and DTADRH).

In v5, two smatch warnings reported by kernel test bot and Dan Carpenter were
fixed.

The patchset has been tested on BananaPi F3 board.

This patchset is based on v6.17-rc2, with patch 8 (defconfig) depending on:
 - riscv: defconfig: run savedefconfig to reorder it
Link: https://lore.kernel.org/all/20250611-01-riscv-defconfig-v1-1-b48fc3517498@gentoo.org/

All of these patches are available here:
https://github.com/docularxu/linux/tree/working_dma_0819

Changes in v5:
- Rebased to v6.17-rc2.
- Two variable dereference issues are fixed in patch 4.

Link to v4:
https://lore.kernel.org/r/20250815-working_dma_0701_v2-v4-0-62145ab6ea30@riscstar.com

Changes in v4:
- Rebased to v6.17-rc1.
- Updated commit messages in patch 2 and 3.
- Renamed the node from pdma0 to pdma.
- Put "interrupts" after "clocks" and "resets"

Link to v3:
https://lore.kernel.org/r/20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com

Changes in v3:
- Created separated yaml binding for Spacemit K1 PDMA controller
- Updated pdma0 node properties according to the new yaml binding
- Put pdma0 node in k1.dtsi according to its device address
- Put pdma0 node in board dts files according to alphabetic order

Link to v2:
https://lore.kernel.org/r/20250701-working_dma_0701_v2-v2-0-ab6ee9171d26@riscstar.com

Changes in v2:
- Tag the series as "damengine".
- Used more specific compatible string "spacemit,k1-pdma"
- Enhanced DT bindings with conditional constraints:
   - clocks/resets properties only required for SpacemiT K1
   - #dma-cells set to 2 for marvell,pdma-1.0 and spacemit,k1-pdma
   - #dma-cells set to 1 for other variants
- Split mmp_pdma driver changes per maintainer feedback:
   - First patch (4/8) adds ops abstraction layer and 32-bit support
   - Second patch (5/8) adds K1-specific 64-bit support
- Merged Kconfig changes into the dmaengine: mmp_pdma driver patch (5/8)
- Enabled pdma0 on both BPI-F3 and Milk-V Jupiter

Link to v1:
https://lore.kernel.org/all/20250611125723.181711-1-guodong@riscstar.com/

Signed-off-by: Guodong Xu <guodong@riscstar.com>
Tested-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>
---
Guodong Xu (8):
      dt-bindings: dma: Add SpacemiT K1 PDMA controller
      dmaengine: mmp_pdma: Add clock support
      dmaengine: mmp_pdma: Add reset controller support
      dmaengine: mmp_pdma: Add operations structure for controller abstraction
      dmaengine: mmp_pdma: Add SpacemiT K1 PDMA support with 64-bit addressing
      riscv: dts: spacemit: Add PDMA node for K1 SoC
      riscv: dts: spacemit: Enable PDMA on Banana Pi F3 and Milkv Jupiter
      riscv: defconfig: Enable MMP_PDMA support for SpacemiT K1 SoC

 .../devicetree/bindings/dma/spacemit,k1-pdma.yaml  |  68 +++++
 arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts    |   4 +
 arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts  |   4 +
 arch/riscv/boot/dts/spacemit/k1.dtsi               |  11 +
 arch/riscv/configs/defconfig                       |   1 +
 drivers/dma/Kconfig                                |   2 +-
 drivers/dma/mmp_pdma.c                             | 289 ++++++++++++++++++---
 7 files changed, 343 insertions(+), 36 deletions(-)
---
base-commit: f3c5631f70e434e318c44001e2417d4770f06cd0
change-id: 20250701-working_dma_0701_v2-7d2cf506aad7
prerequisite-change-id: 20250611-01-riscv-defconfig-7f90f73d283d:v1
prerequisite-patch-id: 53bda77e089023a09152a7d5403e1a738355c5d3

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


