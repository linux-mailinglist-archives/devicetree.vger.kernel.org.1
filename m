Return-Path: <devicetree+bounces-131406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 779299F312E
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 14:07:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE3FE7A19D5
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 135E2205E36;
	Mon, 16 Dec 2024 13:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iU24nqoe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E572054F3
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 13:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734354393; cv=none; b=YbERKMYlsKbwbm2x9hQ2ApeA2kHcX70FKahbUFmRTszU1UHHWb/KktSCI94N/0/N8ma701GFlGyQyw82XowNiBGAdKBdCNkEIfk2K7M8I0FHjrkx4FbadgRSzYnc5Hdptb1Rv6IaCsdVns03fiIOxC9F+cUlPgFA6bV/Ri6G82M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734354393; c=relaxed/simple;
	bh=sP9kaHRW7Lr1yZBGouXV8BgWfQ6bbZJSUKtXme/Z71U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GWKI0j+FW8lXwwB3lkI2et1PLKPIN2TZ8Tbb1LzEnFOT7a51teQsm5SUQUagJOscp3CsqwmafOFm8Eov46KtL3tN47ha5QcaSEkzz8HgOyL4AVcXdEIivxMewpgCzDPpgS0Q+0EJN0++9yorgVNkFQzIPCdPNYB1oSJrj49/ks0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iU24nqoe; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a9a0ec0a94fso632327466b.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 05:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734354388; x=1734959188; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0iXYAffnZPGtECXS58BWfoA0BdRGwpVmbASDvyhm7ws=;
        b=iU24nqoeuwIlQ1vAbTYD21Z6wuPWa6EdRzNKTtpAxkF454x7g/lKX/pdywKUYQvzq3
         NKcGxKglqVchc6lbxWG1gOc2N9vTC1N8kiIoGJfdDtLZYjbBViCYsW9guyn2n8Kp8Cc4
         3EpoC45YgKMYwyRWHp1MCgUK+J/JRG7vvXLxZcoCoVstnGreWFmw+dYuV4SGGfX3pvGK
         Pr/XhH9ovuEd+WsdeOUafb7+ILdEZQHGYCe6cdSSa0YSi9q9s+Q9HIjCRMWS582C24Hl
         V02FvxRq03Fb1p+d3l4968VZEfWK9h11U9qlObiWJG8zuakCv6H8fZ4/huhm0a+5cKFp
         ipBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734354388; x=1734959188;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0iXYAffnZPGtECXS58BWfoA0BdRGwpVmbASDvyhm7ws=;
        b=P/w/5RwE3EQK2ArsuMa5TNMDKZ9ajlkQpra6JmU70aUNwhLUr0QLDf8fELYqgMctup
         Olxkg3BFaX15Fyc6eQLTF8SJvFOU4wqoIHuQ3hH7+J6Vp4j7hi8cCeEvdtK70yf6/5v5
         mGJgi4AC+JCXXKtCeQxwgLuf4f4BzCxgdZdyneaFvi0kUNrerylDgotmMjqbLhChMotv
         3NI2RbU6Sg94OAW5RppMvieTOMqd/hQpkU55850YpBC97+ZHph3efvmHrmLmE9ox2ijb
         Vka+1eM7+VtGv0E1G+e6hEzj8Gxcno9ylg+mWJ08m5VkHBAcj6s6kjX3iLtZ6tjjIg8K
         ch0A==
X-Forwarded-Encrypted: i=1; AJvYcCXMiitSoQLnOBiBfog8ecUYwDRbmdwzM0s2D/AV09CWkc17bV6ziA2h36dMOBbhhJGWf/FruvEYNZeh@vger.kernel.org
X-Gm-Message-State: AOJu0YwKQBWjsK9/C4s/uCKbr9NDYEBYR8X0LaubjswLAZiwU9k7OpHs
	v3SiqJjFPmT/aVTFX6BQSRoCG6MbDU1EHSQVRgM4ZXq6ADOTBbiQlC7fhIcvyMA=
X-Gm-Gg: ASbGncvIqYKq9+7JnZIPXw1jWOWfZA9ttHbQBvVGbL+/3J24//xjvOUTrk4kkxEkbXL
	hBx0VOvUcKAOnD62WTEH+XkvOECZHChE1V2nYbe+1VQoZzIPsBj8n/GwLyLH4oh/u0iG32ZzspJ
	UYQasqNsFKSW+aTbdVyYU6QrLgOhBJWA8BgINohDvTJqK+Wf8shLDAGhEBizUDj/96gmRuqEJii
	dO9og4AW2ukxoG6ieaf+wIsLrwoR9BVrAeU7vbDCX8EaytG4ujgRy9XPzkGJl6k70fhgej/Vh7l
	SHdDRL+oCDU+D/2fqfSw5FXkyUP///rA9t9OV3CA
X-Google-Smtp-Source: AGHT+IHmRvbKYFM2gzJ/maU3pCLS3k+De0vwQVUzRJ/k1xRFMah4EErhor43z4R/cOK2YTYFrzuA+g==
X-Received: by 2002:a17:907:86a4:b0:aa6:2bba:a1f9 with SMTP id a640c23a62f3a-aab77eda8fdmr1112929566b.59.1734354387511;
        Mon, 16 Dec 2024 05:06:27 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab960681dbsm326648666b.52.2024.12.16.05.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 05:06:27 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 16 Dec 2024 13:06:27 +0000
Subject: [PATCH 2/4] arm64: dts: exynos: gs101-oriole: configure
 simple-framebuffer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241216-gs101-simplefb-v1-2-8ccad1830281@linaro.org>
References: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org>
In-Reply-To: <20241216-gs101-simplefb-v1-0-8ccad1830281@linaro.org>
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
 arch/arm64/boot/dts/exynos/google/gs101-oriole.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index e58881c61d53..4e1625e3fbb4 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -23,9 +23,23 @@ aliases {
 	};
 
 	chosen {
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges;
+
 		/* Bootloader expects bootargs specified otherwise it crashes */
 		bootargs = "";
 		stdout-path = &serial_0;
+
+		/* Use display framebuffer as setup by bootloader */
+		framebuffer0: framebuffer@fac00000 {
+			compatible = "simple-framebuffer";
+			reg = <0x0 0xfac00000 (1080 * 2400 * 4)>;
+			width = <1080>;
+			height = <2400>;
+			stride = <(1080 * 4)>;
+			format = "a8r8g8b8";
+		};
 	};
 
 	gpio-keys {
@@ -69,6 +83,13 @@ ufs_0_fixed_vcc_reg: regulator-1 {
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
2.47.1.613.gc27f4b7a9f-goog


