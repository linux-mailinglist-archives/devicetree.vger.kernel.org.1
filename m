Return-Path: <devicetree+bounces-135101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 478A39FFBB9
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:35:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B8071627D9
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 16:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAD0E153BF0;
	Thu,  2 Jan 2025 16:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zu+v2FSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6BE15B980
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 16:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735835661; cv=none; b=r6aWqDpe2I/433A7BeCEXkr7encfvIvp3WCT+fiHlCNsgygzWmKKpllSxW/BDSVMW0kEwKa+CmpLwxk1BZM0dvDLi6gmhN0r5T+zlG6HQjzYm6xPHQhkASC9ErKxSofD7KOAHYJoQ/7TA0+8vEuloCX01oD6+ZL+nQQ5WslROxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735835661; c=relaxed/simple;
	bh=X+nwIbBfbLcCZT0e98AgVPsphz3+SNjG2j83drNBAAE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hXtI9Ej6+p5v9Q74oTkRIaPWaR0NUVMbCqR+CuDKTJMsxMy/OIIi5BcqanlYAj03+x17KTsT3t/Ct+PV/ilvXCbuPskoJjgqrLMnwYDnUHwzjifm38u7CRU2FFl5g+7lu6LWfZOeqmJKntd8Ds5Em51MzlQFBGd9Q1vvtj+pdXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zu+v2FSI; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4361e89b6daso78636115e9.3
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 08:34:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735835654; x=1736440454; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4jQuo0hv2fipuMWchCJhbaPZljnbATox/IIGJSDo8Gw=;
        b=zu+v2FSIBxXWhWF4fJ8b/9YYuT6w68iLvoQGe15bOUpj/PG8Htyoq8CmxG0WAJGL7x
         3g/XokqMwmfuN7Yaf0KwOxxG8ldcgFPmdMB2n8qlcEkaBCvSWB3xwMThffRZRvgabWQB
         0c4O1u99+vmiHOss8S/cJc3JgLqNpK6+pLhBZ47QmIZJP8cWEbK3zSM5ZVs8W7xJH+oQ
         05P00dmRJzqIM7jwJ16RmDndK+E4Cb8PY/OqCHnAmc/aAc/OcY5E/sB7+8Lg0bKUEKnJ
         7cmdyYYxn1sgNZu7+2lI5c2s2EqlO53YeA2iYCLZIS5Ro1+SzHUoaMa4V10VufmdmiWl
         UiEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735835654; x=1736440454;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4jQuo0hv2fipuMWchCJhbaPZljnbATox/IIGJSDo8Gw=;
        b=EGFgNB2zoPB/YSCtXl0u82Kl78YcZSmK1Q4U9V84zuUfsgI7t0iEWj93yHNX6sujH3
         b0qflta13b7/GOqLlS+CSMJcwyJmQIvfx7uKZ+EgCu6zB8/Q+pQ8Yp/Ovl9yP4EMyk/u
         X3bj3XPxw2fWtXBD3Ii5Xm1vMPwSDxYYem98uNr4MlFp2K54LmCmcd8eZRDUTdSG0aPT
         pOBMJbUXAwxb38xs6Odc/dmkrQaeOieTzUUC81O/Iyket5sWgM9wZVE0eCJ4AUnmLvjn
         9TT393Qqftn11wqi6XC9CCV/KZTnUTBRjBY3bfm7hyvYF62odAC6UCm0SFrq8yMM5gn4
         abig==
X-Forwarded-Encrypted: i=1; AJvYcCXHepPf1kmfbya5QQn0ecSVDFlJUsEgKN89DLzBlggHTUVjqY5R0FXo1Y8aEoIjWMx9jcEIL9k73Jx4@vger.kernel.org
X-Gm-Message-State: AOJu0YxUuQDtwbiM/yifsmFZi3PcSg8J5NvC3PcKsRztEtyfi7rz3+Bd
	CpRutXaV2A0FW/ZtcjCCsvRBRfMELkz7zJPhrSbRvKF7NQ0I79JKneMdkyzLCz4=
X-Gm-Gg: ASbGncsq8p+dOXh7WJbyh6u8DFtWKi3rHebWSAGBMI3KfsKXeLtYeADrXoxZTU8TMy3
	j8iMi6RjAtDahrQ0VHGDdUGOPhzrG4HaZvTKKQv0naSj08PO1DuW2m7Vbc4yy3NgpGKuVlXzvJ5
	kTGdR7wMr8XkTaTCf13GBR7C9TnabXCylEzKmvSlvKCnIsXEDzNv7PqN5ApreoMU682dfTr+zSF
	vKqrNUzgSauUVgh1R4L5Tn5zi2DFX9Y6a4y1s9gD4nZCwOhby8ldQYSeooeZhCF2Q==
X-Google-Smtp-Source: AGHT+IFGXaGo93pdyDn4mqp8rOY1szIMFAh58hYibFmxhgmI41KP0IOCq/MZvuynZ1a9IB0ztK3dpQ==
X-Received: by 2002:a05:600c:4ec9:b0:436:51bb:7a43 with SMTP id 5b1f17b1804b1-4366854852dmr391369655e9.5.1735835654422;
        Thu, 02 Jan 2025 08:34:14 -0800 (PST)
Received: from [127.0.1.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b3b295sm499265665e9.33.2025.01.02.08.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 08:34:14 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 02 Jan 2025 16:32:09 +0000
Subject: [PATCH v3 4/6] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-4-cb66d55d20cc@linaro.org>
References: <20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-0-cb66d55d20cc@linaro.org>
In-Reply-To: <20250102-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v3-0-cb66d55d20cc@linaro.org>
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
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15-dev-1b0d6

Add the CAMCC block for x1e80100. The x1e80100 CAMCC block is an iteration
of previous CAMCC blocks with the exception of having two required
power-domains not just one.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index c18b99765c25c901b3d0a3fbaddc320c0a8c1716..5c7b0c048d41a4ba3d74bbf77216ad09b652ed30 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
+#include <dt-bindings/clock/qcom,x1e80100-camcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
 #include <dt-bindings/clock/qcom,x1e80100-gpucc.h>
@@ -4647,6 +4648,21 @@ usb_1_ss1_dwc3_ss: endpoint {
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
2.45.2


