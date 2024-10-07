Return-Path: <devicetree+bounces-108468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6FC992C2B
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 14:43:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24D891F236EC
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 12:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E65131D7E21;
	Mon,  7 Oct 2024 12:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="CAIDhfiE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659471D2B2F
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 12:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728304806; cv=none; b=PMCscQNeImiAO7s/uZY5DDS8t0UzL1lwWrdBRmTMp+HkDSCvdKH9pOXUEXbzil95tCHcVEVpZOuYZIPe0L9EvmbJEyx+b+A/7ogEZ7XULEII2xHOryXTFvemU5JP6EXY3mk0JDYni6J6YSeLju6MuuJL4Bv39z6ixrQaZzizs2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728304806; c=relaxed/simple;
	bh=mkLhLwSMHZ/hO35qXKlv3paIFazWoum0UehyHiC/QB0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YsjJiVUPJJogsjnkvgwa5VqNswFvyFVSGShKpY9QJRs1LB9a8XSDB3ziCTpx6x1tSzGWmV3yIKYCUDLBjaCMgkExn6oazHXk4zsZ4+pe0Mu0vjUf9LktiZ9QN5PQ5T/WL37yUIa1qd6pYlu7roDP6yBqcSX9KAaG9lLfGujrdRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=CAIDhfiE; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2fac6b3c220so54819091fa.2
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 05:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1728304802; x=1728909602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XxqlkITvdCM/QWIQix/9plieOyS0wK2Vm/r1GXcM7hA=;
        b=CAIDhfiESYPEcNE8YFhNUYXgmKxi424zPamebyO+pTgCeXatPoVk43dc/Gd5QS5TCF
         dWHxozIT6V5wSqiNQlibR9fbPy/c5BLJxdPSzayiPf1cKicZz3amHh1d7cPc2tiY90iW
         WfeA1n22uctbNobcD1eknSfG+TQy1wh55g87R+PhATbfT9unM7tggRJwFBGFk2OYtrnj
         TMw+0dMsynOB1jXg8PUP8gqg5jwVjRRvFdM1Z44sV+Bc4lvPxDNVJSe6oy2/ArJCR7Kh
         Y8acBAsNX82Q90sIFAQQDh+OKp8r6LT9PfsLOn6AAEEUbjE5coHSaFhHIG9KO3Vha5fz
         gjFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728304802; x=1728909602;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XxqlkITvdCM/QWIQix/9plieOyS0wK2Vm/r1GXcM7hA=;
        b=dFoWh6WIqjVRtoQJKSg7BFcEOByYzJPg6fvs28Frw0c5hBcDqIIDXRs5Zf5IMfcZJI
         qzSFjCOs08wZkK7S+A5QcaJmk0hroMKWVb0+B3nmhus0K63SzlNi0U+TYIxEyELqGrJR
         ZpP+Hra1aG9avz0A57Oxv+Bc3nFaKN4smQw69Ijmn4hw42XgSuASMXpGu/vfYYbgjaNm
         g+mWuIn5DyDY/ccI9vw33GPJHT7QUi4GWUouoCpRUe2F/DPq9kmYkq8wuxPAWKrlCWrv
         jxJemmT1hmFrXmWKOPWmQNhhTzNgAev5SOLR94PLyyalfZUg+EBu5vZ470yakTx9EdXN
         YQXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjU2Wxz1/PzUV59SYO1oY5AF0XMMkzKCt9U+XiVAuOXVOXksnMzZ9HV9O/JTqMj4QqiFdZbkUrghqO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4WtKo0gTW4IWHJ1XxfyNnUUJHEHpVppmfKpxucdNEL2594xEe
	c0LSw0Yh7wxW6gGXJgkxpIX+tOI0TZ4QCrHIJXcjsrF0wNmYKney7aEoGN5+X/g=
X-Google-Smtp-Source: AGHT+IHR1ktp254iz8KIigduOBzppWGhiMiVs/yxKW6oEsL/Vly2uGjKRU1R2KrvUoC9JvDdD8m3iA==
X-Received: by 2002:a2e:a9a1:0:b0:2f6:6198:1cfa with SMTP id 38308e7fff4ca-2faf3d79a3bmr70522671fa.41.1728304802350;
        Mon, 07 Oct 2024 05:40:02 -0700 (PDT)
Received: from localhost (host-87-21-212-62.retail.telecomitalia.it. [87.21.212.62])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a992e7e2252sm371446466b.206.2024.10.07.05.40.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 05:40:01 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v2 14/14] arm64: defconfig: Enable RP1 misc/clock/gpio drivers
Date: Mon,  7 Oct 2024 14:39:57 +0200
Message-ID: <6964b1728d155b85c9c97fe26726e8ee2c04abf8.1728300190.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1728300189.git.andrea.porta@suse.com>
References: <cover.1728300189.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Select the RP1 drivers needed to operate the PCI endpoint containing
several peripherals such as Ethernet and USB Controller. This chip is
present on RaspberryPi 5.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5fdbfea7a5b2..5fcd9ae0d373 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -609,6 +609,7 @@ CONFIG_PINCTRL_QCM2290=y
 CONFIG_PINCTRL_QCS404=y
 CONFIG_PINCTRL_QDF2XXX=y
 CONFIG_PINCTRL_QDU1000=y
+CONFIG_PINCTRL_RP1=y
 CONFIG_PINCTRL_SA8775P=y
 CONFIG_PINCTRL_SC7180=y
 CONFIG_PINCTRL_SC7280=y
@@ -689,6 +690,7 @@ CONFIG_SENSORS_RASPBERRYPI_HWMON=m
 CONFIG_SENSORS_SL28CPLD=m
 CONFIG_SENSORS_INA2XX=m
 CONFIG_SENSORS_INA3221=m
+CONFIG_MISC_RP1=m
 CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
 CONFIG_CPU_THERMAL=y
 CONFIG_DEVFREQ_THERMAL=y
@@ -1270,6 +1272,7 @@ CONFIG_COMMON_CLK_CS2000_CP=y
 CONFIG_COMMON_CLK_FSL_SAI=y
 CONFIG_COMMON_CLK_S2MPS11=y
 CONFIG_COMMON_CLK_PWM=y
+CONFIG_COMMON_CLK_RP1=m
 CONFIG_COMMON_CLK_RS9_PCIE=y
 CONFIG_COMMON_CLK_VC3=y
 CONFIG_COMMON_CLK_VC5=y
-- 
2.35.3


