Return-Path: <devicetree+bounces-34563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7645883A326
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:40:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFFBD281D03
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6002817573;
	Wed, 24 Jan 2024 07:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fDR0ooxz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066941862E
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 07:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706081868; cv=none; b=rEbaqRMGgJIXT9tjWvml3k3noL2M+bQtvWW77FDdS7Bmc95MHR9a+N/7Bg0CAUt8/R2Aud6On2Hq752ClJNkWlD4s4DD46e+CY1u/heaUlqSzjTv+aM63zGQz5CqT5ZGBvZGeoxksGIBLR0jbkojkN/HKRWS7qUPHRE56A51Gvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706081868; c=relaxed/simple;
	bh=qbS3T4RFVlJivCmN4hJ4Xsqqhf8ddqNIBdThgGXkGnY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YlVgJS5PEWXApNCviTcwRfD3pwjrY1bhsv6xjZ+eGcbhMYeTgKjzVHhbWjRKJMw5CV1p3GcqVlkYBLlk0fMk9CJ183JVmduuoX8yfehn7gstpEKeO3gTBS7uOAZLu/wa0qBhFOOAAG7ZB6gDNjQQYtpBQbL0lUnwhDEc46wJCV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fDR0ooxz; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1d751bc0c15so26271055ad.2
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 23:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081866; x=1706686666; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mr0QFQLGsGU3UCE22ZWg0GRl1d55JhYRsXZlu7CT5Ek=;
        b=fDR0ooxzPgOb5seJqk5RyZfQ7uOmbZtOO4VXDxjS2GlhZGDF7+ur3PzMKb9icrbUeu
         mvfAsdDgD4vc7ow6FVyEB6X4l0ohhWG4l+z+bVF0Tazuou7Csin/LD2zmhmEUQIodPGf
         voinQqXVb+nDPIPuk+6s1tT9zu6JkGDfsm5h8OfpJy4WD3mQo5uk6KwSVaYF0MiLZ0Tp
         WinvzsWBQW2G5Yegdsmcbt8eU1mZYfuFVBnRAvu75kcJrNvsITkNrLILWDpiSyzX/+mt
         KNS5HY6rYAqBg24VkYtopPKUDqPwi7JExG48tl0vZkQEdAd7BxlHGMYVfbDGwuofv8w+
         ao6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081866; x=1706686666;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mr0QFQLGsGU3UCE22ZWg0GRl1d55JhYRsXZlu7CT5Ek=;
        b=iSLNaYmsKVCJoZzgNOl4GtKXQbZdODW5hbZdh5KQISOhgwWUk3ELCXKnqxSoD6SoNy
         KQ9TjUn09L3/1xNZqx88x/hXEl/6CPk5HSRlcVvNK/OEBf7WXLi16NOyFRot3iAQE22m
         ta9/dVxpzuBualD9n5xGNxAq+KKFD0lhanj6Dg7o9b4h5XHHi3OVJekhe4Caxg9c/tYC
         roubbhPlGKc7CdjfrxK79MA9ZLMrnwde1gRNkY7DpDmbuhHDvxk6/AWUE37qBbB5ys4o
         p2OuYZS/76AsVuiQSStzv5JIXOB0wmghMBaadifm6mBq8Ll5ogW3PqHDNuN4SvaBPDbL
         SUjA==
X-Gm-Message-State: AOJu0YxIzKKjbjcDOv+3iTCk2nl8ugtWEeVEed5QYeLOWXhlXo5xb0Pk
	v+dfZP82mKunRaNF7FETkbrLVcmB1fYJxBmn6hzMxhV5f5mLLTcThEpYXIB4MQ==
X-Google-Smtp-Source: AGHT+IEemWCxH9v5TmBpKga6APSBH20NfGHRPu+nLdozyRscwokzFFdRSMk/PTPGdmr44O68Z+RdUw==
X-Received: by 2002:a17:902:a616:b0:1d0:6ffe:a1a with SMTP id u22-20020a170902a61600b001d06ffe0a1amr440390plq.120.1706081866524;
        Tue, 23 Jan 2024 23:37:46 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:46 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:40 +0530
Subject: [PATCH 12/14] arm64: dts: qcom: sm8550: Drop PCIE_AUX_CLK from
 pcie_phy node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240124-pcie-aux-clk-fix-v1-12-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1138;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=qbS3T4RFVlJivCmN4hJ4Xsqqhf8ddqNIBdThgGXkGnY=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4FTWuUoQIXeVx6vSsYrfv+1E10lScR+ZHtL
 eUWXb94QZmJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BQAKCRBVnxHm/pHO
 9dc8B/98bZbvZy8V9hBe0ncd/s65E4uiIGidQTmD+Dz0V9tH1ytXtu/tD2tpMNqK+QTIAJJq59X
 3cuKmhgSQDgXiiz98Shz+xCq8TjmqYMNfyjopeq7+mHoGbS3y54BhY8pW7V+cpQmzMDJ/UcZNMp
 X1+8h+POmcY90EJ38NkAv16uOlwkv1dNyv/SpsV1vBSuc2OQ0tZhf2HGq7ukHPlPspq+0YO5ibA
 ABdoRog+r63cOF0yzw9CvkVacAQNkPK9y4qOhgNjk2AtcHR1Lt3K28V07t0RiIqWQK1X/kf9xvw
 T835vebbz9UYnVxLEPB23lI58DzhZjWFzE50unZQ6Wmdhubs
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from pcie_phy node.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index ee1ba5a8c8fc..f074683f7940 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1760,13 +1760,11 @@ pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8550-qmp-gen3x2-pcie-phy";
 			reg = <0 0x01c06000 0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
-				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&tcsr TCSR_PCIE_0_CLKREF_EN>,
 				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_0_PIPE_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "rchng",
-				      "pipe";
+			clock-names = "cfg_ahb", "ref", "rchng", "pipe";
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
 			reset-names = "phy";

-- 
2.25.1


