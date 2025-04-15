Return-Path: <devicetree+bounces-167356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 34178A8A033
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 15:54:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4145C1903B5B
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:54:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996DA296D18;
	Tue, 15 Apr 2025 13:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LMZ3lR7U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EA01F4C82
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744725209; cv=none; b=IeEzNVRVMCJkshclhpBrrVVz/lTlB+8A5jn0apQXvyEgP5OcW2bzEvs91qEQJzMzkF38H3Pz1dBFvXkJ/vSzyEWCMKXTqVnYI2BtD4IL4s6akOg8pWLOf5vyf9N7QNh/zexspY+h9rPzX20fKMv8yAiBXlVtEH7xxkYwSdM8ra4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744725209; c=relaxed/simple;
	bh=vHHaCmn/9aX14sPYqzMHTDqRNgtEpmUR2XVR9kxw4us=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R0t/H4f7Fpg9P85b+IHY3D0p7hwn6iB6RCXp3ihqPDvwrMFEyA2zCOYoJdeXpWrNkoOjqM+eAGrb/TYYg7lGxYAe1ammi6Hk17TEKOPnwLvttpW86cplhC/Z0E+15wzPGMuzAkDoUe0FLh0uMF0+czzWqjI1O4211o3pDQIJRIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LMZ3lR7U; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e5bc066283so9131238a12.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 06:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744725205; x=1745330005; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y4l6FA9ivn6gypUQ5rfKT4sB7wf6dagDvJ3RDh2XcgA=;
        b=LMZ3lR7UIsJ9tfCDq+sA6fcKM2jFaPcqVG015fmPGAT5WMYmxD2nnLkHWN5wvnMLO7
         p5tV7ZsTsgr8HT8/m+ENLr5zCrsQ8ULfFKj+zFRDm6ZF80B0ybYzDK7eIIKPhnBbe/cC
         AlTl5xWFZ1KfKwHDPIRk84RiPzFGrWQE92G1uY0/GovRkbUaec0o0sV1cNNvJTNSMY1t
         w6mSoU18P9o9RxbTaPB3muXBJDhFJh9Hu6LSDImktT9q2iibYw/AXbw2FcaQosp5EpGf
         /0zw64yU6XXaxVXB/8Wg+oAvEGq4ikU8BELQUg5y3Q05p/xBmef2bG4Ji0WYfIikLDzE
         a4rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744725205; x=1745330005;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y4l6FA9ivn6gypUQ5rfKT4sB7wf6dagDvJ3RDh2XcgA=;
        b=slNf89oOMsbSpTvN82OsyXIOIE5mZPqC4Tp2/j0bfwuGyMVkUsgAKqOXzMSRqSGk2d
         fwUSBpqin/WLu8yggikpNuTe1MrS3t1zfe6/r41yj4yrPIqdPBeqk1RJUvK9uBjQfPLk
         cTLecguyrcfEts9LQMOv3EQ5i1bgspR8E/GbjX3uHXTGvWnRCzS1RUTCRThDrttF87nz
         jocv1w2nSb2lvFd4f+c8QtJEW2QcTo+6QyGR02pZ3r/vDDCF1jc0hPmeUdxj5JiD+jn4
         0broV2gPTBIYxE0O9yUh2Pj/80J+BhhwewKEh6/1vHrZtk4Wvm9Cfso/Nx7VHiCShZ0N
         XT2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXfonuXV1ZJQfkUZWtgJIWcJZla5zUJ+cbHh80GVajYHro+wqjqOQFC+pYUVLLio/nvwh01wlmEiehP@vger.kernel.org
X-Gm-Message-State: AOJu0YzZLcL8bNJhaZYLVF6t0z69GEEvx7pjv6BKM7B1SXNshqVgBHVR
	cZu7dZ39Ut8bfTFwmBijrWLkiMkxOpykLSWLltwCRYb/qjbwxMbDb1XXF//qR/M=
X-Gm-Gg: ASbGnctBNp0Xn/scK+OcZsvviiw8DT+q9mZPqnHuchoVg2eWOMJT255cD/QXx4ipEZo
	Ydmv9DCdwz/BJxUTZ4lLd2boL35+rDS7aHbLR+tO8K53VnlA7xn0qu+wgc/1ULe84vgSkaZbIUB
	FR77uWMhzdL9PfDJntC8LNOxJmUOyev+DyEEulDIaGy0t2Pdam7IDlp3qGcOOxApcoHwalG4mvZ
	/z7QhmEVihEhR8JJtLVT7ymXmyT/gBOiaYY7PGR8RFUbEZWRndhJMtYJrOEIFOqTwb9N0FiyJWc
	JIi2GNBElM5nEqbZEPexzXBItS0iDuzVaWJ7qzPdWnRSj00vBT+qCa4=
X-Google-Smtp-Source: AGHT+IGLoagUswLH/ZZJxI5K2dTSGE3DxsOQWCM3VHaHo3ThpnYQbzNk4zQXdqBSRKUbftY/ghk2xw==
X-Received: by 2002:a17:906:db06:b0:ac6:ecd8:a235 with SMTP id a640c23a62f3a-acad34c1a5bmr1656932066b.28.1744725205043;
        Tue, 15 Apr 2025 06:53:25 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:7b18:2529:5ce1:343d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acadcc21a44sm681379166b.177.2025.04.15.06.53.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 06:53:24 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 15 Apr 2025 15:52:51 +0200
Subject: [PATCH 8/8] arm64: dts: qcom: msm8916/39: Drop generic UART
 pinctrl templates
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-msm8916-console-pinctrl-v1-8-a1d33ea994b9@linaro.org>
References: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
In-Reply-To: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sam Day <me@samcday.com>, Casey Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14.2

Now that all boards use either the customized console UART pinctrl
templates or define the UART pinctrl directly in the board DT file,
drop the old inconsistent generic pinctrl templates to reduce potential
confusion.

No functional change.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 24 +-----------------------
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 23 +----------------------
 2 files changed, 2 insertions(+), 45 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 9f1796222c597afd45dd31131b198f3574e97885..4175abc20fa7d26180ea4c69a0e1972222261354 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1232,21 +1232,6 @@ blsp_spi6_sleep: blsp-spi6-sleep-state {
 				bias-pull-down;
 			};
 
-			blsp_uart1_default: blsp-uart1-default-state {
-				/* TX, RX, CTS_N, RTS_N */
-				pins = "gpio0", "gpio1", "gpio2", "gpio3";
-				function = "blsp_uart1";
-				drive-strength = <16>;
-				bias-disable;
-			};
-
-			blsp_uart1_sleep: blsp-uart1-sleep-state {
-				pins = "gpio0", "gpio1", "gpio2", "gpio3";
-				function = "gpio";
-				drive-strength = <2>;
-				bias-pull-down;
-			};
-
 			blsp_uart1_console_default: blsp-uart1-console-default-state {
 				tx-pins {
 					pins = "gpio0";
@@ -1271,13 +1256,6 @@ blsp_uart1_console_sleep: blsp-uart1-console-sleep-state {
 				bias-pull-down;
 			};
 
-			blsp_uart2_default: blsp-uart2-default-state {
-				pins = "gpio4", "gpio5";
-				function = "blsp_uart2";
-				drive-strength = <16>;
-				bias-disable;
-			};
-
 			blsp_uart2_console_default: blsp-uart2-console-default-state {
 				tx-pins {
 					pins = "gpio4";
@@ -1295,7 +1273,7 @@ rx-pins {
 				};
 			};
 
-			blsp_uart2_sleep: blsp_uart2_console_sleep: blsp-uart2-sleep-state {
+			blsp_uart2_console_sleep: blsp-uart2-console-sleep-state {
 				pins = "gpio4", "gpio5";
 				function = "gpio";
 				drive-strength = <2>;
diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index 16c16ec0f4560a7102f8ffef20c58fbec81dee38..3ee61acc0f96aaf79a182d21920b3664a0daa5fc 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -905,20 +905,6 @@ blsp_spi6_sleep: blsp-spi6-sleep-state {
 				bias-pull-down;
 			};
 
-			blsp_uart1_default: blsp-uart1-default-state {
-				pins = "gpio0", "gpio1", "gpio2", "gpio3";
-				function = "blsp_uart1";
-				drive-strength = <16>;
-				bias-disable;
-			};
-
-			blsp_uart1_sleep: blsp-uart1-sleep-state {
-				pins = "gpio0", "gpio1", "gpio2", "gpio3";
-				function = "gpio";
-				drive-strength = <2>;
-				bias-pull-down;
-			};
-
 			blsp_uart1_console_default: blsp-uart1-console-default-state {
 				tx-pins {
 					pins = "gpio0";
@@ -943,13 +929,6 @@ blsp_uart1_console_sleep: blsp-uart1-console-sleep-state {
 				bias-pull-down;
 			};
 
-			blsp_uart2_default: blsp-uart2-default-state {
-				pins = "gpio4", "gpio5";
-				function = "blsp_uart2";
-				drive-strength = <16>;
-				bias-disable;
-			};
-
 			blsp_uart2_console_default: blsp-uart2-console-default-state {
 				tx-pins {
 					pins = "gpio4";
@@ -967,7 +946,7 @@ rx-pins {
 				};
 			};
 
-			blsp_uart2_sleep: blsp_uart2_console_sleep: blsp-uart2-sleep-state {
+			blsp_uart2_console_sleep: blsp-uart2-console-sleep-state {
 				pins = "gpio4", "gpio5";
 				function = "gpio";
 				drive-strength = <2>;

-- 
2.47.2


