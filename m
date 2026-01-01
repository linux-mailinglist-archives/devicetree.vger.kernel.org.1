Return-Path: <devicetree+bounces-250912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7090CCECE91
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:08:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A9DA307EF45
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5313D287507;
	Thu,  1 Jan 2026 09:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H1cu3A4W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38644284B25
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258205; cv=none; b=jzOXH6sByHZyknoz1McJ7PVUCliOime+sQjCZVlCJZEyh3CGiOcDNbnjGEaPX7PyQmLL6arizZhzMqdAjgijVVBcRawfzVrsMlVmdnf+8VqE8EYh3qULW7MIkl5lo8KUK1M34+GAIul/2FHID8tGYpIv2nf/g7iR8tYlmUvbvsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258205; c=relaxed/simple;
	bh=xASpZevNHcaVzYbv63kfOr+Ypk6TFwui56ogxDHDMcc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PrF5T1fOWnMRJ0ozmCpm5P1iTRkzQB1WiTMopBba/AIVUrkyp9fv7Nyh/GghEwasR2JNLDkblh3Zom7zhkFpiON2HbVQWCTMYm7rSjqohzdz6LK8O3O758lIAyhI8cuPxkNbydg0Z2ATcYwriLdE8HXs6GOsVSfiQXxXIKKRdI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H1cu3A4W; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7ade456b6abso9172931b3a.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258202; x=1767863002; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G5cND4kPk2t5DX6paIOqq4zpW3qf1DLe+UW4i1yJRWA=;
        b=H1cu3A4W8dxEp6oL9s1O1JbB2dus7ag68wobZb2/v1ttlpgUhobGPUyA15WiqR2r4u
         QZxE1oMg6Vvw75Kfqse/Mn5xKv+sjIXA5tWFpYhGIfv/I0CikTkDoC+fZDreVKP5HOpP
         kZmYb31BapF+C3fUzKC+7tGhmr3zzX2MR4/Ag6T7Xpm/7yva1HHiJoaMPDnmvcF4Iwev
         WSNHYhnw+9MXLVYGupgH47GuNSlh9W+w4DWMst95BXJlAaS8yZ8v1oNoGnxUhbwahra8
         S/7b/fIvTrmx4eR/I250nPgonFcPk4jeE3AOy2xgnKj6/AMMmpSRzIHfKuxIe/Zg8kMC
         WW9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258202; x=1767863002;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G5cND4kPk2t5DX6paIOqq4zpW3qf1DLe+UW4i1yJRWA=;
        b=d8o8tYbYOyPzHug/CW+uoQKNT3KDfw3jVSpcAY0+5ZpBSrCqawCZ3Sw5Hs+wjkzj1/
         Bsbj4e1YHaLzan5NV3pgPyWG0veK5Iuk1ZOvvuJ/xzZG3nj+vw/7xeeDTGh8hibEuYhs
         1ZHY5v/yxnWwXbuAa1yEIRQUVViLg+8vLBT1jlYDl2irzoIld0HtdUTDO1kkU/lL+p2o
         MmvSLDp2cKcNYjFXysYoGh9ChWjfx5HkfrXtXufa0s0RFY8Xd4t8B/DawMAf5MHhkVg7
         FErvbfzAzGvF8jSIKgl57qKAZK6s2VotRRM0v8Y9tse41PgCYXYhgbEvC8PV5d/0EUX/
         hTiA==
X-Forwarded-Encrypted: i=1; AJvYcCWvk4h5IgOJARm8Rq72miXqc39qsFhBgx0z8R49SEIQg3s2+DQLcjsPBW2/0CNO1LSguxY5l+CjnBTk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzh1jM8FZd0u9JKk7C2oP5ivc7fujQIOVqAJEFvpJ6ZZCKQcAFe
	T7iZvkLf2t42jBAKqIqL6rsRFELBIOJwzyKuT7Le8Lg0jeSJwApC7vBV
X-Gm-Gg: AY/fxX56Iktzuy+/0XvJpl9XQ3D6P+urc9yojnnm4By3tUf7YB1JR3Tzk/Xx9ihL1EC
	wNaVj5tgiXqtnwtT6Qm5Lgb6qoTmmU4rs/34MgbOEwv+8ME1ykzkO9dIjVNGVNLj3LwFAOwUb36
	grblLKvAmQx5L/Uclctq/oJhdxwQ73gtHLbGf13WadsoZzTyb+KdUKmAw3H44JkEZzlFFb8NGLH
	QE9SSSqbsiOTuJDSF94ajnaXx/NeBbYpKYKkq30wKiFYnIjRm2asPVJrEAbQ4zMsh11py3OmMjz
	8A5a1TTuEHQAOjoFvcq1efWMpkQeKiTg9hdXYRrrkp91qBlSF2dKtdxDlpTs/X6nPgCxdPKENaf
	/DjDCZDwuydzwdtgq90loE5/4m3oiCu1FpAILTX5Y0B67DQoibhPLfJ6JwPieZfKduVj3PWoh93
	GtwZgOeu3eEsoR
X-Google-Smtp-Source: AGHT+IEmHAcWqnpliva3OuZtHZc4HbdIYtIJNUaBfJ0BdwokwtWmkHAr4ksqGBIwXlgYOW6W79PJfg==
X-Received: by 2002:a05:6a00:6087:b0:7e8:4471:8d4 with SMTP id d2e1a72fcca58-7ff66872056mr35885583b3a.53.1767258202305;
        Thu, 01 Jan 2026 01:03:22 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:03:21 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:50 +0800
Subject: [PATCH v10 14/21] arm64: dts: apple: t7000: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-14-48812c529ffc@gmail.com>
References: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
In-Reply-To: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=894; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=xASpZevNHcaVzYbv63kfOr+Ypk6TFwui56ogxDHDMcc=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgo4ZMseGjapzGmuJSYJ6+DsYX+adysnVIeG
 8wqHU2nL5qJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4KAAKCRABygi3psUI
 JJQXD/9S0XPtF0kKMXxI/Q1LjACD3cbRZIY7t5AFolcJGp/jRItTNlBaDdLEbVOMPeEFRwkfZGl
 y/Gcp7mY/nlXElyZHrT1KIq9A1lQCQV8VF77jZIa9dmR7iWIhHdRr9WWzwi2ytX/T6NrdIkXCaf
 5wK9E3IFiaKNVRy2AYIw9dqbHy4DSuf8t8KYgAgnpdxis7MXLLas2ticMEGBg7lM4t9exuez/e5
 SmwiDxEYrhDAeaAkX66as039lAo8P8cCJovbLlbl9ULGIFN4HsyF2I/x/oKKRCgO+ZynQqASVEg
 AXYs/6qVorx1emzksduBpbNOZIcDHf6HhlVJyO6IGpzzs/F2rACsyObHX+Ik3vZx/3m8JvVetYz
 YLYTpgt12HqC3lVj+XUT774nqmD4uaaZ6uMf+e+hr8oasL+GEoGEQurvFGRTSLGCwjFiMT4X66u
 pgZo5c/rAwrji+CTfKCNIat6nwvXSfTI7Nvu5+IgTtsvodPxxKms27+eHFGr0AF0rsmQqgaHFul
 KHvqbOoCCgHYB+8vlmkBkmhHRIHZTLuxcpMHILBivcAs1Hmo5BY+csQwIVjxe3czOQZ/S/Z4Ruw
 H/OAgJskUPMX0VsiGeshmsFY9tTD+sn1qy5A8Ej/EFUxBmoIssfosdl2t1tbREfK0fSg+46FP0T
 iTyEsqwcmghVyLQ==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A8 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t7000.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t7000.dtsi b/arch/arm64/boot/dts/apple/t7000.dtsi
index 0342455d344474d34f7924a089bf5f5915e68d55..a416cf8204173d4e45eb7baab42302eefd0e55ab 100644
--- a/arch/arm64/boot/dts/apple/t7000.dtsi
+++ b/arch/arm64/boot/dts/apple/t7000.dtsi
@@ -282,6 +282,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,typhoon-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 75 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 78 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "t7000-pmgr.dtsi"

-- 
2.52.0


