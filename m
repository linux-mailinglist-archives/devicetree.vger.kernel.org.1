Return-Path: <devicetree+bounces-167352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA52A8A021
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 15:53:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D79EC19018DE
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1DE41E1E1C;
	Tue, 15 Apr 2025 13:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ySUlPsEB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6C01B412A
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744725205; cv=none; b=VbPsX8UU1KW96X96tEXTUgqTNRWbaMQAz84zjkEKdztQjZPMHB5S5VrEO6PB1uPaxiyp7F3V5gwYcjfa/HsRxSORs5NplEY8d2JQAo8vGLJwx2q7ga0ssPAVV+kK1YF0KHzjLHI9UpkAu0YxAI2ptekgUubgJWeUIFAV9IBZbME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744725205; c=relaxed/simple;
	bh=JWwoxEMK2A5kDbhJ080c6MdZJuqktgRFVi8Ef7ShjQk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hETeE4bH6CIWqR8VxqHM1cqftzJGZLnAYMRGqaHlLDSMMzq3zwb2SXjSVLQbOz7tkNF1ys2iDaym0S9wV97WOZCJQgjebxBLaKxL/YqDbv0rJ0tBKy41QANHFJD+4z9bOvXyNGqsrFhVCMOUBA9WCu24cHNqw7NcNIcDEvQLGzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ySUlPsEB; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac2bb7ca40bso1049038766b.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 06:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744725201; x=1745330001; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IzowgvGIaxdQmiDRDdrZTttLqfGAIGHXMByDo47trxw=;
        b=ySUlPsEB3vYBsGS1xVnFdaphSHt7LRYeQAyYfwPYNT9teyB71pHVb9/KQhP9rl9w16
         0yzbXnHY7LKNYG/z+WaL94p1ljxIDOo1KWJt3jWkLfwQAfZ+QdwU+jcUhZS2SaQeCOP2
         GsXTNfetQElNS8j96kZZG+MyllcNvhQK8srYh4PbOXCaRmCj27Fv+/lDzAtntww2omiA
         WaJECwzXpMK78Lb20cT9+f+/nAVSqVkWGJLm7MeZ0qwKQXuPKBIKTx8LhFND998yuLn5
         dS1NQfYfHG8vyNeiZhNHoCRizAUkNr2kyV/lFfWVwNxyoQ66cBQIdW8a2n2RxsW5bDYq
         XSBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744725201; x=1745330001;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IzowgvGIaxdQmiDRDdrZTttLqfGAIGHXMByDo47trxw=;
        b=Nf0b2yXjyENsV2onfCQMF6iw/thwXecxyLnqHz0COEG7N7xFYEAHyjYkG1Beau5pXm
         tdAGaNTIKyku5o6RWRPj0//ynGMK1MCkk7xfzOIpTXRX66WUME9xbHmOAPYQeSUrHzz8
         NMsRrWpi2W8FaWpBdr5pCsziDvPwH86oDv9hGPcwe11wFT0SGWrzfOQDHkIuXAXtwGUD
         1UNNj2c/u8XpDNbmZsgjO3YMDrJOCZX/kGlxq+3yxaXWENNa97uOJvA6UiYSegCISuqF
         np11pAwS/MaGKbTyFqIw/i4RHZ5RtTNvUDkOW5cA+3Ymjjlc0ucU2g5rovS9WNo6S4XN
         xJUg==
X-Forwarded-Encrypted: i=1; AJvYcCUVKxdkOMNYu4nAVKuj2hyDv0f91RuG2NnaDJKBAfHu5yv2tpG7YQ2DK42dgNsGzD30Dr05sYlzX2l0@vger.kernel.org
X-Gm-Message-State: AOJu0YygnV41a01tLk2o0t34HtCdE4iueql46Xpwyv+aaIX4lH+8rO4/
	Rnx4feaWxChGtYwIC2Ac1WAH6jktnc444a4u8pXygDwKEkH5v1anom4nkhBNYvw=
X-Gm-Gg: ASbGncuPjDwOWyEz7bCEihP3tLUBDWl9/A33vN2CS6UOaRt3Vx4C+e3M5aZtaEBlBrr
	t3Kbo9tLrXVANDwUn6Cf8OG+cbPGxT0OV6iopuQReIV4SAJH7f/LQA3VtJTgwXPQojoFCCrBX0I
	z6dY/gV2faKK/PoFtAqT9IP+ck9eVKdDn9xh1uPNl3y88Q0tdIWR//KTPPrPPElbnKVVrzvoD7f
	8EWcfiJvIPCc7EVgrfPm0wGZWtnWpZa1UZcUr8KGokkOngGVqC/0I1tyAACDB3S1h5mxubtHrpG
	8wH0PL5JqGKAspPTVl9EjBV7KpM1K0wBc650DVbcFMTrIHqjMOnqTSc=
X-Google-Smtp-Source: AGHT+IE675xAbbKMbD4WeLidcu5LWshKzXZX5noo05D93crI/D9lMfCT+vddCc2faeoXBgbbVScKiw==
X-Received: by 2002:a17:907:972a:b0:ac6:f4c1:b797 with SMTP id a640c23a62f3a-acad349c39cmr1352690966b.19.1744725201472;
        Tue, 15 Apr 2025 06:53:21 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:7b18:2529:5ce1:343d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acadcc21a44sm681379166b.177.2025.04.15.06.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 06:53:21 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 15 Apr 2025 15:52:47 +0200
Subject: [PATCH 4/8] arm64: dts: qcom: msm8916-motorola: Use UART1 console
 pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-msm8916-console-pinctrl-v1-4-a1d33ea994b9@linaro.org>
References: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
In-Reply-To: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sam Day <me@samcday.com>, Casey Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14.2

The Motorola MSM8916-based smartphones all use UART1 with 2 pins (TX, RX)
as debug UART console, so make use of the new &blsp_uart1_console_default
template. This applies the needed bias-pull-up to avoid garbage input,
bootph-all for U-Boot and avoids having to override the UART pins.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916-motorola-common.dtsi | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-motorola-common.dtsi b/arch/arm64/boot/dts/qcom/msm8916-motorola-common.dtsi
index 48134e5ff524fd5708db7b9c3a567ec3f751868c..4e202e7ed7db1921f347ca8b4a01ccec593a8d8e 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-motorola-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916-motorola-common.dtsi
@@ -69,8 +69,8 @@ rmi4-f11@11 {
 };
 
 &blsp_uart1 {
-	pinctrl-0 = <&blsp_uart1_default>;
-	pinctrl-1 = <&blsp_uart1_sleep>;
+	pinctrl-0 = <&blsp_uart1_console_default>;
+	pinctrl-1 = <&blsp_uart1_console_sleep>;
 	pinctrl-names = "default", "sleep";
 	status = "okay";
 };
@@ -132,14 +132,6 @@ &wcnss_mem {
 	status = "okay";
 };
 
-/* CTS/RTX are not used */
-&blsp_uart1_default {
-	pins = "gpio0", "gpio1";
-};
-&blsp_uart1_sleep {
-	pins = "gpio0", "gpio1";
-};
-
 &tlmm {
 	gpio_keys_default: gpio-keys-default-state {
 		pins = "gpio107";

-- 
2.47.2


