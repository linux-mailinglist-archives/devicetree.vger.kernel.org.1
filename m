Return-Path: <devicetree+bounces-233735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F77C25125
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:45:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D6FE189C481
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C60434B411;
	Fri, 31 Oct 2025 12:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a4Ffj/nJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E4C1CAA92
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761914726; cv=none; b=dz+NRpvyXKPmBioRZgMrm7CTOHUsuCxwfx2tqMNILjq/UqdRulO6YTH2YVzBFNWqVulP0L217nSyyDMoIZIjoibsFaI7UCQ0svuwScccVnjtpGiz/Wgv4rWVotNwTnyUMlJgZRkSjfVr5nBrq7jJaX4gUkA24UU9hpW8a95PX04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761914726; c=relaxed/simple;
	bh=jbtOQh+KZGaronPKGSCjW9AW/6hcLTFo8o99haI6DgE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qx+FGX2RLzuEWeDa714109c56QUaKG4ufcHs+pVbqLAPHX3lCaXve/7KkoVqnw08Qi/BdBR35D5ub/x0/hYpjYtzS+uI4cfyBYTo2mxV5sySQ5ro8Nz928syHRfOVdq19GyJKhD1pywgZGKvFJCboHLNr3B6rICKD8JZfiP/bc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a4Ffj/nJ; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so17764965e9.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761914721; x=1762519521; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+LI8bIiPiGdrKa8u7FU/JStfXK2j48QfKQas4QVWIkY=;
        b=a4Ffj/nJRpGs3i+ujW7Qpz8i2DnyHbJL4wgiFhyxqDwpIEGeU9vL9kelwr8cnT291a
         44fa/xNTNSof/X+oWEyJ2WuIsfRlkjfbnl4cTyNOfPTtY/7VVjBacjjy+IyScSzpz1kt
         lGweZWqzwQWIAspHqUNogJZWPOfGyNzTRmmu7wxx7igUU2OipAzN6JG2KHOcW8eoelwx
         HO1H00Ptl+RnioxNyiiiyv2zQH3AVHlTj3V318e/mjENYmRjMj/S12+VbZhwF1qktqjH
         4G6tMvhWqLH5CTZl3Br7jEYq708AQoEn2wZV21lGW3lQzpb2uPwRjAJME82dxDdcs7mN
         xpaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761914721; x=1762519521;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+LI8bIiPiGdrKa8u7FU/JStfXK2j48QfKQas4QVWIkY=;
        b=G9IPzZ+XnyYnJzIDxVb+cjARB+/Wjq59cszc0mf9qoe5EkK+W49Uayh5c00ICoChuY
         KquAfL0f86toR9keApkaRfiG9D02IjtDfuYWsd5pIUDP0gEOvpawcqd4Ovl9tNMEqjPN
         7SSTM10kNYnjCQL4TP7BaRhHO6Hyg4PtBGI9WU3qxifIzwxrDW2zbRUlrd950CzP68L7
         LApVPF7NYV4KkHa+ulnbRGlkKSh8kc6jW3581rM3gkcYpXBNRn0gInwWUZL0qrrP0IXs
         Qp9JfsAM16ngOqrTI+MbVIsq4vkqvY+QpXP9PjDJ7q/YNlZSO/9HGtpUdMCs+E6lz+2Q
         rp6w==
X-Forwarded-Encrypted: i=1; AJvYcCXH4GfZl6jEAl2BMywders57LiDB3BzfbzeWI+HKZ647dB9pzN/PIKjFQXY4OdvsNoOmJ28fFKMS3sb@vger.kernel.org
X-Gm-Message-State: AOJu0YzOVSKHXzXrS/6+5XWsrTgtwQtCsF85cJxLiZzUHYFlnMW/xxZ+
	2Bh2NOTEq4hxbWvWTlWzrapC+sIZqu8atqGAieya6wKax5uJFnZHPRKQzNaaSwicQz4=
X-Gm-Gg: ASbGncv4myOEuypO9/htCLFtAjofoEOCQ2REShKpXnzDmjkNfOpyNIbXKP7eUPblMGV
	MA+42GLD2AgeGW5MBmRDZFZaZ/Pygk457uwvREYdViFetgbl8dml7kYrKZwW1vv11t9TwyD22im
	puVGcQ1r7akfxfigTdamkjEpEMXpBHP84Ea5mGqKq/ksmo1se8ogSDdSa/GCEDKlS4xZeNCQi+h
	3tDrNoKxMJP2dX0/saFt9Ai0cGzS169ehCbHbYmMW3dlQLtrBhR8uWnOu8Pf70YjS2voHZEeMDL
	C/7JtSUZ++nbEMw74BeJ9rdSN2WIQ6Z/pL37kFc1J6gFyOkr4JprRmnQAQFDRYYdmPuSaTOM/+g
	JCLYHsHHAuuABK8j8jMtMo8jOVe1MwIn+MbH3G0E6z1v6Vrj2IsIhWuMgK7nW6OIO+kNHtwEICY
	PP/QY1QFtmtKIn+LXkT4II0sLNtbsbVlPhWk/qo7ktQoxfeFZnTKhv
X-Google-Smtp-Source: AGHT+IHOR9o3pN2qjHmH3aj2ibwtFk8fBD1ANgqBkHALk2NU/zxtz1qYd7JTDoI7nz6jygMlz28LcA==
X-Received: by 2002:a05:600c:314d:b0:471:1d8e:3c4f with SMTP id 5b1f17b1804b1-477308aa77emr31810825e9.24.1761914721275;
        Fri, 31 Oct 2025 05:45:21 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47732ff7fdbsm31077535e9.16.2025.10.31.05.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:45:20 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 31 Oct 2025 12:45:12 +0000
Subject: [PATCH 4/5] arm64: defconfig: enable Samsung Exynos OTP controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251031-gs101-otp-v1-4-2a54f6c4e7b6@linaro.org>
References: <20251031-gs101-otp-v1-0-2a54f6c4e7b6@linaro.org>
In-Reply-To: <20251031-gs101-otp-v1-0-2a54f6c4e7b6@linaro.org>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761914716; l=915;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=jbtOQh+KZGaronPKGSCjW9AW/6hcLTFo8o99haI6DgE=;
 b=anPmmraBvSuRYrza8lT7XXPyLkgmlAH/yyD7w1SjaBtSE3hCPJZEkgDHb0kPl8CtR+4Ta8bjR
 mEUElj9TnrgDeBa4TOQQUClCBg6x6jMhPpnKkx/DI+wT0L+NvF59rcO
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Enable the exynos-otp nvmem driver for fuse access on the Samsung Exynos
SoCs. The fuse block stores various system information (Product ID,
Chip ID, TMU, ASV, etc.) which will be accessed by client drivers.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 646097e94efe7f1a18fb59d5b6dfc6268be91383..6433e3c0f88b892ce6f2ee190f866a6ab4889771 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1682,6 +1682,7 @@ CONFIG_ARM_CORESIGHT_PMU_ARCH_SYSTEM_PMU=m
 CONFIG_NVIDIA_CORESIGHT_PMU_ARCH_SYSTEM_PMU=m
 CONFIG_MESON_DDR_PMU=m
 CONFIG_NVMEM_LAYOUT_SL28_VPD=m
+CONFIG_NVMEM_EXYNOS_OTP=m
 CONFIG_NVMEM_IMX_OCOTP=y
 CONFIG_NVMEM_IMX_OCOTP_ELE=m
 CONFIG_NVMEM_IMX_OCOTP_SCU=y

-- 
2.51.1.930.gacf6e81ea2-goog


