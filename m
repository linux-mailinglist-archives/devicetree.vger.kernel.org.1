Return-Path: <devicetree+bounces-239903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C880C6A83D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 17:09:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8B8DD4E2B1E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0215A36B04B;
	Tue, 18 Nov 2025 16:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MGdNlAIH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAD736B04C
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 16:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763481771; cv=none; b=dmW1rVFwxImfX+WrU5nA+uLP97ATrQdfh4SvEEmG+pOwS2EM4y8YvSJm2ifI+hvrJy2uhgDJcejTN5SD5YrTnARLTr3IrHFx15UCt4/36gvySXKA8F4IaR5NUsXJ3x3wVRnVUbRGCcB8kp0cstsw87Iq8COIlYu29nA1xaCkFtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763481771; c=relaxed/simple;
	bh=gdhjhWdICuQVp55O/pWQj35TDTisalZ3FdFeGppf0jQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=g1YvVixDDIRBgxvcR/5deDbJaoNCj1cfHVYzuDsHvstUkI0qtxalxixXGTjnI+K+N1/kGPX5M9wJQphq63+/lvQwEBByuQkDknSQWHw94Q8rl5QEvuTRuCbRDUsZ0S12Aacny1eDZp7zqVzSeizjEJ+4jU3OUjUuKtQlOlQVUEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MGdNlAIH; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso36924355e9.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763481768; x=1764086568; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZolYxKyR2TKNDHC7G73SjkM6m/AelgK287SOoaUodeI=;
        b=MGdNlAIHRiGvF4vmKV9jKxd0oHzWqYg0OCD1ZRPAbRfPw/Unebhy8FfEiZQHJn4gjc
         Ch1IAPYB69NryyLV8cPgJ7W2DHKtkUpOZJ/Zp5iApzlwzIFKXdJ059CxR3P3oudRKCyw
         TPRxdq9NFNGn7p6uuBpPABi9tpOn4rlm/uAiJqqZax9Dc/YwoCHFb5yH1zKKAwwTUZAn
         ig/q7EK18w3SzmqpOChDoE1PY2Tmw7JKvyYEuUKovqICPoO7P5PQstq58lhAH+P46BqU
         EcTnYb2dWQNeNphbS2dq5hwdIVVVPEHRHlBSYSLxShQgJIjpZrIKjzhXPD1kNvbal+AR
         Uy8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763481768; x=1764086568;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZolYxKyR2TKNDHC7G73SjkM6m/AelgK287SOoaUodeI=;
        b=aYv8x3WnQ8qRWk+wFyCU/+yX4AtziQ+ZNVNPIkXq7XoceRQrBZCmBUsn+a6agRh9bD
         vWyPq+REUkj4b/Fj1gZ97eF4fJlGtU54dF92wPJy4DD2WlQ/5CQ1YF1+idhX/gQUgWwC
         TvWHkZiDX+aC/jOAdAAIHZIkn95ITQICDY8jQPRwHUlEaP6sNKmqxJkDoQeTOnU9hqvN
         eYkk/5ph3DJ4nGi7SO+SQW/7L2IByT+qMzN6dRRvwZFGyGJf5xwiGU9q9tSscFXIN2S0
         Foh+kX4o+Gzle+AOBB9vrJjfhA3qmzof3PYB0kqOLLx6cP2whkWhqp3GLN4xjO5t95HW
         FHPA==
X-Forwarded-Encrypted: i=1; AJvYcCUcBrdP85qk3rE0EFEHIhBu2PwopVcrD4zkDI5U9XDfIK9E9xg2OmUhYkQ9xdADD+i2NwzQNR4HHEDR@vger.kernel.org
X-Gm-Message-State: AOJu0YxD3190jmotaOCzwj6+MCl70O8QF3imMD/tzOtoiCGRBQryTFBc
	FcdRYgXiWsbcnrhVNHBFFYQ5Bos7n5htzqQHFrhneHwPajFWw01PgJKHo3H7dN4CzJA=
X-Gm-Gg: ASbGncuMdDotCgL3y0FXCCSgiAHaY6MuG5BTo5KtbLUv45oWxjSM41zg4E65QKcWaIt
	/obYg9zekoFLgQDgvjH+NYoO0nZxmaQt2Ox7A6Jp8T4abYiCxwGVo647/C/DIldveevpo3ZXiXF
	ICnHuRDJE2eWTyXMT9uShBG06BpPjiWpEJrxzHvJyv/tAubpkwVmab1m1r/llK0azvzxQ5V94rb
	bRmfq0kZJ54RKx6RqFieR62eCSSqWroJAeEV/MxKJ/AqOW4I7nRdJxzEPtDKbVi2nnPI/oTVWB3
	XzmnYyxIQujNCvaNyBfK8R1xnilHJ4qMSG/bYy6reSbxSz6tcXnM7MDMiaYomEGI4VGINOzWSgS
	mkd9yS0uOZmRPslkZqtPU1Fre+k2rGAJ1l289MKzhr9LzXX+gRgvkt/XOk8BS9mrMZnhZ7DHBFI
	gTW+NjL+GOl8yLg2fLvMw=
X-Google-Smtp-Source: AGHT+IHU3f+2VnZb17HyfN3q7vH0maabvSkwzyf6Chngf7ZnCh4C8B1MIKZ3LBGCUAyWOLacnrXL3g==
X-Received: by 2002:a05:600c:4505:b0:477:7a87:48d1 with SMTP id 5b1f17b1804b1-4778fea8810mr178621825e9.30.1763481768019;
        Tue, 18 Nov 2025 08:02:48 -0800 (PST)
Received: from vingu-cube.. ([2a01:e0a:f:6020:76db:cf5c:2806:ec0b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4779fc42f25sm171954575e9.6.2025.11.18.08.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 08:02:45 -0800 (PST)
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
Subject: [PATCH 0/4 v5] PCI: s32g: Add support for PCIe controller
Date: Tue, 18 Nov 2025 17:02:34 +0100
Message-ID: <20251118160238.26265-1-vincent.guittot@linaro.org>
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
 .../pci/controller/dwc/pcie-nxp-s32g-regs.h   |  21 +
 drivers/pci/controller/dwc/pcie-nxp-s32g.c    | 391 ++++++++++++++++++
 7 files changed, 570 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/nxp,s32g-pcie.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g-regs.h
 create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g.c

-- 
2.43.0


