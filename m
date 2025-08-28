Return-Path: <devicetree+bounces-210015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 988CEB39E77
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 15:16:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7C3E37B657F
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 13:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 843483115B5;
	Thu, 28 Aug 2025 13:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="UDxeT+q/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781F730DEB2
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 13:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756386926; cv=none; b=UEVXgZHU0R/T4wfEbd6Quh2ICJ3JSqH7wyVKhgSk/Z+LPDhWfHg6nN3G4E3D5OA9fSESZgOi5kYoNaR8bOs4bl9HQ4KtoztajsTNTalzWqRGfM+JVYGpU0e0CALnxa4ip/jttdnwHvruWD2fxgsR50iqZODp8hmTG6NgDIWLHZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756386926; c=relaxed/simple;
	bh=ZoIUG0DIhl93kANAYC/KTgnrxzk10nq584qp1jORNOM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YY/fa/d34kVvr/8AekOKVIs0HEq1awFOCtmcUlr0INsKRvI64BFmOr8ggpg+BGdTcpVwhKizaN0uRbV/p7kjDuSN1ugBGVDzCkA873Qfjnh/ORE9KQTgvINF5xXB2auGPA+qcPrXOS01liTOpeeRC/tqQ2a9zbSE9ZE3xxOAINU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=UDxeT+q/; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afec5651966so160922666b.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 06:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756386923; x=1756991723; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UuiNHpICi9Fji/fQ9rrN9zvOKJszsHimGcUCBamZ0/A=;
        b=UDxeT+q/XzByfuzaddUNdzlWksMM2SSrbqSy9niuu71+kfILDKdcbKUx+v1X22aThW
         DDYQyxyViQBz3+72P3iA7wGVe9+JlkmQPiuArYkQWqF6Yj6CZ5w6v7hCAHAUdAEky7SH
         407h3p0WrV1xl8IO9SGnYbiS0NWb2N1zf+L8ZBpDrG6zVbM6QW/y8fEgctfX9dV1S+dW
         5yJF+rmTXh8GL/KPkkRCBWfTsa4mLlz15EA6MCznMf8/fjyXjcDKx4Cnxf3QEGbXURGi
         wv5kLD/sZAsQfdtD7t6B+/5YayCAsvOY1PzlJv/sRkWr1QziXkAuKYt/7fIuyZ+7sgcy
         46cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756386923; x=1756991723;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UuiNHpICi9Fji/fQ9rrN9zvOKJszsHimGcUCBamZ0/A=;
        b=rN/8Rgk1BLe7zxBucSkTFXASLIE/dYzIXOx/ZlcvUdoi1ywflNBVUm9KJJTolPWkaC
         PaXj2BKdetT0Cjov6BaTcALH5HnFLLEv3g8vfFs6gcxu95cPg+vrxqjD9H49akCLFGNW
         YNgN9pdnNemYV96HZZ6O+b6LiAk3oDJd4E6dnzzATn+gik+Dc7uULEe7Hwh5rkHe48fi
         js0bblbXhFj0b0K1L22KifUOeMjXRLz91bhJoZTVxTFxVooHusk20nQKI0SNxpuffUj3
         acpHoNNttEFHd0eOBoYhdGfgY4BvcCbCmoUPfBAGoZAxtVYJ7qF4/uXMUXZMTeA++G9M
         gaDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyWCz6Ke5IE/UYHNKqsKiudFU1elKa8fT+6xK/90/oZ/Kt8W9A/idR30KamEJ4SGsYn1LcQ3rfnTxd@vger.kernel.org
X-Gm-Message-State: AOJu0YxalEH6E558ap5/iPFstNOXYKOXU1DgoOmUOP5NdDnlF6YqC1CJ
	8MjxpFQgEkuozWm4ju9l+TgcSnXje3TD4dhBHcHhhu8LI0e7Uf4+KSM89lYHdGF9to8=
X-Gm-Gg: ASbGnctdLcK6NbWb18gy0zETyCMferAZw+VJ7vvX+1EP1GoLZcE5wo/lpKy9QmEQjU4
	6JCOQi2Pd04R6nc6ByefwF3O6t/MMHicAjkR7rXKNhdvInWjzOpDBRAhyRAEdWRgA9AtntLbsuh
	ZIep0nJNPz7xRq5SSD9eujFyxCFebqmlLI7a4oWTCGuv8GFEXqAnfJPkvXRdN9x+uQcaewH9Iy8
	4edopsfRWGi1TeThZ24fHXNGQpOTFYfIeFfVoI8Kl/HRijsAUNyNuWwAzjNrAuKueZIkV0TgqLa
	qXO66+rrQK1DjKX5AUT9+b/2u/4vkcHHnpqXq/9m9dRdFzwZ2PvyO5/td9QqJ3aJJ+z/QYKXdby
	l97VC+WXhOOflBKjv7vdQL6J/+G3LwuTU9zDPLtYFee9rrOHQ6wSullrTBL/mwiEw5q1wasNKQ3
	HCXgylNhtGpaSVzx+YvbJzfxi/xx0=
X-Google-Smtp-Source: AGHT+IFlRXZ8/HbEmILGPaaFC7SuIScItZJp+ONwofS1lsM9bJRSD1VLJx+ZjAEGaQZGAUqEEvUm5A==
X-Received: by 2002:a17:907:2d0d:b0:afe:a615:39ef with SMTP id a640c23a62f3a-afea6154a04mr947914466b.9.1756386922803;
        Thu, 28 Aug 2025 06:15:22 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afe7fd59b00sm872678766b.106.2025.08.28.06.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 06:15:22 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	linux-mmc@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>,
	linux-serial@vger.kernel.org
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v2 0/5] Add peripheral nodes to RaspberryPi 5 DT
Date: Thu, 28 Aug 2025 15:17:09 +0200
Message-ID: <cover.1756386531.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

The following patches add a few peripheral DT nodes and related pin/gpio
nodes for Raspberry Pi 5.

- Patch 1: Amend the bindings to avoid DT compiler warnings.

- Patch 2: Adds core pinctrl nodes and defines SD pins as a first appliance
  for the pinctrl.  

- Patch 3: Wires the gpio-key for power button and related gpio controller.

- Patch 4: Adds DT node for WiFi.

- Patch 5: Adds Bluetooth DT node.

All comments and suggestions are welcome!

Happy hacking!
Ivan and Andrea


CHANGES in V2:

--- DTS ---

- bcm2712.dtsi: added a proper clocks node to the uarta serial
  in order to replace the legacy clock-frequency property. As
  a result, the following patch from the previous patchset
  has been dropped since it's now useless:

  "dt-bindings: serial: Add clock-frequency property as an alternative to clocks"


Andrea della Porta (1):
  dt-bindings: mmc: Add support for capabilities to Broadcom SDHCI
    controller

Ivan T. Ivanov (4):
  arm64: dts: broadcom: bcm2712: Add pin controller nodes
  arm64: dts: broadcom: bcm2712: Add one more GPIO node
  arm64: dts: broadcom: bcm2712: Add second SDHCI controller node
  arm64: dts: broadcom: bcm2712: Add UARTA controller node

 .../bindings/mmc/brcm,sdhci-brcmstb.yaml      |   2 +-
 .../dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts  | 133 ++++++++++++++++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi     |  55 ++++++++
 3 files changed, 189 insertions(+), 1 deletion(-)

-- 
2.35.3


