Return-Path: <devicetree+bounces-232734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D44C1B0F6
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 15:04:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6CF335A1FE7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D993B33F389;
	Wed, 29 Oct 2025 13:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="F2bbbbDZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA9D25785A
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 13:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761745039; cv=none; b=qUn0UNczeIvXpG6T5XKcdONinjXzrPxN3i6ldFJeXSICHDU4+Dhn9Bq6vwqxutpLYXWX1Pb0DvCmYdN7MNQW2WLdsxOC8L2MJ+pP9Vy7efFAD25IOoc4/hTUrGH8RvEojpilgfpwHmSLVG4QDIjdJxiTR3PvGgvF6fgtCvWGu4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761745039; c=relaxed/simple;
	bh=g2UzYoQMmBvyP0vqBmIs0mbCNRIvDuiSiZPQPavWlvA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eeo7FtibA/GFOq3AoGVTiyIIBxaRNfwg5nZtVyGbhCqGi8r1rTwbhcTCMwa8TMWYX31PsW25+QZ0aXqlmKRp/SXt8RiGpXTsN+HVSaD86eQFKaWuDNOxwc+MbzcRpKiCy/5LBOVs3WkXr/rPkSq5rGqJdsJF4cJeC1kgwPG6ooI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=F2bbbbDZ; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47710acf715so19322145e9.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 06:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761745035; x=1762349835; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=raFhMoNXeeTJ+YCRDYZfwFJY7Igi8rgmNsUQLFF8MJk=;
        b=F2bbbbDZKTCaOoUpcw2VGBy7Aghruf8zK9B1d2kLJsYAXtmw2YAHIsGXPQyDAUFESc
         NOJRsepT5zuw6aHLGLPqI1g/l23+3izT+hn10ksddwQdcD8FKETVIHP41LrC/rVGom3h
         GsaE1NgFSqnINoHHjO7fYSDZR5is26ENLbWMmXDcC17mh8uLV9+aORoN6qwjHGulRb3u
         n5mqtJwMxHra0NlXSd7FOvAjwNYsP720RT1IMRhxCDeFVsfMTMIFe7Na/iizd/LQGfER
         Z3byexXy14ja7nCFJUkRjmzPlD0tfyUqJzaWuxqXOS4fa9ieS+ynJPTPvzOkwfO40yk4
         txvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761745035; x=1762349835;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=raFhMoNXeeTJ+YCRDYZfwFJY7Igi8rgmNsUQLFF8MJk=;
        b=kNMdIDTad7i/llgAFgIfeim/k0VFrxp1ckQNnGhlKsBs9d+B5Px95BlsRLErk2dcFS
         /k4bwFVBbruPxdezLe9PGIiQ4m1Ra0IILVgs/HLn/+QoHuuX2U5qJk2lcphXFv301mhh
         hDwI6kat9cq8rJ+mNQ5mZ2Y+1eLk1czqN9txoulXF+puLSXrzA7g2raw+UVQGkKTGP/k
         Scc3z2s5EWmfwA7K5BrnC2kQ3lbHx7QZDkJsbf1Gn/IaDxgb7UaVqTIP49pZFNKFLz7I
         I1NX7ot/ca2FnWyZpUr7cE/ygP7EE/ULjPIy6h5kP8TM81Gsv5IhpZd8uj9WaCYfeMtM
         6mXA==
X-Forwarded-Encrypted: i=1; AJvYcCXhRfRs0HALjgHYBLFs8aceTtRBTx6uTzJN+JUlDWsvhtfqwwdKdZZU+9LU3V3Z4zIcGF40yxk5WdZt@vger.kernel.org
X-Gm-Message-State: AOJu0YyHqoT8+QtM41ZAzonIQbNBHN0MGYMMF7hBaQINIh/L2uKayHmk
	2g5h/GEYzGzPOdbf4PbjFBtszhBzAzld6Ie24E3D1mgb8AjsFpaGq2eYY/Cq4/tNBzg=
X-Gm-Gg: ASbGncv1ToFWrqpw53NJdxWhEX78kxZn5OrgrHiFdR/knfHdX7u/1srQfFbb7cg2eur
	91IVuycE7Qud+sO5HY4x/UvHZSMKhpZCNzdJjTGsRgGqdRC+xACmk0YHlN3cJ523a8Mi2IAcZHx
	u/FSSkOPlhT+wnVXKpqNDUkUXNFWrMFToXieI1B0LdHQRrgWdF2+bRl2XxVXzdQ/jsqo7LSYvhL
	kYRYp9jljTcwXtRjKYv8hmOkGsGYlSmBI/97LEKKmjUp5cEuNVBu7uD6p9nALgjfSOjILEdjj02
	GryRpJ4aTkAnIAGkIBUKI1o35cnppQ9vf7ni9faRr4ckyO1l8WMf+QL3zWaa6slV+rLdG8orgHD
	u4GBvGb/lu+sT4ExCY1e77j9zloiEL/muL0FWZBTscT1fCoivK6QFmiggaQuulikIfVWV7f1vLj
	y8azbrDcqp4no76HWfj+JKJYj29hFTcpDjyzPbfdeKHBZuzsNANzhvm+dI4WHQ
X-Google-Smtp-Source: AGHT+IF9Ytr9phXCmFUbowfCjA8FrDjdRUcYYY+EYbpC7X4xEFDfts0q9wqBeybqLp87Haw2oAS9Og==
X-Received: by 2002:a05:600c:6089:b0:46e:4be1:a423 with SMTP id 5b1f17b1804b1-4771e19c71bmr24184595e9.1.1761745035168;
        Wed, 29 Oct 2025 06:37:15 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:6302:7900:aafe:5712:6974:4a42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e22280fsm49774795e9.14.2025.10.29.06.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 06:37:14 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	bhelgaas@google.com,
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
Subject: [PATCH v6 0/6] PCI: rzg3s-host: Add PCIe driver for Renesas RZ/G3S SoC
Date: Wed, 29 Oct 2025 15:36:47 +0200
Message-ID: <20251029133653.2437024-1-claudiu.beznea.uj@bp.renesas.com>
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


