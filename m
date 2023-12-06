Return-Path: <devicetree+bounces-22376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A673180740B
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 16:55:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A047BB20D72
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A774597A;
	Wed,  6 Dec 2023 15:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OSKEQ5yr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E72191A2;
	Wed,  6 Dec 2023 07:55:20 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-5c673b01eeeso2428697a12.1;
        Wed, 06 Dec 2023 07:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701878120; x=1702482920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=DUpYtMlNxQPfOzxOCnWpcnmDSR+IsHfxAwKdMisAiWU=;
        b=OSKEQ5yrFvo1dcs99i3qOaKFogFABrqoek4n0Ga77p4D0fTFthByAUZ+H5bgI4i7a7
         hIJ9kD8Y1MnUoHeUD1MC0Ik6XxXThzL2Mbnbhhj5o+SWSq5pPeY4sFqSE/Prs7ZH4RNg
         Y8ABzBEU72p+s1/H0CqER5tRqpsEhdF2CU3C7r9uDuArK3W3LUY2UtL3sOcg1AgaeAAC
         fCXPiePOvl8HlzbOG0YG/59vanbfHhfz9/UCMvKNcD1wSDq+xwbL5cPwGSWusfKwsz8s
         xrOx4s328q1wXga8o2syQjWuFoi96bLn/5vC6ijtzpK18yX7ngV1V6vbBc5MKajbQovY
         5L4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701878120; x=1702482920;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DUpYtMlNxQPfOzxOCnWpcnmDSR+IsHfxAwKdMisAiWU=;
        b=ZrhjPL4dBo0GFX7l8Ckr89m1I450ze9pXie71zLE2h95zuOD+Cnbkb/Ae6rdGyWsxU
         KGLyMvQF1ty+c7U5SI8vD2YXDXWeQNKtorfGODPoWaw9tpN0NWRsKQwogvGNvacoGfJg
         MFvyFu405/nZruSGFWsEosgSpPaf2Nbqshps/QWEX6ZLUfGCju06O2agrjO2z67Y/oIf
         hi0rLL1bKbjuty0vhK6yJtnqbyrSrMS71e04qRekDtiIipZGuxktjxnuIDEDjc5eSDXV
         EW9UjAEedcOxNKQihGqITxH0SrH21eJ72lS9kUc4nEV36l570anMGxUIFH5UdGxsccOt
         ptCw==
X-Gm-Message-State: AOJu0YznryAup3d52l8cBjaMBe6EVGFDGQyIfbO6lUxk58azjjEtEJXO
	B2dzrJu59HB1YEytTLTbW4U=
X-Google-Smtp-Source: AGHT+IF/hwdQAeKwXxZgHJD2ZuhMZBTgnDN1LF/oZsKXET9Mvdm4nje4XCYAICgG3G2R2vDdbrDSkA==
X-Received: by 2002:a17:90a:19c5:b0:286:a2a3:1e56 with SMTP id 5-20020a17090a19c500b00286a2a31e56mr786838pjj.29.1701878120253;
        Wed, 06 Dec 2023 07:55:20 -0800 (PST)
Received: from peter-bmc.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id sj16-20020a17090b2d9000b0028652f98978sm3451pjb.8.2023.12.06.07.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 07:55:19 -0800 (PST)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: patrick@stwcx.xyz,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/2] Add Facebook Harma (AST2600) BMC
Date: Wed,  6 Dec 2023 23:53:13 +0800
Message-Id: <20231206155316.4181813-1-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Summary:
Add linux device tree entry related to Harma
specific devices connected to BMC SoC.

v5:https://lore.kernel.org/all/20231204081029.2272626-3-peteryin.openbmc@gmail.com/
v4:https://lore.kernel.org/all/20231204054131.1845775-3-peter.yin@quantatw.com/
v3:https://lore.kernel.org/all/20231123050415.3441429-3-peteryin.openbmc@gmail.com/
v2:https://lore.kernel.org/all/cdbc75b9-3be1-4017-9bee-c8f161b6843c@linaro.org/
v1:https://lore.kernel.org/all/20231024082404.735843-3-peteryin.openbmc@gmail.com/

Change log
v5 -> v6
  - Add Retimer eeprom
  - Add Power Led
  - Add GPIO/SGPIO Line Name

v4 -> v5
  - Rename document and file from minerva-harma to harma. 
  - remove Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
v3 -> v4
  - Add SGPIO line name.

v2 -> v3:
  - Fixed led schema.
  - Fixed i2c mux schema.
  - Add BMC_READY and SGPIO_READY.

v1 -> v2:
  - Add Power sensors.
  - Modify ehci number.
  - Add Led.
  - Modify SGPIO line-name.
v1:
  - Create minerva harma dts file.

Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
Peter Yin (2):
  dt-bindings: arm: aspeed: add Meta Harma board
  ARM: dts: aspeed: Harma: Add Facebook Harma (AST2600) BMC

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-facebook-harma.dts  | 607 ++++++++++++++++++
 3 files changed, 609 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts

-- 
2.25.1


