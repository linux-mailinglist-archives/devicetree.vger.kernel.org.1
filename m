Return-Path: <devicetree+bounces-34669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2758C83A7ED
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:33:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA01D1F22CF9
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A85018EAD;
	Wed, 24 Jan 2024 11:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="jatDlbot"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DAD1B7E1
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 11:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706096024; cv=none; b=hzA0eF/7bjxwwembYNBqsw1tI30dXfcRXXMwbdNgYrNHJD67M3SY5cTZEGyyy6iFQ+jlan9CY5OvhCr4eHOC4zkfOJc4JBTmm4OYPiCoLuqlZunX0CZqzTgqE4RsCCkNcqBbrOptNWuVmFF/n3rNo0L7gWXeCBaGYFpyA9XXFWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706096024; c=relaxed/simple;
	bh=adDO8TUIQMExaPDv9NsxqaAOGMlVlinKf8gaQiR5N54=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jVEiwSA4Ef79YG8OEUI//RfIM1vt+gKjYuQOoQ/D7CaOkJLmf5eONcUpwkzrKrHQvFCFBewGMX29aDLRM/vbH/6Zkz/+Mqf0xd3PJZ2QtoGLaqGpLTnHrM3UXSTu87e4mux9z63wWY3CvYLWH1Z4ihK5D9SFu/kGtc/+53B/Ljs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=jatDlbot; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-337d90030bfso4667724f8f.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 03:33:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706096021; x=1706700821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H+jxNLfboUJgS24Fil1mSyDf7IcRgIBmJ/Q7aVOhf9s=;
        b=jatDlbotwNtMsfQT68XL8ceuBft+Gd0EpFgj6yrooPUOP1XnIsEURDRc5asb9k0y+T
         ekaVC0M/bocD6gnI/VkRk3nv+z4SJQfEvmsEj8vTAu6dV1fOTqtM360GZl/QeUu8E6At
         x7jxxPFoFRRgMDZt+JjDumW9/NwlAmOfrekak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706096021; x=1706700821;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H+jxNLfboUJgS24Fil1mSyDf7IcRgIBmJ/Q7aVOhf9s=;
        b=VnLIE5ITdmOb+vm3Qi56yMQjFuPIXzWJPXg7Injj88J24DVZkBsOyOPytaoi7+hKIo
         MtvKYSK2tO4gzacWkcGlEqOMSwQE1JFLH8qBSemol5cnIz//b0Z+ujfwAlgef7S6u9NV
         q8VubuAjzL5/v2IPnbi7WT+mtMCA64V0kHmMDluoxrzJPZePVJwzRyOZrOSmgXwEC3cY
         VmvtJEfDhfeAss4RBzASYTF+LL/fHuyb6RU0/twoMemf9ZutOyAalOQMjvLf5oxYalsg
         ZcGT30NuxRH6IgeqFKITTPNqG81U9y0a4IUflMejLsTKhicWz0Y0Ru1s6+JeoqntR4dj
         ntEQ==
X-Gm-Message-State: AOJu0YyeBB70CWFMl0NSugKkzNZfdJ3XVI/fk8cjulicJXHEat4Fnmzu
	lljdsMG4GN9h/7monzEyykJWMhFfXywlDLRytPrPnVFcjilH23p/aDMsjyEAabs=
X-Google-Smtp-Source: AGHT+IGsi6zH6IUz8z0tq2uHsiTrjL5ql/WTqEp7LHqPlZhTSuwXWHOLP3XXNdN8IqGfAkuOinyaSQ==
X-Received: by 2002:adf:f0d2:0:b0:337:adfb:bed7 with SMTP id x18-20020adff0d2000000b00337adfbbed7mr208625wro.117.1706096020928;
        Wed, 24 Jan 2024 03:33:40 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. (mob-5-90-60-192.net.vodafone.it. [5.90.60.192])
        by smtp.gmail.com with ESMTPSA id i18-20020adffdd2000000b003393249d5dbsm8447950wrs.4.2024.01.24.03.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 03:33:40 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Lee Jones <lee@kernel.org>,
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sean Nyekjaer <sean@geanix.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v9 0/5] Add display support for stm32f769-disco board
Date: Wed, 24 Jan 2024 12:33:09 +0100
Message-ID: <20240124113336.658198-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The series adds display support for the stm32f769-disco board. It has been
tested on hardware revisions MB1225-B03 and MB1166-A09. This required
modifications to the nt35510 driver that have already been applied.

Changes in v9:
- Drop 'interrupts' property to fix yaml checks
- Rename vcc_3v3 to to vcc-3v3
- Rename panel-dsi@0 to panel@0 to fix yaml warnings
- Change commit message
- Rename stm32f769-disco-mb1225-revb03-mb1166-reva09 to
  stm32f769-disco-mb1166-reva09

Changes in v8:
- Add Acked-by tag of Lee Jones
- Add Reviewed-by tag of Raphael Gallais-Pou
- Add Reviewed-by tag of Raphael Gallais-Pou
- Remove unit name from 'ltdc/port/endpoint@0' to fix the compiling
  warning:
  ../arch/arm/boot/dts/st/stm32f769-disco.dts:189.28-191.5: Warning
  (unit_address_vs_reg): /soc/display-controller@40016800/port/endpoint@0: node
  has a unit name, but no reg or ranges property
- Add Reviewed-by tag of Linus Walleij
- Add Reviewed-by tag of Raphael Gallais-Pou

Changes in v7:
- Replace .dts with .dtb in the Makefile

Changes in v6:
- Drop patches
  - [5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
  - [7/8] drm/panel: nt35510: move hardwired parameters to configuration
  - [8/8] drm/panel: nt35510: support FRIDA FRD400B25025-A-CTK
  because applied by the maintainer Linus Walleij

Changes in v5:
- Replace GPIOD_ASIS with GPIOD_OUT_HIGH in the call to devm_gpiod_get_optional().

Changes in v2:
- Add Acked-by tag of Conor Dooley
- Change the status of panel_backlight node to "disabled"
- Delete backlight property from panel0 node.
- Re-write the patch [8/8] "drm/panel: nt35510: support FRIDA FRD400B25025-A-CTK"
  in the same style as the original driver.

Dario Binacchi (5):
  dt-bindings: mfd: stm32f7: Add binding definition for DSI
  ARM: dts: stm32: add DSI support on stm32f769
  ARM: dts: stm32: rename mmc_vcard to vcc-3v3 on stm32f769-disco
  ARM: dts: stm32: add display support on stm32f769-disco
  ARM: dts: add stm32f769-disco-mb1166-reva09

 arch/arm/boot/dts/st/Makefile                 |  1 +
 .../dts/st/stm32f769-disco-mb1166-reva09.dts  | 18 +++++
 arch/arm/boot/dts/st/stm32f769-disco.dts      | 78 ++++++++++++++++++-
 arch/arm/boot/dts/st/stm32f769.dtsi           | 20 +++++
 include/dt-bindings/mfd/stm32f7-rcc.h         |  1 +
 5 files changed, 114 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/boot/dts/st/stm32f769-disco-mb1166-reva09.dts
 create mode 100644 arch/arm/boot/dts/st/stm32f769.dtsi

-- 
2.43.0


