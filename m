Return-Path: <devicetree+bounces-204316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD86B24F23
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BD1A1C80403
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0BDF2F90C9;
	Wed, 13 Aug 2025 15:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rj8H+n4G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A05E2C1592
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100798; cv=none; b=OUDuHcO5GDDGPr9AiBqx1rr/sCCYUkAi0XsgrAUhq6TijmPirA+Xj8jY0IYm/f4IzNVuAMdwMfMBjG2tNnYrJj2zA9iRPydOOeb1zEecZPZ6qWmEhzOh/vfUoiPnQYJDo0GVgWZlKnYKYJT5ggNDh7Pf7txkJ22ZSTBGxyKpmoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100798; c=relaxed/simple;
	bh=ScmH9gs30njKd0dmkU64IH6IKSFraUaYNe4Jlxf+OKI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=USU7nFul16CO8Aw55p9eqRRwxrlqF5+LvfMfVchFq7p+rTul9whYVryP+YwS4qVxxqqJQb4tb8xYo1D3B2D5PpqKkjhsXbhXc4SwgumVWm9pyJGfm48SjDCg3Wqq14MEfsVpprPCM/MYOjy4WWkbaNU2cox18WwFyxBEuebrmak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Rj8H+n4G; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3b8d0f1fb49so3982972f8f.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755100795; x=1755705595; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Kc3gmKAAdDn1Asuylh/1YyUvR/BaZjLFgQzjMsPib0=;
        b=Rj8H+n4GKR0N30trvy3McsB01e6K85yOJmp8jEeYctouMPQMFMM+06NdoTMI6t+Y07
         uq5Bkw+824VmHUK731iq3gKvtMZlFORspPVv60Brv3jovxtv/lF9C7E/cB8mzaRb2u+G
         wuk8j8aLAZEq+EuNpY1pyYVYDHiZmlt5Ys4f0kq9u6Rm5e5+KGHcfLNtJeJMmp/qBK1g
         tFkK9RtvbpyMEu1TWLGhQbJi8vW7rg8Zn9odo9+aMeLGsK/K7glbPI/UJUGkc5B1LPky
         gjoOBXCvPV6lWSDMvDuR4RrieTK/RSf2scWC9OI0Djyfvah6hjT+QJzxZIW49AtkpUYt
         Vqig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755100795; x=1755705595;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Kc3gmKAAdDn1Asuylh/1YyUvR/BaZjLFgQzjMsPib0=;
        b=m6qW+40FP++7rI7LM291NXQpBr/qVLp/NVTq1zNtujyI/9oogbKpb/Ia3DIXlAfZSX
         imo/xymFA7m2bwpDSStBopg0/aAXzeNUyRtB+tPyvQ/t1XNExKihiYaAkSRk1uCD5KK5
         iOA88WEudUeFmIq5zLGrtnXb5xe5iwAlxdERw0znuZ4nOrgwihUxxDFCg4oIohmuS5Bo
         Icc9fXzYzhBH30IowSwRKo+7FzVcMUj+1tznfV0t9vhol3n3CjKdtAnacB9z6f3RJIJ+
         B87oC2cIP/ZtRlv20YNlb+oUqx+hhMCgS6cquTfkhlHgaSx00hRBSp9FETy9q7Ony/UZ
         C85w==
X-Forwarded-Encrypted: i=1; AJvYcCUFcpEjb1bDMAg3lS+9nGK6xtWQHZo6+okO0yj1pqhYCt7CrfrobQyx6O4DIB41ZGPicBdmJ2P9SFEZ@vger.kernel.org
X-Gm-Message-State: AOJu0YysGfac5iV8J5p4fIDQHd9xEOZLxPGwvLF0DHbC9cufIN2xV8Vm
	TnR+B5oN9RMtq14aYUnfG9jgj1aaVpmPkzSbJpKrhJtWEkrwoF5PDbYx6Q70RZmQ5/4=
X-Gm-Gg: ASbGncvrwAuYkd2km94HTdohgHX3Q8u11Xq91E9rP3kyRlAvNOU0MhTRCRRORYFenD/
	iTHrUfshpBkLqagHew2ZYkbNrNTeN4ehQqj965cAqZWUFufb7wYj5hUxwle+ZXToXSJJhk/xtbq
	E3IKiPwRBpA2ux/Gx4CsgyQ0gESw0e+iqFxzIPzeEsk/PssgkvfE/2cHDAwejZuUVj8DEa2z5Mf
	gikriPzAJ2NAiG2uhzLzm+cAqNcflHUtIDx8qBpWNAKA7Vr3HTAC6swxt8NU1CV0r5zJ0v503le
	vjpiKy5dLfhS1SXyIGBJNFqZqbZiAZhLf/e7n5vrIH8DR50a1rxCz4EP6CJlGvhHwGGVMdEyGyG
	vjGpZXEVNPldfftrj4F7bkv3f5SclPY0KU9oYCg==
X-Google-Smtp-Source: AGHT+IEUNkUJM7qj2trKHyqQZDLLtDdNbdaoomfMitzBmlPlCJCFsyHe9S1WrSfVP+5w4m9SxhamVQ==
X-Received: by 2002:a05:6000:2311:b0:3b7:8268:8335 with SMTP id ffacd0b85a97d-3b917eb8171mr2913632f8f.42.1755100794506;
        Wed, 13 Aug 2025 08:59:54 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:4537:5d58:c08d:204b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a517c26sm7087755e9.7.2025.08.13.08.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:59:53 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 13 Aug 2025 17:59:04 +0200
Subject: [PATCH 7/9] arm64: dts: qcom: x1e80100-microsoft-romulus:
 Explicitly enable used audio codecs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-x1e80100-disable-audio-codecs-v1-7-af82d9576f80@linaro.org>
References: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
In-Reply-To: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Currently, the macro audio codecs are enabled by default in x1e80100.dtsi.
However, they do not probe without the ADSP remoteproc, which is disabled
by default. Also, not all boards make use of all the audio codecs, e.g.
there are several boards with just two speakers. In this case, the
&lpass_wsa2macro is not used.

In preparation of disabling the audio codecs by default in x1e80100.dtsi,
add the missing status lines to explicitly enable the used audio codecs.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
index 27dd5e4e9939124360544ee9c59900ebb01f3f49..6dd4da08a1d256a341fb5f6b4989852709f68519 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
@@ -921,7 +921,13 @@ retimer_ss1_con_sbu_out: endpoint {
 	};
 };
 
+&lpass_rxmacro {
+	status = "okay";
+};
+
 &lpass_tlmm {
+	status = "okay";
+
 	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 		pins = "gpio12";
 		function = "gpio";
@@ -931,6 +937,10 @@ spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 	};
 };
 
+&lpass_txmacro {
+	status = "okay";
+};
+
 &lpass_vamacro {
 	qcom,dmic-sample-rate = <4800000>;
 
@@ -938,6 +948,12 @@ &lpass_vamacro {
 
 	pinctrl-0 = <&dmic01_default>;
 	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&lpass_wsamacro {
+	status = "okay";
 };
 
 &mdss {

-- 
2.50.1


