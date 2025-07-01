Return-Path: <devicetree+bounces-191397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F23AFAEF248
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 11:03:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5AD918871C9
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 09:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9494726CE1D;
	Tue,  1 Jul 2025 09:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="jyYIF9UC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C274926C3A9
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 09:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751360499; cv=none; b=uRdfk0MIJAPEilSWPF0Z/kFXUB5HUcUZ3VkQtewPfpzra4B+/GxNtE85VeG74k9+mopmAsn/Q97QUjPwwi+8kOBO/h9tTrLSVtzQgTHRUIHIya8uqc7utC27eGUWpvGqiNh3YiAza+2mmpJ7PM0DIkG9sVN80H7rQVMpMf9sX/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751360499; c=relaxed/simple;
	bh=xyipH3EsXGzcJoghGmIL6bV002b73SSHZcnI0Bd4lYg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RuvXZYY+H3+s6hwQr9jYX4im694/oPgRaYC1cwdN+XUUm+YB/hOVnsLqSjSFTxYbie9E9YToA2SEazGZAQK1NMqIGol/ZyAnzzjTXETDOjALYK2wcssBdXQwCBPTrpng9W2hpbvWl5Ws6KsUG7EVQrvY5Bnec5leQ9lNfQL+4/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=jyYIF9UC; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-450ce671a08so19544925e9.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 02:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1751360496; x=1751965296; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YoHl5puINVJ0Ve4YxxvYISOWNCVrnk5j1B2aIYAYSzA=;
        b=jyYIF9UCg9Vlkuch9j7KIqjHGtYtQwoXFM3ZnEMmWFy/HH3l+HoorUFT2dWbn85T0b
         8IgyJpJ7ICFZX7MM90BI/drWnt5RH3CRWzzWQjfB9nP/to9NkWwpopRSBfuyXxJS3Bpl
         W5i7yqvm2p5gmr6stBu9jwz/vBoT6ISxiqsfuZxiV3pB8SOAnPsxSpyx7SyU7kcqERTz
         qSxt81ZosV5uqs6Lg/AwSmLmyPkrLtdwA2cwcf51ykJ7iMlvb/DDU6ZqlRhSItODjr6b
         tyuB+4+VUM2Y9iobvBQhATHZYBESz87gnWtU1IBysvHgCxYN5WxJA7MrOXwG3jTUKvkz
         3+wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751360496; x=1751965296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YoHl5puINVJ0Ve4YxxvYISOWNCVrnk5j1B2aIYAYSzA=;
        b=EQqSDNe8rzBZ8uPBYRYP7X9xbm16b4QRerU1WGD6E6bsTzuvqGwsDal13ASUev0lZ7
         3KhNpHFmx2bGsJYTHobn9eKhIDExbqIVyvcyPJFBonHS+iOkROINQ91lATuExsklq66y
         bCNbXYTADAhK7lIGKG8D7Bq4Qx8uTV6g2bZeM7soaR44y0Qv4WMAVb5UnYPUIeTcrTRI
         IBU6gnozq3fknxt4GXmk5PQQ269/TdSR+9NbsUUDdCX99TwTodD/S9MnxBBW3rap4tC4
         bIKk7abLA4WFHdidpO4AlPuDFd51VOZMgM4w/Tn0P3KED7Vu1+Vom9WH3tvvO9g0vWsi
         7huA==
X-Forwarded-Encrypted: i=1; AJvYcCXCPTR4HW7+RiPWvZ3nZd1MloZaaVOiY8I4liwXdZOdyvtocg9zT2/WAxHQAmE8CcUU6YVdvh2QdHQY@vger.kernel.org
X-Gm-Message-State: AOJu0YwlgDkVsOVPwuHeAAuFAL1M8/BWb9Gsiw/5omJ0Wa0FQKPBHJV/
	CF3H0PP3bDJ9IKAbj0QJBVHdSD7dO8oy4RRknA5qnCQC3sm72sosWJ/bouyhLksC8DAwn2n5Gab
	bpGIQer8=
X-Gm-Gg: ASbGncs0cwpLNsubKP+wvvd1j6bgpy9xN2FHsxzbGi/OLPLjscQcK15G3Qf2fyqbfP8
	iOONt6C+YI560qmT+MLRAsku3Axp1KHW7qiRv1cyNHh/41Da9ARqJlS5n+O/9FmRri2Wif427rt
	5viWUoSblV4Sxe2o9vPpS8EyI9F/RGnkMUWzi2tPyEbBUirpvkBMorR8QNmmbLguOnRtfkeNPFs
	PlpU0xaUqv4ZdA2hOHHxeFXGzVwVSOxS066My9mPfSgsBA0JuSEJ9ZhwGSw6GgsdezptNEG9usc
	5j9Lpn2SpD+QOvEJLMDNu7MlnG94i1LatQ90wmXU+peEYjnrOaHQeS8=
X-Google-Smtp-Source: AGHT+IEkwOT13Zt2Lni51R0BCavP63O3KSLZPOFaIrkcqHbcTQMv4J3grlnUcCmcEbqzChRvlEJ5ew==
X-Received: by 2002:a05:600c:19cb:b0:43d:8ea:8d7a with SMTP id 5b1f17b1804b1-4538ee71251mr146489945e9.28.1751360495669;
        Tue, 01 Jul 2025 02:01:35 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:a387:7a32:8457:f9b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ac6ee0d0b9sm6949707f8f.18.2025.07.01.02.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 02:01:35 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 01 Jul 2025 11:01:29 +0200
Subject: [PATCH 1/3] arm64: dts: qcom: qrb2210-rb1: fix GPIO lookup flags
 for i2c SDA and SCL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-qcom-gpio-lookup-open-drain-v1-1-9678c4352f11@linaro.org>
References: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org>
In-Reply-To: <20250701-qcom-gpio-lookup-open-drain-v1-0-9678c4352f11@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1202;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=B6EZY7zli8B1mlffzLMWzAcw5rKfVX2fkyiIUXf7/nM=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBoY6PtucQ+FGHhe1dgF2HIOPFscGtFa4NTbOfAo
 t/sRUg4sruJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaGOj7QAKCRARpy6gFHHX
 cpv/D/wNVTzi02SS/tvFMEp0fEzisY4URHW4kW0jv9DJ52F1hhUcYpisAcMMbbV48COkuYki06d
 3hV9y/ZRi0D+z+KrtHiPIdMnOFfEAMrqK9CDNqYpwnv8jrvbsCLEhxen6/1e7POLnhI6Wmhbz0s
 y3rBLU9xGXEs4rS784NVAkOFQpBGtDKPmNK7XsFiyn2cyOSxIP+4mnjss1uUM5ojA1j9NiMGsXA
 /tJKl8A15cwcarDYfP8qHpMxGljRZFXkIhYU2/CldnmvbXNhfIXmRqeET5zi3ErmLFktxXSDroX
 EmPfACThxoW01WhdiQ3cCHdqZCbitEZmdqwXDsyLn5gq0OYbnFiznKHetQLZwvB9OW4pevJD9sB
 g0Os6W+aUxZe2ika+Ssbw4N+YGaCWEEjBmxxXRqM6WoCeznACH+6ZH1hHm2TAmexfEZj8128DGp
 jn0VDBG8Sxo2ko6ZhTyD/8jidlC4KemYRu/87193jXOw3sj8cswpZpbVQPLGUVl9EnPICTD2Go6
 1cD3nJzH3iNAWlNlXA/RrtoQZfJD2nnAvxerRahR1obFZpLJpAU2GS3cM9/f4pM2Hj4EnqKJDhu
 5oLU0FfVRvB3d8cNPRyBccOMkgrga3ICZtGAP9M7riYCk4YILmF/kFY5jh3A+JHmrWrg4CAPCHU
 s29lfpdBeDgmRtA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The I2C GPIO bus driver enforces the SDA and SCL pins as open-drain
outputs but the lookup flags in the DTS don't reflect that triggering
warnings from GPIO core. Add the appropriate flags.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index b2e0fc5501c1eefc7e037b2efd939126b483b226..277b33100ac07cb1e8477e9e51331f974b65092b 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include "qcm2290.dtsi"
 #include "pm4125.dtsi"
@@ -63,8 +64,8 @@ hdmi_con: endpoint {
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


