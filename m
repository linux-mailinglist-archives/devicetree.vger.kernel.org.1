Return-Path: <devicetree+bounces-52159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A51788583E
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:24:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C44D1C225F9
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 698A657877;
	Thu, 21 Mar 2024 11:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W5nXHXrI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59725A4D4
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711020275; cv=none; b=IdzRoyXcajjHOa+PE2EEdN3p86Rg+3sLd2wiDlSJ6vJ29cEtpMX5T+yN/9r65031WY3ttGH2M2KSzVb7pzVg+QTFv/wHplvBl/kj7DGQkURYvGVl1tGWHBANRtf3+djq+O0C8KG/HPnUEt7m4gnhlwej/ZHvTDQdunQNPgMCNAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711020275; c=relaxed/simple;
	bh=KNeD+vKdGb0VsxLi94lHL3FMc2wc0erCYkHOY9W++kM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HZ7zAro21qfdUTEewGXhaxBL2Cp7DuQ8PQpennDS3x5dwBn/9CiCV+k1r6KIfhLCA7whfhyNitx3os/WsYoprwzKu09+tkHHVKLLTBTHuOS4UI8SJp+anC2GcvrMcvnL3zSe/FSxzC4tPIy5wOyHG6ZgcDowh2mwWGuG5d2Ktxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W5nXHXrI; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-690bd329df2so4752096d6.2
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711020273; x=1711625073; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AdGCislf8Z9IpFRDf38hi8y6611+4ZWnhEYMybrgvL4=;
        b=W5nXHXrIkOGSM7kA1Vk0FSf5dWe/GBql/LbA9ZZB8UleWVauc9jUyug8pkPQwq3Wz0
         BcFT61zgfEvVBRIrOSc8o1o+NShlynQeSNIxTSSsPvM+vpO6IinJzaUebVzRRAWeHCpj
         XR2Oac3ynNUM9+5e1cuw0/gy2KYfkGlFDWnlcMUpfFKZOscPKBLgyxl8Wpo5dwnJqlmJ
         CqZUGJ3oVmsTP8Zy7RXRZQl8v1JJgDGREFvGhECLnbC4Qy8vynWwbOkGwt3qA+qQJ2BQ
         AMBMnqw2jBI7pW/1u/HFLkbuyfzUBdHHEY/6Wf1bPe+w+rQdmT7kXSfCorBLPGep9EhO
         90ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711020273; x=1711625073;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AdGCislf8Z9IpFRDf38hi8y6611+4ZWnhEYMybrgvL4=;
        b=EeVuHqOBoA++mCGOy6qSKF0eO9DaxkE0rKOoZBKtOJ41TvfNLkS/+vCzLwgfdi8RQs
         upr8pAu5MJa+oLGT5jykGdT1BczA0FxhTOCPhFp7d8oeAL232n662C0aP5ME8aWTFMng
         nYZfxJEwkFg1n94HgopcsslmR8Y5O3cCPzbQYX+Bvk2sNOsevoQWrs/Ri10qUOsoR7eq
         xl/nLIP/op8157LG+Lwzrw66zMg4aK0mvmR5sI2yz8PSNlYdCYLj8YWqOqDDE7/dyYlO
         Xa9OXZizRSoyzIeyfezWKv2pfhLW/sm6SKb/Ek5SHUTtiqNDQqgbUgRkaiRqKJVEHaF3
         1Xfg==
X-Forwarded-Encrypted: i=1; AJvYcCWbyjICK2NvR3dj9N7WmUbt4HGm5EgjQvuijfdAKsBqDUOuRjWRe//xFM8HurX4u45QwUoRknfdTKf7ac4tP8rpIoYsKyRAmkfrRQ==
X-Gm-Message-State: AOJu0YwNLEuor1EwiNhHmriSpI0qH/MwqTfXXQvfJZWefUhBqW0B74z0
	MMd8IbDL8ReHPTzG1/zNuGotKwRPA7mue5afeKWkR9F1Ri/VA2sHOFavYq1BZDsdUpgu+I0ZdUA
	=
X-Google-Smtp-Source: AGHT+IF9qzDmCq6Cfjt+O35esUzJjLmKrVk8XAC3uDwrfhYsw0kCjKLisExS/p4pkJ+5NW88EKIt5g==
X-Received: by 2002:a05:6a21:788b:b0:1a3:560c:15d8 with SMTP id bf11-20020a056a21788b00b001a3560c15d8mr10026041pzc.41.1711019885906;
        Thu, 21 Mar 2024 04:18:05 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:18:05 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:41 +0530
Subject: [PATCH v2 21/21] arm64: dts: qcom: sm8650: Use "pcie" as the node
 name instead of "pci"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-21-1eb790c53e43@linaro.org>
References: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
In-Reply-To: <20240321-pcie-qcom-bridge-dts-v2-0-1eb790c53e43@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1097;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=KNeD+vKdGb0VsxLi94lHL3FMc2wc0erCYkHOY9W++kM=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl/BcOt5g9OhdxNj7ZCCVnTArwicbr9rHOF6gMC
 qIo2lm7M7GJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZfwXDgAKCRBVnxHm/pHO
 9QmaB/0RLvPezplRmiQXA/s6eUVGa8xi/W+sbYaUbH4LZ7tzCSqnYcEF+3BQkLm7Y7NJkX5FHMX
 Va7jaGmDNdL9uVRyxOijf2BKPkQj3OpsKHK2G0NfnhGJd3xTUVw5xb2WYB9oHOtPua6RfcOP/1q
 bu3eywAhZH791vfGn7P78IoY23GhoJAO2GjVUGYiBMi/wK9VQehp+ydNZqYaUfLYXWJFvwNPV3c
 jCEzgpKyz8j41K8ymON5E2zX3YQKF6Co8cvd31rP2/R3LnLtalj/xVJvBOOS1JkfOGpughduZ8a
 0blJ63nQSuQ4/5+jQQ+EH3kLp+GUlJjdK8kQ96ORUh3gMPti
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

Qcom SoCs doesn't support legacy PCI, but only PCIe. So use the correct
node name for the controller instances.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 06d2b6432ab1..b25fefd6a786 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2208,7 +2208,7 @@ rng: rng@10c3000 {
 			reg = <0 0x010c3000 0 0x1000>;
 		};
 
-		pcie0: pci@1c00000 {
+		pcie0: pcie@1c00000 {
 			device_type = "pci";
 			compatible = "qcom,pcie-sm8650", "qcom,pcie-sm8550";
 			reg = <0 0x01c00000 0 0x3000>,
@@ -2337,7 +2337,7 @@ pcie0_phy: phy@1c06000 {
 			status = "disabled";
 		};
 
-		pcie1: pci@1c08000 {
+		pcie1: pcie@1c08000 {
 			device_type = "pci";
 			compatible = "qcom,pcie-sm8650", "qcom,pcie-sm8550";
 			reg = <0 0x01c08000 0 0x3000>,

-- 
2.25.1


