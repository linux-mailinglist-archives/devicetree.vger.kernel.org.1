Return-Path: <devicetree+bounces-203358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1794CB20D0E
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 17:07:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 58A9C7B17B9
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 15:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A19F2E0902;
	Mon, 11 Aug 2025 15:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Is1Ec82t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79A12E06D2
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 15:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754924828; cv=none; b=WGPXhIocPrSqRIAhdogXKKwThhlU3Gx1F2kLufeS785IQZL/tTEIdXb45iNrVaI/UDyWN6LJycvBCVr1Ur6NQHZ8p5nH5cd3z7nz3IM8UHJIW8qqglmvO93VjVHwEPJtvq+z0s4vLIP4HSanhV0W+/9OzKGk0nKDDqKDKNtaBaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754924828; c=relaxed/simple;
	bh=Rlzycctntzu3MKLfHab3z+M8eAwhKWoMgPypGF15b6w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r+LFAm+BjyhY26qbW6qZBGfAajDy+Go5npx/1iSekqoGFwO/aAMOWfc1VSdH4VlipJHY1SdDzTVuQC9VIoHVgnOpzO1fS/nzFnVo0aByb5oWLBo7dnGbX1gX47FSIT5dN5wSxSr/NbH0V1kKOrESx3RC+NAx2YbqRxylc3qUVx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Is1Ec82t; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-458bdde7dedso30389875e9.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 08:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1754924825; x=1755529625; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=umNMW1zVA+xnt6ls9ddcILK5xFK/tWBrUkTSc9l7PlY=;
        b=Is1Ec82t8yxI2xD+D4hpj42fpP3tNLs9XYn5PsMaHGVx4lwqXItt6YiednHUC/Io+4
         dwsefo95PE70f3wXZde5I9A0xbqNFpuKQVwnI62HXklpGZ6lVYcW2CnzAsT1v9kOirP2
         BnlqYzwBSc/t0KfExua8i4N3oquPG5jFI94Yo7RhGo5V2ghoHQW44JjjnalMDrhI3rP3
         XR1MmHx/6oVk+SCPQdyUctt+7d1RpsYDZbXmNLUyNfGDUz6AbF55VsNBTO9hLyvt7bcq
         +Aypx2Au6baIlRIYZ2LHHNNL9Chl/ddxZ9qN0B15IZUQtC8ZHcuzK/DlGX/MSnIy6mEb
         0TIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754924825; x=1755529625;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=umNMW1zVA+xnt6ls9ddcILK5xFK/tWBrUkTSc9l7PlY=;
        b=UnN5IyKm5fs9hLg5yxoRJx6eRnz0KBNcGcSNeJJs9CSJ/lYE57x0ldh+NV3d0g9ciD
         7pVb65Zehgd19smwhiyf1/bJGfehP5EhNc7yp6g9HhN3XGm0QljH6PofZjd2HIAJoO4K
         YdDkWY2JAFNL0ZgUeKNHPX7pIOfYf8V7hCFaW/MME+r7qckMVoK8y2j4EulAdZoSJLV3
         HX+sYzUNEh58Yqx8BWeFt5Xme6UkmIuG+2FbPosy92UNuWz6w1MWdUuj6p8b0yrQLmp/
         4DvoUESabFBgBf24e8IEAgwgVrOEAswrg1zsgH0X8YGqiabq2COaBS0hFq0Mi9mqTuXB
         z7Wg==
X-Forwarded-Encrypted: i=1; AJvYcCWPYaAa0YfhSK3WXlRdp8qocBWGpwviCcV+hnRZ9uPfkG2XAuhhfesth6OvvCOTqEsWhqFtNpnMtCcq@vger.kernel.org
X-Gm-Message-State: AOJu0YyB3Vveoe3ztCsuURqhUM9iEnfnFfwNQjw+6fUL8zjJDAWY3Wul
	43HxKWszYvmQWfQNZ8G2dxkZX7fUXXfrObxWny5mZ9o7hnn1Sd+dSN/Bm7sagvG2W7s=
X-Gm-Gg: ASbGncvfSXVoj+kV+PBf0/u6rd9KaVt0CJCmD6HyB0/NvbTeiDvZm3HkELkrCdpfpG4
	J9JsUiZCIhRnFWRe7wth3rY9kgkaqYDJuKt27YfFOyZL73KrZLS12w6mU3MEp7e7VP3+CIb7S4B
	PW3kM2b9CTKXrdPeUCtFYtyX6uuYBD9/vI4XMsaM+inw8jZWghhYrPA41LpUzc/Grf3l4sWA44D
	QtucsdLq3vars8li0bq/Uy2DG3stHkIg8NveC/zAbwjotC44vfSfYjS+TkMkzerKJPw5hljfQRF
	8VGioH20dAy/2sN6bdJUwd19r+1H31ttYIXyVx/YO/ta2z28gft3HhTe2PnUL12diHk1qsYpBEs
	rI9zXAo8d3WSPbNz7tUBfbJQ2c22C
X-Google-Smtp-Source: AGHT+IFsYp5+kmZAd8W7I1XRVAz3j1CWDnQ9mLcNlFcNDbLKroEh4NRpqfG+U9oyhuKbb8qf9DR3wA==
X-Received: by 2002:a05:600c:4fc4:b0:456:db0:4f3d with SMTP id 5b1f17b1804b1-45a10c05aefmr270445e9.24.1754924825331;
        Mon, 11 Aug 2025 08:07:05 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:6841:8926:4410:c880])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3abf0csm40107411f8f.14.2025.08.11.08.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 08:07:02 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 11 Aug 2025 17:06:50 +0200
Subject: [PATCH RESEND 3/3] arm64: dts: qcom: sdm845-samsung-starqltechn:
 fix GPIO lookup flags for i2c SDA and SCL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250811-qcom-gpio-lookup-open-drain-v1-3-b5496f80e047@linaro.org>
References: <20250811-qcom-gpio-lookup-open-drain-v1-0-b5496f80e047@linaro.org>
In-Reply-To: <20250811-qcom-gpio-lookup-open-drain-v1-0-b5496f80e047@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1248;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=6wc+M2Tic42xKT7JSdCDpm9lQ5MO1L7g7K2EIBEDGpc=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBomgcOK+MnI5vyPYOBq5tG/nekBDWPVQIiZ98kP
 myoiQD3QQOJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCaJoHDgAKCRARpy6gFHHX
 ctHEEADA6N4wnWwVaaUUYAIXtqlRIzTgcCv39CoSkVBuPwLys+SiZsORtY1Y9VrQRVPmM54SVUz
 BSNdBoH3T8pz2yCSQFISICp8s32k1jcK53KFPLw2ShkaJv1V7+JmnoD/Hvvjqg+1+C2r+xMVSs3
 NDF1HSw9p3IFXBeZRPXqI5O5TQeBNBAqzTBy9NhTfQeuYOT8GyqXY8b1nz6X8hhTF3zlXrSWI8l
 xh/6R8jdyKdt598UL1Akgwmz39iTx3vW6vK3OfgFMYHUHJwqX6ZZJPRkkaEl9UKiH3ZJAVffCy5
 sS2LHCv42qqyEr2hnGu//sbq0g1OBXO1+JGGBx+YsvXWt1bLaJ9of/Ftdw4xBJD1l3r2Faui6Lc
 3Xqv8OMDZHh68VbK2XiTeDMkTIaX2Dj2Qnm1YY9Q6jyHbD1TX4+fT3ULhWCSVjc2yiGSeW3hcDp
 wUdZS+TGpwzbUYAmSU9cQrJnhiwTQrqjskU+0miD6s6Bobc6hnTbIzxntDMF2Ch0o9UDCGG8cem
 85OkCMj931eJq638gazfUAclilRRCgeGV6xfQUNFosgGQYvHd5PHpfSEdycK55U4SEIslE5XUSc
 3PxA8iuXyyRi+sQr9/QkpjOu1c6SNJ6e67rSsZvbXU+Icua2n1NEXAj7QS5iL23YkrPPcyBSRDv
 dPRo2TkgmPqe2pw==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The I2C GPIO bus driver enforces the SDA and SCL pins as open-drain
outputs but the lookup flags in the DTS don't reflect that triggering
warnings from GPIO core. Add the appropriate flags.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index d686531bf4eacae2105bbed3a9d5478b45a4b2a3..9076d8eb4d50af736d5c4de7158fbf32231f6629 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -145,8 +145,8 @@ rmtfs_mem: rmtfs-mem@fde00000 {
 
 	i2c21 {
 		compatible = "i2c-gpio";
-		sda-gpios = <&tlmm 127 GPIO_ACTIVE_HIGH>;
-		scl-gpios = <&tlmm 128 GPIO_ACTIVE_HIGH>;
+		sda-gpios = <&tlmm 127 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&tlmm 128 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 		i2c-gpio,delay-us = <2>;
 		pinctrl-0 = <&i2c21_sda_state &i2c21_scl_state>;
 		pinctrl-names = "default";

-- 
2.48.1


