Return-Path: <devicetree+bounces-113276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E629A50BC
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 22:39:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64E861C212E2
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE671917D7;
	Sat, 19 Oct 2024 20:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EVzobMR2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B357645
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 20:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729370376; cv=none; b=s8ncmUe7Kb2HwaFqRO4oncAnpF53c7Q1c0lw6UeTmx63Q1YGXALHurhqWIEhGAY6NECm2RxO4fLPeOjKMWBAb7B5RFsOk51/UXQxFAub+gbtcQMGe4QCYJIWcJY2fa8bK1qA1V817aVviIOYS84epgwbNu6fszj8/GsGbLotilo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729370376; c=relaxed/simple;
	bh=q85bcF16sC4K5UelGhjOXnUAvNWxlt3Xis0doKRQdX4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=p5nQVQ301kZ/5EKZ1vP34c/vbDi21H1JH+A+S/5TX3KVNssToArEciJRY8C82CKZrXMkIsaMZXR+b8G5Nt9/Jkg6aqlEgaKr2ygVT2+SM8Fd+TFyc/N70epAq5vgHcYPvA3aRjG7f+cvANMRaZ+CDveCzs3xb0vRdTS5O5GbNm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EVzobMR2; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539e59dadebso4322492e87.0
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 13:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729370372; x=1729975172; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xI4KWpfi1HxVd/40QNKE+Dfvmsd67/j7IOShFMGrK2E=;
        b=EVzobMR2k7dK2MnUXackQ6zpHZuOA+uqIYGZVjzEvZTAGrneTbRXpg/cM/w9K6Zk6h
         Vl9KPgGspFc9rIUt3lZUXsmegZThFKwAapPA/qvZXxQGhz54+lG/Bz83QFyIS/9zhh8s
         2K9i6Iy0yCAAL0psSHacsGoZ/fSKyhE3iljvw4qJfrWFsT1aCJPgTI2P98hrtYo9Kc0D
         9x3fC5zkCI+JfdZ9vZRtpUhipZsQaVOhJAs5sBRDXcHvSv2KrNT2w7/3r0UBpI7HCVyF
         rMC0DVRgnrabt9bFdk3rCAvnubkiImebEbs5dyDpP9+wpSaZc9qRGTcPkaRX3kKqcSRp
         rWYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370372; x=1729975172;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xI4KWpfi1HxVd/40QNKE+Dfvmsd67/j7IOShFMGrK2E=;
        b=lGsjdeO+Zk58Ck3gTLPrFNueFvcK9UUnad6U/tE6eQ8tXeaFIpF2HV0QVlOvenzsGw
         /apPJIlWQUiUniS3mt8r8buYD/xO7XZOEpSZr2etJcFsrcBXRypm9cX4Bv1EG4FH9ddo
         Qs8qwVCerPhJ1qbXFDvpgFYfUkcULS/S6UJsVhUFrTwWVZnqYSV+lPQQV+pX77TX2hmM
         XPAlUN3bV/i61J1FohTr7ypeakSuaKdD00PcUPvHv8oQqO3+GWByWuBVbzMTiOOCdbqS
         BsfvfLtxk+4+xGCkaBfi8tk0MEXBE8Mt+gfDRUnYRLYlIJfZQh0AU4TxI8gDIPTQTDsa
         T2Tw==
X-Gm-Message-State: AOJu0Yyc77J+bYwUzAv26x1m5+UzF/z051Xa8i7TDiv5p7JizdPXDqUh
	O3dV8Vocvb/MplMdZ+Hm8DEcRIXoyRNBjIOdAdchnyQmJW9F+S+3KZ/j+rIAiPU=
X-Google-Smtp-Source: AGHT+IEd2hGoPYZ9DkvEy0kLJL/VnJm7Hh6bVJsj8IJtPDwfNan12ySqnxVuEM3BiIPKDNGdF3xubg==
X-Received: by 2002:a05:6512:124c:b0:539:8f4d:a7dc with SMTP id 2adb3069b0e04-53a15452690mr3629705e87.48.1729370371705;
        Sat, 19 Oct 2024 13:39:31 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a224202d5sm37564e87.136.2024.10.19.13.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 13:39:31 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 0/9] ARM: dts: Add some BCM6846 device tree
Date: Sat, 19 Oct 2024 22:39:29 +0200
Message-Id: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAEZFGcC/3XN0QrCIBTG8VcZXmcc3XLVVe8RXagd3YHQ0JDF2
 LvnBkFBXf4/OL8zsYyJMLNjM7GEhTLFUKPdNMwOOnjkdK3NJMhOgADuMeBImY9e7TtluNEZObr
 WGbRgEASrp/eEjsaVPV9qD5QfMT3XL0Us6xsUv8EiOHAH3VU55Q6txdONgk5xG5Nni1jkp6L+K
 LIqSvfWSsRdj+ZLmef5BRq0pFr/AAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This adds some silicon blocks to the BCM6846 DTSI file and
adds a device tree for the Genexis XG6846B device that
make use of it.

This is mainly so as to get this off my hard drive and
share the basics with others who want to work on the
BCM6846.

I think most of the DTSI changes can be just copied verbatim
to the rest of the BCMBCA family (maybe extracted into a
common bcbca.dtsi?) but let's think about that later.
This will do for now.

The XG6846B device tree uses the new shift register bits
property of the BCM63138 LEDs, which is ACKed by the
DT maintainers albeit not yet merged in the LED tree.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v3:
- Fix the MDIO size-cells and address-cells, the <0> and <1> were switched
  around.
- Defined, and made sure the ngpios property was accepted to the GPIO tree before
  proceeding to use it.
  See: https://lore.kernel.org/linux-gpio/20241017-gpio-ngpios-v2-1-cecfdb38d40e@linaro.org/
- Link to v2: https://lore.kernel.org/r/20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org

Changes in v2:
- Use the new "brcm,bcm6846-mdio" compatible for the MDIO block. (Merged
  to the netdev tree).
- Add the ARM PrimeCell PL081 DMA controller block.
- Link to v1: https://lore.kernel.org/r/20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org

---
Linus Walleij (9):
      ARM: dts: bcm6846: Add iproc rng
      ARM: dts: bcm6846: Enable watchdog
      ARM: dts: bcm6846: Add GPIO blocks
      ARM: dts: bcm6846: Add MDIO control block
      ARM: dts: bcm6846: Add LED controller
      ARM: dts: bcm6846: Add ARM PL081 DMA block
      dt-bindings: vendor-prefixes: Add Genexis
      dt-bindings: arm: bcmbca: Add Genexis XG6846B
      ARM: dts: broadcom: Add Genexis XG6846B DTS file

 .../devicetree/bindings/arm/bcm/brcm,bcmbca.yaml   |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/broadcom/Makefile                |   1 +
 .../boot/dts/broadcom/bcm6846-genexis-xg6846b.dts  | 244 +++++++++++++++++++++
 arch/arm/boot/dts/broadcom/bcm6846.dtsi            | 120 ++++++++++
 5 files changed, 368 insertions(+)
---
base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
change-id: 20241010-genexis-xg6846b-base-ef3fbec0be01

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


