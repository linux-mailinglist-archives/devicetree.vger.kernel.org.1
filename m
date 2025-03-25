Return-Path: <devicetree+bounces-160578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D2CA70349
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B950E167C60
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38AE525A2CB;
	Tue, 25 Mar 2025 14:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="XFlp7dkE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973B725A2B1
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742912004; cv=none; b=hPb6PpYXoUNaIkqgHIsFQKKa2iGpdTjN7vP4loV+C/I/NN3/0yAYXcnTbyLE1ZnhgoofrXzTrmsR9UiI0YkR5Oqxi0vJRhOifXqC6hmbvWt7DkeIJbDpNdEmB7/SyXiKEKAwmC8TjJWDBSY5txuoKgi22ZkGbNpjF70yQ4rbkIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742912004; c=relaxed/simple;
	bh=otuC/CFv+EroRezJqWlsIO+RTb56ZCo/gwA9TYGTy4Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JtMhq65OiVxTdO0oWnaYyzPqy3h2NjjoU5avhCzY6tzAb0QDgO/WFpbVV/CqXyVf1gYdn8iNNU2TFv2/yp+Jh4IxT3oOGgtmQMnHYPqzdoNOQqtXHfd1vCpj7NLC2G/qEvY72fl2cpVB8pT6asgJBcxKbZAxKmAx5aDMqZsM+SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=XFlp7dkE; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 23A9D400B0
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1742911996;
	bh=JaLEOuspohf9X4xUwz7GRTfjgrM6e47VPxpoP7GA8+I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
	b=XFlp7dkEGMf92F6LlawBZRIhx8NefuW8hxJCU1Cw3oFkWh36EciX8Fgl+wNmb6T1I
	 XpzjvMJp7xcxIf5doMne/+b70+TLBjZoHwkltSlurCQoTj2czpI5MyMP2nujcYXLog
	 jKzBCPr+02iNzNqm+iflJuVI2GAQqT24pWNpR9r7HbPufWcUQnR+rhKtnOcrngV3J4
	 WGnSCvmBDVik3HrxPTd6ltlpyOvPKNgSwZ2gRQFajJsiE9XuwM2oLT40PLNFYDhum3
	 JflpGxGLlWSRDEIz7Y/llhoG1MN4Dipkvg6X+1eYlvqkYErOSRvv+MXMKUuTqBy2fX
	 4SbaR1L/f+ysA==
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-391315098b2so2244735f8f.2
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 07:13:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742911994; x=1743516794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JaLEOuspohf9X4xUwz7GRTfjgrM6e47VPxpoP7GA8+I=;
        b=R3m18S1z/AqIBZt6LdJuRAENNsItxbGPAYHXm/WaoP1/opnhBtRL9usejpqx9vILDJ
         zsHrdnsufM7BY8Is2m9K4b1OmgAWbbiol30SKrTEegXgV+64D6T4UlCgCkjKq3dPTTji
         NuWSU0TIfbdfol9vZUd1+N2pqI9rpgAK73gWN/CwNZa2F2oFFJaW7bLyzapRxbmf1QOl
         KztpwM3TM0gb51BsDOZKbSTImuuwmNHyrYwQa12bD3wKzXOh9inoHDqBNX/cKDy9Hx8E
         iocSyqQ5iOKHJCubPJ7s0sCKf58vX2GoAtV/DojJxfMq0fszdayi4+rk0k37vQgSyEly
         CaZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrI6YfxRKxXjo/YBufa5r8pVoNLt5Dpye0L/CYTNHJFgTP5J2cyvG5Nw8480OU7K0teDZy3Cp/SaM7@vger.kernel.org
X-Gm-Message-State: AOJu0YyMZ+N2opyfiT8OAX1jJxzIzG4ThvHIeDyfsJjnjsaPoiH0GwOc
	VIkVd0aJQt7g2dem1fDLosIsqUSkVrpxiOLC9FNlatNMEtu3jTBDSlG+qugg1vxEkToo5pAuKJe
	lLMR4WpGg0Oode4BHh5ybuq0i932BgvSEH1oFX8jt/tW/sJMDR6xBiGUe1OLNLhGR3xOFBDRYGf
	Q=
X-Gm-Gg: ASbGnctjQOKa98PLX4FLHPl3HBCXbI/vcHc9coDwsmry1U5K97wIbgJ3Lm93rItN7cI
	shGKsVTa+QAo0b4VKTX8Qena7iT3gkU4c/CEukgoqh5gr2OFRO9IYeSJF/iKCxjcBr6AHj3p3bv
	VZ3DPyvOusISQgJNXF1tW+5vODAV1t+on5FIMglwKvftpwK+SA1QoO7+YkrmUze8hWUMVfF5UkM
	AzKjzn0SxoWZE45/IwoO2OAPAVAHcLO8tuZcBxs3dLRScl97Xh6htpWoef0PezczC1AVbdbBmwX
	pQOp8/mIBaG7a2lXEppIMG+64TnBJA==
X-Received: by 2002:a05:6000:2808:b0:39a:ca0c:fb0c with SMTP id ffacd0b85a97d-39aca0cfb21mr1504918f8f.28.1742911994022;
        Tue, 25 Mar 2025 07:13:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9gu1kOTO2EMBz8bV0KvUy/lftump2d38xUsNj4Qewh4mTh1y9N8aE976C4YFTsdPfqCBOMQ==
X-Received: by 2002:a05:6000:2808:b0:39a:ca0c:fb0c with SMTP id ffacd0b85a97d-39aca0cfb21mr1504872f8f.28.1742911993506;
        Tue, 25 Mar 2025 07:13:13 -0700 (PDT)
Received: from stitch.. ([80.71.142.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a6326sm13532091f8f.29.2025.03.25.07.13.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 07:13:13 -0700 (PDT)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>,
	Min Lin <linmin@eswincomputing.com>
Cc: Samuel Holland <samuel.holland@sifive.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [RFC PATCH 0/4] ESWIN EIC7700 pinctrl driver
Date: Tue, 25 Mar 2025 15:13:02 +0100
Message-ID: <20250325141311.758787-1-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Pinkesh et. al

It's great to see you've begun upstreaming support for the EIC7700. I
read some of the data sheet for the SoC and noticed the pinctrl is quite
simple and could benefit from using the same model as the TH1520 pinctrl
driver. This version should do the same as the vendor driver, but in
less than 2/3 the code.

I hope you'll consider switching to this version once the basic
support[1] lands. This patchset also depends on that series.

[1]: https://lore.kernel.org/all/20250320105449.2094192-1-pinkesh.vaghela@einfochips.com/

Emil Renner Berthing (4):
  dt-bindings: pinctrl: Add eswin,eic7700-pinctrl binding
  pinctrl: Add driver for the ESWIN EIC7700 RISC-V SoC
  riscv: dts: Add EIC7700 pin controller node
  riscv: dts: eswin: Add HiFive Premier UART pin control

 .../pinctrl/eswin,eic7700-pinctrl.yaml        | 141 +++
 .../dts/eswin/eic7700-hifive-premier-p550.dts |  46 +
 arch/riscv/boot/dts/eswin/eic7700.dtsi        |  17 +
 drivers/pinctrl/Kconfig                       |  14 +
 drivers/pinctrl/Makefile                      |   1 +
 drivers/pinctrl/pinctrl-eic7700.c             | 802 ++++++++++++++++++
 6 files changed, 1021 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/eswin,eic7700-pinctrl.yaml
 create mode 100644 drivers/pinctrl/pinctrl-eic7700.c


base-commit: 38fec10eb60d687e30c8c6b5420d86e8149f7557
prerequisite-patch-id: 2e5cc67f66a8cfe463ec73b98cd17130d4094a86
prerequisite-patch-id: e39d6867f89c605fd1e3621937c8c91a6cfbe7c8
prerequisite-patch-id: 5d2232bb3ce3d7d4e23477c2ad3db30424fee33c
prerequisite-patch-id: 946719f43a0cc23ffe82e996e076de2221dcd8db
prerequisite-patch-id: c2c2bc1b676b1e15165e107515b380318e9ca941
prerequisite-patch-id: aa4a955dd99d0796973fedb78bea269ebab73b6b
prerequisite-patch-id: 1cd27ddae721cc1e6c52723f8b360b09b5e712c7
prerequisite-patch-id: 237813218e54e0c7cbed8d72e30eb649ffd9ecd4
prerequisite-patch-id: 8e687755e898e71c80b0294b90deac71fe05c421
prerequisite-patch-id: 05622d10a27ba9cba36b3d194e51a2d8d7b7b783
-- 
2.43.0


