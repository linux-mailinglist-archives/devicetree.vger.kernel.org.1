Return-Path: <devicetree+bounces-239256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F8CC630DB
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:09:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 1CE0E28B9A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 09:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCC5832573F;
	Mon, 17 Nov 2025 09:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="SLGtMSjM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0F931E0E6
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 09:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763370567; cv=none; b=CVe8U2BHrdpnz2pYOpsG0iVAMPoDF3h6KMEybDQN4CPhM2mae4RyDIfkubYstKLHvTMU3LuDourZuNKL4xxEiqdcvr7JmTlA5Do3hQkr7cTmsdUSQxKVyyqe/ER5dgbuxxcO9/uDxys9pz+LSmGJ9kMm8Lat5YimIPc3/biz64E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763370567; c=relaxed/simple;
	bh=BWhHBdSxNz6oDAcjcPmXRnYsv7TcjfVh5EqxArjkTbo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=niUB4/5YTkvjd6Py+orZFkk0dROwTH3zybjDii9gpHrn76zoBU9B509/uNvTw7IyfOhrhZWingundXE6HQSWKxav8a2lmYu1INZQevb7o6G0I8fzGtA8isfYAY5EK+lNKWlH+fweKAcYluZ7/mxvt6BzTD7gb4SrT4qx5jOMXaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=SLGtMSjM; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-42b47f662a0so2378891f8f.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 01:09:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1763370563; x=1763975363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WZZz0I/gR7q+VNKt5uK6BwuR0bSvglAaLrUPN3x53lk=;
        b=SLGtMSjMTD/CPyo4j4L6GNFs9o6IgfQsvTJvtRgsY8pLJmzTHbf8S4dYVvCLmTU2oe
         kHYW/FuN9neXqZ86LTn73kcA1RrTy+Tzhz3RPWnsgq4xkqhTQb0gNd3VXyT7TlQsL7MQ
         PappdWY0w+ZThjg+6eBAyGACfRlOhYgelfOJj2Lieet5BOO75WHK52hVJlv0f06MXA3p
         MvRTm+uWI2YiVSad7dFQ0Q9G3EtFGrORtMTQPdkddib+9Qac8xaMG3Vvs1nibDxhVPqO
         +5yTQ3HiKsq4y85ISTfJFjCDAVAThiH+ouxK3g+HsRJZr4zrSeSzpGpR0SQtFjKgajfa
         H10A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763370563; x=1763975363;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZZz0I/gR7q+VNKt5uK6BwuR0bSvglAaLrUPN3x53lk=;
        b=uDOpEYSh2vD/0ZeIzysNjxK2prFi1s5bh4mecZlZz1gD+llgnzNYgyZYf4Ye4xwcoa
         X2/wH8abmiMaE7FYKLpj5Qk4DEfJXigeLeNmIbO0+Sh2TWKFuqLyQCH+/QnYWL4No+sa
         7POCux2mzAtE6+5wGVy/r+eiXKSeYBeWXIX516lgRlao8ylkJgsFwhrCnTQr0yL4k7rk
         CXFyynUiXGQi7KBENyp+lM7IV3pUn5mkjqRIbWv877o1QvNXrZ6uIRzMHmFLp3XbXzJ+
         lTayrOVLNRYOhaJ3/kxoU86Zmk+zxc2/mTaCHfXmkiNk67OVc4bVOGOBx+b598hPrv72
         4hWw==
X-Forwarded-Encrypted: i=1; AJvYcCWgiSRf9VYUCYCj3qyCSnGpIIbEwUNf7q3vkG7k6kql3cN+SM7YN+cCTsy3nmE0nggji2qMf/zf+zWe@vger.kernel.org
X-Gm-Message-State: AOJu0YxigKCPcYBAJm5SEOknAml06jGKOK//v6YrvWrXB9kvGbPcpnpK
	3VIXiHiGDy2V7aW09iHVxX8A8cGqyc4ytY2fS4rJ9CAaQhmF/D3znryRrygLuye0sdE=
X-Gm-Gg: ASbGncuYZhNop+O900ZSbnfdW0ktRYEA7eCY0mm7AZttjbbGhsBxd3gMOrYnwVh0l0f
	Q/QNSrUpbw+EeZTj/XgEtWx3PH84zrUTO7fZm00py1owZ/IxLvzcit4EValV8eppGpQ7371cmPq
	eoLE3Nq/ccP6Qq7zcDn7jcdr95fCS70Dcah5rduDNW7Pul7iBYBuQrX4vIUQ2BoGoW+B4/Xbzvl
	DmGk2oM3iE57UuXC/8MYWRpbFy/NuQDrq5FBFIffY7r91UB4PlL669bRSMWyc4pt8IgSWILwKe/
	I7vWXOuG5w9JKdz3X97yGwZZjQsMcS4XsGubu+Zky4+amNy3pedliZ5Rx94kTnvtfIks9TL5Wh4
	63dIkABWjN0Y9Hs3OmCOHIec8yly0KaRODAf1yUmqOXKa3b0q3kCKqX+IbMrQ5Av7iVszEt5erG
	t5HlryZsXhVtmgIcLvfV+2wDQPEWsvHge/prrDayJd
X-Google-Smtp-Source: AGHT+IEIBx/MJXLPmtiUtaCQqQNNcaMsC6k5IcBO/zokIfM+93/0OcmXFRypivkMANfjtqihN5iboA==
X-Received: by 2002:a05:6000:2911:b0:429:cc35:7032 with SMTP id ffacd0b85a97d-42b52821778mr15878783f8f.23.1763370562981;
        Mon, 17 Nov 2025 01:09:22 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.134])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm25703786f8f.26.2025.11.17.01.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 01:09:22 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v7 0/6] PCI: rzg3s-host: Add PCIe driver for Renesas RZ/G3S SoC
Date: Mon, 17 Nov 2025 11:08:52 +0200
Message-ID: <20251117090859.3840888-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series adds a PCIe driver for the Renesas RZ/G3S SoC.
It is split as follows:
- patches 1-2/6:	add PCIe support for the RZ/G3S SoC
- patches 3-6/6:	add device tree support and defconfig flag

Please provide your feedback.

Merge strategy, if any:
- patches 1-2/6 can go through the PCI tree
- patches 3-6/6 can go through the Renesas tree

Thank you,
Claudiu Beznea

Changes in v7:
- rebased on top of v6.18-rc1

Changes in v6:
- addressed review comments on DT bindings and driver code
- per-patch changes are described in each individual patch

Changes in v5:
- dropped patch
  "arm64: dts: renesas: rzg3s-smarc-som: Update dma-ranges for PCIe"
  and introduced patch
  "arm64: dts: renesas: rzg3s-smarc-som: Add PCIe reference clock"
- addressed review comments
- per-patch changes are described in each individual patch

Changes in v4:
- dropped v3 patches:
  - "clk: renesas: r9a08g045: Add clocks and resets support for PCIe"
  - "soc: renesas: rz-sysc: Add syscon/regmap support"
  as they are already integrated
- dropped v3 patch "PCI: of_property: Restore the arguments of the
  next level parent" as it is not needed anymore in this version due
  port being added in device tree
- addressed review comments
- per-patch changes are described in each individual patch

Changes in v3:
- added patch "PCI: of_property: Restore the arguments of the next level parent"
  to fix the legacy interrupt request
- addressed review comments
- per-patch changes are described in each individual patch

Changes in v2:
- dropped "of/irq: Export of_irq_count()" as it is not needed anymore
  in this version
- added "arm64: dts: renesas: rzg3s-smarc-som: Update dma-ranges for PCIe"
  to reflect the board specific memory constraints
- addressed review comments
- updated patch "soc: renesas: rz-sysc: Add syscon/regmap support"
- per-patch changes are described in each individual patch

Claudiu Beznea (6):
  dt-bindings: PCI: renesas,r9a08g045s33-pcie: Add Renesas RZ/G3S
  PCI: rzg3s-host: Add Renesas RZ/G3S SoC host driver
  arm64: dts: renesas: r9a08g045: Add PCIe node
  arm64: dts: renesas: rzg3s-smarc-som: Add PCIe reference clock
  arm64: dts: renesas: rzg3s-smarc: Enable PCIe
  arm64: defconfig: Enable PCIe for the Renesas RZ/G3S SoC

 .../bindings/pci/renesas,r9a08g045-pcie.yaml  |  249 +++
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |   65 +
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |    5 +
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |   11 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/pci/controller/Kconfig                |    9 +
 drivers/pci/controller/Makefile               |    1 +
 drivers/pci/controller/pcie-rzg3s-host.c      | 1759 +++++++++++++++++
 9 files changed, 2108 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
 create mode 100644 drivers/pci/controller/pcie-rzg3s-host.c

-- 
2.43.0


