Return-Path: <devicetree+bounces-11303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDBF7D5159
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 15:20:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0800EB20CE3
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E7F72943F;
	Tue, 24 Oct 2023 13:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fDkFb0a3"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD6D2941D
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 13:20:38 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F6F7128
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:20:32 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5079f6efd64so6221833e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 06:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698153630; x=1698758430; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ghqJxIDnoE/hX7jBp+fpHag8wHq883gTDRxbrmUkqq8=;
        b=fDkFb0a3lL43LSwbiM1Ys3V3K3OXlaSiWiOiEMG+BvjVavhpH1cdCBmG3IVWx/bCi4
         LPoIeDcEJ5647QmmZZfQSX3bpmufvdgpBaBQzHoQjZwlLYNbcYV6+mOcXVL3UHsLBdKR
         WtH5jzhzzOwTXghj5sazRrDbROTwj9MLysWvhp2z0Pk8lNTBjt9cLhWcHvggRkKAI+i3
         vMGxOHhnwuH+tfsX5pxMMvcBAhQTJZ0LVmDKG2AZmTebueykf/yafLfoGDZauvI3JWrv
         psVbWo8p/J0m736WvwauKWiVrOBRSG/+Jv4XQJnHjz9Xm3XufS4LxpbucZ3/9RDp+GRR
         okpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698153630; x=1698758430;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ghqJxIDnoE/hX7jBp+fpHag8wHq883gTDRxbrmUkqq8=;
        b=HZ+HsbI7RrXvhDtbJt52a/iUSVg1kwDRucOIPK3uzcrzCWUSMUHZ9VM3ePRL4KWAjz
         7PH1F56pbB84EfHxKSMLFWhZv418q9Gn0kV6kyw6GAit/JFZjFL6+0F12NKs65JJjcDW
         n7LgUgn/HLMisYyzo3UltiEZXJJ+3WkH/G9Hvje6ftrilvRZ6Fh6qdr0EqCrHM2mHAO8
         ceDn/JLcuO1rRuYfcrz0181EIWWfLJhRKafsq26nHgnP6nNTH24pR4hblbRd96AfcLYQ
         oprs5WQ9DEIw/LtzsRtawqsnsfg5wc32YXLxclOYi2KBW7+BrHMjR5yVjMlw4PKxWvw5
         Ss1g==
X-Gm-Message-State: AOJu0YwbBikmj33EYSzJOgW3wo98l0Yd0Ope9CMM/6cfbeHwVmrAjdDg
	nzwsOUEgR+p8QCqayM1qELj0EQ==
X-Google-Smtp-Source: AGHT+IEjyPW1YPv9y5f9WgunQn67m75lsvsvcOghoaskN36pGEckN3frgS42V/pnigkml6usF9d/GQ==
X-Received: by 2002:a19:f807:0:b0:507:96c7:eb1a with SMTP id a7-20020a19f807000000b0050796c7eb1amr7813749lff.54.1698153630455;
        Tue, 24 Oct 2023 06:20:30 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id d5-20020a193845000000b00507ab956ab9sm2147365lfj.147.2023.10.24.06.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 06:20:29 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH net-next v7 0/7] Create a binding for the Marvell MV88E6xxx
 DSA switches
Date: Tue, 24 Oct 2023 15:20:26 +0200
Message-Id: <20231024-marvell-88e6152-wan-led-v7-0-2869347697d1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJrEN2UC/33QyWrDMBQF0F8JWldF89BV/6N0oeEpEbhykI2aE
 vzvVdyNi3GWl8s7D+4dTVAzTOjtdEcVWp7yWHrQLycULq6cAefYM2KEcUqIwV+uNhgGbAwoKhn
 +dgUPEHsOgnudIksR9etrhZRvq/yBCsy4wG1Gn7255Gke68/6stG1/9MpP9QbxQQTTZl31hqpw
 /uQi6vj61jPK9rYFhLHEOuQTsER45Uxwu4gvoXUMcQ7xE2IQtiYPJU7SGyh4+GaeEAAJCjNDfe
 wg+QGYk82ko+NwDArGaHS6R2kttCTjVSHrOXOEyssF+IftCzLLzIq0dY2AgAA
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 Vladimir Oltean <olteanv@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>
Cc: Christian Marangi <ansuelsmth@gmail.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailer: b4 0.12.4

The Marvell switches are lacking DT bindings.

I need proper schema checking to add LED support to the
Marvell switch. Just how it is, it can't go on like this.

Some Device Tree fixes are included in the series, these
remove the major and most annoying warnings fallout noise:
some warnings remain, and these are of more serious nature,
such as missing phy-mode. They can be applied individually,
or to the networking tree with the rest of the patches.

Thanks to Andrew Lunn, Vladimir Oltean and Russell King
for excellent review and feedback!

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v7:
- Fix the elaborate spacing to satisfy yamllint in the
  ports/ethernet-ports requirement.
- Link to v6: https://lore.kernel.org/r/20231024-marvell-88e6152-wan-led-v6-0-993ab0949344@linaro.org

Changes in v6:
- Fix ports/ethernet-ports requirement with proper indenting
  (hopefully).
- Link to v5: https://lore.kernel.org/r/20231023-marvell-88e6152-wan-led-v5-0-0e82952015a7@linaro.org

Changes in v5:
- Consistently rename switch@n to ethernet-switch@n in all cleanup patches
- Consistently rename ports to ethernet-ports in all cleanup patches
- Consistently rename all port@n to ethernet-port@n in all cleanup patches
- Consistently rename all phy@n to ethernet-phy@n in all cleanup patches
- Restore the nodename on the Turris MOX which has a U-Boot binary using the
  nodename as ABI, put in a blurb warning about this so no-one else tries
  to change it in the future.
- Drop dsa.yaml direct references where we reference dsa.yaml#/$defs/ethernet-ports
- Replace the conjured MV88E6xxx example by a better one based on imx6qdl
  plus strictly named nodes and added reset-gpios for a more complete example,
  and another example using the interrupt controller based on
  armada-381-netgear-gs110emx.dts
- Bump lineage to 2008 as Vladimir says the code was developed starting 2008.
- Link to v4: https://lore.kernel.org/r/20231018-marvell-88e6152-wan-led-v4-0-3ee0c67383be@linaro.org

Changes in v4:
- Rebase the series on top of Rob's series
  "dt-bindings: net: Child node schema cleanups" (or the hex numbered
  ports will not work)
- Fix up a whitespacing error corrupting v3...
- Add a new patch making the generic DSA binding require ports or
  ethernet-ports in the switch node.
- Drop any corrections of port@a in the patches.
- Drop oneOf in the compatible enum for mv88e6xxx
- Use ethernet-switch, ethernet-ports and ethernet-phy in the examples
- Transclude the dsa.yaml#/$defs/ethernet-ports define for ports
- Move the DTS and binding fixes first, before the actual bindings,
  so they apply without (too many) warnings as fallout.
- Drop stray colon in text.
- Drop example port in the mveusb binding.
- Link to v3: https://lore.kernel.org/r/20231016-marvell-88e6152-wan-led-v3-0-38cd449dfb15@linaro.org

Changes in v3:
- Fix up a related mvusb example in a different binding that
  the scripts were complaining about.
- Fix up the wording on internal vs external MDIO buses in the
  mv88e6xxx binding document.
- Remove pointless label and put the right rev-mii into the
  MV88E6060 schema.
- Link to v2: https://lore.kernel.org/r/20231014-marvell-88e6152-wan-led-v2-0-7fca08b68849@linaro.org

Changes in v2:
- Break out a separate Marvell MV88E6060 binding file. I stand corrected.
- Drop the idea to rely on nodename mdio-external for the external
  MDIO bus, keep the compatible, drop patch for the driver.
- Fix more Marvell DT mistakes.
- Fix NXP DT mistakes in a separate patch.
- Fix Marvell ARM64 mistakes in a separate patch.
- Link to v1: https://lore.kernel.org/r/20231013-marvell-88e6152-wan-led-v1-0-0712ba99857c@linaro.org

---
Linus Walleij (7):
      dt-bindings: net: dsa: Require ports or ethernet-ports
      dt-bindings: net: mvusb: Fix up DSA example
      ARM: dts: marvell: Fix some common switch mistakes
      ARM: dts: nxp: Fix some common switch mistakes
      ARM64: dts: marvell: Fix some common switch mistakes
      dt-bindings: marvell: Rewrite MV88E6xxx in schema
      dt-bindings: marvell: Add Marvell MV88E6060 DSA schema

 Documentation/devicetree/bindings/net/dsa/dsa.yaml |   6 +
 .../bindings/net/dsa/marvell,mv88e6060.yaml        |  88 ++++++
 .../bindings/net/dsa/marvell,mv88e6xxx.yaml        | 330 +++++++++++++++++++++
 .../devicetree/bindings/net/dsa/marvell.txt        | 109 -------
 .../devicetree/bindings/net/marvell,mvusb.yaml     |   7 +-
 MAINTAINERS                                        |   3 +-
 arch/arm/boot/dts/marvell/armada-370-rd.dts        |  24 +-
 .../dts/marvell/armada-381-netgear-gs110emx.dts    |  44 ++-
 .../dts/marvell/armada-385-clearfog-gtr-l8.dts     |  38 +--
 .../dts/marvell/armada-385-clearfog-gtr-s4.dts     |  22 +-
 arch/arm/boot/dts/marvell/armada-385-linksys.dtsi  |  18 +-
 .../boot/dts/marvell/armada-385-turris-omnia.dts   |  20 +-
 arch/arm/boot/dts/marvell/armada-388-clearfog.dts  |  20 +-
 .../boot/dts/marvell/armada-xp-linksys-mamba.dts   |  18 +-
 arch/arm/boot/dts/nxp/vf/vf610-zii-cfu1.dts        |  14 +-
 arch/arm/boot/dts/nxp/vf/vf610-zii-scu4-aib.dts    |  70 ++---
 arch/arm/boot/dts/nxp/vf/vf610-zii-spb4.dts        |  18 +-
 arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-dtu.dts    |  20 +-
 arch/arm/boot/dts/nxp/vf/vf610-zii-ssmb-spu3.dts   |  18 +-
 .../dts/marvell/armada-3720-espressobin-ultra.dts  |  14 +-
 .../boot/dts/marvell/armada-3720-espressobin.dtsi  |  20 +-
 .../boot/dts/marvell/armada-3720-gl-mv1000.dts     |  20 +-
 .../boot/dts/marvell/armada-3720-turris-mox.dts    | 189 ++++++------
 .../boot/dts/marvell/armada-7040-mochabin.dts      |  24 +-
 .../dts/marvell/armada-8040-clearfog-gt-8k.dts     |  22 +-
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi        |  42 ++-
 26 files changed, 761 insertions(+), 457 deletions(-)
---
base-commit: 1c9be5fea84e409542a186893d219bf7cff22f5a
change-id: 20231008-marvell-88e6152-wan-led-88c43b7fd2fd

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


