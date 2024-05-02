Return-Path: <devicetree+bounces-64450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 934718B9601
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 10:00:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B59FD1C205BC
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 08:00:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BE432E657;
	Thu,  2 May 2024 08:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gg7R7FjJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B5925740
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 08:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714636845; cv=none; b=Eyr/6gIiiwyOq7TaP5VEtfAYDKqc8OpaFBMXbgFywdngSoI4OkLffKtusM+ywLFAT7OepVZpMBazqHx1xHZgcj9slyVZi+gxjAsG+t2ZByoJWw2nhmIOrC7/qye/MgHTAovP8GYIxr5h/AwX/7yBvnsi/tkmAf8tqqMXbphPMBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714636845; c=relaxed/simple;
	bh=jEHlnNkVElM/Dv55XksX6LWIWYOCpykIugcfp3LIwxo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=szwxhhJ9068kAT6KR4FfOxoj+h5gvtRa+jxeMWyTkpprRJNnm8AkNqaBrtfEaxVRNYM7ljcTa95IXMdr0Lw4Kl+0W/kUG0fIwqJIbMlbEevXoPPafQkE6rlwaRd1eQOXH50OHgROBhrDPa83XlDP35yoLY08zGh/id4FNpM6qTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gg7R7FjJ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-41b79451128so44150205e9.0
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 01:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714636842; x=1715241642; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZnJb4oXP4/TF4UMXUqALWVwtvpRcZnHfbpqExORX1XE=;
        b=Gg7R7FjJTExRQem8GT14V69nbQBMR8JdfxR01znWzz6swXIz2zTu/YeAeOAVIzob20
         iwKQlAGvpDHgzI4Rf/j28vbZ6XX7mBpMN3A98HvJ4h1EOikj5THq81soUr+FPKI7DVDg
         XzZ3TGpbUjxAJ4TNKZnnjB06Wu1jF7ICMm4N+1mBVNhmJcT25cAU4/oVYHMuTW/C+sX2
         HpreX2RHQDkcUxk9CSb5pg2ccadoiDt3pyLZsMbArfjj4KuD2c7Vojh2he7znmOrtw2m
         pdZvo5QpyBh99Z+Aa2CQEghwGmsIxKteAwibKlcdK0ZCfKIGqhP4Uv2SrH7VmNtywrxB
         5awg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714636842; x=1715241642;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZnJb4oXP4/TF4UMXUqALWVwtvpRcZnHfbpqExORX1XE=;
        b=A4iTcBVi/9Xk8YgBUVn5a6bp5VBNBV/Un7QCME0uxQXtC1OMf4AC5kq/8xsBQbWtGl
         wu1kWP+2+a4GD/13CUKgKyccDryU9NjixTs/T4c7iazanTgUe9CCTEuNfdDHIhLyzjrW
         nZ7j9jWDUlPU4f3FGwDPfdmISvJMjaJveeTu/LARNP5bdFCU4myuoNKjjv+8aC/QB7wA
         lUifr9GPsW98DjOkEtmpZ9z5DSuTg2BdZA5oWjDDDZ6k6VDF4tllGsJJacHUUxsULbJ9
         a9h0paAaBLYwznxYCXVeNGv8SYopAqi5CHi0BE43vGBu2s+9s2nUuySSVIq8ToGqxyIi
         Eqfw==
X-Forwarded-Encrypted: i=1; AJvYcCW6hOepcXWMM94K7ya3q8OHk/herkLmbaRy0+48D2hXdCSs4OUHgBnottMhJpwzkoP78/r0CQU/j4tP4ZllYRXDgaluZwVLsHE1hg==
X-Gm-Message-State: AOJu0Yyap9aN5RxUiiZzaKew3W3as+1NsjMqiQy+FMKzqd2TTI1wINqV
	6miwpKBBwUdUfJ9q1AxKUIFL1s5qkRfCkeiN6yGaam0BWFq11dyFTvQgI9+qiRc=
X-Google-Smtp-Source: AGHT+IGNhbyAqF3H3wd6eOsEH9NHFITd4chKQTKscZtNyAguQV2cAVvIpBvxbBSvWAeCxh5CLTOyFA==
X-Received: by 2002:a05:600c:3147:b0:41a:5521:d848 with SMTP id h7-20020a05600c314700b0041a5521d848mr3207783wmo.25.1714636841885;
        Thu, 02 May 2024 01:00:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id t15-20020a05600c198f00b0041c02589a7csm4806597wmq.40.2024.05.02.01.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 01:00:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 02 May 2024 10:00:36 +0200
Subject: [PATCH v5 1/3] arm64: dts: qcom: sm8450: correct pcie1 phy clocks
 inputs to gcc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240502-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v5-1-10c650cfeade@linaro.org>
References: <20240502-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v5-0-10c650cfeade@linaro.org>
In-Reply-To: <20240502-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v5-0-10c650cfeade@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1413;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=jEHlnNkVElM/Dv55XksX6LWIWYOCpykIugcfp3LIwxo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmM0gnwqWSucVNfydpH170fiqTRXFP9OnzDq66Yx34
 ph9rxtuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZjNIJwAKCRB33NvayMhJ0a88D/
 wJhsrgPOsYvZ8bIAO/NdVEC2UV5guMw9SmoERNSXCB4TjRiS2JMrPa93k+R0f77LqIrYXM5flRBDcT
 bhNZ2IsO1y+TlxBf4h939AwgtEfTuuxuzSimsTvCmf0lgn5+g6A/rD9k2Hj2JzH/1tvA3QBY5K8/mj
 Bh5sWbkts3HQZvcY2S2d9oIfpYUmxwdrwxAx0Uqk2uAbmcROH9g+ots73J9LyMIexYgKt2f8GLvsCj
 DslfUAE+xlmE/8+FtQTZ/6nKX9CTqDtntclALfuHEmpWxFWP0c3VsS40DHfpbfI6HMQCdKwkKIe9oT
 WWLIo2+pb7aclbP7a4yJ6bdsHWWeZQa7YfemWiRxrEZpQs1cueZDTltEkfBkksk+wuCam9XrGksJzl
 UYXdfacP+zVUmHKW4bHcWNSFwKmtBZfFbeRWdoiILXA/rTybC9fgfLiLEglAJfpVUBe8cdbeXlUk/Y
 txm6U1qxI0Z2vnc9omtQFb/EF4sMsVEe+M1SX8e9+WF84DFNdQ46gfFAFM/SwjppK7aXOUoMqOg+tm
 B8DQ2eG38yx9BjpEJeW3s+lZzJNqmXzAuTujaQttjk0odVk3Nn5AzY1av6A6fl0g6AHkxCUEaKffWw
 rhzw1rrYEjRec3imUr1tR6aJ32sYWpWLs28VnzJRcthihgUDQWq/cCdpNVBQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PCIe Gen4x2 PHY found in the SM8450 SoCs have a second clock named
"PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
is muxed & gated then returned to the PHY as an input.

Now the pcie1_phy exposes 2 clocks, properly add the pcie1_phy provided
clocks to the Global Clock Controller (GCC) node clocks inputs.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 616461fcbab9..71797f337d19 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -754,8 +754,8 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <0>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -2000,8 +2000,8 @@ pcie1_phy: phy@1c0e000 {
 				      "rchng",
 				      "pipe";
 
-			clock-output-names = "pcie_1_pipe_clk";
-			#clock-cells = <0>;
+			clock-output-names = "pcie_1_pipe_clk", "pcie_1_phy_aux_clk";
+			#clock-cells = <1>;
 
 			#phy-cells = <0>;
 

-- 
2.34.1


