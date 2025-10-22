Return-Path: <devicetree+bounces-229925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAAFBFDA7D
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:43:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1DE2C4F3654
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC7462D323D;
	Wed, 22 Oct 2025 17:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y4gQ/9qi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697442D641A
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761154994; cv=none; b=aMqwV1KnVsk1NL7r0EvUOkLfkSGx5cNzz1XvYHrPuzrn2UqhwN7V5v8fAdC6jwBXN89B4yLoWaBI2qS2BdwgwcF1gBCRIwnx5zdowbLE34ic5VjnIF1FTu+WhyJQaroVtWFt0X5p2RDOIGYJlA42YG45L1vekVOkQEFsOJIPd5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761154994; c=relaxed/simple;
	bh=x4lBM6MALnsKTkLEdOEjnhf0UotUJbGi2ScacjBBP/Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Lixl4TEt5syHPt5r3nWEgOs6Hh5a9r6uGfzbUEBbK7hNp4nS9qLkksMWWgamLH5KK5yjg+Sy5StU8U69sd0BLPmQXiK9w93Rv3589/sy3988rVvI9SiEkqj8FILRdr46INQuo+k9Yu1Gzc2CytEs5I+83/sIX2TReZbyChASwbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y4gQ/9qi; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47117f92e32so48610695e9.1
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761154991; x=1761759791; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EEGDYb1h2mzgB0PmHyauQaDh/tQllsTXIY8VSU+TUKM=;
        b=y4gQ/9qi9uTdEIUEDAKqI9X0AbxMfSpiTG5fdUE897XSZqY1NXB8iJFnepF8wkvAmQ
         bV/cxuzOYI9bCMz8CjcFR4csVGLYiEYzCmQjCPBZ8E2RXmq0129UX9Jch2uDZDwMvwJi
         ZvLW80dTdYGBrUEq9jexXyM60sRmXjt4FiADpd/XG4EMYiKEFlfYvV9zOXnQvdWyTtBA
         QcR0IN8ZrbfSl0p3LaR+YTPZTjOkrvOlIPeYgdz7PHQwnbMJkcEOKoNAgHMaDDX1umuF
         YtXJ7xq0ys8ZFexSHNC/RgHsZOLhKi66dKL2axBD33GPOLmw6cGSrjr4brBm8G+13Zeo
         MY9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761154991; x=1761759791;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EEGDYb1h2mzgB0PmHyauQaDh/tQllsTXIY8VSU+TUKM=;
        b=FmzPHH+uTMiXitJmF0W9vVxCuH6fBI6HANQeZbZzCmrEboj6K1Na1/SwcSrM/r8D7z
         iKjnGCZ+mnopqOPlRCrOVI8/nO5kH+3P2nFpJvjJRi/UvTEyeGp2E8WG0ynRWHNPF7GQ
         auj6MAGStsKywHRufJbMVSfYlM8aOcsUrYAplAH6FeBH81bKQhBh+H30umKAMaYA7zdB
         Bti3oQlRbQ4mw8Ed/DhubS2s0XQ5prML41jpxlWZqu+EOguMUBhU41+ERjoZhCjAZH+u
         Uu6jRQuc0VGVIwaOZPvQ5XbtTkVJNqQA3+XUmwvVyN026wrx6HRx5o7PlATh+6uMVHZp
         YUGw==
X-Forwarded-Encrypted: i=1; AJvYcCVul+B4cyf/brU7H2Ou9l4HCyW82iJY8xartqVPpty8BTCPBXHmAN0qe/KBWCLuGocJWo2jiGRYzj4N@vger.kernel.org
X-Gm-Message-State: AOJu0YwweL/pbMkkgugfhV3jUlBrv7s0A3B4OcQmDpYf3LOeUtqb1umR
	mqgflBJe0fvGu1j9YxFv49HgCsHtT47i/b8+Dq/w+5SyzRejHdrmIHsKMZpbw97WX/E=
X-Gm-Gg: ASbGncvyNuIgYeBIxXRZXk8UVFEdcoC17RtkYTOswlgv/+ChE3JnO0+roABSFsG7x88
	de9cTiwS9VxvcJ+janPT+D2Oi85mGX/yQ4BtFI/na8FePUkdq3nStG3EiOTf32ugKOB/6fc7Fb1
	EtL7S8Mpm7On9SJgzOBUJ+yikBIuVQBnTXILrVkerK6hXPdpo3nxxmMfrlKbhOUAs9skEVR6Vlv
	Hcn8VYAEg4IYMk42qMDMSUi5VzCG0zKYInnVpxEGgKQjxKRn4xirZT3e4jew9Qn9H9hz25h/fKu
	nueiuOJyMnIB2XfgDy0/l+HNJateNO8TWngk4pvJ2ZighkqK1na2PYrGtXAi7Vu1EO9vzkv77o4
	sQNmAAlpzU55+fU3jb5szITI7Set5Icy2nZT0srqqhHnZjcdHX8JdaDc9i87jPlIMipIct/DVeG
	T57ayymjIPD0DtnUriZyk=
X-Google-Smtp-Source: AGHT+IEMDLmd+T9rXjtLSXLZLP4aZjdA4r3I2RlDm4L8/0x4vSRk561EjNsJMCQhfMdzzPOvzd0FsA==
X-Received: by 2002:a05:600c:3b05:b0:471:d13:5762 with SMTP id 5b1f17b1804b1-471178761bemr151131135e9.4.1761154990718;
        Wed, 22 Oct 2025 10:43:10 -0700 (PDT)
Received: from vingu-cube.. ([2a01:e0a:f:6020:edfc:89e3:4805:d8de])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47494aad668sm43434755e9.2.2025.10.22.10.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 10:43:10 -0700 (PDT)
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
Subject: [PATCH 0/4 v3] PCI: s32g: Add support for PCIe controller
Date: Wed, 22 Oct 2025 19:43:05 +0200
Message-ID: <20251022174309.1180931-1-vincent.guittot@linaro.org>
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

 .../bindings/pci/nxp,s32g-pcie.yaml           | 102 ++++
 MAINTAINERS                                   |   9 +
 drivers/pci/controller/dwc/Kconfig            |  10 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-designware.h  |   8 +
 .../pci/controller/dwc/pcie-nxp-s32g-regs.h   |  37 ++
 drivers/pci/controller/dwc/pcie-nxp-s32g.c    | 439 ++++++++++++++++++
 7 files changed, 606 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g-regs.h
 create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g.c

-- 
2.43.0


