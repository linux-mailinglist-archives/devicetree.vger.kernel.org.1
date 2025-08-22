Return-Path: <devicetree+bounces-207923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D6FB3130E
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:29:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DE263A1366
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:27:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A7442EE614;
	Fri, 22 Aug 2025 09:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P9cflLvl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D872C2E8B6C
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854805; cv=none; b=k8+gMSvr8XXnC9/3axBJKFZGPdJIErbpQPWX+H10fhcz8arO+g+MMsD++Kw9krsj1Fb0xIFuD4Tfmmn5RufnlT1rGLnSF4StHhKqj5m4/xn2S7okQPmeDIZC8eB2Yfr7W40vURfJgM13LEL4WwcybK/gCChbPCjXrIVesNwo+Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854805; c=relaxed/simple;
	bh=MFYFkMSrWP5pY4nqJFiDqJWkSa4uwcnjvsxZoozTN9c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cMReonULB6+vdI/t1yzf0CW388rDUUZOhEJSMnlWfB+oOhmUOe2i5NtrAjBdVq86TwU+kFtb98yi33lzTZJvWaipAYferDPiyB45NutCn34EMaQcEQYYXa3TEg9DYoGe26LRntI4w3TstaAAgsxVOzFFGUOiyek704TeIffLZOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P9cflLvl; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3c6abcfd142so6603f8f.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755854802; x=1756459602; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IiOSxWsMfZ22+52FKy1745xSVf+zWfH8pzVT2pR3hgY=;
        b=P9cflLvl9T2NukmNaNvPyweDBdUR6/RVAGIb5Bp3qIX5F92GzvQcm55dflIdNO4CBU
         TWr2humyrYUnBTq6Ahh6QJDMMmUd9OP+lnGN2Hm/Nky9s3fm8TUcaZAodtExMIdZeCJN
         GtOUNadgMYnB4kE6nLt1Ff43ZUgbDLmtY/QVI5llj6levdBdo7dvk1z9fz2mxBMjBcWY
         ZnW126w7JzydrJngwVCDwZyBXQxPf7EtBnZYRrVDVA185IHtztn9wQpa5lgKxTz8nPcE
         LcBKzByfA7npE47Vyyek2sXv5AZGJuJn1nBzwk3dIC5xUU97/T9g39JgpSvZtF34DkYf
         apCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755854802; x=1756459602;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IiOSxWsMfZ22+52FKy1745xSVf+zWfH8pzVT2pR3hgY=;
        b=uhyf85lm6bl6vxPNHBs+dKUOomD/qD0sC/Udtj7UXXorFJYsSVuI0lLjI4pyZX0CEJ
         TIJm2XYshnFOGzmbZ6t5R5TrPWW6vh5MKk3scTH8+Temx4pmw64hFIFTT35XP/dO7+Nz
         e4FuqKZzmTt7cLiH0XKig+RW+cT8/PZPmEuicpZ6Ca3ifCKIrIeV4y0T8Hr20xLW++Bo
         SiejVawU/psTCxCmUuT/hXYddhMjWAKidWRoned2Vr3peT4zSk26gMlw9VfwYgdcaCer
         DQYgwOrEi3MGxMgpTA+4HdAULuxnYEOBUCuuvK88YQ3twatWdKwx6ke+rR0b/4Q47PJH
         y/gQ==
X-Forwarded-Encrypted: i=1; AJvYcCXV+ZEtxEgf9CVgmar7ujcPzg7gLjV6JKfEX3WAOEofHOeQHZqA7YV7aeXV3lWu39wASKYPhZ4Gj1Hx@vger.kernel.org
X-Gm-Message-State: AOJu0YwFq/YLXaZ9BTFDwzFbrEYk/6wD1InIwgnZLC3aN0pJJhUYx1ch
	C05r6n5cpbNpc2eA9TWyW1NEkGgLGse+blRm62qN5B/PUIOj+nN85yZuEExkGmFFaOM=
X-Gm-Gg: ASbGncssYcj07KXkqo8EU1KnEZvEIyzXxxisWbOZWQP1qgRuwJTeEkto+fi7fpKxh7k
	C7DRZ2FRjMUG/yKu0QlgwNs1GRLn3NkwSvYuh64RnxHgXrdPnltu7Jnj7NAWS9hUIy1k7eV6eLl
	h2lKsAWyHH78R1QajU8HUwFNIIf7hFaKpG9f/FeXDYLhrvtXoPUdFVI+B6ZvUKfW2MPEK0TIXtb
	h/giXlesK8XTME9zPjMlCgJMj4Z2Fay9et91YcRPccN1Y3iIWo2wqvm+QOsePq+7VfS+FFyklUH
	v2uEtO5JMVCnwKeve0l9By4r95uSk6SrftRhd8SjU0z/fJKWnN1yeZ34t8xeTfaNvWPyuDM5HUP
	aZjJf+kn5dLR5SXqVGzENQDtspptPy4Nqk2pNK+hQwIc=
X-Google-Smtp-Source: AGHT+IF3wHMVQHUYehlsFHq1G1/ILGGnKUvqSTSKIZ9NtTxjdcvTO48CBoxy7rkKJ7xgfx3Nxi2p3A==
X-Received: by 2002:a05:6000:288a:b0:3a0:b84d:60cc with SMTP id ffacd0b85a97d-3c5da64aa1cmr1453695f8f.2.1755854802094;
        Fri, 22 Aug 2025 02:26:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c5826751d5sm3297007f8f.14.2025.08.22.02.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:26:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:26:35 +0200
Subject: [PATCH v2 3/6] arm64: dts: qcom: sm8650: Additionally manage MXC
 power domain in videocc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-3-28f35728a146@linaro.org>
References: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-0-28f35728a146@linaro.org>
In-Reply-To: <20250822-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v2-0-28f35728a146@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1214;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=jbtLIQpfABjo4yu0j1qEsUQ4afK624swlDN103gi/yE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDfNAtLQzBdnO13nto8CAbiOptruDfNmd7jRjiK5
 x2zDvciJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg3zQAKCRB33NvayMhJ0f//EA
 CKZAwj1fNR+zx2XOlFBbkKcJtkiZDbkT+bLxCPx9V7QZeJkqgwt4h9LCDH8+HIUcfx+xfdwPr+DDlN
 jtB0WK6oQMkdsM/SOM9Xi4LvVRrZvtliJsNqCh45Xah4pNHrurnU9g0hfgDB8k/cRWM96CnTwzDy+M
 KcEzuKlLtxAo1VjHtLkYomJiiEnNNQIUcdAYjtw//3PaycV68AH8axX0lDoleYWWW1uCxBRnMGvBHo
 SmxybPBvUFzRILbGgYjv4tW+JDvbUVDwuZAC/61m5ifXjBIl/3pliIoJ87c3QP19piVYg06RLKYHEH
 Wh5UGI93MhwqlavwgKRp10LjZzNiXI9w0zO9z4twLc4ZvfBdhyn/7l4jzAQczvJrp+3o60Lia9nE2s
 5xDyb2jwiZbxQiuETmdeIVXWvaXdJREMTCzTdcIx63YIudDld+lt0ravSVLQ2ekGXp3muxk8XwifND
 QH0pewtZFK+ZVUKIMdPDyUHdR5UaEaScs55ai6iBSLKOD+UC/hi2jdYy8mG9wlEF0Ubm0pBtYA84zq
 zjVjue1Lu1GRKKwMOIRzxJFek3BgsxuFTCNu0Z3fOK2l0pNQJZqn6K5JnhP3CFaHZCLdwmwi0MBVjd
 1JkAMxzeACPwvu76XQu4noYQtktjJKWFwFzm8cDWJmBI3QcAZBOw7l7/iXaQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

From: Jagadeesh Kona <quic_jkona@quicinc.com>

Videocc requires both MMCX and MXC rails to be powered ON to configure
the video PLLs on SM8650 platform. Hence add MXC power domain to videocc
node on SM8650.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index d6794901f06b50e8629afd081cb7d229ea342f84..99b7c6603f284df54b0a4e0ed554817fa8ce6f35 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5236,7 +5236,8 @@ videocc: clock-controller@aaf0000 {
 			reg = <0 0x0aaf0000 0 0x10000>;
 			clocks = <&bi_tcxo_div2>,
 				 <&gcc GCC_VIDEO_AHB_CLK>;
-			power-domains = <&rpmhpd RPMHPD_MMCX>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.34.1


