Return-Path: <devicetree+bounces-236851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F025C485B8
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 18:33:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C8C4188AC9F
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:34:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F83D2D949C;
	Mon, 10 Nov 2025 17:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uK9+db3+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F346B2D8780
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 17:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762796021; cv=none; b=uk2I7PL2iyLIYIvt3Sgj2UOdHBxSJtuho1Hl9O4D2VXuP5cj0b0t5ibAWtGjqdkUerRvUU7exYi5oj/vDfdWKOBgucQgB+6c4JYe+aM6hDS3+1aimkyTF2GZBMf3JDWv+Si9ez5FrkoVvbQ0NHLE7AvkfuBer9JQ1E6rIN3Vk7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762796021; c=relaxed/simple;
	bh=Nkg2h47lxF2qO8Gx0H85hCwngK8s040aUkwhgf7L8jU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tSrExcRtdG22r11PWGp4qUM5EoXDa6EfE1Qjrfe4Oi33VQpC5c9CuQ959HFyDtMuewjsCIgiMacUFMDEIJ7CK6MIqioSSnW/1q7kqecPjECNGViDQNuK7cHVQzxkMiic91ieRdEhNYzcw9n3Q7tHVEATHuwQz+78tn3WMHpbZz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uK9+db3+; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47777000dadso13689045e9.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:33:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762796016; x=1763400816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OF8+BNFL4niPqRVyKe1lX6yisr96vvFu6A5/iDrFJwc=;
        b=uK9+db3+8THbUlbUReIsYBoQ3BdxkXSWhD5Nql/QI576QsecCrz8XxJUwE8k4H5FOZ
         BRA/A8MWfmPfvhJ5ijF8IjtS7lGibOntwhlOJjN2pOXoUtoL/og47UMw0xmeeXbKNY6G
         CYIPNLL4qC3xCEYqlxAVKfLm762WPpi4TZf7Sy3QkGR5RaTNwuHNoGe2FGL3Dyyxj27R
         ITQE+Ivq124SpREu1B7RvQxNVKvQl9RBPOXkTHp+QC0RqVPSmqUy9qJ9vDokZ2B8CSyC
         PwTrwX0KlPAU5Br2qnMGk9VKGCTZbyzHT0dk9L05E0U8dlc9vZ+8utQ/t4OeT/nAEA/x
         peag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762796016; x=1763400816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OF8+BNFL4niPqRVyKe1lX6yisr96vvFu6A5/iDrFJwc=;
        b=aIlyKbVIMgx+vTk785VNvbcH+rPQ16UBzRNPMHzw5YTBaxknEaBCVqRjSLQrq18YiC
         7Va4LXQtaA89wmE6uIt37T2X4N+LVhb9s5FrG6hMN0l2wua1R0dCQlBLMpLpWtrwE+Ys
         HCYuXZlSdKg/N6t0Ho07/ARRBCfTuygdpSaoYZmbHfWMBNJ7tXNcQ1bau1yXEheUqzCY
         kJi4tuTAmI22Kq13T8CxmRQ8Ri5HwyHARat/gi5l8nYsP+bqlbBEM2wBM8zWaO+IzGuD
         sGUYQ1qUlr21m4Q99B+sXJvVKo1j6C+DMn589aK1jLXMJ0AeedSQ4/Kvgpozu0hIl/72
         hDww==
X-Forwarded-Encrypted: i=1; AJvYcCVcYizsuRi8SEC3Viq3AVgTjGbceTJsQ5No6m0q3adYtg/32AX7xAKambOD3FTlKXNq1aJpOAOLlE3k@vger.kernel.org
X-Gm-Message-State: AOJu0YyQVqKaOEuuCFoYwfcUP+v5jNS4yIwxyvHO8vGk+7gNR6WrXW0G
	MESc9ZgN+ZxjOST6VqE62PhQnvgomLDxsff79sDWGVe+Ern1mPIRLjhsBXz/H/xpj90=
X-Gm-Gg: ASbGncsBcRrRBqPO3qjhb4MyF/HEY8AqjlXFOzZyXP1fi0/mnruRwDHUKjvoHwim7on
	dq9XNSOT6JEImHT6xakEupzedrHRuM8Qc0BTuJMJRgwzwlERcBme6luvPMnOluQtjqX7YODTBiZ
	OE0H6GJyj9s/h8IyMQG4fNl3mqN8yxykMlI9xk7dXgAd00zje5Ry5k7D4OS2lncZTgxG98iQGMf
	zekA5n9QXSzKM9dSPPadKFaUJMus8LHs2ydsDiQDxURBfxat2y1DqX89FAlx9ZVA5ERtwqgycIW
	5hMQ1RkjL9mDzA9W9EjiwjOetO8e5DrY5mSGTUoRWFy9V02mGqG/k+RfO3HjuYHo0W/vG0WpBjh
	ee3hcNdD8S/uuRSvmHLnxLdSpJvve+O60tbm1YRryVtpzxrYHbvy7saORu+E6nmlW6W2txy/nw2
	FmSEVGBdcT
X-Google-Smtp-Source: AGHT+IFsBQQnkCxj/ZdeAOfnyhkqLUTn/qNT58RuOTuk9hbm4fBeIAtaCNjX2ecmWX+ye2/aVLU4cA==
X-Received: by 2002:a05:600c:3493:b0:475:f16b:bcbf with SMTP id 5b1f17b1804b1-47773237269mr64531415e9.14.1762796015765;
        Mon, 10 Nov 2025 09:33:35 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:d5ec:666a:8d59:87fa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47774df2d80sm140111375e9.14.2025.11.10.09.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 09:33:35 -0800 (PST)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	bhelgaas@google.com,
	jingoohan1@gmail.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ionut.Vicovan@nxp.com,
	larisa.grigore@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	Frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: cassel@kernel.org
Subject: [PATCH 0/4 v4] PCI: s32g: Add support for PCIe controller
Date: Mon, 10 Nov 2025 18:33:30 +0100
Message-ID: <20251110173334.234303-1-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The S32G SoC family has 2 PCIe controllers based on Designware IP.

Add the support for Host mode.

Change since v3:

- Added Root Port node and reorder irq in binding
- Added Root Port management in driver 
- Fix Kconfig PCIE_NXP_S32G position
- Use default pme_turn_off method
- Use ops->init() to simplify init and suspend/resume sequence
- Fix some typos.
- Removed MPS and ERROR config. Let core code configs them.
- Removed s32g_pcie_disable_equalization() from internal team request
- Removed dw_pcie_link_up() from suspend/resume functions with [1]

- I'm still waiting feedback from internal team before removing
.get_ltssm() and .link_up() functions.

[1] https://lore.kernel.org/all/20251107044319.8356-1-manivannan.sadhasivam@oss.qualcomm.com/

Change since v2:

- More cleanup on DT binding to comply with schemas/pci/snps,dw-pcie.yaml
- Added new reg and bit fields in pcie-designware.h 
- Rename Kconfig PCIE_NXP_S32G and files to use pcie-nxp-s32g prefix
- Prefixed s32G registers with PCIE_S32G_ and use generic regs otherwise
- Use memblock_start_of_DRAM to set coherency boundary and add comments
- Fixed suspend/resume sequence by adding missing pme_turn_off function
- Added .probe_type = PROBE_PREFER_ASYNCHRONOUS to speedup probe
- Added pm_runtime_no_callbacks() as device doesn't have runtime ops
- Use writel/readl in ctrl function instead of dw_pcie_write/read
- Move Maintainer section in a dedicated entry

Change since v1:

- Cleanup DT binding
  - Removed useless description and fixed typo, naming and indentation.
  - Removed nxp,phy-mode binding until we agreed on a generic binding.
    Default (crnss) mode is used for now. Generic binding wil be discussed
    in a separate patch.
  - Removed max-link-speed and num-lanes which are coming from
    snps,dw-pcie-common.yaml. They are needed only if to restrict from the
    the default hw config.
  - Added unevaluatedProperties: false
  - Keep Phys in host node until dw support Root Port node.

- Removed nxp-s32g-pcie-phy-submode.h until there is a generic clock and
  spectrum binding.

- Rename files to start with pcie-s32g instead of pci-s32g

- Cleanup pcie-s32-reg.h and use dw_pcie_find_capability()

- cleanup and rename in s32g-pcie.c in addtion to remove useless check or
  duplicate code.

- dw_pcie_suspend/resume_noirq() doesn't woork, need to set child device
  to reach lowest state.

- Added L: imx@lists.linux.dev in MAINTAINERS


Vincent Guittot (4):
  dt-bindings: PCI: s32g: Add NXP PCIe controller
  PCI: dw: Add more registers and bitfield definition
  PCI: s32g: Add initial PCIe support (RC)
  MAINTAINERS: Add MAINTAINER for NXP S32G PCIe driver

 .../bindings/pci/nxp,s32g-pcie.yaml           | 130 ++++++
 MAINTAINERS                                   |   9 +
 drivers/pci/controller/dwc/Kconfig            |  10 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-designware.h  |   8 +
 .../pci/controller/dwc/pcie-nxp-s32g-regs.h   |  27 ++
 drivers/pci/controller/dwc/pcie-nxp-s32g.c    | 435 ++++++++++++++++++
 7 files changed, 620 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g-regs.h
 create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g.c

-- 
2.43.0


