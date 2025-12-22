Return-Path: <devicetree+bounces-248919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D99BDCD6AB5
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 17:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 821A9301937A
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 16:30:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD47A3328ED;
	Mon, 22 Dec 2025 16:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pzxGsBaq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE3B3321B2
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 16:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766421040; cv=none; b=oqmBile5suhd+xG+HBbvlVnCnq+u9RXpJkm0ROsCRLV/ABFJvzOvYVgjyuATNmlzTkD8PZPzGXa0umPF9E0/Lrj5zMuC0v+NM43V9Yc1P1bQA8TdvIE9i6/O3AF0UeZ72CAnSDsGWDQDeqG8pQLrWtofhFx3KWfthNZvrAUAO/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766421040; c=relaxed/simple;
	bh=gIK455PpaZxVuvfXEfRmg3pjfE8OD78NBBkTr9I0h8k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A53sca/hsIACqjuq/Qv2+jCcV1ERZZvVNQ+6qXiyI4RdleoLpyQrl/p+aOGv6GGGnT0lJm8Ahr8DJXX8BNum2MdEoq/4+GXZpiE6LgztqEJa8nZwbee6+NToe4cKAmGzXQGOzVcwdVM4Sf6whiH54mIBCj3HpraBkRJjP4Ua3nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pzxGsBaq; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so23713335e9.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 08:30:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766421037; x=1767025837; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3XQM+4zgvXw282DuJseaia2aL/kiD6COjiN6mT8vpSk=;
        b=pzxGsBaqITxWx11xZOF8gGFErKWexFpbKRI/nMbKYQPZfBzTaY9CmbFwk4RlkSipaj
         ds+dA2pxV24R0vx8X1eAD4mOeHRfL5NdisGITp8C3glyg/+zuPdRA2NSG713JL78Clbc
         5vspDGeM2Hx2JY+FbI6SYFhxuIm+Voi0HhhYzzl9PmT+emHmrsmiL6ERAyr0KPEMDpJB
         pzE3nzMzwCsgNuoqxuYNwPLtkvHh5Uloze4rPWGdxnreWfwIYAHGE9IAqd4PpeXignJy
         J0K2VSJJRr20+HYNwbbv4nBEOGd/BkJ/U3hCWkGMc9xKyxzmIlxrAGHxVEhe9qA90qIP
         hmUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766421037; x=1767025837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3XQM+4zgvXw282DuJseaia2aL/kiD6COjiN6mT8vpSk=;
        b=i3vQ2o7d0drtoxbBMJACIEw13PrW6kMlItva/3SKjkgM8YWqvYflzJ4KH/YwqwqTK9
         HU/EgV7Z9uf+0kDAtbUIAEeOdVQxy3AfbXGBbPFFGPQwwTjdRRW72VpFTq274YffjfDD
         1gShnl9YVbqqrnmcCzxCtPhqAw2M12fT8Gyvbs5I1DrWrpzTRrdIOmt7TdD2QUEtur4T
         o5C8S/CT1lXm3xfotaic0OTlqNPkG8Nqze66ALC3cYyXtHkKUa49ctBCglMNVZJgZ0S+
         KWPnGlNReNGwbHrg+PxMIgbQPyo8cjwjVBI+qr2T3uWZ0DqCO82bPND4m8gmadIZil63
         2P7g==
X-Forwarded-Encrypted: i=1; AJvYcCX9P0KC76bxKCemdUYot1QXDfu0N5sq5cbMPStxDAJ0T4S5taMVX3kcPQP47DzFfWHZLxRPiZ4lRitm@vger.kernel.org
X-Gm-Message-State: AOJu0YyPxhyu/EVYJ4sLaCFQwbNVOrP//7dXIimuryMCNWOS6tPNE6Re
	MhLOa7ExIgnxSJA/706LyAw9FV05iWZ0Aqs6VdC1ruyKAx8muJppKd6zQzRWHVKmyEQ=
X-Gm-Gg: AY/fxX7wvEDOYz4lZRhDVp238+tAabuMxGRSu+B84DM2EEIof0jb1Bn4XzaGOZIbC8I
	0yIAvTnn6/2IzUilXhXBj4e1cIA8A3Gce0UcrlK+kaWBiiv5+LVvBaUtBg+E0Q1N2bnugtEnsvS
	klhgfYG10OK4PMihD9kjVpJSP9t+xoDOhviEs55k08fi8mRfuEQaaReNGFiInObcZl4Vpil4SnV
	/7wSvILM7mK5b0i/WPnFz6tenOA9q4MXz5K5/EvwOFJK5/M8N1xIZ1bzCEfHjZPExxKFEL5Emzx
	qhMZzVF+/x0wwO9xoU7qMur0yvJlKR6mNE6ciIs7+fywBEKt+fswG7mqzgnPufRRFEIEL4SeNxN
	kSuHU7CERWTpsaPF67ReogFJt+Rt0l3wcptdSEPwaSsFWhFCUR/UoODHlexlhu6vN79UJR3wv9D
	uxV1fX+Phfu8PkuDT1K1SO6zSy4YQeQMhCF9/6NvFK2XWcbGdK1aQv9baJsOJ1MnZt3Ogrho7Pl
	yg=
X-Google-Smtp-Source: AGHT+IHvRDRIoHQjA1rZCLMaSDTKsCyWp+0hB7b+F+L1wF0MQiyzngVj5PEvlpySW13JHDQ1ncylpg==
X-Received: by 2002:a05:600c:3b87:b0:477:aed0:f3fd with SMTP id 5b1f17b1804b1-47d1953b7b0mr130487085e9.8.1766421036654;
        Mon, 22 Dec 2025 08:30:36 -0800 (PST)
Received: from ta2.c.googlers.com (62.221.76.34.bc.googleusercontent.com. [34.76.221.62])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eaa4749sm23071258f8f.37.2025.12.22.08.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 08:30:36 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Mon, 22 Dec 2025 16:30:09 +0000
Subject: [PATCH v4 5/5] arm64: dts: exynos: gs101: add OTP node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-gs101-chipid-v4-5-aa8e20ce7bb3@linaro.org>
References: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
In-Reply-To: <20251222-gs101-chipid-v4-0-aa8e20ce7bb3@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, semen.protsenko@linaro.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766421032; l=992;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=gIK455PpaZxVuvfXEfRmg3pjfE8OD78NBBkTr9I0h8k=;
 b=Q9f7t/RCDmUJ75u/2IeLiK62QNaGafJ83CtoJmOgrtY4/ERxZXfJ3qSw/mnSIdVKgntbdJN2k
 VlgZHF4bS6DBaN5xNMz0xRTYlAR8/L3MPQHerwTH77W0JbgdWIwFRme
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the OTP controller node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 9b38c2248016aa65293c0abf9ccaf20857d89693..e078344c9e3e558aa5d58845d0fa2849832b857b 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -571,6 +571,14 @@ soc: soc@0 {
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x0 0x40000000>;
 
+		efuse@10000000 {
+			compatible = "google,gs101-otp";
+			reg = <0x10000000 0xf084>;
+			clocks = <&cmu_misc CLK_GOUT_MISC_OTP_CON_TOP_PCLK>;
+			clock-names = "pclk";
+			interrupts = <GIC_SPI 752 IRQ_TYPE_LEVEL_HIGH 0>;
+		};
+
 		cmu_misc: clock-controller@10010000 {
 			compatible = "google,gs101-cmu-misc";
 			reg = <0x10010000 0x10000>;

-- 
2.52.0.322.g1dd061c0dc-goog


