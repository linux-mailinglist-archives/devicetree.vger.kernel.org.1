Return-Path: <devicetree+bounces-206443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D30AB2C52E
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:20:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1B74517E8C9
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B635340D85;
	Tue, 19 Aug 2025 13:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EJ5OpBRH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371C9275AF7
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609359; cv=none; b=gVoU3BauKk5bMn4uaBp3U7GvJqr3fp1L194zzbqfwwG0jaTh89hjCRJ110xeX8VyJ7kx3mE7KtaRKktRvEj7R6oPaTurotDOcw9fWF4UPo2JDamFEFjzeiP+NH5XcqYe7/IexNLrpcHGtw9iiU87BmpMiQj5XMurf6w6KylRGYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609359; c=relaxed/simple;
	bh=hcciJ3JEjRJw2/6qsmBCQwKrAUZmXoESCyk80czkwi0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JNLtzLI0ilRzmogPqzsQvuHkHmG5XRMxl78vs6YnTw4CJeQ3CL503M0QDedSo5UUoeUhfNOcauNofeEJvI77t/lCC/LULDSlklt7kbfFrUaRcLIZsyGDwnBUxrlYQcjTCgcxDW2RRKvEvsZ3Ci67vZI4MVBeR63N8JYzhFhABl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EJ5OpBRH; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-afcb7ab87ffso83168566b.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609356; x=1756214156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OE5+Il4drYFb68+K9H3WTtaiI5C7tn33MG/1x7pFl90=;
        b=EJ5OpBRHRd5vZZDH2kp0mP272oDRB3gNWwvoge+dSzudHc7sBONPTirAHTE40s4jx5
         r/wbquSwBMwcn+bo7dw6KKupM0lcS8gxh6BkgX3yDJBERPBon6tHrhJno1ET48pPOKGt
         GjYv47dvQnF+IFBRJ+XsBB8aWWyo2dH3mzyDrgHGjMjpna24guS1Z7Yjzv21SrqgxZZW
         UA4hWT67Ysov1Gspgl4me/83jvjadT5S1SWxSqf0kHItEJDCzKZc+yTEtl/8R7oLI5Rd
         0sCwPsdcb0cFj3Etn900swvFZj3wqBMjLgmlqWD0L3gl2A8H+c8t+eBE9eM+cuNifS6Y
         ekmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609356; x=1756214156;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OE5+Il4drYFb68+K9H3WTtaiI5C7tn33MG/1x7pFl90=;
        b=ZI+0EMT0um3EWO8jGDohDBfe6f4GHRRVz0wk30vjpUBnGnUuX6hguq6mIS5HD+OKX3
         bLefPsmBXxnHSFarDoq8ebw9mHRIW0rpaWded5Oxj/sxfjGEmR4rPlsv5xOC/nX/lbRj
         HzSU0Grv5aurtlZNBdPNx7YVE+XpSfKjxmPG7PxELrxarBUtxuYccwUC9JUr4ClQzI+6
         fi2vt8dSF5GVx6wGzDQH3Mj9Wh8E4CDcxKQ7emmjNHnai8OVmX9JGLgX/T6wsSoTeAvH
         M2BjKK4gwGyEBHIn6itobxSTsCbwc4HLq9PK8TilQAKWBeDAwMco2EpVg228S97cxhV1
         SqtA==
X-Forwarded-Encrypted: i=1; AJvYcCUSi2Zr7LfppxO5V3iR8m4uBO5VsdAaA73e+JpM3V4dbQr3695YaSUHo4eEry9dzxxnO0/nK+lWTNif@vger.kernel.org
X-Gm-Message-State: AOJu0YxGBladnRM2H3uwagc7MpOqDGWycXV+oePygVP25b5Okm6yieDh
	6AfX6hO9ZvsxVAwDFFePnxtEK1RDR4Ta6C0OXOVA+cDkueihrM2ooI1UtLIIK3UsVEw=
X-Gm-Gg: ASbGncu0uK1mmXGFg65y6VsmaQO7LoNeSQOOZucVJ5ySNqLNRsdhxoiUe7HnbF68Dgn
	zHPsIvbfuLYdmVVCYPHxZH1bwUcAtIzDCaPek5EvqTaenLWSrhwJt2nQJSOD2TgRr74CXqa9JPS
	jrn9J3it1RcxvD3ZXKTwmlaEFGAUbhLiCActDsHnimkmWuICYkXCGnc7+KSMTg2In4SBPeM9gIS
	aa56IMnL6pY4Ps68eKmbjZnbLl0gR+J/fheq2oKlTRjSQfGVWnBeUx2Eh7wpoy90YNljq4klpbW
	O9Wuun1JJYibaYN4SXkBQsXEvw5QsXW9B2vyzHfQdTvVNgLyYJ7ySgOUVkho1idgJr/ijYj6zT7
	eDB6krlmwmDULeQRXtIZPoDK1jdHdK/U09Q==
X-Google-Smtp-Source: AGHT+IG4KTbZO8LcfQ30OvU9YlImtjjMx+/FQDo5HoX0RNFAy7RBraEUBzYhhrqCR+YvCl3Qva33qA==
X-Received: by 2002:a17:906:d54f:b0:afc:d540:add4 with SMTP id a640c23a62f3a-afddd241018mr115990366b.8.1755609356407;
        Tue, 19 Aug 2025 06:15:56 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a755f8a61sm1771773a12.14.2025.08.19.06.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:15:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] riscv: dts: microchip: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:15:50 +0200
Message-ID: <20250819131549.86279-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=951; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=hcciJ3JEjRJw2/6qsmBCQwKrAUZmXoESCyk80czkwi0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHkFB6KWZYNHKcB/PWHff8odXyHWo1X4hTKT+
 9yX28P0HP6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5BQAKCRDBN2bmhouD
 1w0ZD/0ZhRotOVRHIIlha+Ddf7VVmjL9AqsBqtw35BBCtjM/J1lBtJbZov664WjaD89YEJAqIm7
 1nDJAcrW8zyKPuGFZPkhgk7fS1W+e1lQys7mCiUHbT9gZaoEhhZ8QlRQTPEzmAOqjIZyRMqJKZj
 zJUKN69xKV5plTt0PSYoXZI5YXg6enLdYWu4WvAyMS4iCPw+zZQpbs47FE2iDS7i1GvfZVMb7iy
 1tFoY5YP76Z9gMnO6LnvES1ZXStyK3brSgpkaxwO/SxP2IrqHcV6yaOSh436BnnMAORn7YlRIMo
 Ooqq5rbcO8usuNli+NgYBu3Zn3Fmz5GlqQUPUG2ejNWG54mqlP8/GVW8zTb29LKa3uZtXOf2xlt
 3EmbX+6XTCeZNL4zvsMM915xv1yhREHodM1i8ibl+l/t9LOi71YIUIZ2zIxwOrkc0ak/4r+kiJo
 zQRRK03U9PBEGv/HGZeI+7AFB5A1DdLlU2MXm9EwJVvJ/JrtEdM/H+ngytiWEIDHe6/rP40QCzF
 v3lv+9QXttsQQlvkorfdMiX0KU2E8rlVufMAnnogVPd3T8ejG6jeEg/dhVJ+f8dYwvyq7eAcjvI
 8cFyAivH7Il/3SZGHOjGoJcRUnx+ByqzqHPIe3PI83XPdO7jKLerwGME6rnkniKa0oeUL8inC6Z Jjnz9NU7AfP7VyA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts b/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
index 47cf693beb68..55e30f3636df 100644
--- a/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
+++ b/arch/riscv/boot/dts/microchip/mpfs-beaglev-fire.dts
@@ -88,7 +88,7 @@ &gpio2 {
 		     <53>, <53>, <53>, <53>,
 		     <53>, <53>, <53>, <53>,
 		     <53>, <53>, <53>, <53>;
-	ngpios=<32>;
+	ngpios = <32>;
 	gpio-line-names = "P8_PIN3_USER_LED_0", "P8_PIN4_USER_LED_1", "P8_PIN5_USER_LED_2",
 			  "P8_PIN6_USER_LED_3", "P8_PIN7_USER_LED_4", "P8_PIN8_USER_LED_5",
 			  "P8_PIN9_USER_LED_6", "P8_PIN10_USER_LED_7", "P8_PIN11_USER_LED_8",
-- 
2.48.1


