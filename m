Return-Path: <devicetree+bounces-231212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 079BBC0B708
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 00:18:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D52F84EC19D
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 23:18:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EC903009EA;
	Sun, 26 Oct 2025 23:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K8rRVLUl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D18F3002B0
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 23:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761520702; cv=none; b=lKLJTxlQU4IsFfTBuFKCmWuVQZbsKFcaToJlDEmTlWsd+mkKdCZ0M6gJHMulVfTIbH7J/3jQ0y5KcbZd5FnErhsGYrbtWzLlmekzDaAhHVLxBhS1p10DfXcbYU2aabQthgMlOo6HD5yxbt5N2mtO6uOvmDfobOVroYCNeC/CP0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761520702; c=relaxed/simple;
	bh=JHsEeE3pg+pk93bhI32FeDi8yrKJtA+0+klnpUJJiVk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mOSymurBiOuYGTMX261o7M2+gt0yyL0rdTwc5gGzlfQe0hJk6EFNjinheHZ1Xxtu/A10KsAknSxZT3Mxnne1r6J5EzOmMu1I7vTgYs+7Xpgg5Zb/shltOs3+UYRV4IRE03nUQG/yji0o3YrLDjJiPfYfoYGSCVUbJliV2+NwvnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K8rRVLUl; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-63c3d913b3bso6863647a12.2
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 16:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761520699; x=1762125499; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0DocXilQpznXlXdgq/uQ2JTbyqpF07pq6DJZ7s3t7nQ=;
        b=K8rRVLUlwfko0Ie6r4lXMPmpm8sabUXHMyr+9AahR+tAW1+FtXWD9PLmi3PaeA83/v
         DKEMI5q+rMGgtyzpmbtFDlNKsscusm8V7xXcbNLPXUHR+1L9CxZB8MlEQyCN5ivE9Re/
         /up75cwZOLQsmniAmBOvQoDLzfTTHSJ+ri9jcNxPh/yFKQpihljsN3tZ5+5RxY9SUbKR
         FWYrFMU9wjKQ6yRBGFmSLhKAO2OfsqlD4NHegxjoqSu3gsW1fJ5AKvhgYH1R2tCQqn75
         CLCXtJn/NJEmuAs12unqTkbtNzzbMbTVlFSh4SIHNeM9rLum9Vd5dRgxu6CekCAb5MAf
         nQGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761520699; x=1762125499;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0DocXilQpznXlXdgq/uQ2JTbyqpF07pq6DJZ7s3t7nQ=;
        b=BPdTlvtVqRwWUq6e4qXWFnNfvt7gSklMYcjPxv4UwukRNbVmD5+wqNgWRgoq4BYybf
         6+9zXHwQdxo3qL1YGe6Kpg0N47YLfmIx0fJygPLq0mh3o/qz8+BBtvag8xti9bY5w+6/
         pKRz+zcyBQFRLSLYbeAeSjgtvwEQ67sijIzyiA0+8Evko+i1PJGdXvn/bgMGyLkszB2B
         ozNb/vGQQ1smBuoGPCQq9bJGLa8IyhGz/dLuMklsT0+EjM8hTjkPTB5R2Z0H8xszCypk
         dt7p5W8HlCPxo4XoDxG7duUpZXGvDplp5+ZxfQO5hI7gN4Uyt9oSEj5oxfBj3vU7VKtp
         LBQA==
X-Forwarded-Encrypted: i=1; AJvYcCW0N0UqIkdOzBN/o4THXsNfIMzaFooYy0uuCyvqzbN5nJUpNON+y4kejEEJtXazoQO4/VcRBXPvorEp@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+GXJG5pIjKMSmIlflqE2ahhdcsCGlKB/y+oxLmdq2FQsoIjUa
	zkQzm4zgrqwJA5skVn1Fy2ZOIc7EO2kLmES6GHGzNeih/s2fvoM2JP+d
X-Gm-Gg: ASbGncv6+JJqGk0C26C4zgKUfnGnYp58lsGVzhfdb8Q+4aLHDaoJAgNFCn4tbXB3M5A
	j5R0XuQ/hZ6j9LDG1NwB2FD87K3fu7TsrszNXvyXF/8TPuUX2lXaJbQxVmShLdjde0AjYh3JORC
	gdvgkG5EdgIffHaGbDotBfyx6G8XWXZrS2zZIScOHTBCsuEPyuOrOVWJV0/ukP+XpFYiVMptJom
	+9uvIfMnlEg7nZ8IEPjUnWFwLOlT0+V1/bT5G6W9hqgxx4ggnvQ2d0yW0qLM+MyHACiGSiMN1ee
	aGOw+mQiHE9EVcslh5Q5SF2LcelXBL6AbzMV8x2iLhmDIeud+AI/qaXxsXLx48QJvvGaEscsXbL
	gUj+fkQ+l1SC0qn015j4Mnr/BTQCpI/ws4A1I0XJ+mRJaUmVukukTWZE/NFAG4fet+ngKe981Ij
	RpGao=
X-Google-Smtp-Source: AGHT+IHmSbbl2y8sC1EHLXiOU46A1OkkBC+CvSb7Cdnfsyi6aRrsfPGnDWUyfaHNDA19Cl6oaDIzyg==
X-Received: by 2002:a05:6402:210a:b0:615:6a10:f048 with SMTP id 4fb4d7f45d1cf-63e3e597e23mr12696707a12.33.1761520698712;
        Sun, 26 Oct 2025 16:18:18 -0700 (PDT)
Received: from builder.. ([2001:9e8:f109:5716:be24:11ff:fe30:5d85])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef82865sm4847379a12.9.2025.10.26.16.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 16:18:18 -0700 (PDT)
From: Jonas Jelonek <jelonek.jonas@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jonas Jelonek <jelonek.jonas@gmail.com>
Subject: [PATCH v2 0/2] add gpio-line-mux
Date: Sun, 26 Oct 2025 23:17:52 +0000
Message-ID: <20251026231754.2368904-1-jelonek.jonas@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This proposes a new type of virtual GPIO controller and corresponding
driver to provide a 1-to-many mapping between virtual GPIOs and a single
real GPIO in combination with a multiplexer. Existing drivers apparently
do not serve the purpose for what I need.

I came across an issue with a switch device from Zyxel which has two
SFP+ cages. Most similar switches either wire up the SFP signals
(RX_LOS, MOD_ABS, TX_FAULT, TX_DISABLE) directly to the SoC (if it has
enough GPIOs) or two a GPIO expander (for which a driver usually
exists). However, Zyxel decided to do it differently in the following
way:
  The signals RX_LOS, MOD_ABS and TX_FAULT share a single GPIO line to
  the SoC. Which one is actually connected to that GPIO line at a time
  is controlled by a separate multiplexer, a GPIO multiplexer in this
  case (which uses two other GPIOs). Only the TX_DISABLE is separate.

The SFP core/driver doesn't seem to support such a usecase for now, for
each signal one needs to specify a separate GPIO like:

  los-gpio = <&gpio0 0 GPIO_ACTIVE_HIGH>;
  mod-def0-gpio = <&gpio0 1 GPIO_ACTIVE_LOW>;
  ...

But for my device, I actually need to directly specify multiplexing
behavior in the SFP node or provide a mux-controller with 'mux-control'.

To fill this gap, I created a dt-schema and a working driver which
exactly does what is needed. It takes a phandle to a mux-controller and
the 'shared' gpio, and provides several virtual GPIOs based on the
gpio-line-mux-states property.

This virtual gpio-controller can then be referenced in the '-gpio'
properties of the SFP node (or other nodes depending on the usecase) as
usual and do not require any modification to the SFP core/driver.

---
Changelog:

v2: - as requested by Linus:
      - renamed from 'gpio-split' to 'gpio-line-mux'
      - added better description and examples to DT bindings
    - simplified driver
    - added missing parts to DT bindings
    - dropped RFC tag
    - renamed patchset

Link to v1 (in case it isn't linked properly due to changed title):
https://lore.kernel.org/linux-gpio/20251009223501.570949-1-jelonek.jonas@gmail.com/

---
Jonas Jelonek (2):
  dt-bindings: gpio: add gpio-line-mux controller
  gpio: add gpio-line-mux driver

 .../bindings/gpio/gpio-line-mux.yaml          | 108 ++++++++++
 .../devicetree/bindings/mux/gpio-mux.yaml     |  30 +++
 MAINTAINERS                                   |   6 +
 drivers/gpio/Kconfig                          |  10 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-line-mux.c                  | 194 ++++++++++++++++++
 6 files changed, 349 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-line-mux.yaml
 create mode 100644 drivers/gpio/gpio-line-mux.c


base-commit: 897396b418d1720aac39585b208aada708b5b433
-- 
2.48.1


