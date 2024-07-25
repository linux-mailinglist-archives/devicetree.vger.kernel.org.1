Return-Path: <devicetree+bounces-88041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C8093BF0F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 11:26:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A34DB1C20EDF
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 09:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53A6B198A31;
	Thu, 25 Jul 2024 09:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EkfWu6KT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96975198852
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 09:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721899532; cv=none; b=RLU9KWw3df8DwnOZgc640yXtWvWb2CZaWC6gqWTj6I/0D7i2a23SOHTCFUb76Y9/rzVSdElXeXuEqv7HrbZ0oICYbEnpDj25EsDtm18mUP7R+vE7RNKZBq0Eg/RBaQdV0C94OhdwPbWugumXD8bGCbbEFT1CJWTGT2cSHR2Fv5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721899532; c=relaxed/simple;
	bh=gfhDSYv+goNLSY8skJzBs3DMp2QrQFXE3Vf40oQG+YY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TWPIPKoz+nfy5ENOfNOkTqsq7ONsM3ts+yg0ksTO33LaYiRoJDtMfgM4dePxbNE5KqKN1CvqN/mawDIsI+aHj0MUFKRLgzcvG9xeaTEZWKtIglX2RTCAx4OUbDPg//sXZiNWL3729FTYnAaj1iqrMW/XUtevaYY7mYShUjZ1Rz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EkfWu6KT; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2f035ae0fe0so6968541fa.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 02:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721899529; x=1722504329; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nh61NQ937S+7o1q94LnjJk/BLrUb/CjZ3hidr6TzOuk=;
        b=EkfWu6KTqcBlg442LugSKiIdHn/9eQ5GI3FmhXhC1dDEGOd9DBXbQUUZ3jbHjOYPyC
         JS+wHlg+KIvwuV4Tk0h4f6W40gdAC8ig0bIIIlM8DsEniEU9qABkv/6B5NxaG3aYYRfQ
         vT/40wx4x9jMpdK3BSgWoMdAuqDQqb/J8GrC5212uXxqtBOzkaTiiFzLbBsSHQSWQ6gD
         rpRZd3vAjH11TXvbVJJUlEVKAPhL/zyRWP4lffGAGBkqrnnbqgctwxmmyu9Vblt9zBTK
         W9azppmdMoetwS6zjrdq4Y/3/ZNx7nK1SZRUB+SzRFW59vfjTqKK1f8jaFoc/mszef0d
         W/2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721899529; x=1722504329;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nh61NQ937S+7o1q94LnjJk/BLrUb/CjZ3hidr6TzOuk=;
        b=SzRAMNaKrSZBvYL6ifwH4ehDnf3Nnht+dhGH4nb8TRSnZP/Sfzm3OjFAqkMdrGaGx5
         t8IYWf8Snevx51HvjpqRjetn+vV2xIvkwOPE1k07NACPmQO0Z1JY2EtRaqG66qNe3El7
         ZZr8VPZwHy1AFHMhNaMz+gYgNsh2sChLxI6vjDQKMOoiiRDc2c3OeWgw+4FT1JRH1dvu
         AHWRRYu9trPyVHoyRRWNbZCJQCfgyRZoIgzfKufqsUk+puAHEaGzXmCK88LF9hL+f+GF
         MvOAhbV4zeMN2ofZtAG8R4OIwRAeTBOiVHjhxSURU9B5mKuW5EHYTTp3cpzenCMVz+Uv
         Q9zw==
X-Forwarded-Encrypted: i=1; AJvYcCWn/k55QRrqG7TDK7CMBCvGsDnmoEETA7M1DwfQ7sj46fLmTtik7Rlgdoeha3+/UW3aWs0vuSq3cZCm62mfoxjV2TcQpHTd6gxgrg==
X-Gm-Message-State: AOJu0Yz7BSDBnS6rMkE7NWgYWnYY4Wjs1xIvitV2VFn1k3mgU05FLNls
	aduJmaQYwk2cQkBck3o1EyQtCjKTtszZi087IXknoItiOmiZpKoDLcyWBx15OSndU9K6iQW9CA/
	O
X-Google-Smtp-Source: AGHT+IGi1wWEtfy7NWIDUmswNS4L1qJnX2gEGDOlhDHPBUMSNCMI4YEcpdjGn6OBceYfrQekIFXE7A==
X-Received: by 2002:a2e:7d14:0:b0:2ef:232c:6938 with SMTP id 38308e7fff4ca-2f03db740edmr9284641fa.6.1721899528717;
        Thu, 25 Jul 2024 02:25:28 -0700 (PDT)
Received: from [192.168.1.191] ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427ef3f45cfsm65830385e9.0.2024.07.25.02.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jul 2024 02:25:28 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
Date: Thu, 25 Jul 2024 10:25:18 +0100
Subject: [PATCH v3 3/3] ARM: dts: qcom: pma8084: add pon node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240725-pmic-bindings-v3-3-d7f6007b530d@linaro.org>
References: <20240725-pmic-bindings-v3-0-d7f6007b530d@linaro.org>
In-Reply-To: <20240725-pmic-bindings-v3-0-d7f6007b530d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Rayyan Ansari <rayyan.ansari@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1332;
 i=rayyan.ansari@linaro.org; h=from:subject:message-id;
 bh=gfhDSYv+goNLSY8skJzBs3DMp2QrQFXE3Vf40oQG+YY=;
 b=owGbwMvMwCXmtuJiX/SRuS2Mp9WSGNIWSbHu2VYfYMq3pvWuR9PBnXa6sgLuK9yWWd26smJJ/
 dbDSksrO0pZGMS4GGTFFFkON31Z83q7k9CV7VWnYOawMoEMYeDiFICJ/PrN8D8wpLQ+8/VC5xwW
 ngdV15umxSSLz1r79pNzGa+ZvJbp0yUM/6vWxpZkPC91uOodtcLI/9T2A0FquW1s++QUzgcK1rK
 8YwUA
X-Developer-Key: i=rayyan.ansari@linaro.org; a=openpgp;
 fpr=C382F4ACEBB74212D4B77ACA46A8D18E5BC49D84

Wrap existing pwrkey node inside a pon node, to conform to dt schema.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 arch/arm/boot/dts/qcom/pma8084.dtsi | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pma8084.dtsi b/arch/arm/boot/dts/qcom/pma8084.dtsi
index 2985f4805b93..309f5256754b 100644
--- a/arch/arm/boot/dts/qcom/pma8084.dtsi
+++ b/arch/arm/boot/dts/qcom/pma8084.dtsi
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <dt-bindings/iio/qcom,spmi-vadc.h>
+#include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/spmi/spmi.h>
 
@@ -19,12 +20,17 @@ rtc@6000 {
 			interrupts = <0x0 0x61 0x1 IRQ_TYPE_EDGE_RISING>;
 		};
 
-		pwrkey@800 {
-			compatible = "qcom,pm8941-pwrkey";
+		pon@800 {
+			compatible = "qcom,pm8941-pon";
 			reg = <0x800>;
-			interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
-			debounce = <15625>;
-			bias-pull-up;
+
+			pwrkey {
+				compatible = "qcom,pm8941-pwrkey";
+				interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
+				debounce = <15625>;
+				bias-pull-up;
+				linux,code = <KEY_POWER>;
+			};
 		};
 
 		pma8084_gpios: gpio@c000 {

-- 
2.45.2


