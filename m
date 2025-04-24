Return-Path: <devicetree+bounces-170294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6ACA9A6D6
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:51:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46D3D464F0E
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78FC222A7E9;
	Thu, 24 Apr 2025 08:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zhq+lpwM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F6322A4CD
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484466; cv=none; b=OUmku51giCiJZQKVHaem26/ggAb6HJLBmFbagkFIWj+pPCX464aKEQgR8ppveYlmMici58LPra1Kom1djMX6v5wDJDS90mF4otncq1RGbom1wMa3I3KG2o5w7vM5jmHd+LbtHpJlJlvrsJAgJC5KriCDm6R/2OkBmU+x85ZQ0W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484466; c=relaxed/simple;
	bh=oXXVI9MA8NZQJV8UjDqTDMo6XIrdRN+oY4RhgRwelM0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lymjA0vGJg1gPpsYBVsAJgvhU39+8MfKT2IKMfVFHfNYmqaPmqgNjxEbQr8b7Ouz1WrOaDmVY3VHqRpMsXvxYhR2HU9VDCuJx2WajX68yjD8HSOM+DhlNPo9Is70zCoJfM4IdYDpfFOPlS076IF5Lt03qTQxBdvNFkUQTBdkLrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zhq+lpwM; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-acb5cf13996so8962766b.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484463; x=1746089263; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8Rb8W9J7Qw3lwXkyUyMZqbY7uDV4UBFzYR28V4ttS0w=;
        b=Zhq+lpwMzm7IFLnW6sb8YZi3r6sU5LUKDBMAHQo8EixEctfNd74M2AheOzYQstMlaF
         8ayggE79aAnWLZIikx2w51duHBrDT5eBLjute6y6bTUi5ATI6PKL7iFLl2lM5Zyzqfw0
         inwPVm9GNRM5p2ehy3xdQ/3Ot8uzRO7SxDt6o/Aou6wORLNHx9DxFEsEDsbNJr4pTy1o
         9KYV/Vp6wf5EIudE1GnxGh9yB/4EF5sTgEnwfO57Sa81nWFdpzx+y78/QuPHXEYdzqSu
         eETC6hInglT80iHqfij0iifDSdkcW/ZsQdrmJTRQEmy1eLGNXGTwwIl3ZKPkI1RMBWei
         oyGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484463; x=1746089263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Rb8W9J7Qw3lwXkyUyMZqbY7uDV4UBFzYR28V4ttS0w=;
        b=lvbtrWXEuy5MZFGl4+PzjfHe7djlLi9guNxGM/DVxoIfgxW660jdXAV+x7z9ItiS0C
         hDpVljPfALLUlA0aMllBUk4sYfWzgT6ok5MfSvov/02eb7ypdb8mVHR7e7/cewAPKV0B
         Jm8p1jXp1anVGd4fOGkzdRm2W6RSWS9Goh93YQQCSN+UZawgJFiQKHh2NcoHyznW7qCr
         bRvEmNyrJReVFll4cw3nwpzpnupwRds9S+LA8oOB/e41HWd7PW1evFf2LKOEg1vq9Y3Q
         c62sQrlvnTdBpZYarxfpu1lzlpRozg/HZK8o6Kb4RjLvhpW6yXvEjryf/v4QTJvmvWN+
         LpRg==
X-Forwarded-Encrypted: i=1; AJvYcCVlHfz5lnkQREKs0/L39y9uuMlHSYt008w9TugtlZ9aPvujIhfCb4RpPkaQpXu8/OWqLh8pKm89YUbg@vger.kernel.org
X-Gm-Message-State: AOJu0YylIxoq3TUY4+Be21wimUTDHIOkFhuyT5aNUtgrJw0yivcmKS/j
	k4yAcIP7ogPUceJrUHfg+jcJCT4pSXgsdftPBsKlH1fdjtdmw+RjBlOUJsyM59M=
X-Gm-Gg: ASbGnctL3SQEPOL70lW5I4d76qtgWusuCgR+ouxpjp/IO02bAZNlnYrJSIIDnd/ACQL
	K75+ASx2WVrZzdNxbv0ocnQBVtfRLmoTQBJiH0+HxGoMF4SW8xluj32QECeON9GMcRNxcEcq6L7
	Yy7i+mm9DY75rD5LY3ej8EKQekDpHaX0xNBBuu328met+gE3zV0PtPjDvUijaaiaAX4VbpYSRuq
	SoKaFPe3JquXj9UlrPRkxO+r3Q12RXyMe9DiMm91+BmMTfmvzcFoLio8Jerq86y/FHVJ5lrfKC7
	4BxRK8U3o5NxmFF04hwQ5x551UjRNKHby/JbzcVB2x/RjWSAxA==
X-Google-Smtp-Source: AGHT+IFODpwZkT/2DLzoJH0TEk8ECY5Db5Vvv11H7L13gvYc5UBCSm7T9un64cPNNQgwKu2fF3+X9w==
X-Received: by 2002:a17:906:7316:b0:ac0:b71e:44e1 with SMTP id a640c23a62f3a-ace57279966mr58846666b.6.1745484462947;
        Thu, 24 Apr 2025 01:47:42 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace59830ff3sm71378866b.7.2025.04.24.01.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 01:47:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: allwinner: Align wifi node name with bindings
Date: Thu, 24 Apr 2025 10:47:36 +0200
Message-ID: <20250424084737.105215-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
wireless-controller.yaml schema"), bindings expect 'wifi' as node name:

  sun50i-h6-orangepi-3.dtb: sdio-wifi@1: $nodename:0: 'sdio-wifi@1' does not match '^wifi(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts     | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-lite2.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
index ab87c3447cd7..7b2de2ac8b2d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
@@ -144,7 +144,7 @@ &mmc1 {
 	non-removable;
 	status = "okay";
 
-	brcm: sdio-wifi@1 {
+	brcm: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&r_pio>;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-lite2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-lite2.dts
index a3f65a45bd26..0911c537cc6b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-lite2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-lite2.dts
@@ -28,7 +28,7 @@ &mmc1 {
 	non-removable;
 	status = "okay";
 
-	brcm: sdio-wifi@1 {
+	brcm: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupt-parent = <&r_pio>;
-- 
2.45.2


