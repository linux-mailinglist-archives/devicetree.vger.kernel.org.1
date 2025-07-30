Return-Path: <devicetree+bounces-200876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 78012B16726
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 21:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 868D37B7F09
	for <lists+devicetree@lfdr.de>; Wed, 30 Jul 2025 19:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2315721B8F6;
	Wed, 30 Jul 2025 19:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X7aq8exH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D45A21129D
	for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 19:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753905188; cv=none; b=JVrW5pLP2y2EFLsRgFOF8GveWdGDrEc2El5QaUTh8+C+0QJiA1ka4Dvpy/8sxRtc9wU+FqHK0rQAgrxgP9NO6xQsyL6DUIvF/v1D1G0AGRkLHLoXg66tLz6msDqASZbD3haRbXV5mbEtWkG9QCUVYttcwlYcFlulamjLZ0le+/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753905188; c=relaxed/simple;
	bh=zXzxHIWyJeKJO/mkAbjOqDhTJEb6z28ihri+K7bnSjs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BPe9TLNnylNtuvkWXlUs0mZ3WclepkN/5UkWAj3HhY89oMc10AXDP4gWNavTdhufglAA25tjoV5wfvUB/s2lBxG9FpL8FMyvFbRh/yViOZFiujkc4VMa4DA8nVCdOjvidySvbJbF+JXYk94Op2J2Gs4NDHJI0ltdS7Lvprs5eis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X7aq8exH; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3b77673fd78so115594f8f.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jul 2025 12:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753905184; x=1754509984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0jXme2m9WwXUPYkqUyJg8c9Omz6UIdvrbWwmPeVySRw=;
        b=X7aq8exHZKzAh7G0x/qdrwY+IgXVuRc9a4QVUbNLDeiyUcbK3kU+7PM6u1AFSsq274
         7NM7h1EiIZ+2tJ/FxME5ar6JhB9Q5TT8ZEPG3Mcrh5/rpEnNwpGbqycm+5/QxO0IS9rq
         eK8o7YBAcVM7Xq5kJlebIAv/rMQWTULdYLJc46pz65t+O8QPZZYvioRuoROQRH/xvFwr
         6wXhC0tQUpBcDKK/ocltkUCgKf5g0X+tELtrNpaEHymOzfrYr8NilsipFfLrwDeA1nis
         NPAHU3a3VoGjk8yA6+7uiv3ET3jF4aGRO+swtZHS7Ro9irwKPVEkZEWZwa9MqCWnBwFd
         qNSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753905184; x=1754509984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0jXme2m9WwXUPYkqUyJg8c9Omz6UIdvrbWwmPeVySRw=;
        b=InSLfR7/E/dMdV13tiANjb5DUQkXH4OL28nsK009a2S+7cDzJ7rq2jIFQTt56Ga97c
         8Y8X98o1E74aEaidJ6ufkXF5iVwsv99zY8XeuKKZ9tFHQoFzbPsw73znTqKqaCjB3x0m
         6iMrgS9+vwvwUmBQ5Uha03IWQz2cazNotER3KCasGSXhkcYGCTvIfayRsdiavL70GtES
         FSiYBUsuhb8wCV2PI/23L6Kx2oYJp4T69cPWESMFb4AMFE70BUhN5gci53xJOJoKm331
         RDHlH1j5Kp902Hjb8Vg2bQvmwesrHPW+Y4DS2rUV1vEPv+wTzNQfkuGlqGUGDL0UiAL1
         izXw==
X-Forwarded-Encrypted: i=1; AJvYcCUGbRTkRaO85HEFxipMriRdmnsDifaTAtegIfhFYT+o6r3CDlhlYdTwwffz9LaX0RgF8dzfnWYEVeFT@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl00/r2D0EGCt3bZF/orU1eBgv5HhiM9GUhPF8nc+73biYPDV/
	QnXnVK7pw7wnqdANdd1CwWFXiLN3rF+2VUG7CvN5Fdtw/2ZviXlxNVDdyNhuXXvLtMg=
X-Gm-Gg: ASbGncspuDkNu49/Ta5hXpNzNGznDGPrK6B9e38e123vKXJ114PUeBwk2j04FapNTNW
	aCeYNMrWQRj05e9g6Gs3BtfFvXvct/zvqoopODI5kGuufI+RhHiBcONKaepQ+6jHd9oFOONuZpl
	E8hQ0yln7ZD/6ChTPwX1F5g9P/zCu5RQ2hov78mCNqeIeI2IEEEJWHGaiMVGTNyCrBqvyHqUj4A
	ZfauZFsxmliCY5FYtgzdxTs9OkyK24ySaN0sumyMTWKq/au6bmvd/LOWcK/r005Ry7B8usAuvSL
	ZNSgjeGlJn2t4dVCl6JOeUY7i0JcOYFgrMqSOpOfKoycpyUTa+imZAkXP9lhRjZifGyFKnQ8ALy
	N47D/v+c8Tcm+lljmrolugI8RaHzc4XytcEsFfZcb7J05vlFj
X-Google-Smtp-Source: AGHT+IFtSLxvTO7Zv8ZiaAd380UqEdsX3oGvM4YuKiKowd0BLbRk/TMTPqH8Tyy/IqqXhQ9v3ow3cw==
X-Received: by 2002:a05:6000:144c:b0:3b7:9a5f:103f with SMTP id ffacd0b85a97d-3b79a5f10b2mr1077841f8f.4.1753905183837;
        Wed, 30 Jul 2025 12:53:03 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b78b26a4dcsm9556193f8f.32.2025.07.30.12.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 12:53:03 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: mbrugger@suse.com,
	chester62515@gmail.com,
	ghennadi.procopciuc@oss.nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: s32@nxp.com,
	kernel@pengutronix.de,
	festevam@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>,
	Thomas Fossati <thomas.fossati@linaro.org>
Subject: [PATCH 2/8] arm64: dts: s32g274-rd2: Enable the STM timers
Date: Wed, 30 Jul 2025 21:50:15 +0200
Message-ID: <20250730195022.449894-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250730195022.449894-1-daniel.lezcano@linaro.org>
References: <20250730195022.449894-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the timers STM0 -> STM3 on the s32g274-rd2

The platform has 4 CPUs and the Linux STM timer driver is per
CPU. Enable 4 timers which will be used, other timers are useless for
the Linux kernel and there is no benefit to enable them.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
Cc: Thomas Fossati <thomas.fossati@linaro.org>
---
 arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
index b5ba51696f43..505776d19151 100644
--- a/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
+++ b/arch/arm64/boot/dts/freescale/s32g274a-rdb2.dts
@@ -40,6 +40,22 @@ &uart1 {
 	status = "okay";
 };
 
+&stm0 {
+	status = "okay";
+};
+
+&stm1 {
+	status = "okay";
+};
+
+&stm2 {
+	status = "okay";
+};
+
+&stm3 {
+	status = "okay";
+};
+
 &usdhc0 {
 	pinctrl-names = "default", "state_100mhz", "state_200mhz";
 	pinctrl-0 = <&pinctrl_usdhc0>;
-- 
2.43.0


