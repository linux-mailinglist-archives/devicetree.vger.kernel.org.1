Return-Path: <devicetree+bounces-208048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 431AFB316EB
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 14:06:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 122891CE5BCB
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 12:05:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BC8D2FC006;
	Fri, 22 Aug 2025 12:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eikWxakz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3841A2FB624
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 12:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755864275; cv=none; b=SPAMJeS1s6IGPMo1iti1tvd1MBaLUSxrxg3GKGq2cA4ecp93ULu3YhTfiDWIZKbjS7f4GX7UatLKYhyLFK9+14/Yguiy8Zn/qAY7LIpz7lRbDjJ3zEr4Q5Ro4/f+B2JecqxASfTkqH6B5Pzzrvh+O3RGyCJ+cQ8/aMz11p1co9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755864275; c=relaxed/simple;
	bh=axfRpRaHLYgBKlvsnB+99CUv9767J7QI0KejsL2VLyU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MRa9oqOflpm4AzZtfWQON4MEvIMI2Bp+e9wLcv7jiRvFPlYuDxg0rLAxpwN4SDZlqDrWCcl5ktJlkvIH4jE8kw8diERubYqiToBEug/aZ3UGgDI7163CoeUC87k9ds8wVe/HfkVrxgiFwbpcwrMu1vGFV5h538nuceuVnMyTDcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eikWxakz; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-61c297e8306so21887a12.3
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 05:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755864270; x=1756469070; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5NG0Gepw10LOaJp1n7fNx4br+n0kCvJOxwzoA9B2aPk=;
        b=eikWxakzY6QT2zTaMCFWOwn/rtzB/eScL4F6SdOpYmTpCjP+RWmxQ3fXw25KCf65Bn
         qUrgm/ThovNF8j2kcFBTZW0YciJrEv6PnX48llqG3npSRor1g8OufoLiHMD6RfvcZjrD
         fV7CWqHe7miCSH3WE2uVwUBUO6WCeSf4imyfV/Af3m667pQay17gwZ6/mr7HUqgT3B4i
         ztNbr624PpRKyxou+qgJax0czCknAYXzAhEXrCeSyn0r/6pq5++Q3u0o2dZbVCROXgDE
         Try9276419xKZVGZGsPRCyuW0UTc6gNLVVRSk9Nm7bcuARzD2mDw7x8C7BaCf+nLmkeZ
         57ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755864270; x=1756469070;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5NG0Gepw10LOaJp1n7fNx4br+n0kCvJOxwzoA9B2aPk=;
        b=NTY4VXdztn7Bod7/lmXgKG+GXwZTn1ksJCd/n2afR4kF6V8XL2XjC7ZHC+079hMyCq
         K9IEWs9UvMjQhhojxjMv/cT1UPfUERMY39wD5Z0HUHebPLVqmC/ad1pt5ItKzZ/d5lv4
         f940VKzBdFhR48pYLSYPv7LdL+ae0c16vadPiYIPfvTEah9l73rEA1do0wYLKA9iLb5R
         6dpZJ+1CZoO+9Voj51glKPsGd9aYHk4e0sjtchzor7oI4cUJzc7TLxKhCHyDcbI+DPWF
         5GIu/ZKsWB1DZIj/+z9dWYTn2eXfDkTyDoDyR5rWYYs7kTmMGX8Cl0ow5p21EZE4e9CS
         ApOA==
X-Forwarded-Encrypted: i=1; AJvYcCXcxeOvkYkzdnwDRDCiG+2CMFMFovWZ8XqrSIUc9Khj2Ju8+udxOly6imAcLWE9cIHVtpEmMEyS6uwK@vger.kernel.org
X-Gm-Message-State: AOJu0YwjXHbZiJED5tEHNedSsLHu3F9cs1QBy0Ggl1TZtkNyzB6kAKUF
	7raEHlck2xr+40SstWIMniH2xLHaDoCzaDbFESgnbpyG2PjnmnDI6QlZBsgNuG7KiAo=
X-Gm-Gg: ASbGncujoZft1BKO1MebXNiwFT8yNUcz72SbrzuElP66C/BIe2v0pr8afKsGOG6YYXX
	4t/Ev9YSaSMCuVb8mhIVtoTKlv+daed897UJx9yn27F3BV59D6blXTNl0Ubys0sz5VFhIHg8XKd
	JK7dQ8XIclRqn9QeykTvAxCu3d2CYHQ9H60/QVXLrW/ldjGCFoJA3uBwe96Q4UR2TLKUK7azfqx
	mLf0jJ9HcIX2I4PXkP3usmSf238YkSPq3IsAFigb6+w7gE+U0jEnoJ1C8hdrVnRFIFebsVwOoYL
	ws54C00WUAoHyahyzp8mW4hMjLo6hi9swWCbCYwIYvcwxfZKHNTPxV+pCGrEIU2oMBUZDRAW4fX
	9JQcYrExBnMG0h4OYomfWeyZpaFEvH7EqUzaruXc=
X-Google-Smtp-Source: AGHT+IHqTtnv/0uL79XsFYZ2edmqs7hNBXRJNjZ7FQAsR8lHOcLoOrCHANoRo+7jMy57BVFweKSSGw==
X-Received: by 2002:a05:6402:2351:b0:612:e258:33e2 with SMTP id 4fb4d7f45d1cf-61c1b6f4129mr1287661a12.4.1755864270515;
        Fri, 22 Aug 2025 05:04:30 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a757b9b39sm6690444a12.48.2025.08.22.05.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 05:04:29 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 22 Aug 2025 14:04:03 +0200
Subject: [PATCH 03/15] arm64: dts: qcom: msm8996: Add default GIC address
 cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-dts-interrupt-address-cells-v1-3-d54d44b74460@linaro.org>
References: <20250822-dts-interrupt-address-cells-v1-0-d54d44b74460@linaro.org>
In-Reply-To: <20250822-dts-interrupt-address-cells-v1-0-d54d44b74460@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1335;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=axfRpRaHLYgBKlvsnB+99CUv9767J7QI0KejsL2VLyU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqFy8ellBAXeW2gM+k7VakfTemNxw1IDgPPJv7
 Jl7iI4l/vCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhcvAAKCRDBN2bmhouD
 13v7D/9n1puM8ctKaHbcgaeyB/m1ByE5XqAiMYDkwz/wT1HE1RdEh27JJ1n9qwuyCZZlOHMLUea
 QlHO9csrafPU91clYdE9+gxQDKck/TEKFFo/7bpsqfOCx1Rn543oQ6CVOf+OiZVNWfi4bnbE8qQ
 Zg9BHcaVjlUKr57tp05Zx0MgHxhNofUjWpN+anK1s/AvuzCzpo0vKKZ4aO3ru+8bXGLHbKP8jP6
 1FexXJnm5Vw162wz1TH/2ejbAi0VMaas6rvxkdgLjZ6nUxuAo7WtHSsU6GlA7s/J02skmVIQCNM
 5oTifMtS128r7UjmyxS6sVxORmEZN4+VBQvl6Slmg2DNYQII4L6yiawvyNCK/QnNUinLGEsJzL1
 0Lip2hMFYHrZu34TUVI8yO8aAwaWJdumLBiW9j/rPL+UwCObraWNmw+V9fz0948+IOt5XIj/Er3
 dOVr9fwKWHxw+btyRykwRhUX6f0+rg1fcUDJVs03Jf4Cv3aUQtxO4rFmc3GsbRZ1GSAvYMliX8Q
 QcLPoIPYA5f9+BjyUfm46Qf/eEtVhKIqUAv2BdH//QRwSG/JipCZ/acJZ9W3sBSQIyl3xv27sgY
 PUhjvKvz+pFeXa75zqPy+lpi0kwVWusVvGxw79zglZg350aM8qIBXDLik1dQJXGICoerGohusMc
 m84IXf6tGLXTwXg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  msm8996.dtsi:1931.5-1934.31: Warning (interrupt_map): /soc@0/bus@0/pcie@600000:interrupt-map:
    Missing property '#address-cells' in node /soc@0/interrupt-controller@9bc0000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index f91605de49095820b811ac5a81cb43eaa136b9f1..b5aab21ac5250029ee60987a1e64871ba4e2be6d 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -3766,6 +3766,7 @@ cbf: clock-controller@9a11000 {
 
 		intc: interrupt-controller@9bc0000 {
 			compatible = "qcom,msm8996-gic-v3", "arm,gic-v3";
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			#redistributor-regions = <1>;

-- 
2.48.1


