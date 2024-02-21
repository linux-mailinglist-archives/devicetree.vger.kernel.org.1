Return-Path: <devicetree+bounces-44144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD48D85CEDF
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 04:43:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1A09FB24047
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 03:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7DA33A1A2;
	Wed, 21 Feb 2024 03:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HEB+pa8F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEC539FD3
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708486932; cv=none; b=PYAAiz1qKXMwpTlmQdSDqg9g8qrK2wp0exSVNokDU3y0s4klFj69hfUw2/TGmgJx8D658lU6pfBW94VorhVcMeb6OdCCkrAUoh5gCKzmrLvIfeE2m/f8dkrEHFDe80vRL+ttemHgUUz2kJv4NYCisSs9gldDeVD504GIzUO2cjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708486932; c=relaxed/simple;
	bh=uG/9KOG8Z17eKXEtbxH9o5AmhzmNnY1T/Q7m5dFGLnw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=czrljKNnp04zf16GZz9RV54eEHrGMgkeJEjYa0NyiyZnibMUwyncOVLra3J0LBcJEZTBKVzlJZdCNhSsddATS1ER1FTeJbh4Hh6aSpbz6wkuB3LpeE0kaargLkt3dQketBi+3817iWSPLWrgYXU4qKlCdjLqb0l3g6yNKh3cbF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HEB+pa8F; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6e4831f7a7bso929824b3a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 19:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708486931; x=1709091731; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ImXGIB7mWb7ZNVnOu2+1J6Z04awCO5hHkqZsUmjx4z8=;
        b=HEB+pa8F86X7b7Tlcg++wBIQwEdaDbwlrN583v2T/1CPFp3kak1PN47GDigs7OZN/8
         lV0Wx5aiUrfxjcsSqshLa3tgqi2NAklgMF4PVPqPiX94AVhkZ0TGzpV9S8LSkswPx8re
         KNkmak5i4J7me2gTmHxSCa81JSd1J79GWN6itjbXjIOBo5OsIWo0mkflTDH+1aczitpo
         yxkn+tNGSBKrxpx+W51uDsJ4T5S2Z8XJnHm9m1UG/4TzAr3WIuWUG2lrEuay1FlXCOva
         8Ie2r4GWRwmAr2LyVnWZdMPgV/b2Ll5hxoHV17rAtBzqKuVAQt658ZmbT9QqNk3zpp7m
         N2hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708486931; x=1709091731;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ImXGIB7mWb7ZNVnOu2+1J6Z04awCO5hHkqZsUmjx4z8=;
        b=fwWMoW8lilUtdwXDAaKOYAKX6zXYOHbqToc9K120b993Mp3agPaGgJ3bjuGb7IShkM
         wKXlnhg3uF74Zuvk9pJ/HXotIlY3zUGk9MNtjxpAxpas4nASvVH8b+rwBcg1EfOhWz9V
         8UiQ9+PNBZqn2Epopc35KA0CT+X0WBxvpMRW/Al8kZuBFeISD39ABQXIxF0/KemkuS5c
         L6IbuKVj6s1+kIy/jUwPb0Bh8UE3VmIh1vI5oYNilIjvD8t7UIRK/HqZHrehwMgmloaq
         vzwg1hpiYHdq4UqJb3jwwkpVXcrc9JGADnijM1DMU/WjYLqJ1NvDoH7e7UjfThp6bg5F
         X33A==
X-Forwarded-Encrypted: i=1; AJvYcCXCtOm808YgQ65PjvcB6ciFmNRX3N6NOIauN0MPDHmAN4Q9b1u0iQ3Mcmsq8P5u7U4fPCY23NJyaivxhjat6q5IdaDsGzGqKuhP1w==
X-Gm-Message-State: AOJu0Yzq9rZQxsF+F/3QwfQGmAiIq1qTqQ9s6ObYoWmRhsBswypp9xq0
	c8OyehIqcw1HyhFpENUG+SdaKjSJSQqF7O6gyY7CJ/ZQQQ6QD9PzvvxLQlvdIg==
X-Google-Smtp-Source: AGHT+IF5eijTp/+XCue4i8inAVgdXDs95Vy9lc3aj26IyJDDAl/hNRkfFWOiR7Sg5/P1i9q0prIWbA==
X-Received: by 2002:aa7:9819:0:b0:6e4:67bd:10fa with SMTP id e25-20020aa79819000000b006e467bd10famr6201338pfl.0.1708486930793;
        Tue, 20 Feb 2024 19:42:10 -0800 (PST)
Received: from [127.0.1.1] ([117.207.28.224])
        by smtp.gmail.com with ESMTPSA id o23-20020a056a001b5700b006e466369645sm4436231pfv.132.2024.02.20.19.42.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 19:42:10 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 21 Feb 2024 09:11:47 +0530
Subject: [PATCH 01/21] arm64: dts: qcom: sm8250: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-pcie-qcom-bridge-dts-v1-1-6c6df0f9450d@linaro.org>
References: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
In-Reply-To: <20240221-pcie-qcom-bridge-dts-v1-0-6c6df0f9450d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=uG/9KOG8Z17eKXEtbxH9o5AmhzmNnY1T/Q7m5dFGLnw=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl1XEF9/fHNekkvPUiaqVD1hZQ8DqFjrazu7GqQ
 IHE7EVUO76JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZdVxBQAKCRBVnxHm/pHO
 9aefB/wOjD+6DG3lTAmXaj2NFcWPHTZlUrH+fNNDnmDiSjCYy1JhJV1mRvt6uqqoAvEjKOs5jAL
 XU69S7rZ/WPztMNu/HWFJBXdaPFpBfVqgU7isZCbtV/rsziS+4zPpnIlQ5qDN4kiUFJBNiMVYxE
 muUtwqZbCn5mk93f7nwDi17H1p4CvgVOmHw8lT0kgEWUtOmVBAW8lLFutR7PzEKL1/u/wtWBATr
 RnRYQ8SG9qPb+CWgVyagKenq16lkhab1jMvW7ACR9wXTtggQToeexOIDpN/7/ufZ7VNL1AdcY75
 MMmWI01hqDfvEgm+hzw/lVUxWUuhMAG+jNEmU2nz9hYMqfoV
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 760501c1301a..0c61623d9be9 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2197,6 +2197,16 @@ pcie0: pcie@1c00000 {
 			dma-coherent;
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie0_phy: phy@1c06000 {
@@ -2298,6 +2308,16 @@ pcie1: pcie@1c08000 {
 			dma-coherent;
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie1_phy: phy@1c0e000 {
@@ -2399,6 +2419,16 @@ pcie2: pcie@1c10000 {
 			dma-coherent;
 
 			status = "disabled";
+
+			pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				bus-range = <0x01 0xff>;
+
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+			};
 		};
 
 		pcie2_phy: phy@1c16000 {

-- 
2.25.1


