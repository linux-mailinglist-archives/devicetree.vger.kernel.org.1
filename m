Return-Path: <devicetree+bounces-219374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBCEB8A749
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:58:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1C1A57A93FD
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:56:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFC2931E88A;
	Fri, 19 Sep 2025 15:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CmhZBk7Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD5FC31E10B
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 15:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758297506; cv=none; b=Js7khswPEWrWMFICHCRpunyYuEWClx8B61rCqR/eyylUUaGRf7D3TrLH0GZa4svpTCJo8y4uxI1O+csrYyuQZVbJS35tu/WZaccNiNXwBGC/mxQct44KjgS5TYLTFpBobHxb6wIwC1Nqau6WTnhDhNCueOc7ej1JsbNC3u6cA/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758297506; c=relaxed/simple;
	bh=N7YR47rPh9IYgAs1yBMwxo0aIg9W+HiNLeVlSehJYuE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Dp1nV/W6Hc8yutByloMGL93TnqiZlRsYqeuCb0RMtU7uTAD8nl9lgvqtOUXCZzpgEOvTfj6g90bERhMeBfrnk1VDRns/hrs3x6NuZ4e+m2Fm0hgCrADWmElPMpnfTqXkpQ3DXnLpu65sX+c5y7+781UiJt9rwTJVwJzl5lvsKQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CmhZBk7Y; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3ecde0be34eso1776432f8f.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758297503; x=1758902303; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vtPW98rgBsi1AXsCtSgCobaGSpH9VMGiOKrsL1cwC2U=;
        b=CmhZBk7YvjaaQB1/Z8EKPyb7X76hrAYfY/BOhHSTKMMvJM4k8f8aEuMGJiCoevF5nb
         kXdBFDYOrS2JnpfqjeiB5BR2qdlyYsZv5KvNsMS0oT2d6ZPAgZWRCrD4J7dtoqmxqRXW
         +XtUc1gmBU2RnDlpArmgvUEMUGuoIWTqWuvlonNe8aTCgE2CBVXrqFHZolbZHEm1l5Y5
         JgiV+rRMBcn9Vmp+ofLgzWrNahe3fXsRYJqW+5Q3j8KdjVNYIxmRAkbqsGI9vr7VHRdn
         rwVOuEV1Hnd+T8vPuy5WDBq5i5CaFMRN/5bllbZesZVp/hie5OPnyBDNYNrNFJI+jMGs
         Mz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758297503; x=1758902303;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vtPW98rgBsi1AXsCtSgCobaGSpH9VMGiOKrsL1cwC2U=;
        b=P2KvquTJ36U1F7GqxSpht8gCStMhXmraIG1v3ej98FiMfGio5W96NvRUxx2WLDKayd
         D3ugE0LrwWaptVUkrKRq1AcQ0WF5QXEkzNXoxPzUKflj5WcOVuI/C2Ka3Fa824oEr795
         ML4BwBcLUryI55ZF5RNn00YR8f74TT41gD2RT3iRWMgljYg4q9nHRIum0i2C2y2hWc1N
         jlE1XNc2kLFORQz2anyCIxV5qPOLHsTTNl/YTW9BA86UQU9CsfyjCXNxpAnZ8dJpBabN
         b2mxoZewg5ASb7wag/YDKSNzwTWMedlUZXqmcMUm4V80aAlemOf6W2flM4nSvYbBX+IO
         uUdg==
X-Forwarded-Encrypted: i=1; AJvYcCWof7jTboW4BWI+/gq6E6uLLaGYMhjOE0FVtb5ybdu5pIroGqT/fnRITzfs9dapgfEY/DcVefy8dSNH@vger.kernel.org
X-Gm-Message-State: AOJu0YxBhItoPZYdUmLPkH50uQMyDBvdeYT1305A6viHSy5k3w05M8+d
	PwyPDWWfc+rJSCExAJMFFridLOjjikRrg06DCts3YXMNnrck2ajajMP4fQ/OXEXhTLs=
X-Gm-Gg: ASbGncv0GtfXLs4xTjow3qCcghoq79uZYFPQge//2hcZW6G7TTJlg6BsZKDQyhPas7B
	iScGjiPrV3vAFCIbfmmPYR/ublH0eQJy6i6e5lkHK9ZPvUWuzf9vDjzm9i5SDmI5Qzh2M/agUGI
	nrBbId9Lk5+YTexsNM8XIZDxCKhp2C7G1uvXzAacb4eu1RViblimEYVnHUeSy2YIQMeUtfrwRU8
	PrJVDfj8ykNRnJRXMB3Ry92YeWDs5s7SPr98MSWu6gg3sRP+dB9xSTHiXGyZkGHC3rG4v5+fHjv
	BA0Zt8sqYtjhNEfpJKOCOUkXk8pS65bS1ukaFlJUy2iwmzFVxdyKn0lkrMH4rSX712AbUaJbN1k
	co3clXA71rZQ0cOheeD6aTO44+W6SjlQ=
X-Google-Smtp-Source: AGHT+IFYUaAn9i6Eqk0wNZqPapSoDfpti615G8HPJJeCq6Zt6cdqWx78zxKqOQok9+7kvdNqxLGyAw==
X-Received: by 2002:a05:6000:144b:b0:3ec:3d75:1310 with SMTP id ffacd0b85a97d-3ee205def16mr3262070f8f.30.1758297502881;
        Fri, 19 Sep 2025 08:58:22 -0700 (PDT)
Received: from vingu-cube.. ([2a01:e0a:f:6020:9dd0:62bf:d369:14ce])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee07407fa3sm8367224f8f.21.2025.09.19.08.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 08:58:22 -0700 (PDT)
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
Subject: [PATCH 0/4 v2] PCI: s32g: Add support for PCIe controller
Date: Fri, 19 Sep 2025 17:58:18 +0200
Message-ID: <20250919155821.95334-1-vincent.guittot@linaro.org>
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

Vincent Guittot (3):
  dt-bindings: PCI: s32g: Add NXP PCIe controller
  PCI: s32g: Add initial PCIe support (RC)
  MAINTAINERS: Add MAINTAINER for NXP S32G PCIe driver

 .../devicetree/bindings/pci/nxp,s32-pcie.yaml | 131 ++++
 MAINTAINERS                                   |   4 +
 drivers/pci/controller/dwc/Kconfig            |  11 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-designware.h  |   1 +
 drivers/pci/controller/dwc/pcie-s32g-regs.h   |  61 ++
 drivers/pci/controller/dwc/pcie-s32g.c        | 578 ++++++++++++++++++
 7 files changed, 787 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-s32g-regs.h
 create mode 100644 drivers/pci/controller/dwc/pcie-s32g.c

-- 
2.43.0


