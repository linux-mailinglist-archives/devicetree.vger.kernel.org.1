Return-Path: <devicetree+bounces-15163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C99D7E8BAC
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 17:42:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC9411C208D2
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 16:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B7F11A73C;
	Sat, 11 Nov 2023 16:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EqOSH7uA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB86418E2A
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 16:42:39 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AAEB258D
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:38 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-507a55302e0so4135702e87.0
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 08:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699720956; x=1700325756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ArNDVIi+I4WcQ+l8h9DJ1wx6t4xBoPH7FgGqFbtahBs=;
        b=EqOSH7uAB+hLrc6VdJ7wgp+6CCavpxYjWRrNCvJG8LMFXcHWVi8uAdO2QFoTerj3ed
         WUnYOxMMPUzNnkfaeLsedq2lrnJyavHsvKAD8Ww3c02gxHBK98Q8THYez5v7WUe6IDxl
         wUyBk2F78jJF9a7t/j72o1jmJFjGDEmmk0ZW1SAdSxhNbmt9bcQjfA4vc36oVMMkJDhJ
         ZQnlrQkgpKJv6AXAhrCQQG2Jx5saxEIv4OjLrK4JkQeLOwVZrsZsXPhg4kwHI67ZZmEA
         Gpy3AUNDY4xHE+S/ujcpWtWSksv6JT6v3tK9XVOTPWbX+2FMAIG8mo1I7ypT4reGFH3r
         TAcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699720956; x=1700325756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ArNDVIi+I4WcQ+l8h9DJ1wx6t4xBoPH7FgGqFbtahBs=;
        b=RUJlYxSxodbQXh4m7CiyUS13eErpwKG4QcdwOy8/C1P1qdaeNCgryoi3pjHbZTNR4u
         h54if+Bx4J3slqfD4/WnGAGLn9vQd/NDY4AHNhbFtiq5dDdw1EI5KEi6ssLlpYd1wQBl
         es4SY0PjcScXwMptuJH+CYDnr1vY8/f9ruR2dvegZEGtF6W772HzImZjAAeyNKqnew32
         EkERR/vFkthPmYmfk/fWxfQhTuVQsa6t6+3+1ENaI/W6y0L9Vmr6ts8wSRdz8qs0h4CU
         q+X5RINw96rk95012bqUKZBaQwLTKtusG9ghyyBNr0JYFRkNJ041c/MrZRX5DrIAla/+
         kDmw==
X-Gm-Message-State: AOJu0Yy135RTiei1EPrzzcWmzF1Q9YkBDXW/tcqL+BaYo13Ucpig2Zgr
	IEHe0XikIRI/1j6b6UsX/YYO9Q==
X-Google-Smtp-Source: AGHT+IF+At48VBZ+wvrVPfmY34DhAOWVE5MBtQWhRwaMnvz02bNtk/Gq7LFsSjO8UFsQGfcOXZT9tQ==
X-Received: by 2002:a05:6512:3ca5:b0:509:8a47:3672 with SMTP id h37-20020a0565123ca500b005098a473672mr1394287lfv.34.1699720956174;
        Sat, 11 Nov 2023 08:42:36 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id k25-20020aa7c059000000b0053dd8898f75sm1161917edo.81.2023.11.11.08.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 08:42:35 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/6] arm64: dts: qcom: sm8150: use 'gpios' suffix for PCI GPIOs
Date: Sat, 11 Nov 2023 17:42:26 +0100
Message-Id: <20231111164229.63803-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
References: <20231111164229.63803-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Linux handles both versions, but bindings expect GPIO properties to
have 'gpios' suffix instead of 'gpio':

  sa8155p-adp.dtb: pci@1c00000: Unevaluated properties are not allowed ('perst-gpio' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index e39de6596a1e..9bcdc485c73a 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -1878,7 +1878,7 @@ pcie0: pci@1c00000 {
 			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
-			perst-gpio = <&tlmm 35 GPIO_ACTIVE_HIGH>;
+			perst-gpios = <&tlmm 35 GPIO_ACTIVE_HIGH>;
 			enable-gpio = <&tlmm 37 GPIO_ACTIVE_HIGH>;
 
 			pinctrl-names = "default";
@@ -1972,7 +1972,7 @@ pcie1: pci@1c08000 {
 			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
-			perst-gpio = <&tlmm 102 GPIO_ACTIVE_HIGH>;
+			perst-gpios = <&tlmm 102 GPIO_ACTIVE_HIGH>;
 			enable-gpio = <&tlmm 104 GPIO_ACTIVE_HIGH>;
 
 			pinctrl-names = "default";
-- 
2.34.1


