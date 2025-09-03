Return-Path: <devicetree+bounces-212254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50020B422A6
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:57:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A84E61B25E19
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07D84311C3D;
	Wed,  3 Sep 2025 13:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gu3DBpJq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A2330F55D
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 13:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756907811; cv=none; b=qSh2IbzzFARsGaHQk0wBVXexh6gEDxpLtUA5xYWnCcIrFputbz1VKCHe4LMyTAxDziq0Mkw15HY3iqpjn2Yc37KPk3Xte8sFKnzDyoXxwK6fEBmElZJLONPwps9jwQvNv837fOY7nki2wN8OSwiW16W2NnrNgxgqq5xSYw5vi+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756907811; c=relaxed/simple;
	bh=jmSGd1LEiJi/OzRrbMT0IdOTY/EPAZZsAFW195MpqOM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lF6wZKPpI/JIsxlqNqI0HLiBCPSIl/392ko3jK62lhjVbBoWzgz2r4Wu3JsQMZBtGwtL7CB+cOqiun2mHhgKB8+oG97OFgExkPyWJPf25ygf4sR60bJWvBcI5of8yGyzXuZVQ12uUzGhrZPcnKD7vcY0xf1pB4XFTH/yTdOIlQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gu3DBpJq; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45b7da4101fso20088325e9.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 06:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756907807; x=1757512607; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=knWYmZlS1tcNLIvNHwra67g63fbf9sRjO2H/UvMZ5D0=;
        b=Gu3DBpJqJIkDwXMJR+3BFOmT1ZwdlnBG+T5WxgqkanYALyWEifLQkMzZi6F92t4ZfN
         ugfWuT0KOUvLTz1emDszCCsgZcBwobQ+9OIFBBNq0H5oNHN2s+Owhv0m48HDreG3EYUb
         uxtoDd8djgQi6RZ3x0gCToLphTDMSwq6Hw0CxpuczLMmwpjqzJ8uO559eKufYAsSRLQK
         3hows0RUQUf8chR33mbXPqyzDCkfvX6eLnMaj/oIWkFbhcoC5CxR0NUM66x85+EfRbbT
         zE3J0TdW48iTGmCQ22lIshOkSqy6GOOfrdbmwoHsahoctH2Vl4wDHrSt8arJnVHeJSDR
         HBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756907807; x=1757512607;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=knWYmZlS1tcNLIvNHwra67g63fbf9sRjO2H/UvMZ5D0=;
        b=q/amKkW9uRMTxcHhUoSz5xx3tGrudJ+YEY5o3p0U1RhYpouwEahthNvTFyoLHyFzKF
         GHW6ke5brVPlV3sLKP9c4nhYL6/H7Q/GcJDOrqaa+06mjkac8vwjLvzHFwdPU1DJu7Ga
         OOYipCHTr4Zu/UmpXeJPkl9dCU7Lv/tgjZ0hp9iKNgpqjj4bSCPFLTF/80dAZrPNquWW
         WSQ8Fso3z94/r4qTl9GLvQD8iBE3UVmIipNVVubiFiLRFC+duyHIGUEfbH+IroHp4wqP
         4BwnCL/sD6Si/9xOEXhFIFjuyRrKJSDaRqFBWkTHkGpI7zzB585+8fIiy/2GRXQHfSuO
         Igog==
X-Forwarded-Encrypted: i=1; AJvYcCWf5oodQA7OYddAAEtnDRW3mA9dUdvtA6waKu+5LQSvan22ctxLlKHgKunUvavrK4VqTEO6s6BbHnWy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4Oj7O/ZdekWxoCI5JSybatKB8SvZkZrAYZpN9DcBxe8KbsXIM
	wM3H/4k3gCk56I5h/hOUjOz3xkm+k7kYZ3Y87VeLykv4ycKTPbxGWZgo5TlOwHfxK2c=
X-Gm-Gg: ASbGncv6qYeGbF0cUhpA/aLcmrLBqLinjClcnzylqXs5zskGcF3CYIR2ltsgmxZqH8X
	Zm36q0Dj1M5zonTNZh0CjmFdHykYp1ivzehDR31c+N36FkR4qoH1MSUksayPMbmLbDovuIGW9c2
	lIbaMX821yzxGtrgoA7rv32xLA3lrjAhglIeGML6/0qbCGJw9UqTyAFtsXIOEqlAnl8zNPj++G5
	fm/mOxpZjrrebwrxSMHjoGExdVYlKJdhI3WSXDRAkDP9/gbPBiM5tuSB+cCBpxVMw2e27ZXDAct
	WjHI/xthEGeFkQ56WNejnnP1y7DMuMYUxJwwsnO4h9kjWhNVsXj2GG1kQPZCkdb17YR+CQ1bEsV
	dJQ/lJtkkYSyufH5SRqztPhA/tYLVLKc2/dNq2nBU8MyTPm85iINo21ZwmAuevXmDGPc6bpOkW+
	TlXZUeGr6g5ATb
X-Google-Smtp-Source: AGHT+IEEbe9zmys+SdHs+R+yvKPrY3H8cKyU1UJgBhivbEglt1LnfQ35e5S95bN5Q3yU4Jw1QrwtWA==
X-Received: by 2002:a05:600c:5253:b0:45d:98be:ee91 with SMTP id 5b1f17b1804b1-45d98bef030mr1077085e9.9.1756907807066;
        Wed, 03 Sep 2025 06:56:47 -0700 (PDT)
Received: from ta2.c.googlers.com (219.43.233.35.bc.googleusercontent.com. [35.233.43.219])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b87632365sm197257135e9.16.2025.09.03.06.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 06:56:46 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 03 Sep 2025 13:56:42 +0000
Subject: [PATCH v3 5/5] arm64: defconfig: enable Exynos ACPM clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-acpm-clk-v3-5-65ecd42d88c7@linaro.org>
References: <20250903-acpm-clk-v3-0-65ecd42d88c7@linaro.org>
In-Reply-To: <20250903-acpm-clk-v3-0-65ecd42d88c7@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756907802; l=820;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=jmSGd1LEiJi/OzRrbMT0IdOTY/EPAZZsAFW195MpqOM=;
 b=uHbQ7xT3bV6lIp0HqgAN0MLCg6QtXHzra5fcYf5Lk5NwyHh5UfcdGdrFyQvIdgzD6dfszLV11
 AJJjST6HJPrAxYtlucE/6MSFIODMgces/93QGOxMCFOl2jtohAP2doq
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Enable the Exynos ACPM clocks driver. Samsung Exynos platforms
implement ACPM to provide support for clock configuration, PMIC
and temperature sensors.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 58f87d09366cd12ae212a1d107660afe8be6c5ef..4255bc885545fb3bb7e9cf02760cac35bf2872fa 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1445,6 +1445,7 @@ CONFIG_CLK_GFM_LPASS_SM8250=m
 CONFIG_SM_VIDEOCC_8450=m
 CONFIG_CLK_RCAR_USB2_CLOCK_SEL=y
 CONFIG_CLK_RENESAS_VBATTB=m
+CONFIG_EXYNOS_ACPM_CLK=m
 CONFIG_CLK_SOPHGO_CV1800=y
 CONFIG_HWSPINLOCK=y
 CONFIG_HWSPINLOCK_OMAP=m

-- 
2.51.0.338.gd7d06c2dae-goog


