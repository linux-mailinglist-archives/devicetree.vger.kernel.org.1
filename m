Return-Path: <devicetree+bounces-61912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2B28AE987
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 16:31:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D5CE41C23054
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:31:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B61813C693;
	Tue, 23 Apr 2024 14:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uOs3Jeb1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E694F13BAEC
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 14:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713882671; cv=none; b=LhGHRl6+L0qihG7FqOSdHflRn8VnjjNS+KmtT6Zm/DzX1BZ+vZ3eh2aYDzjtZd89iaH0r2mfSwPzEs0c1twAoC6+spBJHAEC781dzROqTjOs8kNcMyBZ1B6Jwm+8Fnjn/RoSowVx0fyOsTJHXt6CEA63YVa+0cv2I/bF4egjyZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713882671; c=relaxed/simple;
	bh=+UavbOojFmAIVuDGknU8MaLgwR7F3N2h7Re+qQZJ5JI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C2YEcCbj8lPFLT8Lz7z5QZnaHlMRIUK3lxT2R0IdE3s8NrBXAFpCVH6SD7WvGMItSvcL7OjJRIbpPjtrwhpBhNSSy+cW8ZKVn8djf/umue69ewFHrBR2SDrUw6rj6ZFRYXtn6O+uN7ihiHZXNPVa618gTwQ29NzZSgA8BfDehTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uOs3Jeb1; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-57225322312so628061a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 07:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713882668; x=1714487468; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7IDPH8aO0C/CgFOvGahjdiLNFhkL4WdyF17UbMtaO6w=;
        b=uOs3Jeb1PBkFtWHue3LJysWPE/eiRq3MCNKtsJxYiuc7IaJcbHK7/KErEkfvXtLgxL
         gFI0NuAzJuSCOzl+I01w6Wn3b9GistRxrPz2nuTa7g3Pu6tF2WBY1FB/tLJsVKed2dl0
         v+M1sI40R28l+M2ckMburiyRR43YBJx6qHf7AcjSNkXwXkIiEDpBMYywSRWN777x5iZU
         bJamRjfIZBhs7ytAWOyLS4h5JOi7UFf1OlCzIFnRmmvr9rdtQc8PiGrs+2/84UkjC5/y
         qAyYNA9QiiTltRX36BP/DaUeigB2ZkuFHe440azSRtN9aBKBAviO6o+bYrUFIqwEij+S
         lu4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713882668; x=1714487468;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7IDPH8aO0C/CgFOvGahjdiLNFhkL4WdyF17UbMtaO6w=;
        b=F8217DF04F8b41bBxgiPsSFqNpltmB9niuiNvfZ0fn1Fzbf1NPtOCynEF/zuABYnRF
         nqVOpBYAVBeisaZa4ybpXGEfxYE8Lt3TVbMslalqKpAvqwAkVudjU7d+nktbLmJn94q4
         pr4ImlCA+DPCmpslRXf3hUGH3HvCCWnkSjcH2+fygxtSu1a8Nakp4ehdm6TNmP4iuQZ4
         hOCOgkh6UM/6wEThvcJqGNpII2dauSOHcEyls6P5iM8avJ2an3cBk1VdDBKIixjJrNrR
         Ju+ZsO6vpP4uYSPLbhyDiOyHlJKKhB2RShGS3DnwqNa538LVLpYUrJudeU8Mjuq/7GtM
         FpsA==
X-Forwarded-Encrypted: i=1; AJvYcCUYw62pXfJlT1XpEu2yWdK1urxYjuGOOgJU9b12cdt1l3RUdYEOjW+jHCZPWlE67cZW4eNakJpEqPPA8oroHeLET+Iezej2y5Wk/Q==
X-Gm-Message-State: AOJu0YyMFkvDbGPH2rMkpiq7CYHRCNayIvhOR6PG0jJliSoEUwYa6/sf
	hvnm9V/7ud+WKAkzbUu1xn8WoOAdQmHrqXYd1LHPz9Lim07uR5KyarCiBeBSAak=
X-Google-Smtp-Source: AGHT+IFYZf3kNXrbsNynZ3gGf77a9GhwGcDNyKdEdv42OO0DXfASpzIR/lk0VyJPU+3cTv810Ziq9w==
X-Received: by 2002:a50:d5c3:0:b0:56b:d9e7:1233 with SMTP id g3-20020a50d5c3000000b0056bd9e71233mr7620642edj.32.1713882668343;
        Tue, 23 Apr 2024 07:31:08 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id fg7-20020a056402548700b005704957a968sm6708099edb.13.2024.04.23.07.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 07:31:08 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 23 Apr 2024 15:31:04 +0100
Subject: [PATCH 2/3] arm64: dts: exynos: gs101: enable cmu-hsi0 clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240423-hsi0-gs101-v1-2-2c3ddb50c720@linaro.org>
References: <20240423-hsi0-gs101-v1-0-2c3ddb50c720@linaro.org>
In-Reply-To: <20240423-hsi0-gs101-v1-0-2c3ddb50c720@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

Enable the cmu-hsi0 clock controller. It feeds USB.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index eddb6b326fde..9755a0bb70a1 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1247,6 +1247,20 @@ spi_13: spi@10d60000 {
 			};
 		};
 
+		cmu_hsi0: clock-controller@11000000 {
+			compatible = "google,gs101-cmu-hsi0";
+			reg = <0x11000000 0x4000>;
+			#clock-cells = <1>;
+
+			clocks = <&ext_24_5m>,
+				 <&cmu_top CLK_DOUT_CMU_HSI0_BUS>,
+				 <&cmu_top CLK_DOUT_CMU_HSI0_DPGTC>,
+				 <&cmu_top CLK_DOUT_CMU_HSI0_USB31DRD>,
+				 <&cmu_top CLK_DOUT_CMU_HSI0_USBDPDBG>;
+			clock-names = "oscclk", "bus", "dpgtc", "usb31drd",
+				      "usbdpdbg";
+		};
+
 		pinctrl_hsi1: pinctrl@11840000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x11840000 0x00001000>;

-- 
2.44.0.769.g3c40516874-goog


