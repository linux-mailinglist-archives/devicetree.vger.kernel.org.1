Return-Path: <devicetree+bounces-139502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 143B0A15F73
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 01:55:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 547EB3A704E
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 00:55:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E0FF29D0C;
	Sun, 19 Jan 2025 00:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tpTM9NnU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC5E1A260
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 00:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737248106; cv=none; b=AM4OjVQC+OSyyFvTr16Vts0AX10O9sIxz7hQT7NNm1cL1BMKfB8UoUiuoLJn+z2Du0Tt6BtuxdwbN/Q/pSAat6IHL2to8iMFoJ4cZ9u1ls72kdy86RzGlOjWV9Ix1oLi8HeunN8XRh7RqJ0JXs16RrcQ30S4eKTNjulc4qYeAnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737248106; c=relaxed/simple;
	bh=80L1Dq12JtzwjRpRwlHmEABXhE6lvfKAML2aLdMXNSE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rjn0AAASz5DdCdKf/RB54hV0mWvIAMDIG2v+7Mm5Ixr4tjIgzN9c33lxsGReBT6X1CmWsz8e9sZLaUgu2QpWExcs/MmvlcQnII0GkMcQ7xl/qNo/gJj39eHjamQ9XRZm7r1hAitzFkpFMcw3O2qrF6qwn33PffikIejLot2rIok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tpTM9NnU; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-386329da1d9so1722376f8f.1
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 16:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737248102; x=1737852902; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CQoxBf1rxJNQe529IwiFy/vpDH6p6LVPDnMsO57jplU=;
        b=tpTM9NnUwcq+whVVBkZZ1FXhwtv2GtszdvYakNDnFOU3GHtR/OGOXA8OWQ4S4sCfF7
         PhO9YYqQbMIUatFJUHqh7wV67CLt4bjh8E6sGgrMUV8vPkD18j1n8V+cn+Rr89XfCRm/
         +jcm+i1wXILsCobG1T242q+tS/zKuYomVZy64swN4flv9yllN9ZxadOsIxSUVT38cOkq
         8i0fd/gf85Hbvbryp+thAMNbihfWNgkg7mt1ue6BwXba1ZZqDFlGPT6xS9T5KV2ZE3nf
         HzhX8EotrY5HpM/VxHUZX5xxI45iuTM05uychLqnUaDdAR1Yv7mBCjj6cbvbZsad6gYH
         4X/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737248102; x=1737852902;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CQoxBf1rxJNQe529IwiFy/vpDH6p6LVPDnMsO57jplU=;
        b=s9IiDZEMVSXSn2nM+rFRq11bffS0B7qsCc0KVtMIQQgoRYbWxYMkD72Hg1Qh0sgSiO
         /Fmj7fJfFc+JlyvfSXUvvvS9FXTSjc4L/zzSy5LiUxMefNQbBNKFQUoBIPca+deixIp/
         tFuvG97CDeOrG7gMGb9Z4dTEnleGjSc+Wzbz6AUrwHge7ArJ7Bd0ZGvYCBBTfBZD5tr/
         BNvbE3k6Vg5UGpTyhd1TL2JP4f6TEL0nQCC2UzscGqK7XBlxGQfmUV7/V9MZDI8Wm/eJ
         rlAlg3jP2VndgLfvZ8Ww3h/CZOvXjJqVGz5jf85OEAQLO+Xg2PsChX9rXk+hoK8l1emt
         rzKA==
X-Forwarded-Encrypted: i=1; AJvYcCXkkmcdSs2bjA5FTKn/HuVTSi3kx6rhN396xzcd13Rix57vM9cVwx+ef+ZoVD7fMyKAtQR6ffhZ+tcs@vger.kernel.org
X-Gm-Message-State: AOJu0YwgNprBVgcE2lNtrCKEKSv6eIVoSBrjJ/BdO6WGPYHmIVedl2nY
	H6hn3a9TpM4kMqnRkcby9f1OvIDEsbvE1v9Pul0oMBkUyNSOlbHyQoDtsglZkrE=
X-Gm-Gg: ASbGncsh2LBuZJA7VYXJK9B6KEwHBguaB/ny/KvLDWKSDUJbQgfYHiVcl6OwKP6NNHS
	Y0sl5fV3bNDULfkoOX8KX3qAdnG3h8i/m89wfaeTI7SwfRgSca55ztxaRHy6NnX3c1xLIG4dAy3
	eCSgKNyarUdqumX5y6PyqJ/ZdKmYOPN6fauClEGMyT4tShldwhUzMJCm3g+zBrTrN6yViJJSZZ5
	QaqbvpNkUOPS4VKu0bPJnx6SpwfSSoN9vTMRDWv+Am2XWuz7w4RBiF5Ok3OMRCIV6ThA6lk4CSR
	sFI=
X-Google-Smtp-Source: AGHT+IEs+fLhbgQF7j4JK5dh+oehSJaN8Iml4g6zGqcT2YF6zI+kW80IlP/CdnQP5m2nGotoSUt0gg==
X-Received: by 2002:a05:6000:1863:b0:385:df2c:91aa with SMTP id ffacd0b85a97d-38bf565579fmr6508914f8f.7.1737248102427;
        Sat, 18 Jan 2025 16:55:02 -0800 (PST)
Received: from [127.0.1.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38bf322aa40sm6339241f8f.45.2025.01.18.16.55.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 16:55:01 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 19 Jan 2025 00:54:54 +0000
Subject: [PATCH v4 2/4] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-2-c2964504131c@linaro.org>
References: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-0-c2964504131c@linaro.org>
In-Reply-To: <20250119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v4-0-c2964504131c@linaro.org>
To: Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-33ea6

Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
of previous CAMCC blocks with the exception of having two required
power-domains not just one.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 9d38436763432..10035bcfa89bb 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
+#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
@@ -5109,6 +5110,21 @@ usb_1_ss1_dwc3_ss: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ade0000 {
+			compatible = "qcom,x1e80100-camcc";
+			reg = <0 0x0ade0000 0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&bi_tcxo_div2>,
+				 <&bi_tcxo_ao_div2>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss: display-subsystem@ae00000 {
 			compatible = "qcom,x1e80100-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;

-- 
2.47.1


