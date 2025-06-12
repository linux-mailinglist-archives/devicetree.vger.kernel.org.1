Return-Path: <devicetree+bounces-185189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7CAAD6CAB
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 11:56:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93CD93AEF12
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65E422DA02;
	Thu, 12 Jun 2025 09:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oh36tfcg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DB822D7B0
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 09:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749722170; cv=none; b=RSpODkAaSykGINVmatDeIVuBMDGdC+uLWxCNXx2TcF6uxELkdzJkMAi2RI5dIpzQabbvcocrrZDrqhHdoPGVYm2qANksFvEIUAf5ZLPE+5/OQBHYnHZHlp+sS1UKzc8QB6CSDctcPT3InNgfDVysSBPt6mTC4uTmxu5lCG6FAQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749722170; c=relaxed/simple;
	bh=TO01a4XfI3theHM74fPZdR2rlN2cv6ZWCZ/5/LAF5wA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PaJXOCvD/2rYKS8C+ki2QiAOxAoDZQ+bTaU0WGq6TB+l5WilGJHNbu5iTNpoIuzBLlW8oEbq24XZnB3AAorBj6bRo2jQt3g/yUMAYaWdMtu3sOad7y3q149mIj+tvU/yjC5mSGHU1zkPXUWLNDs8K88XYV8nu2jGNTNOBtzBDi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oh36tfcg; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4530e6f4db4so251285e9.2
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 02:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749722167; x=1750326967; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VGWS+hFBWdcB3VYxnV3ZAvnCxB0FbDboNRXSuMWKNAE=;
        b=oh36tfcga42MUSo3rugjuB/IDGojUziE2Xaa3vQ64zzFKuR9N5yIhUwKHBljedrdnL
         fFPhGCkQ9Pg5rSFCi4ltMT7ijgHLessV+C51gyELeBigNuhQu8zMJICwMUK61yb8gw3/
         cvC54pgoDAhJt7XlOb0JUxC8QEUIFMucHafPc5Ad+HFIgWLzB9zPkuOsI7M0z8yL9F1l
         N9j8crzxFpLTBBlLOgNV8takdSpA1wVUvSlpO64+2U++LtC5dNCgngTRdBkc5sL+pWAP
         J3GFTuLRbVuuOJLDZvjBMWNOTl3n3tZwpW4f651HLD1QBHiCsvUjcYQC15a3AaiL8Jbe
         TwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749722167; x=1750326967;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VGWS+hFBWdcB3VYxnV3ZAvnCxB0FbDboNRXSuMWKNAE=;
        b=eSJRXYiyEv7POFni+GczB5Od5n7eqblG/99gqIBx0g9LBVvqVmCkG1oYCfWoMA3/CO
         Nxl+Clk3e9ubR0GxK6kSUd3Ln9xwFhXQQiWxbbdpZFI93Nl6ETbCy1lddYfFTzvjb/nW
         U5f8kng69KtA2hknSpQxFFcXnfAClM5M3hvmQbBjKqoRyL9q9Mj7rr4A7FbcOSFIhNZi
         ALbBuaKbCpL0wfpjBw9UpLxZXRaawXwy80JSSHoe7XxdioFY7BxVEDEsHzcVWBZpeNsw
         VZh/5qSE2/7yR5H6ZNOSi4dzYNt+8QM1j+S70ZQ5VBzGQ8tWCU3Xsu41aKmitYth7KiF
         wt2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVT2BF8fnG97lCTt4J59jJ726esR1mvJHB5ZO+WKjXTmdbLFd+VKpHXcupnr04ZcxKLxK3cC51FNlQk@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0/cdQC94zZ/C4jiKfIDnLfKbD6FmZl6s6zoCsZ0r1KswCRM68
	RpXlLrbXBCPGBYk5C73KXie4zxM1s0OIkzqvyFv4ON89xQ7t6VH0AmSaqQWM/xIxgPs=
X-Gm-Gg: ASbGncu4cOoFe070YemvQwB3LKA4k9xJCIsUjBGNzDM3I2+fek76zQC7fK4JoK3g9n5
	8hdGaUeQ8vNKmBz1pvBr2NjSQPJouEFKPmvDMEdtg/guG8Z9cjZs4xP83Ca6T5zMaQsK81VEWyU
	PfzFl9Cz71u1Ejkj8q0ETJ19paPWAVkwdLS1OiEmAPE5uVgmtv144hIJB+Yy4YzhVqlKJuZh5rv
	Uky176Q6cJy5DOWtAwD4vmU6O07RNtG02l2I1aX7uURgRMniXM6jz0UmUnlV0v3wP74k3Zy4sft
	FdVSyCYLbEQjO0cDvwuwBKaYYApof5vHGL4j9STjo1c8+OqpEnrug996QvjFaVammx/7637hLg=
	=
X-Google-Smtp-Source: AGHT+IEunL0h4aObpNd5+z2QDBp6DgiOMvQCjH0pMkcARf474VM+a0aBXZwTAGaoL6LJV3WfcEN4Sw==
X-Received: by 2002:a05:6000:2507:b0:3a5:1306:3c30 with SMTP id ffacd0b85a97d-3a55864fb5amr1969533f8f.0.1749722167198;
        Thu, 12 Jun 2025 02:56:07 -0700 (PDT)
Received: from kuoka.. ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a5618d6f4fsm1521857f8f.0.2025.06.12.02.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 02:56:06 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH 3/3] arm64: dts: exynos5433: Align i2c-gpio node names with dtschema
Date: Thu, 12 Jun 2025 11:55:50 +0200
Message-ID: <20250612095549.77954-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250612094807.62532-3-krzysztof.kozlowski@linaro.org>
References: 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1582; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=TO01a4XfI3theHM74fPZdR2rlN2cv6ZWCZ/5/LAF5wA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoSqQlqR9SVbtLeGVNgV/bocU+ztoJ0ochVHCGW
 0ZZTgt49FaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaEqkJQAKCRDBN2bmhouD
 13yhD/9L0JG01crZn1btgo03LUraAB8RlG7s1bFXIjs7mpanEp9LFfwL3QVNQkC8Z3TBuWsX04l
 tv8RKOraPDIGnMsH3anmIMP1TZzC7gob36faKQenGQHgq7+30QpSCtXLUwYerdQm8KuGzErOiDn
 EZrzoLLfqZFD7xNAId3XJwVAm1KWFeaA5UYaVXFtIPIJ+JKegECLfavtcka9J+pjLp9jU2MUNJB
 qnLO8peY9Qzc3amwjesEABOGVRXvmUOktIqSoaZo7OYyTBkmg7nlFZi5C7FFzGaBFkjd96ZR+CF
 DizXzKK5gcLNnGnJwRdmp+X5NxHUuSWhhjAyudivR90yzQbEgbQcfpZQY8eleILOn7RANTBpaSi
 sn6++5jvP9gqLsH/wutPpNaQf48/CyqPiMK9NMqD8BefVZNeVD/bg2hsq9rJXAJiAjqUTdUxaT0
 /YQkXqAKrNCEevLQDjn1N6aZFq6pLaTKIwCYTWB2ysaeJOXiRrJ16iu933ZDdYE2s0+HeLqJ2/w
 gZsvM5pI6Y3Ja2GHXZzTGxlBNQ5GjHKvkD5kaKoh2IjD13FE5M1kHS552oyp8jnnDSXZcsFiQVV
 5WcNhPBJRPeTO+I3+lZ8UTZ/1mSZyDZGFrbis9J3q2sn4ZeGDLUW7J+E+tAgpAk+e3L0Xt+MoCx Ymk1dDEnlah+vGw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

New dtschema v2025.6 enforces different naming on I2C nodes thus new
dtbs_check warnings appeared for I2C GPIO nodes:

  exynos5433-tm2.dtb: i2c-gpio-0 (i2c-gpio):
    $nodename:0: 'i2c-gpio-0' does not match '^i2c(@.+|-[a-z0-9]+)?$'
  exynos5433-tm2.dtb: i2c-gpio-0 (i2c-gpio):
    Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'amplifier@31' were unexpected)

Rename the nodes to a generic i2c-[0-9]+ style with numbers continuing
the SoC I2C controller indexing (3 controllers) for simplicity and
obviousness, even if the SoC I2C controller is not enabled on given
board.  The names anyway would not conflict with SoC ones because of
unit addresses.

Verified with comparing two fdt (after fdtdump).

Reported-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Closes: https://lore.kernel.org/all/aCtD7BH5N_uPGkq7@shikoro/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index 8f02de8480b6..a1fb354dea9f 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -85,7 +85,7 @@ homepage-key {
 		};
 	};
 
-	i2c_max98504: i2c-gpio-0 {
+	i2c_max98504: i2c-13 {
 		compatible = "i2c-gpio";
 		sda-gpios = <&gpd0 1 GPIO_ACTIVE_HIGH>;
 		scl-gpios = <&gpd0 0 GPIO_ACTIVE_HIGH>;
-- 
2.45.2


