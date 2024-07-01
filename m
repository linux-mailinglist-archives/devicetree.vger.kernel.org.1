Return-Path: <devicetree+bounces-82009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 526FC91E338
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 17:04:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 00688B26362
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 15:04:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B7CE16CD29;
	Mon,  1 Jul 2024 15:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jnp1apOm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AED5815A865
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 15:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719846229; cv=none; b=iKIkR4J+II4kuW9g7pROIF8ck9HJz+qPmge7iSJbS2nI14HTUOpPZr3lrkAJZs+AQshKVJE6MT4MvnwiVSIjoF3ZAYttWkBO8JOwQQvFTEgfyP6hSrVCO7P/XizS6lutHANn5pBeZWG8kfT+uRPwbjSruu8zfvdwTNu5uFiyV4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719846229; c=relaxed/simple;
	bh=Im0MnZ4JFjVrnRFmMEKhQVttdufi4KkY6RhJSFciG9c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=C61yNjrJodkR+CCqy0XQ3yG0V+7xddKARO+tCVpYLQzv80L1UC8zODxFhYMliPQpS2bwar4luCpuTr3ddV2NjL3fGKx+eGO40+PIfoHlGYnsV8J2AEl7KqGXEdz9X6dm09c5OshAfyvxvCQwmz78qe7LGfAnMx/RkmaH1rPcsKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jnp1apOm; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-424ad991cbbso24713475e9.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 08:03:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719846225; x=1720451025; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3wDZmEYKELUi74jPnAuSpDQT9bMcj+67lUZhkc9HSzY=;
        b=jnp1apOmBQrZQRwdHSV7mHRYY0Jg1I3pR6vRrAsNAwkJJfIXDxi/BiK6UeEF7HQxMr
         Y5UL//Vnqch6cGz5CJ5tuhTF51VtucfR2PbM6yofu9onIGEbAmUi/rFRG9Og78jDlIf0
         P1MrKzPjDKv16p0rOtgx1CnLZAoFgQQK2aoMdwM9vNX7qMODki2J7bJT3QcSS+gkfwSK
         LWkZJGvJCJIeqPFopejPsw6dInp98MX66HqwFxCeLo5VsnmE0028LRlwJDuAF89DyZPY
         3aXi6R9jCMihJbV9s318sNxIXQQWcHB0NrHpr2YuAAjVCImipvm0jyzFLTiUBV0Bkrkj
         o+DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719846225; x=1720451025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3wDZmEYKELUi74jPnAuSpDQT9bMcj+67lUZhkc9HSzY=;
        b=iI7bKwwzijAS1lb2YT6tu7Dkc5/iVMUyv0oV7WlAqjOpGu6w+L7YJ3toZK9JEC/4zt
         LY9g9SVF/tn2S8p7sF7MflqtNm42zhgmWgeoA7L1BmO7hoqzAPdsZtVo/6ORe8HSNHod
         parV6aldCnODp20g+IiW2WN1xrMym9wMJGz8rGSUOU8OPYU0WZ12vey/Tm67NcX+wIHk
         DT2IJ4M58xDViiHRySZT8BixMDxO8NXylbtySuZjUTu54DFQfsUqY+B4TwueMXBljK3T
         Ssp0bHA4tdQ3NVp/kI/R39Knfo/5gpOppfMemK8YCcUsDTOGYnDU+4qFeh3vLMnA7f5k
         C7aQ==
X-Forwarded-Encrypted: i=1; AJvYcCXcCGmQrDWXxgbM3Wc21JSmYIlcmwJW1hS1OJFFKPq+vgBRtnfY973132UpMDmYyuU4LO40qx9lVPgCqND9dmhZC55GZUSzaeRzSg==
X-Gm-Message-State: AOJu0Yw7tEBSHw+qnb/DqQhwVbCAJ1PmwBtClAHED8dHEHCrWl5+iEM4
	bVhDoZFNBwCdqkvtB3VQAWA6cQTeuUjE4QOWiri0xP7sUFPhXENqURgJQPxfoek=
X-Google-Smtp-Source: AGHT+IEMizyoQeCknv0BfDpDljAewhrRC1c22Js7WurHZ9I2MaP1PlDrMgksoK7fc5h3yNqVMXDWvw==
X-Received: by 2002:a05:600c:4814:b0:425:77d7:3d77 with SMTP id 5b1f17b1804b1-4257a02b88bmr45695515e9.15.1719846225055;
        Mon, 01 Jul 2024 08:03:45 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af5b91bsm158127635e9.20.2024.07.01.08.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 08:03:44 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: armada-3720: align LED node name with bindings
Date: Mon,  1 Jul 2024 17:03:40 +0200
Message-ID: <20240701150340.560243-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240701150340.560243-1-krzysztof.kozlowski@linaro.org>
References: <20240701150340.560243-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect the LED node names to follow certain pattern, see
dtbs_check warnings:

  armada-3720-gl-mv1000.dtb: leds: 'power', 'vpn', 'wan' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
index 07c14bf04b83..56930f2ce481 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
@@ -57,17 +57,17 @@ switch {
 	leds {
 		compatible = "gpio-leds";
 
-		vpn {
+		led-vpn {
 			label = "green:vpn";
 			gpios = <&gpionb 11 GPIO_ACTIVE_LOW>;
 		};
 
-		wan {
+		led-wan {
 			label = "green:wan";
 			gpios = <&gpionb 12 GPIO_ACTIVE_LOW>;
 		};
 
-		led_power: power {
+		led_power: led-power {
 			label = "green:power";
 			gpios = <&gpionb 13 GPIO_ACTIVE_LOW>;
 			default-state = "on";
-- 
2.43.0


