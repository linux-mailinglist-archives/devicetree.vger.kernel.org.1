Return-Path: <devicetree+bounces-172359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE0EAA4885
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 12:36:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58A3217CAB4
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 10:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642FE25B1D7;
	Wed, 30 Apr 2025 10:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="m/3GAx2u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555F425A658
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 10:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746009169; cv=none; b=rJk5/a5qgQMiy7MEITJcxVz6bg9MkNQfTlvaw/OrQ37fx2g7yvP/12QxHd2aTOU8uqwAunDiXBI1+48ea55tHo/c6G7HMMvYip/BZb6wwcSgBkEo1zYeNVHuolrY7ScUfYaF0IpV1qO7dFCFVQKIBc5Z9da59ZSGKC0okdufqUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746009169; c=relaxed/simple;
	bh=pEarZqORgR6a5PORX2Pgk2INz0nSmqJSTyovSEM/l9U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NwCHoQfaCpaxTlGdMN+amwt1ueGqI9XMA/046ocrJe18G1qoo27vpDsygiks8MZdr9ZZyvkhl/QTK8q5B48lQCphSAHA4fN+iF7zqnpMaSbn/C5G7kN0ykJ82VLN7mjBVrRroHXePGpiv2Z0PSzDgep4CnKFPylUCC+nELXpiyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=m/3GAx2u; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ac25520a289so1130011366b.3
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 03:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1746009164; x=1746613964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X6J/wP60qX9EMmv9DuzGd9/gCNPLEX86V7P6R5wq8+M=;
        b=m/3GAx2unha3c06MNiFW7gShs/pwceVkz2S2vcZWGW9G8FYwdE3CAqaflCazb/npWZ
         cpn317JLUeF3h4Wb1+FeHsraVMZ//+9TlMAs/VaNSM5lI6u0SIP+beXk6Q0QnRX5Sbq2
         7pNmq8bzBXNCinj5628V+wXLsj3R7F130CeX6mgPoXC5s2H51RAXOwVo6YmDV/YZFx9C
         hs5AtJhwYYp2MNblJ4moyBf49aEuukFDRL8BrlZaNP3LJcXjxDj3+EGF7xSswpvwJ7RV
         HcB5kd8+EgAVK3U8z7ND/XamtEcFxk1ylRF8V+v12pQgz2Z/+iVuyJZJMvm6qKgqiQk6
         we5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746009164; x=1746613964;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X6J/wP60qX9EMmv9DuzGd9/gCNPLEX86V7P6R5wq8+M=;
        b=JAy+ThMh3jV7RR+7NPfGbtYZ+l1tzcaR+LN13i7V8zdSaMwplozCqNIms4u71wyOzq
         zldPmi+//Fb+nXZmWnDb4i+La5Df9myaerLv3yPRb7BSw8L1fWvD3XDBQiS4/+ygerYB
         tfymlhbksCqAiUR/DOsxSgjiszGSku1nrDQE+cy+mpiAYt5ZiYMZIZRWtLcRHXkO5dIZ
         PdpSf4eSs4wCVAUNI4HewVNfl0jsTVYakJZQSYU3LMmgwAy1pofnS2t0HAJo+qhny3YP
         Sfyr/Gn0wnwx+tHYADNjP0yg4Ly55XWDMwqnIpT+qD09eCvJoj2IWrMKHxc3RVen5cKS
         OtPA==
X-Forwarded-Encrypted: i=1; AJvYcCUGMZCsmmR7oGu9IsV56RigEOzVZ4A1Y/YZ1MYBABALt1Gw1Re1S0ZhMstiphmbiQSTF6kvtg1ASUhn@vger.kernel.org
X-Gm-Message-State: AOJu0YypOBx5nAKjfqqREB4aRLFNs7SpIhrGqGcOgSNb38Wd4cPJjoOm
	dT+p/iKk0aYlCZ/qK+syyLo/cmccCuNLRK5iuWhgHdRivbQv+MUtQgcmQ80abM8=
X-Gm-Gg: ASbGnctgS5MQfZTMxZVLtKtb/outazXWXMjiJyKinJ5KgqqqWN21rvX7791WoVimK2n
	yvwiGRZbF4LnRkUxJPz4XzQ60BTksLmJg+2taXjim/MYoPsDCrX1lEUU86hKgV/4Xh7ilvt22r5
	ohKRAkAxgYYC4/pXlwNgotLobuF0LPuDWAKvV7oaInGzBGQc8l7JqqHXosy698DRJz/AQwZQbva
	4PTH/tl2b/qInx37+bKmRw5DOpsdzzns2E43/vW3EjoMArVsrj3HB9uhmrFkZsbAUd0wyZ/kUE1
	PjTf3WaDLsznR/uO9SHOJSVAzS4AealQx99TxoaF3SpKSYAXEAlc7K3fMGZbIX/87MZhI+Y=
X-Google-Smtp-Source: AGHT+IEOvbi2uWkiYWLZUKj6dkW3LeitEy0mXflUVZbtvIN6vYaH2BYKpM0Qfawxgrnw/YhMKetmjg==
X-Received: by 2002:a17:906:dc8c:b0:abf:733f:5c42 with SMTP id a640c23a62f3a-acedc575056mr227019766b.8.1746009164440;
        Wed, 30 Apr 2025 03:32:44 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.166])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ed6af86sm909390366b.133.2025.04.30.03.32.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Apr 2025 03:32:43 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: bhelgaas@google.com,
	lpieralisi@kernel.org,
	kw@linux.com,
	manivannan.sadhasivam@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	saravanak@google.com,
	p.zabel@pengutronix.de
Cc: claudiu.beznea@tuxon.dev,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 0/8] PCI: rzg3s-host: Add PCIe driver for Renesas RZ/G3S SoC
Date: Wed, 30 Apr 2025 13:32:28 +0300
Message-ID: <20250430103236.3511989-1-claudiu.beznea.uj@bp.renesas.com>
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
- patch 1/8:		updates the max register offset for RZ/G3S SYSC;
			this is necessary as the PCIe need to setup the
			SYSC for proper functioning
- patch 2/8:		adds clock, reset and power domain support for
			the PCIe IP
- patch 3/8:		exports of_irq_count() symbol; this is used by the
			proposed driver to get the number of INTx interrupts
- patches 4-5/8:	add PCIe support for the RZ/G3S SoC
- patches 6-8/8:	add device tree support

Please provide your feedback.

Merge strategy, if any:
- patches 1-2,6-8/8 can go through the Renesas tree
- patches 4-5/8 can go through the PCI tree; these depends on patch 3/8,
  proper sync will be needed b/w PCI tree and Rob's tree

Thank you,
Claudiu Beznea

Claudiu Beznea (8):
  soc: renesas: r9a08g045-sysc: Add max reg offset
  clk: renesas: r9a08g045: Add clocks, resets and power domain support
    for the PCIe
  of/irq: Export of_irq_count()
  dt-bindings: PCI: renesas,r9a08g045s33-pcie: Add documentation for the
    PCIe IP on Renesas RZ/G3S
  PCI: rzg3s-host: Add Initial PCIe Host Driver for Renesas RZ/G3S SoC
  arm64: dts: renesas: r9a08g045s33: Add PCIe node
  arm64: dts: renesas: rzg3s-smarc: Enable PCIe
  arm64: defconfig: Enable PCIe for the Renesas RZ/G3S SoC

 .../pci/renesas,r9a08g045s33-pcie.yaml        |  242 +++
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/renesas/r9a08g045s33.dtsi |   70 +
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |   11 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/clk/renesas/r9a08g045-cpg.c           |   19 +
 drivers/of/irq.c                              |    1 +
 drivers/pci/controller/Kconfig                |    7 +
 drivers/pci/controller/Makefile               |    1 +
 drivers/pci/controller/pcie-rzg3s-host.c      | 1561 +++++++++++++++++
 drivers/soc/renesas/r9a08g045-sysc.c          |    1 +
 11 files changed, 1922 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/renesas,r9a08g045s33-pcie.yaml
 create mode 100644 drivers/pci/controller/pcie-rzg3s-host.c

-- 
2.43.0


