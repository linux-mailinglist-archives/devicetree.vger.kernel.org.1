Return-Path: <devicetree+bounces-222493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 45194BA98E1
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 16:26:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38BB8189D1B6
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 14:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1DC330C110;
	Mon, 29 Sep 2025 14:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gR9pNt1I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE3F3090D5
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 14:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759155926; cv=none; b=sBApLH9Yl5/TyqaBUT6CVWHakE06RVB/Z4n7xAqBmMcXy7JGtRCyGSu1C+oQVKbltImvhdez0dVRMRSFV+C0qK8akjfwa7kI1n76Y57vVENKR1f8JmYeC72iWwRHGI/y8fy4N9PlyVqNJSTG+sHOxGa2LapR19Hh8etVW/jHyj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759155926; c=relaxed/simple;
	bh=o0ADLZP20Gf+RaCUCo73PsEebUZu5lyI6twUNiTxrps=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qDi/sQrEU21XM2Bbrkvz0dfG+Nr4cvowP2K+3P9a9KFJZRkk//snv8lu4nlGwyoGMeMTHntCWYXwBFFwsIO7OGcEB9c8ffU0686v9ekN/Sx1wS0qtuFZ6k6XEOeXqjmYsPB7+O4tJ+t1ZruDQX0+PLWL65izmRrxxU/r1O7ZIMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gR9pNt1I; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-371e4858f74so31442421fa.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 07:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759155922; x=1759760722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CS1qvZ66jY4Y+/VjejeV3GAhiKWhtdvuL8aLYEGuxs0=;
        b=gR9pNt1ITyuqcnuBEy4UEjylBMgO6E68nyT55bh1pySUD5Vvb2J4Eh6t/p9qxmierF
         wHIZmBsicgXcqsTl8XjsVXvfalhLMQZhEhnVfvoc8Cx+J1R1MEkb3PP5V9BbpVQhJe8Z
         PG2XPTsLQPZ4MQoUdXFAxp2t/HMHoYfVs0DTTwjDNpoMhHQp232oSWUjZY5PGnerwZQQ
         AQDxECOUWLAeTAzHQn8Q0dCZn27y7UsWcy13hhxkB6KIoGKVtI5MeIQUNF32JA9r0EyD
         aH+t7GaeKWOA/8oOCvyEoQTGV4xGp1GJkCEWr6CTVwxnkLJo37n3cxWRwPXLM/xK6uvT
         UfWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759155922; x=1759760722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CS1qvZ66jY4Y+/VjejeV3GAhiKWhtdvuL8aLYEGuxs0=;
        b=NLU+w+csfAiLEVsg+HnJpEDU7NQdEQLuiEzB8iCZv6Y/IuH5EhBHccV6xjWF3G4tqD
         DKtoheeFOeDut7Hy3hrcVaeqHxU2SL94Oquj3he5jY8QD1x8wJDa/27dmbWSjx27ofY5
         Wm+SEWTlw+4JmiHrJLaIjvvM5Bmyu/Nl+r7JWEOyyG5lJWCrVkr4dgTAf9k2Us9R8z1t
         cJPkf11mrPYQN2W96CLNez7XaZtlK+utbgnVvyW5EuuUxmNWC3hlbKUQr2qRwP/PQz3a
         kgGJOQLNakh0pbIqdFnex9m2uVc12BX/RQa1rZ+jTcY6/ib2K6eyeF1Pc7r6HkkP8zhP
         swmw==
X-Forwarded-Encrypted: i=1; AJvYcCUZ6N9gTHHZvbjRc1BP5BOm8w+PqgyKa50rNCcZ9OVefkJFvntVk4rLCMKZr4GcDcCY+tF2qtUjR80m@vger.kernel.org
X-Gm-Message-State: AOJu0YyBgugja79PEa06Bp7NgyigkbhSXfUR3lkrwz0gOn9639EJ0L3t
	6+6To1U4zN0swq+N0decL6smUUhzvXst5ViXaEpix6vFDA96Zh6CO5Og
X-Gm-Gg: ASbGncuo+Y1C16AY4AZM22X0uEvV+lnil3lNoZ13KOHHd/Tg/JXwzIXtkRN8vDEBd4I
	T1183vJ6Rmy8jIqH0t4QDssN4KAKNdq4rUOYanpDwaZAbsvqzCC1iLcK+9kfJYOY9HnHTfSIEu2
	AMYiruG0A5ss8p5d4yKszHXzowlEsdoc1nPqmktyJdi9XLQi43y2X6PCWr4DFnz/vAfVFeCWPyq
	fjP276nzKdnoA8GEx+I0t85j+dIoe29/oXJB36ndXhoSO4EjJqjgkPc606J9DsZu1A7E4US2nk9
	80OgJLjFDUokMdH1+W1hZgjZOPYo5OBjwSjJC4XxGw+eNSauEBVStD19Hspw+02RObMp9GY7JFA
	FbVJuTdG8Dqps2zEcGzLNnn5W
X-Google-Smtp-Source: AGHT+IFG+Ih0xaj7zpJFsK+/+exH1aoBAWLVyYSD//n2Y4fEfbx51EUFKSvnwF0GU5y7LWmXyxKWTg==
X-Received: by 2002:a05:651c:1581:b0:372:91d2:f659 with SMTP id 38308e7fff4ca-372fa23164bmr2454131fa.3.1759155922087;
        Mon, 29 Sep 2025 07:25:22 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3728c23e6c1sm13201001fa.52.2025.09.29.07.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 07:25:21 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v1 3/8] ARM: tn7: adjust panel node
Date: Mon, 29 Sep 2025 17:24:49 +0300
Message-ID: <20250929142455.24883-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250929142455.24883-1-clamor95@gmail.com>
References: <20250929142455.24883-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adjust panel node in Tegra Note 7 according to the updated schema.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra114-tn7.dts | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/nvidia/tegra114-tn7.dts b/arch/arm/boot/dts/nvidia/tegra114-tn7.dts
index bfbdb345575a..75fbafb4a872 100644
--- a/arch/arm/boot/dts/nvidia/tegra114-tn7.dts
+++ b/arch/arm/boot/dts/nvidia/tegra114-tn7.dts
@@ -43,7 +43,9 @@ panel@0 {
 				compatible = "lg,ld070wx3-sl01";
 				reg = <0>;
 
-				power-supply = <&vdd_lcd>;
+				vdd-supply = <&avdd_lcd>;
+				vcc-supply = <&dvdd_lcd>;
+
 				backlight = <&backlight>;
 			};
 		};
@@ -101,11 +103,10 @@ smps45 {
 						regulator-boot-on;
 					};
 
-					smps6 {
+					avdd_lcd: smps6 {
 						regulator-name = "va-lcd-hv";
-						regulator-min-microvolt = <3000000>;
-						regulator-max-microvolt = <3000000>;
-						regulator-always-on;
+						regulator-min-microvolt = <3160000>;
+						regulator-max-microvolt = <3160000>;
 						regulator-boot-on;
 					};
 
@@ -325,7 +326,7 @@ lcd_bl_en: regulator-lcden {
 		regulator-boot-on;
 	};
 
-	vdd_lcd: regulator-lcd {
+	dvdd_lcd: regulator-lcd {
 		compatible = "regulator-fixed";
 		regulator-name = "VD_LCD_1V8";
 		regulator-min-microvolt = <1800000>;
-- 
2.48.1


