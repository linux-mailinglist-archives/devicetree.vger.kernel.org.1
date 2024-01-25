Return-Path: <devicetree+bounces-35079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C285283C439
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:01:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 611B6B2210A
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1BD9605A6;
	Thu, 25 Jan 2024 14:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TyuDFN7b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89C0604D3
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 14:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706191306; cv=none; b=uSMXo4ziYhWMhS9uyICjxC++h1oJkkAmnkih/b1c1tUtuxxLA3haHvPqzVpCKAEW7TwSt0XfJSrpJ9LUTsxSw+xwMnT37WtAwVy+4Ew2KwQqkx2X9jD/lxze4Wq6fphNuAHNv5nphialXTbrM9WYugDCoJsq8COOQRTZgUn8pcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706191306; c=relaxed/simple;
	bh=JQ0+STV9AqGXR93rvqvT/Fhpuw2Ch/BDzNv9b9Rs614=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Lh6+mn5dCWR/+Fl95O6FZO1c+0x1NSWEyeFsq+QYTK5AV2b7Qb7HAkNLflKJKdua7P80/dX8Vwa+x5oZLfGRRY9AN5euFeLhd133GoFtTv/8xj54ADAAY4IHUYB14Q5O/Mjgl3DmZsQvD5qloWjwLSHv1hHqW5MCMwXNn5SiESI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TyuDFN7b; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-55a354a65afso5973450a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 06:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706191303; x=1706796103; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WwJ9LZ2cw3a5KQSrNOlRxJLZjD3460dcBT/9JVrzxHs=;
        b=TyuDFN7bQHbl3S2Ur+gM9RXByOLlqprLwAaC0LZ2qytxgcT1hSjvOESBwqAskMTQnp
         hr+D1iajyd+56jGP23le/FXT4jR6BZcxCE96eZm5C4YhjcvvRLD3YGgRlr7ofbrYUpgK
         65WECjF1+dCTXXCYfmlFi013QfC/FLUUtvUBGk0D9d7eAyMd4m2wKOT8WVQjTrKbxmsB
         I0P6sJ3U6WAVChpdaXQ3JRYFsZLi/iOG478Q01VyD20l+ahd2Bqv0XrJLynY8iWhfQ4K
         tdVh5HNTHKqNpJTE8795p4B3iIvy1MyUjMIElUHfnZO0esj0Q/U6R8guwNsoC+f5/aoE
         wHPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706191303; x=1706796103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WwJ9LZ2cw3a5KQSrNOlRxJLZjD3460dcBT/9JVrzxHs=;
        b=v16t0KYNW9lC8CFmNNnc4gDQLkLmnARrpmAxnHjnsEV5w/kxW1MjcVVXIs+240TP+L
         HZixuDtyE4wszV/SqrdUO4tpxBgHCgQGXeKtmg0FfWohZpOnAB3HBumuigz7wF8bPXJ1
         qPx2sOIiZf7YOKY7RrfV/xB3D2rHof34t1WGqpMA7/I5mkh+k7IcOGS7QmkGt1PMeC5f
         WGTEJqCixUmls2wEZg04jhH10Pebp92Y7SUE9KAipVEFhYr9JY9vB38W8TvF+BnuVJfV
         CMGMisSG6g27c/Ptb4R7et3V+uHiQEmwG9EWPw0falAGr53XFJ5dqP92cSSvO5YiAHHl
         MJdg==
X-Gm-Message-State: AOJu0Yx4niXZQeUQBReAQ205LV53JeTgyKw3ZFnJ/GdcBCzMO1d3s/nK
	ddGgZ0ZAQ0W5tvbWYSFvkU1tAmJDwrRzN8XJPvWgVlFgJths+6pirDVTQ1oWlVY=
X-Google-Smtp-Source: AGHT+IH1Ly+Ije5EF60Sv9Ag9cguIboXYkkLHRFsIOuKq7QuJ/2bZMfnSdOXsrWMbaqAC7Cd6YvmmA==
X-Received: by 2002:a17:906:e2ce:b0:a30:b156:50e4 with SMTP id gr14-20020a170906e2ce00b00a30b15650e4mr586764ejb.42.1706191302914;
        Thu, 25 Jan 2024 06:01:42 -0800 (PST)
Received: from puffmais.c.googlers.com.com (229.112.91.34.bc.googleusercontent.com. [34.91.112.229])
        by smtp.gmail.com with ESMTPSA id r17-20020a1709067fd100b00a2c7d34157asm1048170ejs.180.2024.01.25.06.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 06:01:42 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	peter.griffin@linaro.org
Cc: kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	daniel.lezcano@linaro.org,
	tglx@linutronix.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: exynos: gs101: sysreg_peric1 needs a clock
Date: Thu, 25 Jan 2024 14:01:39 +0000
Message-ID: <20240125140139.3616119-2-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240125140139.3616119-1-andre.draszik@linaro.org>
References: <20240125140139.3616119-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Without the clock running, we can not access its registers, and now
that we have it, we should add it here so that it gets enabled as
and when needed.

Update the DTSI accordingly.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 412d2866dca7..aaac04df5e65 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -364,6 +364,7 @@ cmu_peric0: clock-controller@10800000 {
 		sysreg_peric0: syscon@10820000 {
 			compatible = "google,gs101-peric0-sysreg", "syscon";
 			reg = <0x10820000 0x10000>;
+			clocks = <&cmu_peric0 CLK_GOUT_PERIC0_SYSREG_PERIC0_PCLK>;
 		};
 
 		pinctrl_peric0: pinctrl@10840000 {
-- 
2.43.0.429.g432eaa2c6b-goog


