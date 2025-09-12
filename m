Return-Path: <devicetree+bounces-216463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4964BB54DB1
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:30:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 831B818902B1
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D784305E19;
	Fri, 12 Sep 2025 12:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="LYXxq3oC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365A2303A13
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757679893; cv=none; b=HW9YL2F5Wp99IDnFTws2gvS5fhDqn4yQvVox3HxPj9ER2q0TevBOlhxm73SGEgniP0SECYtkQ8teMrZvY2EU2C+bgmdnXrFqQDCGGmB2gcyYE5r/TO1mKZyyIHcPkP6rmI38eQ+cN+RPED7gv6SIACYhIjEyMjfOeCpPRgQTDsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757679893; c=relaxed/simple;
	bh=1X+it+zTAdvHtkVDC9ptPSL7qX6EXCsJqZ3em9dxcto=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ovkYlhs5pRdkRqpWhCzmxfNCLjnEPc9inxyNiqiUPcnwxcMivPOMcalgRvyBwqdyTXu6Awlmji/u63T+rOUQ7UuxNZDmAg1g3ecWngQxA2SBDrroa9x4Rpur5//TQUHAxbCLtfsO5RTchK2NiWW09LwMkhoNMfzlCShhknNiD5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=LYXxq3oC; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3e7636aa65fso1259153f8f.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757679889; x=1758284689; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ljjbIvIvj2Q1tUtMUPNsqGBDwVAciETje0nuBmAVX84=;
        b=LYXxq3oC0dEWpu9X74BmLte1MieUYonva1ud5qIXeCaQhUbbMMdy0y5Do5AxXSQfLR
         i9fvviVaY225e5Q5DzhdIrdq57neIT45rAcATb/DxvPa3KETSmsbQ4ZSrgvmQYAoEDVV
         fNeLLQ5c7C4MVcf4uxU6KvAuyTZOZvXJ3fwZDy8kaMXZNCEgjskZ+hAeRC47b43W7y3C
         XBcwZ3NiKCO3VeMmIFAk8er1UiMKxXSVQs36rt4ls7tT7RvWq8eG1Lt5SLIp7/hIbcm+
         rHDDvoO5SDezZS7OLAloLt3eaMwh/xOCTgqcyJMtvyyCx+UbL2gsELIo065We11pQQJL
         uZ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757679889; x=1758284689;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ljjbIvIvj2Q1tUtMUPNsqGBDwVAciETje0nuBmAVX84=;
        b=EO0kjAFw3WDwXLfhoY/qRbbS0d4T78Mo40L5dMY7EOTOKJOpfg1CMSitsrE7a3/Tp6
         cz8DhT3Ibc+Fh81GVZRRrim5egkVZNXYGJqqtWdCN/0dsqtZ9W+12507QEZn5n6FBhRU
         fCTYXhb5obrlJUnm6bIdLZCNg8FSHgg8wP34A0eU80RQMYfQVClxfSrPGEO58NqpIutk
         DpfrfCbz0JCJ6SifJBXx8b2CG9ZA4R7OuSRyPTN7S2t33SqxloNnASgqNlMb4POEzYYT
         dgetRqUCA95xUpxAcaXRTKiKqw1NUd3uvN8LRW3bbDV+tMs8TS+iKbIKkHpUoBH197nQ
         AADA==
X-Forwarded-Encrypted: i=1; AJvYcCUKhaQ++5f8Z4bm/ymWBN35+1GoCbeI+IJx55wwo3dJkvyJ/G5xB3S+XpTY6B1jD1S1OcRdx1C7n61B@vger.kernel.org
X-Gm-Message-State: AOJu0YyXfosTrT5Hb1LreW9woFZPSbLVjycP6a0Ss9Y3gcF5Ky/JVhjy
	XnGpYzqz1Ci2kUodQXVIzVW3qF9R2IFx3uzmDAjfwkXUB/IaDBDaMH0VNORVH7rzs+w=
X-Gm-Gg: ASbGncuGh64aHoumYSzDXlSuOh4tEPwWj+q59Jwi14JM8hh0DEGsYt3JgBYIh3SOBfd
	xxdS0dKkW/ohr7WLiT/JWi+bjub3ZYsQsiH0phVhKzwdDApz9NbhDG1vx+xjLSt6i34c8OjkgMC
	Ns7CNL5N2aM66Ib06xr4G/UOXBaoNQxCVtmyXxLH8xtlTb2TS+wF3sfP8dWlyF/8gwWRihxRO6C
	6yc7YGcG4d1GzZ8/1TC983nbpmqTgzPnbrOsGO6Wl9T5oWAoXSZRkvBXRV0BRRqzohIM6yXb8WN
	UI/3JvIfIH0kV5QQV6strmlDMIhJRCL/izRIypmvIZsJDB7tOsyS1Z3uWq1CCTQGZTjKjN+tgpv
	NB3PTup0R71o3kd9ulL70Qv9WthGEKTrPD5vhkKaW5e66eVEW6FMP
X-Google-Smtp-Source: AGHT+IEYppUYO/8aAZsKn0b0DcJjcfxTnMO/idgXekJXbeD6ctIiByRvNUh0evCMuK6Sg67U0omW4A==
X-Received: by 2002:a05:6000:2086:b0:3e0:152a:87a9 with SMTP id ffacd0b85a97d-3e7659e20bemr2983464f8f.28.1757679889474;
        Fri, 12 Sep 2025 05:24:49 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607770c2sm6320091f8f.8.2025.09.12.05.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:24:49 -0700 (PDT)
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
Subject: [PATCH v4 0/6] PCI: rzg3s-host: Add PCIe driver for Renesas RZ/G3S SoC
Date: Fri, 12 Sep 2025 15:24:38 +0300
Message-ID: <20250912122444.3870284-1-claudiu.beznea.uj@bp.renesas.com>
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
  dt-bindings: PCI: renesas,r9a08g045s33-pcie: Add documentation for the
    PCIe IP on Renesas RZ/G3S
  PCI: rzg3s-host: Add Renesas RZ/G3S SoC host driver
  arm64: dts: renesas: r9a08g045: Add PCIe node
  arm64: dts: renesas: rzg3s-smarc-som: Update dma-ranges for PCIe
  arm64: dts: renesas: rzg3s-smarc: Enable PCIe
  arm64: defconfig: Enable PCIe for the Renesas RZ/G3S SoC

 .../bindings/pci/renesas,r9a08g045-pcie.yaml  |  240 +++
 MAINTAINERS                                   |    8 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |   66 +
 .../boot/dts/renesas/rzg3s-smarc-som.dtsi     |   10 +
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |   11 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/pci/controller/Kconfig                |    8 +
 drivers/pci/controller/Makefile               |    1 +
 drivers/pci/controller/pcie-rzg3s-host.c      | 1792 +++++++++++++++++
 9 files changed, 2137 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
 create mode 100644 drivers/pci/controller/pcie-rzg3s-host.c

-- 
2.43.0


