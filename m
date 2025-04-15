Return-Path: <devicetree+bounces-167350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C54A8A02B
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 15:54:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80A03580C1C
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7BD31B0F11;
	Tue, 15 Apr 2025 13:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b39IGyYt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE49190497
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744725204; cv=none; b=X4gpk7ys0TOzxyUi9s950ZzaLlw0S4gTvFjdXL5m8vSYx6L8t8luQ/oRiZR8hbEiEEBUWHPO5xXUIt/FK5FV7n9W4nJBnLGfCWUzECCiq9yY5OzXqAEdEHkk0J1wFEdgdEenWBMwR79mCdMskCe+1hfkT0lhgl0Xf0eqMWcXGHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744725204; c=relaxed/simple;
	bh=w3WlQcntpBe85wnKizplsb4utHZXddeF30YcBF9V6T8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hioFQaJx9Dh3sXaS5qsppRaY16fq2Aldei28PWxCtY2+OOzoiBhABpbJkYs0jF9ML6HkApsXvi81aaMFZ3HK+Mh0PhCQMbyoqQDsazo6aQFcp8Ph+uPM08iQb23+GiEUoKAfIEnNHVvXRsAhMwjWRYRG31jvKOW9z5vpw60UF80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b39IGyYt; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ac2dfdf3c38so1076318866b.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 06:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744725200; x=1745330000; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ocL8C9B6DxFYTI+XzvW6PxhfaIdPqGvVLvHUq+LfZSU=;
        b=b39IGyYtzYgWVp5z94ltAzxWIBdr8G9zrWjiQgksA4wJsnvSiRxX/Fp30cOrTfyfEg
         F125IAbH0dS0GTwvfyCHnxXSzudu0fzrFQ4kNNnBSPzyR0pSb0AoASbz4Yv51gF37J8x
         DTiel4E3sdX705I7giNRpLoaih4NmCtJANjbH/gUtCGjpzidY/nGGtToauAtw9DibDLO
         ps5WcAeD+kx5+O2cKx/5UteuiK9ecEvQi0voiWPisxSofVDTfwSitrD/9XgxGR6nIENP
         On9EvncqfGkRXhBo/5cK771bSW/Sp5Bf+5JMzWbURf+ZfDNNdNXxgeinjNG+UUeJPGvg
         7ZgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744725200; x=1745330000;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ocL8C9B6DxFYTI+XzvW6PxhfaIdPqGvVLvHUq+LfZSU=;
        b=PW5XjpaAN6w9XDid7wM05zTdgIpvjYvspq/ranmPbklS/JvPC1ZFcGVW88RsCeiVb/
         V0J36bOgYV6oh9eeL7uVJvPa+GUXRXOU5XBOVZGrsQcHJtOvwEg5rtYAL1mHrqkytPwG
         LI83jvga9fpElVZywoogwRwj9ESZ8+08tA5Vmev7Ovf5YEjYgHYN66n0mjTQtIoki041
         7dZnO2o7yA3LpHEsB7YNbH83BMOBtY9oru+k5S5O4WEphqI8O8tND/Qu5z3lU/UQOHKu
         1dbX6Jx5Bk2TqXXhpfBeirVhXphrFEP0kqDzhB/9JSSSpF5Jc6LBFltdcdzwzV2OMI2t
         Zo3w==
X-Forwarded-Encrypted: i=1; AJvYcCXrsJh5XMJC0cihjFanJGbjZrf9+ewR1wlRR0iLH3kFbhG4QpdE8b2w5wE4E9YwJBHagx/meUETgcWe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl8Ih0MFpzvopHb3tGQl7U+Yb7WoUgKV3uYD825r/PzUxrQbAn
	t0b9I+PCGs+jhKBlQc/f/6+V0P6/LUp4SBwGqtBvmNf3OJeUJm+o33s3ZAg1PVryy6aiuq9Rqt/
	G
X-Gm-Gg: ASbGncu84/LmrNqZLLnNbHytw+tHVc9TJnSBGCZCbFm+ryxzVDDNGAFjbDqYiT98RLA
	rD0u1kehWafnd5s/lfl/gL5qhq7enzG6qVoPLMX5wYBtPdSvKzenv/CgtwNr8qlJF/1X/gBDzZs
	6zFUVC4ikHxb0d3Qbr87AmzHgNNrhakxphm/ZSGfEj+z6+SocpJaZ8YING1Pfefv8Hck284XKt2
	qL3okEQjB8oiSbY0XRGvW0Vna+a400cuXlES4EyCl9kQMbs5NqMrH6BFMdT5Ykeo+mT+I9K03wz
	I9vDfBdRalTiErCzbfmemiz46Am8mk8puJ7ELbXe9sqMrx0YYLyb3AE=
X-Google-Smtp-Source: AGHT+IHifoGCkv9G/x2m8KFU82j44OhfqXR3++NsCbFcIC9nGr6wuzzt7fHwhztGOnXT0wraoravHg==
X-Received: by 2002:a17:907:1b09:b0:aca:96b6:a0f4 with SMTP id a640c23a62f3a-acad34a1c31mr1190134866b.23.1744725199514;
        Tue, 15 Apr 2025 06:53:19 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:7b18:2529:5ce1:343d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acadcc21a44sm681379166b.177.2025.04.15.06.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 06:53:19 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 15 Apr 2025 15:52:45 +0200
Subject: [PATCH 2/8] arm64: dts: qcom: msm8916/39: Introduce new UART
 console pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-msm8916-console-pinctrl-v1-2-a1d33ea994b9@linaro.org>
References: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
In-Reply-To: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sam Day <me@samcday.com>, Casey Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14.2

At the moment, msm8916/39.dtsi have two inconsistent UART pinctrl templates
that are used by all the boards:

 - &blsp_uart1_default configures all 4 pins (TX, RX, CTS, RTS), some
   boards then limit this to just RX and TX
 - &blsp_uart2_default only configures 2 pins (TX, RX), even though UART2
   also supports CTS/RTS

It's difficult to define a generic pinctrl template for all UART use cases,
since they are quite different in practice. The main use case for most of
the 40+ MSM8916/39-based boards upstream is the UART debug console. The
current generic template is lacking some properties to work properly:

 - bias-pull-up for RX: Generally, UART is push-pull and does not need pull
   up/down. Both sides drive TX, so RX should never be floating. This is
   why the current pinctrl in msm8916/39.dtsi uses bias-disable. However,
   this assumes that UART is always connected. For the debug console this
   will be rarely the case on mobile devices, only during debugging
   sessions. The rest of the time, the RX pin is floating.

   This has never caused massive problems, but it's obvious now that this
   needs fixing:

    (1) In U-Boot, we have been fighting with problems with autoboot for
        years. Most of the time, there is a single \0 byte ("break event")
        read during boot, which interrupts the autoboot process. I tried to
        work around that by inserting some random delay [1], but it turned
        out this is also not working reliably on all boards.

        What happens is: Since RX is floating, it switches randomly between
        high or low. A long low state is interpreted as "break event" (\0).

    (2) In postmarketOS, we used to have the "magic SysRq key" enabled by
        default for the serial console. We had to disable this at some
        point, because there was a small number of users who were reporting
        sysrq spam in the kernel log, possibly even crashes/panics
        triggered by sysrq.

        What likely happened is: SysRq is triggered by sending a "break
        event", like in (1). With enough luck, you could even trigger any
        of the SysRq actions if the RX pin switches between high and low
        (e.g. because of noise introduced by the LTE radio close by).

   We can fix this using bias-pull-up, but this may be unneeded,
   unexpected, or even unwanted for other UART use cases.

 - bootph-all: U-Boot needs to know which pinctrl to apply during early
   boot stages, so we should specify "bootph-all" for the console UART
   pinctrl. Without bootph-all, the bias-pull-up won't be applied early
   enough in U-Boot to avoid the problem with autoboot in point (1) above.
   It doesn't make sense to specify this for the other UART instances.
   bootph-all is a generic property documented in dt-schema bootph.yaml.

Define these two additional properties only for the debug UART console, by
defining a new pinctrl template specifically for that. In the following
commits, boards will be converted to use these where appropriate.

[1]: https://source.denx.de/u-boot/u-boot/-/commit/ad7e967738a9c639e07cf50b83ffccdf9a8537b0

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 43 ++++++++++++++++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 43 ++++++++++++++++++++++++++++++++++-
 2 files changed, 84 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 733c17d0495617e683d362d7b7aae59078f2a0b0..9f1796222c597afd45dd31131b198f3574e97885 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1247,6 +1247,30 @@ blsp_uart1_sleep: blsp-uart1-sleep-state {
 				bias-pull-down;
 			};
 
+			blsp_uart1_console_default: blsp-uart1-console-default-state {
+				tx-pins {
+					pins = "gpio0";
+					function = "blsp_uart1";
+					drive-strength = <16>;
+					bias-disable;
+					bootph-all;
+				};
+				rx-pins {
+					pins = "gpio1";
+					function = "blsp_uart1";
+					drive-strength = <16>;
+					bias-pull-up;
+					bootph-all;
+				};
+			};
+
+			blsp_uart1_console_sleep: blsp-uart1-console-sleep-state {
+				pins = "gpio0", "gpio1";
+				function = "gpio";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
 			blsp_uart2_default: blsp-uart2-default-state {
 				pins = "gpio4", "gpio5";
 				function = "blsp_uart2";
@@ -1254,7 +1278,24 @@ blsp_uart2_default: blsp-uart2-default-state {
 				bias-disable;
 			};
 
-			blsp_uart2_sleep: blsp-uart2-sleep-state {
+			blsp_uart2_console_default: blsp-uart2-console-default-state {
+				tx-pins {
+					pins = "gpio4";
+					function = "blsp_uart2";
+					drive-strength = <16>;
+					bias-disable;
+					bootph-all;
+				};
+				rx-pins {
+					pins = "gpio5";
+					function = "blsp_uart2";
+					drive-strength = <16>;
+					bias-pull-up;
+					bootph-all;
+				};
+			};
+
+			blsp_uart2_sleep: blsp_uart2_console_sleep: blsp-uart2-sleep-state {
 				pins = "gpio4", "gpio5";
 				function = "gpio";
 				drive-strength = <2>;
diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index 67ff2ffc6e455fa5ad8a664a161873507cab6391..16c16ec0f4560a7102f8ffef20c58fbec81dee38 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -919,6 +919,30 @@ blsp_uart1_sleep: blsp-uart1-sleep-state {
 				bias-pull-down;
 			};
 
+			blsp_uart1_console_default: blsp-uart1-console-default-state {
+				tx-pins {
+					pins = "gpio0";
+					function = "blsp_uart1";
+					drive-strength = <16>;
+					bias-disable;
+					bootph-all;
+				};
+				rx-pins {
+					pins = "gpio1";
+					function = "blsp_uart1";
+					drive-strength = <16>;
+					bias-pull-up;
+					bootph-all;
+				};
+			};
+
+			blsp_uart1_console_sleep: blsp-uart1-console-sleep-state {
+				pins = "gpio0", "gpio1";
+				function = "gpio";
+				drive-strength = <2>;
+				bias-pull-down;
+			};
+
 			blsp_uart2_default: blsp-uart2-default-state {
 				pins = "gpio4", "gpio5";
 				function = "blsp_uart2";
@@ -926,7 +950,24 @@ blsp_uart2_default: blsp-uart2-default-state {
 				bias-disable;
 			};
 
-			blsp_uart2_sleep: blsp-uart2-sleep-state {
+			blsp_uart2_console_default: blsp-uart2-console-default-state {
+				tx-pins {
+					pins = "gpio4";
+					function = "blsp_uart2";
+					drive-strength = <16>;
+					bias-disable;
+					bootph-all;
+				};
+				rx-pins {
+					pins = "gpio5";
+					function = "blsp_uart2";
+					drive-strength = <16>;
+					bias-pull-up;
+					bootph-all;
+				};
+			};
+
+			blsp_uart2_sleep: blsp_uart2_console_sleep: blsp-uart2-sleep-state {
 				pins = "gpio4", "gpio5";
 				function = "gpio";
 				drive-strength = <2>;

-- 
2.47.2


