Return-Path: <devicetree+bounces-206445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B9DB2C537
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:21:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5675B240287
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE1DC340D8D;
	Tue, 19 Aug 2025 13:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CHQz2dP5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D342A32BF29
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609379; cv=none; b=dMRamTRjJLB0A+wTYe4OgNJEBjJJRvDRuMPedZEKM2akftBDDwb+qBs0TmkzqzpkUBHk6eZC0QuGPSV4tA0FUbhlhF2SM+1H9QV37SyU38ehJ1a8+2FScWxmspzkYsh2ydKCnWkSk+ERg0PvJ6O2N5XpVmxJ6bmHvBeIBXuVzDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609379; c=relaxed/simple;
	bh=zzJHbwP59FIAJRbh/laHlAqr7S4UlzgO8wkJUgyct7M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dlcYYKAj7LOtzBMrfmTyNQeWb6QthAx1Pq9yB61W3mfrm5unllKj/AeL2+GG8E3mPGd7uyyrJtYNAdiZxS4lQEmYkCVSk7Xwz0iz+7uug1bTDx4qt0sgINFX8tZnsPyvY+WMeJCraYU+03v8xo92T1Y3iZX+sL9jne8VV1yHtfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CHQz2dP5; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-afcb79fb221so72389566b.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609374; x=1756214174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xi518gsMPwf+xO6KMftj9HzM9h9TUyQOOtDZl1JTxQw=;
        b=CHQz2dP5P24gCrR0rh8AvtJv8SkxyI7jO0gyVfWcLBLwy7mTJouUyCcgDRn6YOQkjk
         JZra4odMORxc+TPvq69vj+imm3kfKTxZ62R7+wt0s096wjk3vfZ5wmkFEzsHF9aBumxT
         4eU61TzaWbV4kMZNrIqgMJeBmD3D+HD3vSec0aF39YGIqltn0rKETrxSl7fx5XAaxsb6
         LChe2a0Imf55S5+piU9b5c/5fQFXInKTvzDCA3jkEYqRpYyIfvmxuVhB3i7bhyvdiIpK
         SOuD9gvA0o4kYbegFaE/8san2nkyP5UwXIqQdMS1/1Le7AsGyBLyVUHScLVw2FQgoxAk
         qW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609374; x=1756214174;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xi518gsMPwf+xO6KMftj9HzM9h9TUyQOOtDZl1JTxQw=;
        b=HsBGY0R/n/vg+nOr8faFszMz0WOvp6YA8P4iaGeT7HYJhwmrD0YzrIzUjFA52+Trub
         JP1ZMzzVNRumLW1otl5eARmHJ2YzzC334M2qYB09au/Cx5DTgjmBLehB+fnv9HKfE2+Q
         wdP4Aj5UhIaSs/+eUUtGJBpL2EVaPOBMlXDsbHnQQvpQX046fq/x6PTV4shOkgEuoVs/
         PqaoIuZ6T+EsC7o6/Xgzh58Dng7Q0I3y72Q6YQwAs1alQpMdkAiUopboSkYQ2gJ6SlWl
         TAZ50DWqTQRt8AI2Qhzew78A7X8/oVY+97OmM6qsMTTo3SvhR+TFKTMBWe4zwT9eiuw0
         7+0A==
X-Forwarded-Encrypted: i=1; AJvYcCXJOVeFV+NQXiaEQVYJGa260j+k723ifRqTERfBaxHRLXC8TpMNJMQCKeiRAtb+zq2uSQ/kMemTCRIa@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/uu2MuRgGUIbg02e0WTPPEx2g/tdvT386T060iQ9XrkZ5L8jk
	rJY+rYkbL5GEWXONTJMxw/6G/XOjO+8aLW/yES51TFA4QBlJh5zIeoJlxqVT+xXIjSg=
X-Gm-Gg: ASbGncvK1cxAGd8QFPgR0aVc18hrj8wD62dvbomlxhkw61L3jOI77iis5CmyBKvUQHa
	JhY7pOnGl/wY2pAbXYazWrc0x1e2nh32cwBZbGBokDncPE3OOTs1Rf/FRzjheQrhD9ugGFL3AsH
	s8YtYAeYe13zgbVgSOKVnOCbspcqF9l+PL8SKsX4RauRkFId4WBbe1RF+tiWb69OlQHlvGfPPRR
	cfVwOHlNsn4XpmKYvgskoy7QLqtyZ6oYHFCbroOSQmAIuKWYiL7nVA3zoD0ndrAWaeyshfduCJl
	21otnXFnEMwf3kM7ocUnpROnTKzQ6ci0rKaOMKAMjblBQ0Jq0/WcbtKEltCYqVrsnJvZHEGpVNH
	IeOQRzQHvhKJAeb2+CvfGmEHL0G2GsEUWxZvRk74apPGQ
X-Google-Smtp-Source: AGHT+IHNAQts7Tkq0in4K3BOL40AEJDywoXmLp4e38sGlmKMwBIojenupdYVLaUyK7UVgv2eYoj8jg==
X-Received: by 2002:a17:906:c112:b0:af9:5903:3696 with SMTP id a640c23a62f3a-afddcb4df7cmr81510466b.2.1755609374036;
        Tue, 19 Aug 2025 06:16:14 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdce53d60sm998744666b.20.2025.08.19.06.16.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:16:13 -0700 (PDT)
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
Subject: [PATCH 1/2] ARM: dts: rockchip: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:16:08 +0200
Message-ID: <20250819131607.86338-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1479; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=zzJHbwP59FIAJRbh/laHlAqr7S4UlzgO8wkJUgyct7M=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHkX1WKSqJhvQcELKxO426h67ZTlpdrZBKf1M
 5oH0eMggemJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5FwAKCRDBN2bmhouD
 1/bFD/4pTRoaumxN4qomkIs6yFeXrcTZBRmPV7OywqqKgE0NJ3WJviWn/dX3kiNForLEobrQSMA
 7i1yOWVOmKASx/uWgJIMy/Dfo6UbTYSCDfOlIHpIdW6TF7TyEIGbQRF88NP0ZHx6P3EqGh056/V
 x4m3PTjiseJ1hWbmgE4fdcHlFyrRxo6QTnnOzhx82sdoQhpeRCM+zYe0iK7pkpo+Rn/+V2m8Y1V
 bjV3p+u4+VT+lVfJhQZFpMvlZuyBD5ealdsJoFj9JE3/iB3DG+4eDqpywmkPWecdtsQcxC27K+O
 x9T/J//KGtMnTguaOKQtB+rMAVPiq5H2lOGizXIhbikXopn+Woo5x+qW0Y59Q4PdzZW/IG5mDX9
 Ej4CCCPSSbEsM0W6ch4fTN6ofGGWIkx3bw3SMI0WBEEHehrtPFRMCdR/o07DivyguWeJKcmkIws
 0NJcIH3Jn1JxBpHArx5tyAJ+nvB6c8Za5BX+IWOf1o/MQ7PzWgKRbtVUHouBAjwxfBABnNOvQxG
 BeRbFi5dJSpKuph/cnHwj/9MxK9y+H4uK4/waTuAH8NkDRlZ37Zd/tA3sQlEcw7cKhMMDxgGwyV
 f+VYKL+GDd5XIH2ft52QowEGKHBOhV/v+aBL+a0wWbuxlkoYAGyMcGi7E1lhu71rAHGAswuBucU BNVRX5amtmp0mqA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts    | 2 +-
 arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
index 21f824b09191..decbf2726ec4 100644
--- a/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
+++ b/arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts
@@ -272,7 +272,7 @@ &gmac {
 	phy-mode = "rmii";
 	phy-handle = <&phy0>;
 	assigned-clocks = <&cru SCLK_MAC_SRC>;
-	assigned-clock-rates= <50000000>;
+	assigned-clock-rates = <50000000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rmii_pins>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts b/arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts
index c13829d32c32..8a92700349b4 100644
--- a/arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts
+++ b/arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts
@@ -250,9 +250,9 @@ rtc0: rtc@52 {
 &i2s0 {
 	/delete-property/ pinctrl-0;
 	rockchip,trcm-sync-rx-only;
-	pinctrl-0 =  <&i2s0m0_sclk_rx>,
-		     <&i2s0m0_lrck_rx>,
-		     <&i2s0m0_sdi0>;
+	pinctrl-0 = <&i2s0m0_sclk_rx>,
+		    <&i2s0m0_lrck_rx>,
+		    <&i2s0m0_sdi0>;
 	pinctrl-names = "default";
 	status = "okay";
 };
-- 
2.48.1


