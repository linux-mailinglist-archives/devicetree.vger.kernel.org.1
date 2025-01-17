Return-Path: <devicetree+bounces-139367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B08E7A15559
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 18:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A4158167678
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 17:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 170F71A0BFE;
	Fri, 17 Jan 2025 17:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ky2a9uqi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490D519F47E
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 17:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737133802; cv=none; b=GCUlDXYQ9N3cyYgTCCDKlwxXu6YnKDAULdW8F4KTwfcgozSQnZA8gTCrdid2XHooQjd0aZf4lDHslasJUipU0BZzhPB8z8v3r3svwq2KvV/IWDuT1QRuwJZaz7+VaCZJL+qkSptq0wh3BSr+tjqJwAs4tUgYUedPBetwnfsG8n4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737133802; c=relaxed/simple;
	bh=rQoO8RKg4WTsMiIUSVBxqtIekUiWXYwM6p1WeORMqYA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TCVimsGaR+/4wj+XfzCiSI68RwaWbC+ij1TXbrTYavz/d7zUWDVuoq8eZQbS+1OGH3ePmnc4CMhQjdZf+DLTB5MXm3yaiXAMC33aqnt+jdymFXt5FduKl/Qlf9sR6otRTdF1X6PwGnVjB7+UBaMMPh+y/NYL9r3s0wZXLYtd4bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ky2a9uqi; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ab2c9b8aecaso361699066b.0
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 09:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737133798; x=1737738598; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4mvgaOsWInJVnUwy76tgQ13g6HWxVD9Bi2miL5uycY0=;
        b=Ky2a9uqie95Lxjvf4lZPIKCb7edIylkZ4z+Y/l5FYi2rc2vU3nIZXo6aIZOGBQztSo
         /leLaAZ79/FYMjd1+o7ETZhsJe1SLbT++CTirVT9uB8Rky4LAsSfFo60umLj4OtWbrrm
         Rhnonmtn/fYca0EcMpWVqdMOfSBLZWn5bweaxosfROB+97LO4DyY3JKUgb3RmGqsPSLo
         c7e8Wg/vYvcMx1malEtRc/f1/XYE6CosYRv5dou2WpJJmzEm6xd4PdCIMtPUhppBMfNE
         1m/n08J1NSmnBLlt7k4ez7n5oxzMqHoz4aSWjhA7rB1FLWpc41qwLt+srilGA8ClDBQr
         LnFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737133798; x=1737738598;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4mvgaOsWInJVnUwy76tgQ13g6HWxVD9Bi2miL5uycY0=;
        b=as1ncjVivnrirC3s0QpDT/voIqitSVyOQwpbCSdOa8iGpfgrDGLqrP+hHuZyeeqjPI
         9o9cR0i6lgpoNKgaqPj93ic0CUYh3H1xfHdfpwz8JuU548AygNxxp1jw6PNEG7ULS4bY
         TGv8Zk69xsMaYsHziMvrs/ExxKIGJxDVqs64+g0mD10T+klcvJ6y8FQ9zgNnFH0/ezc6
         dhXgAjOxDctZmmruOfTP+jQrsmfKE9XsE7PCqbNNBOLeeZiSLknGPwMiUf70EnYZl+wl
         Yv84wCEm3ifSvdaEDgthBoUkQPDv/ZYRCJMOZAfTspAyEH8czAM6ZlwzpN+3bYiTBvM+
         Uh0A==
X-Forwarded-Encrypted: i=1; AJvYcCXkhcENGYlS6PyUOds3EkTjXobAZ+0njbJ6OyM9pSTLZdCJtKbWIVd+tZpn1LqqV86fX1RsMC4MDer6@vger.kernel.org
X-Gm-Message-State: AOJu0YzV7qInWMoSa/6+1gm6hKV8cxkL/i0EXF6G8A2DkFYsLjUnEwFm
	lkltRlv3l9m4V6Z6PN/DADuyzZ4O8xQ377GCUqwZtDZ8N2+AckE8V+sbgFfRHqs=
X-Gm-Gg: ASbGncsaMA3tA9MiC+dCEBIX+w0Rb6cbSADevqbbX+1ODjZKIxLkVe+CjVohF47elEs
	wy6A/1g6XbhH9bJmg44+CsubLVmRG/DbH2+rzvCm4p9OWqsZi6IqHDDiu370Z4HkXyYG+XF8X0p
	qLWyCTk3kxwdEs1KhkcmLwfiMbFo4M/aWSIvYACZAGO0kLBam3SIS+tOQE9BksYKrywf45TbCxk
	mORqtWjmnv43aaCMMBmtSmhZ0O6nAJqvT11eg+aNA/4dxzjra+LnQTglpQMg9wh9pis3MnpI/Dg
	r9+0WwXuHqUX+vERZh2Roh1FJmOKv4EZt/OZ+t8F
X-Google-Smtp-Source: AGHT+IHFyQYdgqGM488OpiNHw7vcW4pRUxUqyprfrU9ASQpRrjBWSc8OuKo4zMQb49X3a2Y83Biqaw==
X-Received: by 2002:a17:907:7296:b0:ab3:4c32:aa6c with SMTP id a640c23a62f3a-ab38b10cfa4mr328196666b.20.1737133798469;
        Fri, 17 Jan 2025 09:09:58 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384f87065sm199197966b.133.2025.01.17.09.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 09:09:58 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 17 Jan 2025 17:09:55 +0000
Subject: [PATCH v4 2/4] arm64: dts: exynos: gs101-oriole: configure
 simple-framebuffer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250117-gs101-simplefb-v4-2-a5b90ca2f917@linaro.org>
References: <20250117-gs101-simplefb-v4-0-a5b90ca2f917@linaro.org>
In-Reply-To: <20250117-gs101-simplefb-v4-0-a5b90ca2f917@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

The bootloader configures the display hardware for a framebuffer at the
given address, let's add a simple-framebuffer node here until we get a
proper DRM driver.

This has several benefits since it's an OLED display:
* energy consumption goes down significantly, as it changes from white
  (as left by bootloader) to black (linux console), and we generally
  don't run out of battery anymore when plugged into a USB port
* less of a burn-in effect I assume
* phone stays cooler due to reduced energy consumption by display

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v3:
- replace property 'reg' with 'memory-region' and related properties to
  reduce churn in preparation for Pixel 6Pro support
- drop tags due to that
---
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index e58881c61d53..d3dd411c9bd0 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -26,6 +26,16 @@ chosen {
 		/* Bootloader expects bootargs specified otherwise it crashes */
 		bootargs = "";
 		stdout-path = &serial_0;
+
+		/* Use display framebuffer as setup by bootloader */
+		framebuffer0: framebuffer-0 {
+			compatible = "simple-framebuffer";
+			memory-region = <&cont_splash_mem>;
+			width = <1080>;
+			height = <2400>;
+			stride = <(1080 * 4)>;
+			format = "a8r8g8b8";
+		};
 	};
 
 	gpio-keys {
@@ -69,6 +79,13 @@ ufs_0_fixed_vcc_reg: regulator-1 {
 		regulator-boot-on;
 		enable-active-high;
 	};
+
+	reserved-memory {
+		cont_splash_mem: splash@fac00000 {
+			reg = <0x0 0xfac00000 (1080 * 2400 * 4)>;
+			no-map;
+		};
+	};
 };
 
 &ext_24_5m {

-- 
2.48.0.rc2.279.g1de40edade-goog


