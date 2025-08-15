Return-Path: <devicetree+bounces-204964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2635B27837
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 07:17:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC17258778F
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 05:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DC842356BD;
	Fri, 15 Aug 2025 05:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="EqV/8pe3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683441ACECE
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 05:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755235058; cv=none; b=CYMFSZJTyRZt8ZU2fAT89oZ4z/c2N6k16n6nQvRMueEmb0WXYJcBxg92dP2rhvg0jXYaEZjxN8fpYUa61VfRo6Vl3cG3zwNs4BhkmVQceKV2aN2p6ZDSBjMMQsP9+0kUgbBCvrasYG3PO8UKcAj2u2uV4ywjYuYyIo6WxjD3srw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755235058; c=relaxed/simple;
	bh=mWaMCUEcTS6Om9m2D3XYdgmXRgQSLad01mUMJB1Us3g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dd5TWp8MrKHscUHXZL8x/0JAtFyAmNOYMP1SCchoDCthuUH6CMdzQ5ZioMdt9+N7hp7lG6uTToGjb7isLHM7hFGVl7aNcc2RoFKJAAtkSolZb9yT5erR/roW4QTfW1b50RWBUy0brRKbVhpLCqnI6LL3mdLNk5q9gL2OfiSwEHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=EqV/8pe3; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-323267b7dfcso1836775a91.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 22:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755235055; x=1755839855; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t/YR0q010G47bb6uvqaqSOeiGHOWu114jtbq9qGbwyI=;
        b=EqV/8pe3leQvsRzphhGfiaEAlfM27yCiTTRvLJCpskNAYlb7v/6Vmf+FbX2+T/nUNS
         cV4hQ6d86HPdudjBgfVVQI6anGyRLAx8GMODCvEAMAxhfHDYFsXswOGhGs6E0zDLUG/m
         9b9yanv/gU5ETgrdJ4KMHR/MYz3xueoUr9KlcvBT9hdjpdGzHwLKu+CtND3eOmC5Q5fW
         MpMA2bIdtnzUyPXhctmDNRLdWaIYYqE113fJys1K5j4fcQN5GJreOvUbP/aSI7hILTD/
         hreqA6TQMost8m3QQlZpOXiGGjv/dvD1lYj4cJ60eQbcVUaFQJ8OELaoYHUB2PpO4spT
         tncg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755235055; x=1755839855;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t/YR0q010G47bb6uvqaqSOeiGHOWu114jtbq9qGbwyI=;
        b=TzLrnQ0y4PmQsrq6UyCZk9VFh73yNtcrnD9n+lNrFh43+X9yS4/qxgmP6hGTM8Nqij
         kWpZiOsY/LgnS26wjJUyl9YbK50M3EfK0Ahc4Myhqu/lhi+eBZQwbKitonOCYVfpLvOu
         eTCWehv3z/5Kc1t5X7kwoju2yrjq/2JnlSyfqnJDujXca2wDk0ZdZUiBHAMFyQeubxvC
         WyraIG69XR0cBrf/QLzopjfjwHKgjo/0A9tLFyElj5bvXM5DaV4D3xEzvqdljOnF3NnW
         wGxMAbGqsLrtLT6Z9rYnheLfLYFJwn/vz0GP9yH9WV80WISHtKp2MDyJSbr+rm3Wr/kA
         cziw==
X-Forwarded-Encrypted: i=1; AJvYcCUvTI3JvfS6ZkNWTNpJAKv8ckfrf1ZOV/3d+OwFDNswKVPxlGB2onwMmvHnImPT1dnuir0rEcepEu2u@vger.kernel.org
X-Gm-Message-State: AOJu0YzhOR7fH4vEtNKUhJLzPbE5FAykwri6OXh+cJFQUSlsk8GGKcFR
	c0qHWxXBtPl9pFhJX/lYoeJGSf3DPMKL6Ci9YJBy1WNAtNGvwTfQOxVIthexCdBXZyI=
X-Gm-Gg: ASbGncuSwnXuHJutsbZsn191ek4FIiMg4zNehJmh5v3/gvV/waPkGLzYNYmG81fRIXo
	loA7Iva0pVuoat8HgO3mGE5ktJ7nydqb66s6rwoyJeCsuQOhFcmKLNciKMZqewzJsnk2w+rciWr
	iaROpUjmsOZlFep2H3MRm89bVnpJJzNUfeOBVPZDwPSHlan31kplyFNh5OpRdzq3AFN8ekPttbV
	xutwx4j1jNIaBfeWmcqmmdP/RG8niD1J5NO+guQqIEpu/7C04ePcCL1c+KcyScrpdFO1eyx2chf
	Rgd1LrlnALhVY5L4NdzXu84XAZwRg5W4sI+q9sHr1erpqSKzIMjmF79wdJvbg4NKA7kj9k5eyPc
	id/3xmS51DUEqR9ql6IW0EQ==
X-Google-Smtp-Source: AGHT+IFT5uLaaFT7Gpf84nOg/qxTAgmBlTxCOXGoRCU2+Aj7ez4/ag54Q2dJu2pQHnJcOaMlqw+hJw==
X-Received: by 2002:a17:90b:4fcb:b0:312:1c83:58e9 with SMTP id 98e67ed59e1d1-32341e12ccamr1329199a91.5.1755235054555;
        Thu, 14 Aug 2025 22:17:34 -0700 (PDT)
Received: from [127.0.1.1] ([103.88.46.155])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-323439978a4sm373212a91.10.2025.08.14.22.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 22:17:34 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH v4 0/8] dmaengine: mmp_pdma: Add SpacemiT K1 SoC support
 with 64-bit addressing
Date: Fri, 15 Aug 2025 13:16:22 +0800
Message-Id: <20250815-working_dma_0701_v2-v4-0-62145ab6ea30@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKbCnmgC/32PQW7DIBBFr2KxLhHgALFXvUcVWRgGZ1TZpOCSV
 pHvXkw2UVVVms3/0rw3cycJIkIifXMnETImDEsJx5eG2ItZJqDoSiaCCck04/QW4jsu0+BmM+z
 FkAXVTlgvmTLGaVI2rxE8flXq2/mRI3x8Fvj6KMloElAb5hnXvsnqwDWNlpNna99Up+KcFm3EZ
 DN14G1YPE5U+4553Tpxal2fOdk1F0xriN/1lyyq59+zyzBqRgXQcc2dUK+7Ja0mHsppFZnbJww
 //o1pC+Y0Mi+t01x28hdm27Yf4nxvgmcBAAA=
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
 Troy Mitchell <troy.mitchell@linux.spacemit.com>
X-Mailer: b4 0.14.2

This patchset adds support for SpacemiT K1 PDMA controller to the existing
mmp_pdma driver. The K1 PDMA controller is compatible with Marvell MMP PDMA
but extends it with 64-bit addressing capabilities through LPAE (Long
Physical Address Extension) bit and higher 32-bit address registers (DDADRH,
DSADRH and DTADRH).

In v4, the entire series were rebased to v6.17-rc1. Added reviewed-by from
Rob Herring to patch 1/8 which created the yaml binding schema for SpacemiT
k1 PDMA. Troy Mitchell tested the whole series with i2s and dmatest.

Commit messages in patch 2/8 and 3/8 were modified but no source code
changes.

Renamed the node from pdma0 to pdma, and reordered properties inside it
to make them consistent with other nodes, per suggestion from Yixun Lan.

The patchset has been tested on BananaPi F3 board.

This patchset is based on v6.17-rc1, with patch 8 (defconfig) depending on:
 - riscv: defconfig: run savedefconfig to reorder it
 Link: https://lore.kernel.org/all/20250611-01-riscv-defconfig-v1-1-b48fc3517498@gentoo.org/

All of these patches are available here:
https://github.com/docularxu/linux/tree/working_dma_0815

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
 drivers/dma/mmp_pdma.c                             | 281 ++++++++++++++++++---
 7 files changed, 339 insertions(+), 32 deletions(-)
---
base-commit: 062b3e4a1f880f104a8d4b90b767788786aa7b78
change-id: 20250701-working_dma_0701_v2-7d2cf506aad7
prerequisite-change-id: 20250611-01-riscv-defconfig-7f90f73d283d:v1
prerequisite-patch-id: 53bda77e089023a09152a7d5403e1a738355c5d3

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


