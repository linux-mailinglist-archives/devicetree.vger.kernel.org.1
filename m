Return-Path: <devicetree+bounces-63904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DD18B6EC3
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 11:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30E28B20D98
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 09:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ED0C129A73;
	Tue, 30 Apr 2024 09:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ltkFyhT9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B46A1292CF
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 09:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714470591; cv=none; b=UwWPocxB3loPo0e7ds0ahgh48p5i7IrUJU3ew3lGp1awQ43O31srJKT1D03u6smUF6WqZ9CPwwdYceFE/0L34vvhphJnHD2DDRUz4+uHHqYu58UXXrf8RaYXZEO+kisxaVVDsHdALWlaHBSi1/DLzbR3PRKuLhH1IhYQkCKDjjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714470591; c=relaxed/simple;
	bh=OHbOYwGssa/uRbe/4TDCDGAgML0a+7L1EyAmdQh+g64=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k0ICnyuOVdADuhlZlPUGnNN8nClcho/xUOQghB3SdeSNiU65WqnRBFk0BB/CvJdpyNSjrmRz8z/jEhau3sIZsZb74hliuXeYPxKXL4xsDtTDtoQCc6xIMB/ovv2dJ2bqjQvUMbpxsajlYRyyOTy5xcO4Q+4kIafpg9AizE+Keiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ltkFyhT9; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-56e1bbdb362so5863506a12.1
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 02:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714470588; x=1715075388; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RQWtsOUn4uiQZnL3yK4nvk33ev/xiP7OrIVV8S/1ztQ=;
        b=ltkFyhT95nj8pO9wThMZEQvHEmTz3RyQLK5nrn8dRt+SS0gP1UgWc6gpxKkinKY+nA
         lWH1Z39yFULrLtpP0Xb1/+bQRByATFr1b8MM4LftuP2BLHsAS70fGHYcVlL1cyoq3slE
         ffNE+twrLNx8FzBvmwY0D1KSh/THkKklprWHWMzdShLLGMl/cODIsBxXUsMShOSs7OOa
         MEYPMSxM5UV4L2JyJA6CYDFNgEduw0YVDm4XJhYxdIF7kSyBUIQG1OqHgeojYbDuRUHR
         1GOv96Hm4iBqnMpTzkEdBE+uaRhd0XXl86j8KGW588HccyAAPaDsj5W4ks32pNytxA7Q
         gbRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714470588; x=1715075388;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RQWtsOUn4uiQZnL3yK4nvk33ev/xiP7OrIVV8S/1ztQ=;
        b=oplEq3keo1gfEK2hxPG6ppv77lp56YHn5Ieiae95LK5JjiPmMZ9tAiGBJdHvEjY2yy
         9uwpbv9DD3OWj4HqvUTrzCXfnXzibXS3XUL8ssN03ijVr2S4OmA3iO6GE18gYgUW6VJa
         yL6Z9lh2OTCwXGhbi9guhLBDvaijE1TJDCaJyatTCBOubLOlH2iXNWa2D1i5nrqbq8e8
         Q4oq0UcaV4/mfy8q1fC6JErYpTv588VdEWj2qE1sTTTbWrYl9aNJ+36pxau2BeTURXFV
         vNiUCi0hioE6d5Clsj5CPyLf8V80r/DiuWt2FoLjKzCO6VbB0OBaPYxbIqBHXZT3o1bU
         smSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLK1s4Pjn0bWIwzxgQX66Jjen85pJfkwDEhFSNdU7y3r8QCAapXkgU7uKUd0Mpo4Gl4z3QerDM7tB/XO8zHRPod+VDn79v3SAPGA==
X-Gm-Message-State: AOJu0YwPOH/wbs9VYFUawz+Tqz/5VzcvQLH/x5h9xvVpP9zlianjb40E
	x0xSYzgJhjG4rpZlspHXNrdf9VYA+IJnYi5naoLVluMmff/kOGdDKv/xP8PSf3Q=
X-Google-Smtp-Source: AGHT+IEoom4Vqr7lbv//R3RxM/1laAb6TlYrC1ySF0XtZVJmwN8LfDJIm9U7jADH3cDQk5w64A0ZoQ==
X-Received: by 2002:a17:906:1416:b0:a58:7304:9cd6 with SMTP id p22-20020a170906141600b00a5873049cd6mr11074938ejc.24.1714470588009;
        Tue, 30 Apr 2024 02:49:48 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id dk21-20020a170907941500b00a55aee4bf74sm10981024ejc.79.2024.04.30.02.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 02:49:47 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 30 Apr 2024 10:49:46 +0100
Subject: [PATCH v2 1/4] arm64: dts: exynos: gs101: specify bus clock for
 pinctrl (far) alive
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240430-samsung-pinctrl-busclock-dts-v2-1-14fc988139dd@linaro.org>
References: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
In-Reply-To: <20240430-samsung-pinctrl-busclock-dts-v2-0-14fc988139dd@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

This bus clock is needed for pinctrl register access to work. Add it.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index e3b068c1a2c1..f2c7c2a4ce1c 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1348,6 +1348,8 @@ pmu_system_controller: system-controller@17460000 {
 		pinctrl_gpio_alive: pinctrl@174d0000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x174d0000 0x00001000>;
+			clocks = <&cmu_apm CLK_GOUT_APM_APBIF_GPIO_ALIVE_PCLK>;
+			clock-names = "pclk";
 
 			wakeup-interrupt-controller {
 				compatible = "google,gs101-wakeup-eint",
@@ -1359,6 +1361,8 @@ wakeup-interrupt-controller {
 		pinctrl_far_alive: pinctrl@174e0000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x174e0000 0x00001000>;
+			clocks = <&cmu_apm CLK_GOUT_APM_APBIF_GPIO_FAR_ALIVE_PCLK>;
+			clock-names = "pclk";
 
 			wakeup-interrupt-controller {
 				compatible = "google,gs101-wakeup-eint",

-- 
2.44.0.769.g3c40516874-goog


