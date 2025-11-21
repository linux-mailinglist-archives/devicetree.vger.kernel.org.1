Return-Path: <devicetree+bounces-241211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BD25CC7AF19
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 17:53:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 192923475EE
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 16:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1ECD337BB3;
	Fri, 21 Nov 2025 16:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ozq7EU9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6DF2E0B71
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 16:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763743766; cv=none; b=crjI7yqKj21TWRExWp9cKTVRIfQRmyEROiJOEyvG6WjIz2/3+PjS8z+6JK+xUdEHTfK4eFByEeq8PoLvfIKaSq4GsjGkHE9JTEIehLCgE9uYFw10BNKC1yXndtfvTPcgJJk3mUhpJ7tBeDjdKWOu5RYerHdeMmdOisw39fIgvZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763743766; c=relaxed/simple;
	bh=kN3VB2GpK8nQnnG7eMVnBZsbzlKoAxQzYV6oW93njqs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Q3W0C/GA0Xffj4c+N0nH2PeFNFkBQYSCzOzP8DwWLLU5lTpN51RXNuYhag0w/0L0nCthxiCGQKjTXqbycsF8WZM7knV4xoDw6OXgHZ1kQdYl9LjNaIUvaZTVD/appA6H2F/IvmpDc3HB2+AUvOKa0fwog0WX3HeaaDUPqmrXfPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ozq7EU9i; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-429c48e05aeso1525970f8f.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763743762; x=1764348562; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zGlnkOToO1jf+8pr/raDuQYhOEXUPTfBya9U9ZeDpYs=;
        b=ozq7EU9ifYSZ6bwv2d1Xn5DpKvX+lHXORQJ5hPuGqnDYF0wUmc7DFnO7v9lwW9FGCA
         XhvZ2S7ZcGPeCZPiG6Dbf85ZPPYWwo+x4mbC4bAA8K2PXV3L7DOfR2n2gAHPBSNJ4xSr
         TDxmQHoaVC+y113YHlhKIJk36KYxNM/C6OAboSvBYcsleJw0F9u8x+FUaXoDeNPQXFeT
         XWpAQm2wTGIyuFpOTCbWN9OI7fwntU6Pc5ZlypkDw8av3Jp9sXpXTaK+opWcLN7KW2UY
         4QeriTvocl/hTvUP7O0BHIreHDIPaZ2YvyLk9fJkgG5m9jdSSIBypXchLEciZVJbJy2z
         wuLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763743762; x=1764348562;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zGlnkOToO1jf+8pr/raDuQYhOEXUPTfBya9U9ZeDpYs=;
        b=WW5w9Igiao4aADQ8erz7rf6+75QrI5ZU/Z/R/ThqL4pY23vFuIIR3hMs4gLcOiH3vz
         u5GD/uP5sZTHBuYj5bZ5eHzVzHrzS/cJa4PUccAUmcUI6cRRnej1XzF8GxbRmBOScoSo
         2XfeGCs04sR8xlLdLG0hXD06zdxClbPNIhkK0JBw6VRH/xG5jxZj5MW988GuxSpmAKL6
         3+XB2F4I9tqW8nmQIyLf0y/wUM4FIvwJWnXvTuJKS5RhVqR4VJGh9Uf3psHMmQ4bXJiN
         PqWMvLcx2Bd78FMDEVJx/1ZK8qbfBBZmst1gpvGkLjj6FHO4sKkBz4AxfpgYatiJCcMU
         e6Zg==
X-Forwarded-Encrypted: i=1; AJvYcCWIohW32TP8sev0yg2umMnXNAmq33mg0jNgWsv3gL1pMKT6ge6KUPiVh85n4Sgr3gayYNfo3jSR0g/b@vger.kernel.org
X-Gm-Message-State: AOJu0YyVdTK73JaLuje6YHgTeCJrYs5p2Q3ioB+Q/Yl3u3Nue2MVqD39
	8dbJ4FxPdF/O5vslIdQ94VV5lIMYSyE6PJF3dCTANSenKcb6fqMYlZyeDIZXpSzkdNs=
X-Gm-Gg: ASbGncudkMm68K+UVWYeZ6G93SE0zGpWdpPL74bYeEjic8OaAlcHLjEAQafYcS75hDv
	1ZS7k5WK4ikOex/Y3GT7WzUTtmXam77RY81XB6P6ONptFS26wNPBE/kCHklEPFwMvA8SQ7mnCH8
	ILc7kl/7iwTPhSF4AxO24XJr9w3WUh61p9yCpjNE6EhSSrlNM7YcwmY60EFkHJEArt5A5Fy/HHv
	/PzPeZE3tDam7C6xfJGi6BIo8z4FDanKqXFyR3Wa6XKUZ8CWYdiMHIXnXNAY3hGfG6h0f8npmQu
	BOL6DYhogaK5LhWC7XlRSbw2SS36y6jReBbwF2Osxv+6gPB3V6xvg6teDSQEQSPuquZPH9snWB3
	qkYXd+OZ0bhIQ1GxSfu9gfE1iZ5ppSDFb2MBFWnzrJVkXxkqbO53e+yplTws1IkiNqpwStgtyD3
	kXu1rfBpi/3QeMnKge66A=
X-Google-Smtp-Source: AGHT+IH9fgh+0AmyQ3I7+I9o5tgoOvXp7ga4hErs7KJ7tdVH3mP2gYsIWXJJszHZqn2a9PoLYchupw==
X-Received: by 2002:a5d:5d0e:0:b0:42b:48bc:498f with SMTP id ffacd0b85a97d-42cc135db65mr3645210f8f.14.1763743761548;
        Fri, 21 Nov 2025 08:49:21 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:803a:ae25:6381:a6fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fb8ff3sm12938478f8f.29.2025.11.21.08.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 08:49:21 -0800 (PST)
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
	Ghennadi.Procopciuc@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	Frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: cassel@kernel.org
Subject: [PATCH 0/4 v6] PCI: s32g: Add support for PCIe controller
Date: Fri, 21 Nov 2025 17:49:16 +0100
Message-ID: <20251121164920.2008569-1-vincent.guittot@linaro.org>
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

Change since v5:

- Removed relocatable bit in yaml
- Dropped pcie-nxp-s32g-regs.h and moved reg definition in pcie-nxp-s32g.c
- Removed a useless ret
- Change kconfig from tri to bool because of memblock_start_of_DRAM()

Change since v4:

- Moved allof position and added interrupt-names' restriction in yaml file
- Removed PCIE_S32G_PE0_LINK_DBG_2 and instead use PCIE_PORT_DEBUG0|1
  after receiving confirmation that they are the same.

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
 drivers/pci/controller/dwc/pcie-nxp-s32g.c    | 404 ++++++++++++++++++
 6 files changed, 562 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g.c

-- 
2.43.0


