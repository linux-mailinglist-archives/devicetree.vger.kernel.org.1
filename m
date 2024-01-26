Return-Path: <devicetree+bounces-35451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4FB83D7A4
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 11:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 698531C2BD4A
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 10:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A90867A1C;
	Fri, 26 Jan 2024 09:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sw2bTj3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67C328DBD
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 09:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706261935; cv=none; b=gOqp6xTDJVDqwMTPke9igtafTUKdcxA3pFS0S5j0HkXwmBH0hsIbHz7+H8SBSFRtCqwSZTiKd6ZXLlBtXzAFUrvM/rjQosneFz8qDVMT1ZLpis4xISiOf42HpI/3Jf8cWdf+SsxMN5wWkP+ViPXcnLBvjUB1VcWx4rcgoKaZXJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706261935; c=relaxed/simple;
	bh=rrBWWu9lsMu+XZeAyedhVGX0wAsXHms0OO4T1GwK6TY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RLYHwkPWLOt4vbXj4qrtVtfuQm+/O+7vvGHKFVQAsibPWp1KSrSl6NZDHUVUECgT/Y720B8eQ1lozQyvjqTCM8P7BHKVoCQg0LGLyDvALsndqnZR9OlCuEO7fuK60U1fU6ZBkRaHWcoMvwgxVEMLqlRr05Ow+yRrZcr0cdRGa8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sw2bTj3D; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-50edf4f478eso222723e87.3
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 01:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706261930; x=1706866730; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5r7wJHZbLazp8p7Dgx2ExxqmG0OykopR+QnJ6skCYGE=;
        b=sw2bTj3DpkwMuH/2djaqNWWnlN3FBjj48+GFNIE4EBZJk774G5kf8QYuAcWMa4eFHQ
         zUPLQMwKAlNXyH6ib37p2UFpJFXh2YgFAVOK/XPWOkCCUPI4GQX+9mqjOvAfxz2P5sAu
         ptNImbTuB4l5H5HudnZJZORDeqDf440/sY+6pWomuem+a7lKsN/Hvq1OZ3DIJZyTX0nW
         Uy5fIDyg/WjwrDVNgz6+2fQRDDlyXZdHxm6JTYYLhiDbKKcsaDe1LWKfAx/+cFpJq+cN
         57JyhpXFfHyfDYDXz7mQp3/VDRbmvr9C5y1WysUfjbc7J3ZKUZF+hjfEUBP1eagrcIY4
         WPog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706261930; x=1706866730;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5r7wJHZbLazp8p7Dgx2ExxqmG0OykopR+QnJ6skCYGE=;
        b=EDpUBJa5vhbZwrqf1VlgAX9RiWnr32uICsccOEpbn+WrW1bWJqOWxDjsP382dxz/Zr
         EWbtQKJNZz7GFfBcTWjpBNZxiW801ZqnikXRQ4BWBbaTWPoW1tXUQvneJMq421uujg3t
         /uWfgvDuvo6+SsyC7bsR4LqAlKyULjJLJWQXPF/smzqq9bDg7HfbZMUJ13gjCKglCvw8
         M4rBWouzJPOBuAxw5c9jwu1/eKf6Ae+m7dF56F/BKWmSUpatkeIue9YWEewfQAK+Y9m1
         JHhoUbCqQSYRRk/AXKTD9or6Nz2Q2iLDSJCfrmjOVut83ojh7WfTbZG4iNE16tGGTFNK
         I86A==
X-Gm-Message-State: AOJu0YyrbilbN35dTqu+H3by0QqgMxY5yS+xz5O4HGP5ZVPp2VFnDcbm
	6MlsjOL5lDaB30jGjGavCfLDsE25Sbs7y2XcHdstjK0INxYpdFNEijEd+n2Sge4=
X-Google-Smtp-Source: AGHT+IHb6CJa/Q4aO1m0JvdUV/6n6YWG2CSL5IJ1o8/q49lyCtwtkiwuAqistmrZYsD484wnkdYCgA==
X-Received: by 2002:a05:6512:23a8:b0:50f:9ca:187e with SMTP id c40-20020a05651223a800b0050f09ca187emr948306lfv.100.1706261930795;
        Fri, 26 Jan 2024 01:38:50 -0800 (PST)
Received: from [127.0.1.1] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id se27-20020a170906ce5b00b00a349318ea10sm426768ejb.199.2024.01.26.01.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 01:38:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 26 Jan 2024 10:38:34 +0100
Subject: [PATCH v2 5/7] arm64: dts: qcom: sm8550: describe all PCI MSI
 interrupts
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240126-b4-dt-bindings-pci-qcom-split-dts-v2-5-0bb067f73adb@linaro.org>
References: <20240126-b4-dt-bindings-pci-qcom-split-dts-v2-0-0bb067f73adb@linaro.org>
In-Reply-To: <20240126-b4-dt-bindings-pci-qcom-split-dts-v2-0-0bb067f73adb@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2462;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=rrBWWu9lsMu+XZeAyedhVGX0wAsXHms0OO4T1GwK6TY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBls32eMOSk5moxl3H4SbJ6pTh+Ghq/pLcqiju3H
 tIuxs1FYzuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZbN9ngAKCRDBN2bmhouD
 10+0D/4tAddyg/NidqT1n0IcgUkkT0Tkfx6fR4s61ScaI/g6r92svlVU+Y4ESRNU4by0rOZNziy
 Kb71EvVei6iOdrQCOBdOfAwarollQrlRsH0XEJVagEGuE5DrMbuFahErhFdFA+K/I/P1ojqoQBM
 yoJIhNXJ6gjN0RKfRZ/PjekCwZo7rVB89r61BtglxRvNCHbqKDbkSZ1iAkENJQjHFPZ+SGqrHrI
 z+6t3Q+eOLnRD2u8HGFB2eH86CeaW8B/WzyK1gYQ2qhydWGfjZqGcEBXFP5w0q5qQ2OHKCJMP9Z
 58w0tt5CE/9KkqyRTLzFWqnOSslTcFLKzIHXeaqW8+i8lmj/nU8/zwKh8szYk+r1DymzZYtLdyA
 Iv2XSPSO0v9/2K1fm4vA+3pNldSgD8K3rfTfx6DWJCb3RXLeT9lWwocR5abobJB0kpPzQjX7mMd
 3S7jrlFvuijWgIhejXQWpY9eVazi9oKIGEtIxOt7hRfSwxExLrHlJ2YA+4kqyLGB1iyH8FmydtG
 t13khC9riltg/Y2YCv7xPdeSJU96VrfCehho41lyCxPQP+gCLSyQV00sbBYQL5DZSXAc5YYcxn7
 8SDRePp17boDvOfRWnsrBmjh5t022W+hC6Dswu15YKT3T+rts5QFGD6y/6bRKkXVVTMsksjfBNC
 2R6Sfa90+spK2BA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Each group of MSI interrupts is mapped to the separate host interrupt.
Describe each of interrupts in the device tree for PCIe hosts.  Only
boot tested on hardware.

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-HDK
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 38 ++++++++++++++++++++++++++++++------
 1 file changed, 32 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index ee1ba5a8c8fc..28cae43eec80 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1713,9 +1713,22 @@ pcie0: pcie@1c00000 {
 			linux,pci-domain = <0>;
 			num-lanes = <2>;
 
-			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "msi";
-
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &intc 0 0 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
@@ -1804,9 +1817,22 @@ pcie1: pcie@1c08000 {
 			linux,pci-domain = <1>;
 			num-lanes = <2>;
 
-			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "msi";
-
+			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &intc 0 0 0 434 IRQ_TYPE_LEVEL_HIGH>, /* int_a */

-- 
2.34.1


