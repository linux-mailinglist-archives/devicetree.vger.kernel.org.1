Return-Path: <devicetree+bounces-124554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A66FF9D9411
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:21:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66543282748
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82B861B532F;
	Tue, 26 Nov 2024 09:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="nIKltDyD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F56F18E362
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732612870; cv=none; b=idipUchOO05A/koTHVApguUzNJY9GI5QnDNwW/NSCXNt43RXd3Mttq7sl4JkIaoTLMiU1PyMiSHhkuHYtG9R++JvT88PROAO0q4hzDe/0uCR21UwwNgw4447HHgZWEu5LixpkZbVXBuGSCyeVZmgRWYRMZy63my4W//NIczuD9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732612870; c=relaxed/simple;
	bh=LYe44PsuEmobn9w8ghDArMmAgI05ogldtdwcneR3FdE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=h1Gjw0jytB7bxaInrhtTbN2K63aKM1lKRbdSehy2A0r6l5Vt5VjeLpLQMMpvFfgrW1XRJ/fonPLUGiTe36Q691pxr1vEpQCbTjsMb8hNp7JFOLvhb8i+cnUrxYw9PKSEuU46A72G1UHrWqGaxLzfbG+lcEl780asBUHUqHjQrNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=nIKltDyD; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-382423e1f7aso3782706f8f.2
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 01:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612865; x=1733217665; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oAr4THz/iUZpjgn32cU1UjSoRJJwQ4eV9JJMqnie3fo=;
        b=nIKltDyDuhH3GnzM87qkTU2RSHWNho6N+hdbrF3eaOSuS2jzmQ+c23Rgo7M9Z7br+c
         JvPJmb+qINjz6e5j1bsAeFWGTYtYQWFK2xKkPdHfoqndKmlREqndLom+GvxEdnPduumV
         cYPnF5x8D2vKGE85klzIuZw0BXJ5tr169BSSBQMt/Cxg0BP1nHstofHDNbn+7OX3LvkD
         aNt8Lp3z9pnGWH8l5yvBUnlm11b91HX+M0P/y5KTcRiMK1WzNUo/LWbKIFJddnML460J
         L84kXwDiQaDu/kH6ZymnW9OFQsC1N5hpHUV4OZX/Q1bZqpm73iYDl67WXwE4ur0obEx/
         4hGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612866; x=1733217666;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oAr4THz/iUZpjgn32cU1UjSoRJJwQ4eV9JJMqnie3fo=;
        b=FxT/2pfZyIDaNoDjsvWQ8qSDw3W4XG3YPkUejGfC9RCJPAOQo3hGXUXve+g9bz6Kd2
         m0IkbkFtV37L0dHQqROsoUx8lFuzP67ZnqbJ+xYScZekv5YsjfRHwr3zFud1UD/TeUMk
         lPt9cSw54ypFI9Yrhj+buvc3rO6SBhV2Tz9gVHBeqV+0fihLzcwXn6n4Qnc+6PSXDDVp
         bNKpmss9Re23IlOqUK0RqvPNHek8qxzYmXZz8qp4/i8FRpPdAQLq5Ztfz5t6tz2SuJYe
         xix6IWPRwMVktUK8hWXgypTLrHNrD29KgTNV30Gclh4t7XHxk1mVYXZ7pSeO9OiD++Ts
         37IQ==
X-Forwarded-Encrypted: i=1; AJvYcCXw1SqEgopPvqOSQi+y/301cUFbqY5F5ocSSIA2kpVpjDQtCzAtV5hjQSkQNNZIEqQ29/MS7jt0zlYv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4tdpS2JvV0ks7uGEDD4kP38RwJhqx5y6WHLJ939i11+79vkdT
	o0aAWZnzCtQsM8em1Y+AUXrJtK02rVDnMiCy/M31/ueODuczo7kjUEN6tjqGRuE=
X-Gm-Gg: ASbGnctIRBXnEqMvhSmI8vE0+uB8apHSlZcf57fW+NIorhtNAADbYYTMlojKClGJWxR
	a2vHpwv0l6Eg9TcgnMU2EbtncvpcJlK4lqYCdK4dgK7CVlFahrkas9UHUzrqf5yZkVk0DiIAIv/
	i9uSug6hooW4jpZONMD2N091nZ/loVpCYwsk1c3vzoaiohvMUNYPw70WIPv2Qv5K0FBhVWXMNTB
	NkeWwSsPK2+vB7Z9vCzOLJUMfBHOi0jZVXZdG205ggzyAohY+y3yJM0Yi11hKliIMZeyifQqISz
	K/s=
X-Google-Smtp-Source: AGHT+IFYYXObOhQgBxHQSwsO08mkH4nUnksbd2zyW86LbEQQVgUNpvZSz9E0wpJV3PjUdbW9GlwA3Q==
X-Received: by 2002:a5d:5f8f:0:b0:37d:5173:7a54 with SMTP id ffacd0b85a97d-38260bdfa48mr15515396f8f.52.1732612865602;
        Tue, 26 Nov 2024 01:21:05 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:05 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 00/15] Add initial USB support for the Renesas RZ/G3S SoC
Date: Tue, 26 Nov 2024 11:20:35 +0200
Message-Id: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Hi,

Series adds initial USB support for the Renesas RZ/G3S SoC.

Series is split as follows:
- patches 01-05/15	- add SYSC driver support; this is necessary for USB
			  PHY as the USB PHY driver need to touch a register in
			  the SYSC address space, in the initialization phase
- patch 06/15		- updates the USBHS documentation for RZ/G3S
- patches 07-10/15	- updates the USB PHY support to handle the SYSC
			  USB PWRRDY signal. Along with it a fix for the
			  DT bindings and one for the PHY driver were
			  added; fixes are RZ/G3S USB related
- patch 11/15		- document the USB PHY Ctrl support
- patches 12-15/15	- add device tree support

Merge strategy, if any:
- patches 01-05/15,12-14/15 can go through Renesas tree
- patch 06/14 can go though USB tree
- patches 07-10/14 can go through PHY tree
- patch 11/15 can go though reset controller tree

Thank you,
Claudiu Beznea

Changes in v2:
- dropped v1 patches already applied
- added fixes patches (07/14 and 09/14)
- dropped the approach of handling the USB PWRRDY though a reset controller
  driver and introduced the signal concept for the SYSC driver; because
  of this, most of the work done in v1 was dropped
- per patch changes are listed in individual patches, if any

Christophe JAILLET (1):
  phy: renesas: rcar-gen3-usb2: Fix an error handling path in
    rcar_gen3_phy_usb2_probe()

Claudiu Beznea (14):
  dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add
    #renesas,sysc-signal-cells
  soc: renesas: Add SYSC driver for Renesas RZ family
  soc: renesas: rz-sysc: Enable SYSC driver for RZ/G3S
  soc: renesas: rz-sysc: Add SoC detection support
  soc: renesas: rz-sysc: Move RZ/G3S SoC detection to the SYSC driver
  dt-bindings: usb: renesas,usbhs: Document RZ/G3S SoC
  dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
  dt-bindings: phy: renesas,usb2-phy: Add renesas,sysc-signal
  phy: renesas: rcar-gen3-usb2: Add support for PWRRDY
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
  arm64: dts: renesas: Add #renesas,sysc-signal-cells to system
    controller node
  arm64: dts: renesas: r9a08g045: Enable the system controller
  arm64: dts: renesas: r9a08g045: Add USB support
  arm64: dts: renesas: rzg3s-smarc: Enable USB support

 .../bindings/phy/renesas,usb2-phy.yaml        |  26 +-
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |   1 +
 .../soc/renesas/renesas,rzg2l-sysc.yaml       |  23 +-
 .../bindings/usb/renesas,usbhs.yaml           |   2 +
 arch/arm64/boot/dts/renesas/r9a07g043.dtsi    |   3 +-
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    |   3 +-
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi    |   3 +-
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    | 123 +++++-
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi  |  57 +++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  77 +++-
 drivers/soc/renesas/Kconfig                   |   8 +
 drivers/soc/renesas/Makefile                  |   2 +
 drivers/soc/renesas/r9a08g045-sysc.c          |  43 +++
 drivers/soc/renesas/renesas-soc.c             |  12 -
 drivers/soc/renesas/rz-sysc.c                 | 350 ++++++++++++++++++
 drivers/soc/renesas/rz-sysc.h                 |  70 ++++
 16 files changed, 778 insertions(+), 25 deletions(-)
 create mode 100644 drivers/soc/renesas/r9a08g045-sysc.c
 create mode 100644 drivers/soc/renesas/rz-sysc.c
 create mode 100644 drivers/soc/renesas/rz-sysc.h

-- 
2.39.2


