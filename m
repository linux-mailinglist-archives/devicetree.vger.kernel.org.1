Return-Path: <devicetree+bounces-111808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 064079A018E
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:41:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 86449B24E53
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63091190046;
	Wed, 16 Oct 2024 06:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gxVI2rYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CFE018FDBB
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729060868; cv=none; b=qNgz0VqQlss2FJ0nCzxFUUNoMew2qmetRngVO++2ymxhXNWU2ayp1+DaxNHhjSKSAahltoFxkwIh3biW0lGlf2kxg4anHheAscdKfW0nsX8S5GihEayeAgvi8/MSj1I2Z9PslK2+rKsIxeZx4+0RWnHE9d0rFg5eW4J1GcjR3FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729060868; c=relaxed/simple;
	bh=kZcRuu9H46RjCN5tYUMRRJpDXMSaTVjfDzJQlJV0pto=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=fexDlca0DHelJFZVE8NdxuwLqoqIADLAKvWDxJMnhWhjbvDqaPM+MFM3i3fP3LrR75s4RxoefNTlJWk9ijMGfd5GSPcj+ty59QGSil/kSlrWLXCPcYqvn9k9hhAqNMrsYWRsnoZVhd5yc3n8VSQwzzrrS6ZhbuhphrRzutjbaYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gxVI2rYd; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539f84907caso3509199e87.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729060864; x=1729665664; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IHpoVJww4K9cANVMNaON+Sfj4Ffj7mQXCxfp8axps3o=;
        b=gxVI2rYdZecSUywzndR/ABPmqMaxjMifqqRlc34F6K30PCu7IHbcUrsrtrvaNgR7Ha
         rjo5p81GW5Qtjav/kbACvh48tOoVKG3KX7IR15bH8LDzMPeQvIRUhXPm2cpInyaZn3Df
         oH9514JJLilm5N+ILLkKXrYsCAq6Y3/o8ectlnlD217ZTS/lg1c7hedVcpRB1Vxh8qXC
         ynHc80YIlANSwaQJ5VC9X6/igJxFkdO3v6WNmRRyrVMTRy3JPAYjHC92A1iZuv8JMf9U
         r3m51Fg5lBeYajiz/nPdmNKDyZaRoUhkI/zKMS4dDwYkqJUIb/nVafjUff+e8ZRFPQ/Q
         FhCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729060864; x=1729665664;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IHpoVJww4K9cANVMNaON+Sfj4Ffj7mQXCxfp8axps3o=;
        b=Ca45gUTDzWJq8qfWB/ObVDCNe5giXIuWA0/N8rSsotS/BmDigsZnUuxwCAVgtB1tN8
         TKJISFt/4c/I0Z+KHOcm056BRLkDQFG9H6yuqEpkftM0+Vmc/0qTjxKSjf5P9xOiHRRu
         pxqq320d/PO0yADEvPSgxvTpH+9VPueAC/KXqZlQnnYduqCJ+0VYUFAc1qWz8gvnUTRc
         Otkht9lqz0IdAVmEcdDDVCHOpiDXWr16DplagsqheyaGVnbtm16fsgX538q+VV8E/rLd
         od62hKgiehEumnqBcdqpdNU+HTWip2+meKBwdaRvPFy8Mb1NspwL7nrgqSc5/rUD4pVN
         FtsQ==
X-Gm-Message-State: AOJu0YwL2V9c+1Gsn2ogR3ES5crDatXVq/o8p3/kLumJEqOpkd3ZV38b
	WksxvTCsd7LcWXohWlZEeng+ARthrzqfOAIWdFJ0vHx3IMRvD6J4W7BSXW8WiWAwaEoGvM50tA0
	l
X-Google-Smtp-Source: AGHT+IEJKOLOsiON95SfIvuRNZLGzjtGCOzX0eXi1QpDK7Rj3YoBmunqlhuTIkGgBbOOk5Q6X1VeEA==
X-Received: by 2002:a05:6512:3b86:b0:539:de9c:c890 with SMTP id 2adb3069b0e04-53a03f7cf83mr1910378e87.42.1729060863459;
        Tue, 15 Oct 2024 23:41:03 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ffff3a50sm357455e87.144.2024.10.15.23.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 23:41:03 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/9] ARM: dts: Add some BCM6846 device tree
Date: Wed, 16 Oct 2024 08:41:00 +0200
Message-Id: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPxfD2cC/22NQQrCMBBFr1Jm7cikDUFdeQ/pomkn6YAkkpRQK
 b27seDO5Xvw398gcxLOcGs2SFwkSwwV2lMD4zwEzyhTZWip1YoUoefAq2RcvbloY9EOmZFd5yy
 PZJkU1OkrsZP1yD76yrPkJab38VLU1/6C6n+wKCR0pCfjjLt2I9+fEoYUzzF56Pd9/wBnwNLUu
 QAAAA==
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


