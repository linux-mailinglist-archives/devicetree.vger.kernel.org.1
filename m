Return-Path: <devicetree+bounces-56922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CC589B071
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 12:29:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3FBA61C20C96
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 10:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 982E71DA24;
	Sun,  7 Apr 2024 10:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="enp0ZUL/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49AF1BC31
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 10:29:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712485744; cv=none; b=APfqzpYEBhjpkQ098KWdHshy2jenueztPOXB71vh6p+7kMcw17T6zcXTJwgIDIe+jaJFj0kF2HxfOeu0Lq0fEmfPgwZSdFbXwk8PqyvVhNm04L3iYW88MIuK5n4/kfzX9iyOIfy+IbiKcz8lHX2v3BaDleTbxdU+NWt6h4YtGYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712485744; c=relaxed/simple;
	bh=nfBQLNmk1DwAiu5sz3SzWx0/VlIc5TFM2FdoKUlJRmQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BnCozUCzXZZ3uX3jctlx9veDwVEImKAUw/5jU1Pimnn67yk0+SuBpM/AYB/ZRfoDmMdnwtxcoSsHmrtCaJYwSd5IcGtu+2k0UMs5YeaQWePqY9dFlI7/JfBwvBonr3efkQLlgFMX96FuYDx1Q2eqr8XSv+tMQ+V6C0A+XCyn/dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=enp0ZUL/; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-416511f13aaso2216825e9.1
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 03:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712485741; x=1713090541; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KwDleUEWZ7wz0Ygnf5oQ1EseNSyfLcLEk9Kc6xn4S48=;
        b=enp0ZUL/820CmUnkl/65pLZY5Ewan7ezYLtqeBcTkq2O8FCm1R/Xy6J4LwFw1z3F2e
         gRWw0+HjLjOtYTq+0KimyuNlD0MA1hqUdLk2HRs2hr+ikM99tJOsLpBYETBRkHRJ3a4m
         ERvoGANxBwDkNwzZmJF4SsOJu3j3U3tSEUzSMf3AWm2yHE2VR4rZpg0SOlzaR5plWynC
         qbZFtSuknzfoEBL7DCTD7f8Gn/j6B7YjXknQNdh+x2MbzHvO7X01Qjud/i2y3x7+GtGu
         8eRbQM1xoskyx8WP5J1vUjq89QkN7nitnkeF5z+edG5lSVLTOzIrbXgVhzcKK2QGggpH
         fjYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712485741; x=1713090541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KwDleUEWZ7wz0Ygnf5oQ1EseNSyfLcLEk9Kc6xn4S48=;
        b=nDA5lYeoTEO2fPoD9EVuQD1LtU5zQpvfNTRzIFHAmVnFhgZFpIa+CC28sIuSOYJF9I
         Ury+uQSUnjcP9Gu97Lb7U7uYMnKxilqA+50v8XQMnHYHeYR78t50VuKM4/CaGNCckgFk
         PRC3w9ORSlQ8yXwIaWn3KZM5HFRUU9HnONfLUUoI/G3YBpvfEbnU6sQCHcs/bXO/dssi
         0AOErdEE3ooOTPza1bpHXxpKbViCY/MuWQOo0eAtGwO/yQRwGH1jt29bx3j573Zbpmvq
         2Ioij0U19/fkb1/dm0XBEME2clPKhm0dCFrPumiB+LjZXE1P3ks+TDEZYbpclDHO+80h
         vR8g==
X-Forwarded-Encrypted: i=1; AJvYcCWCe8ctFrIczEsMDV4Qk8C0LuZBz0CreKET2YInUSJXK5aZGieR2SYiOzeR9NE9jmX5dGMADMIuXUpY5niecsL5qq/oU9l4KVVGrQ==
X-Gm-Message-State: AOJu0YzNO5nRzlp3rkU1AOaHUxwRbSCbyvxia4wg5YBbSsOaL841Mbuu
	RlkkyTspa09bR/xIs9Hu4XvM/kYXHp76785GnRIF/8wwcZbTguA7Zk20TXeOaOY=
X-Google-Smtp-Source: AGHT+IFsUHJqYHtPKagNrFCK5cXUbUz4V0d8dUnN5mPnLnT4HxN/3uE4BigWEyT+5flKRdcH8N/Rpw==
X-Received: by 2002:a05:600c:4590:b0:415:54d2:155a with SMTP id r16-20020a05600c459000b0041554d2155amr4646141wmo.10.1712485741199;
        Sun, 07 Apr 2024 03:29:01 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id m37-20020a05600c3b2500b00416665d3e09sm675487wms.9.2024.04.07.03.28.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 03:29:00 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] arm64: dts: rockchip: drop redundant disable-gpios in Lubancat 1
Date: Sun,  7 Apr 2024 12:28:53 +0200
Message-Id: <20240407102854.38672-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
References: <20240407102854.38672-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no "disable-gpios" property in the PCI bindings or Linux
driver, so assume this was copied from downstream.  This property looks
like some real hardware, just described wrongly.  Rockchip PCIe
controller (DesignWare based) does not define any other GPIO-s property,
except reset-gpios which is already there, so not sure what would be the
real property for this GPIO.

This fixes dtbs_check warning:

  rk3566-lubancat-1.dtb: pcie@fe260000: Unevaluated properties are not allowed ('disable-gpios' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
index 6ecdf5d28339..c1194d1e438d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
@@ -447,7 +447,6 @@ rgmii_phy1: phy@0 {
 
 &pcie2x1 {
 	reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
-	disable-gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie>;
 	status = "okay";
 };
-- 
2.34.1


