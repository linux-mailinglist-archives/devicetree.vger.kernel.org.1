Return-Path: <devicetree+bounces-29418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EB9822E41
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 14:29:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 184FE1F244EF
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 13:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 756C0199A7;
	Wed,  3 Jan 2024 13:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="oBVzL9xV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973591A287
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 24AB83F74B
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 13:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1704288536;
	bh=yWWe6H23myTSvjfVff9zG/62qYLCD/sbWwOipagSJuM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
	b=oBVzL9xVAQ/5evAZW5+By3z6tyFpB0FMqcCpS6fw/l4c42E9JdB8Rg8bzNWUrRd/s
	 pCx0TdiHBXbV0TIIRAVHZpZYgTZvsUm/zHoVasJs1h5mNzffkVj0ecPkdrzOsPIcca
	 /FhuSKaKC97Nxf1rlVsaCpMexD7k4voHjG10GW9czu8GUqmMGUwyIDvPY94HYmODre
	 RqQxKKjhSeUC42/VQmI6zAComeRcdDktGXKvO+ocmF+sceJbjuDKrlZjk2cFGjnMdy
	 NcgiCkO0KKGynZPt7PzIbcq3vEA9Vl77X5OYtS2TFmQ4kDHnv+bIhG6XtJR6jixrNK
	 ofvSUFR3k5Y4A==
Received: by mail-ed1-f70.google.com with SMTP id 4fb4d7f45d1cf-555bda8b4a1so2195907a12.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 05:28:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704288534; x=1704893334;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yWWe6H23myTSvjfVff9zG/62qYLCD/sbWwOipagSJuM=;
        b=kGxxW/1JyVocuTmbRkT37SNYzpasfRAfQPdqYcYRe1PDG4RZTkweFgxP7mt5wvfIYv
         JS0gnkA5SuhwoiEn3dS7KaLuebu/zzB2MWcPXlU8ux9kEFktJ0z5MeFVziGiDtGEfcL3
         vpmFKZp6vSttHtn0G5iePIe+BlcEGNwJQGV4K9j6iIhEhI4MvGBqVrMstTbp0xl32fk8
         sD4TTyX+UflKlN4hPFkbXZm03O2mNV6TcLlPasp10X3aafEr4BvsYO5xLsaOF9rYOGzN
         DaSySCsI1eUdasVVofFob8GJaBPkMPLyfdjLlxWbgEp7HI/rOi2Cx3tCN5iMJKdJEmdE
         bbmA==
X-Gm-Message-State: AOJu0Yw48pdL//9LDHYRReUr5BCuXUQBmyhgy4gYiXF4qHC2d4YfDk9h
	Hy6z74pjKGicBj9txmqv1j3XTUXZGNbdq6fPe78wo82ojcrzTZs6Q7qrlZCH2zeKhG65rsj+o7y
	ZavS7kuZ7wryHrL0ClpCrPnbx+MrMTcYr67w2CzhwdK9BFw==
X-Received: by 2002:a17:907:36c7:b0:a27:d55d:73d3 with SMTP id bj7-20020a17090736c700b00a27d55d73d3mr3348194ejc.23.1704288534028;
        Wed, 03 Jan 2024 05:28:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGCAg1DXImZMtkXe7TWoLXcnmyhjNjWaMpeNZkVAjpDt/dd1YDA1CXZvWTJalXLzI+MUZw+JQ==
X-Received: by 2002:a17:907:36c7:b0:a27:d55d:73d3 with SMTP id bj7-20020a17090736c700b00a27d55d73d3mr3348189ejc.23.1704288533638;
        Wed, 03 Jan 2024 05:28:53 -0800 (PST)
Received: from stitch.. ([2a01:4262:1ab:c:5af0:999b:bb78:7614])
        by smtp.gmail.com with ESMTPSA id eu18-20020a170907299200b00a26e53be089sm9549873ejc.44.2024.01.03.05.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jan 2024 05:28:53 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Drew Fustini <dfustini@baylibre.com>
Subject: [PATCH v2 0/8] Add T-Head TH1520 SoC pin control
Date: Wed,  3 Jan 2024 14:28:37 +0100
Message-ID: <20240103132852.298964-1-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds a pin control driver for the T-Head TH1520 RISC-V SoC used on
the Lichee Pi 4A and BeagleV Ahead boards and updates the device trees
to make use of it.

It can be easily tested using my th1520 branch at

  https://github.com/esmil/linux.git

..which also adds the MMC, PWM, ethernet and USB drivers that have
been posted but are not upstream yet.

Jisheng: I've added this driver to the generic TH1520 entry in
MAINTAINERS like you did with your USB driver. Let me know if that's not
ok and I'll create a separate entry for this driver with me as
maintainer.

Drew: The last patch is purely based on reading the schematics. It'd be
great if you could give it a spin on real hardware.

Changes since v1
- Keep pinmux data for each pin so we can mux by type instead of directly
  using the mux index. Eg. use function = "uart" etc. (Linus)
- Drop the strong pull-up property and prevent Linux from combining the strong
  pull-up with the regular pull up/down. This also means we can't report such
  usage if it set up by earlier stages, but that problem is deferred until we
  encounter it (Linus)
- Reference pinmux-node.yaml properly (Rob)
- Specify valid pin names for each group (Rob)
- Enable bus clock (Emil)
- Implement gpio_request_enable() and gpio_set_direction() for automatic
  GPIO handling (Emil)
- Drop patch adding gpio-ranges to the gpio-dwapb bindings that is
  merged in gpio/for-next. (Emil)
- Patch 6/8 adding GPIO line names for the Lichee Pi 4M module (Emil)
- Various code nits (Andy)

/Emil

Emil Renner Berthing (8):
  dt-bindings: pinctrl: Add thead,th1520-pinctrl bindings
  pinctrl: Add driver for the T-Head TH1520 SoC
  riscv: dts: thead: Add TH1520 pin control nodes
  riscv: dts: thead: Add TH1520 GPIO ranges
  riscv: dts: thead: Adjust TH1520 GPIO labels
  riscv: dts: thead: Add Lichee Pi 4M GPIO line names
  riscv: dts: thead: Add TH1520 pinctrl settings for UART0
  riscv: dtb: thead: Add BeagleV Ahead LEDs

 .../pinctrl/thead,th1520-pinctrl.yaml         | 372 ++++++++
 MAINTAINERS                                   |   1 +
 .../boot/dts/thead/th1520-beaglev-ahead.dts   |  87 ++
 .../dts/thead/th1520-lichee-module-4a.dtsi    |  43 +
 .../boot/dts/thead/th1520-lichee-pi-4a.dts    |  28 +
 arch/riscv/boot/dts/thead/th1520.dtsi         |  62 +-
 drivers/pinctrl/Kconfig                       |   9 +
 drivers/pinctrl/Makefile                      |   1 +
 drivers/pinctrl/pinctrl-th1520.c              | 891 ++++++++++++++++++
 9 files changed, 1478 insertions(+), 16 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/thead,th1520-pinctrl.yaml
 create mode 100644 drivers/pinctrl/pinctrl-th1520.c

-- 
2.43.0


