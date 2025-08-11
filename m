Return-Path: <devicetree+bounces-203357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B4CB20D0C
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 17:07:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E52A97A40B6
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 15:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 603B52E03FB;
	Mon, 11 Aug 2025 15:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="C98SUiws"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB4B2E03E1
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 15:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754924825; cv=none; b=eYHbIx11c0owbygU3rOfjA4FfCPK/X9WkUeitUS0XBZjfFyqw1PV36kSqXAzUpw84U2Sp/H1u2KpBSrKH33jnp7xP5rzv3RI5fMyt35iwuOyY1S7jBmhe5AlNEI5fLPK5GkkRAcGa+GMri3qtGU4k+IC+volAfbazcsUXphJTdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754924825; c=relaxed/simple;
	bh=/9MsFh2r2VMET8J42cizbyswwP2JrhOPED52i3Bh3D4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=icCdWLpqmFcbyi5bQ680efofJAKcURGnEmFJdKFw2WG1z8X7lkR3TB8NJ80kEGuAuUQxwSfCY/7caHPeWffyPgelv+ceRedQyp4VuyHBU9zhThSv3uVPI8CVz7N+63WFK5gGokaQcHhC9Y/JyXAFKvzGiRLZgkkkh+fiL+WYrTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=C98SUiws; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-459ddf9019cso14424755e9.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 08:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1754924822; x=1755529622; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GALMUBIly8zOO2APNJmpi6ZZbZQ8t1lcCF5GzlyI0P8=;
        b=C98SUiws96u8bsW7Xb/jEShuGnhPNDW+8jKVwHLWx2/cF/IGEq2ZvhzeZTa/XrPUNI
         8zj+2cCFUatvtFc0YBUwBja4pwyX6bU6yTarmDusXuIFuKL0bFFDFmuSnWALR/lhGwjx
         JW0DJVUuLRKWH3T8UNtF1lpnQf3JEUH3jgcwJ7bdYuusCPgag/tEIs+kKlYOK9IH4wiV
         HiovBhsLRJSeQTHH+LrZjxrN/DXquflcs7Do3lVWS47/zrA6Kj03/UZ4fcEkCsbw9Z+a
         umVJEQmzRKmW1ND2s6VyTpejEGkWLACUHJ5H/UxS3au0deRb8SqlhctKDN5DAJp7yCNt
         9oHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754924822; x=1755529622;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GALMUBIly8zOO2APNJmpi6ZZbZQ8t1lcCF5GzlyI0P8=;
        b=pfEEokTp2yycP/8GYVNXAcXhQ8+oLVeLMBOAYr/ZfJscKbO3UgvMEmycuzSrDviftA
         +r1EHS8S5raWYnFFLDDHLsrxhkaFrsnYy8JPb2tDWw7UKIPVdZSltBn14fXhi9ye33FP
         sQpr4rerF5mxlxvSBLJ+5Uw2dLveXShuennTUtLEtbXJrJLxcj9Y/OjS0PdoGGI3RmPM
         +OtmEHWi7f3CMaZoyH3StjQ+AIh3/pliA7VjlpfMLz+bjqv2Ktkg1tVtOTl/BGcBS7Ae
         YrmBLlM2K80BNKS4WAOPPaZGR/d/kDqar9MZ4Nx4q00IYYItHHI/KaSSiICTDpKFpszb
         qGaw==
X-Forwarded-Encrypted: i=1; AJvYcCX7gBQPm2bB20JXeIQrIvOC6h+rulny82NnWGZT3myS21DIW97f1u9jUZS/O9iAwVqqddtBZfhTdq4x@vger.kernel.org
X-Gm-Message-State: AOJu0YxG0JLFZhA2tQi173qIdxWjC8dNVtmzwAeo9ti7LBB0uSyhwfb+
	/tGwE4hd0BotOu/PsWYDqhpebL9TDY2Uo3WSolS8fCXrx67XBr4MUZ51LHuBpokuGEc=
X-Gm-Gg: ASbGncsUZXYGXwm0ZElX4tiB065vwkX/lY/bfVs++iepeTQQWjuGVtK9Mfe5CCinnCX
	xSbuFYCv4P73Q7byK6gR+WL8K6zbZe74D7Ot3HLRrELERmwvne/jjyrno4Ba+8JYxiFDikwtQFa
	g8e+52aY0hFg7D9YPex8XjM/bgYECUgbH8H80541pBDLWmKbqG+FqzaPnb6Wdi8NuMOINMkol1M
	chSXsbcovxowQHMETUF/kGqPNd4s/94AZHbIwz0i19X/eitF/JFwQ1eS0cR9h7JVtBkT5/CI0wy
	e3d9fcB0HX6JtUlNO26lKFfOxkJfkMmFpHFe+B1i6eDLorrC5PQkkWewE7pzDq/El07Fb0tqNyr
	VE2dP2eig64nIDsLr/A==
X-Google-Smtp-Source: AGHT+IH+9Qhcx6eMynQ3lLVh6i5WjIyNopYRiP35jmm71sAsMABoEGgm79ya3Du/LU3oMPdwgp3Adg==
X-Received: by 2002:a05:600c:470c:b0:459:d709:e5cf with SMTP id 5b1f17b1804b1-45a10bad987mr622665e9.3.1754924822216;
        Mon, 11 Aug 2025 08:07:02 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:6841:8926:4410:c880])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3abf0csm40107411f8f.14.2025.08.11.08.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 08:07:00 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 11 Aug 2025 17:06:49 +0200
Subject: [PATCH RESEND 2/3] arm64: dts: qcom: qrb4210-rb2: fix GPIO lookup
 flags for i2c SDA and SCL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250811-qcom-gpio-lookup-open-drain-v1-2-b5496f80e047@linaro.org>
References: <20250811-qcom-gpio-lookup-open-drain-v1-0-b5496f80e047@linaro.org>
In-Reply-To: <20250811-qcom-gpio-lookup-open-drain-v1-0-b5496f80e047@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1355;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=SCoXHXKdSwdMxFT2nQDPdrs2Yg24n21obueLXUFmnvQ=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBomgcO5Bz0IqWJSIm2DzpVSScLMYEbwvwHqSE/d
 B79ouluVzOJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaJoHDgAKCRARpy6gFHHX
 ctOGD/0cSYDZW/goxRDxXIAufr1SeifOHNgUAptcTBvVkFJAPfPOfH5TK4at42v1eOokOLXNoEC
 sTuGkhKZfqOaOg9x8yt7W1vomvviGuGTY7gf6PHUoy7wbnTn3qbY60aVClUWShpIdQQUB0nCsoB
 m+OIv/U8dicisHk48UQQqZySVUrksr0MVkakj5k3X3pcO9LO0c1qO7vBAXEHnSigKZ9tvFf4RX/
 hW1OumHHZzV1Dg3H1G8AxpJBwVLvy33pv3Ttu1RzDxrg2krzWpTM0s3lJaBErEO5layELONQXH+
 sQ13qCTZfsJ8rycZenN9DKJO8wr85Dlghk0FwFwFypKgvop+VrtslDqZiO2zAmC+PnhYHznUiTJ
 biTV44inSyVz6RCRmt/0aP2XEVNAk0lXRfymM6S2GGwUEa8re4f8Ng3AAiUoFByBOsNSqASvVj/
 XmGxUqi7698cHhlGTYofoLfs10dENmzPcw9wzbjUwNjdzyhadfZzLbrT6o0rNm8aj7fjZWRU+FQ
 9j8wiphcuNBGLafNGrvkoF+lAbSPsKDnUTsRvypvBcpMYMt0ZSBMD/ZGTLlQGrYDRS+D4LphCpb
 kMOFhsBFb3JYE6qdkE5y1GehoNCTw/x/vd+FwKJ0A1dGRJ2j2SQuGznINMv8cOp8dG75C7jvEwM
 h3uAFZfJJL+af4Q==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The I2C GPIO bus driver enforces the SDA and SCL pins as open-drain
outputs but the lookup flags in the DTS don't reflect that triggering
warnings from GPIO core. Add the appropriate flags.

Reported-by: Alexey Klimov <alexey.klimov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index a37860175d2733214f1b257e84d5cb4821033242..bdf2d66e40c62596b8b024de833835a0750df35d 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
@@ -65,8 +66,8 @@ hdmi_con: endpoint {
 	i2c2_gpio: i2c {
 		compatible = "i2c-gpio";
 
-		sda-gpios = <&tlmm 6 GPIO_ACTIVE_HIGH>;
-		scl-gpios = <&tlmm 7 GPIO_ACTIVE_HIGH>;
+		sda-gpios = <&tlmm 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&tlmm 7 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 

-- 
2.48.1


