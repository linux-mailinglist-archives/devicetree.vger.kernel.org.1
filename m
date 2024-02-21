Return-Path: <devicetree+bounces-44148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FDA85CEF1
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 04:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F11641F2353B
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 03:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95A053C6A3;
	Wed, 21 Feb 2024 03:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YMe7Npzt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DC53C478
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708486948; cv=none; b=K9sGrGxWVuDjU8gCSrHX6SLQZHRrdaAkI0pES9+8CVXNYJMrgJQ5F1boFRMxxBVR7/6509ssCU/T/SGTq/v9CPofH9xaT2yvta2o1HiLGQ3lChlcqgNL2XfrYTi7rG2InjLM4k3vlq+KrM5l8neNJj+NkEfDCL2aGFQA1eTxl0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708486948; c=relaxed/simple;
	bh=wMGBDo8PfZNtRjeSzpd4083aE4V7NiguAVNg298g23E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f/DVwKYaPPPKU0qOLXh2DEt0TQweCrkikRbAwAsnZW/duhPrsSJEXVezr+TcQLdeOtxQv20xB9T5RjVEUbMpw/9sRhXn6924FqaZRVXjz5jBVJpvKr2w3/Wg5YGfaiwLgnDUb2Zfol8bmVqmNZioxh1uCMilrMKatRrKBtpl0JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YMe7Npzt; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dccb1421bdeso5890354276.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 19:42:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708486946; x=1709091746; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FrGKuE+bhJNEU+TKQDK5plQ/6DBMhZ9pqdA/ZZ9D63M=;
        b=YMe7Npzt1FmGLuT+zgFH8lP0uwkvnmrJlf10OGpqboCToBSAw9g/3SFoq8rrPB2U9r
         Y+6goriW8MHZn9PlZVp0BzdUBlvX8BcGCI8Ry8sd+da9onbVG7wChox8+ROuZ7Qvj0aN
         LksDkodEc/diJ5+e8gsAJQ5yDFhmmzdbYXxCTbNdOpUwaWOi+v6sRM2K1h4QN+So+h88
         tfXkV5Zb3l0igyK2ho4ts9ofGhr5vU9TVC9NrfwxiF1l4X9UWqRWbCqUIZ3t/IsI1pMT
         F5281fBst5KiBkXExGiZ60mH5gSlcCkK2RTSBq2K/yrLVaCG3NQ9T4deZs0QSHCQsTDH
         SQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708486946; x=1709091746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FrGKuE+bhJNEU+TKQDK5plQ/6DBMhZ9pqdA/ZZ9D63M=;
        b=fm9lEmnioNLH5j5gABpyZt1SRUFgtRftEZB2IG73UALovErdbsfxYQVAFHqkmWVYzK
         Huv1UamHRBm30Y+TDiBqXFKH0fSB0F2Tedt1xMs/6dNPAoI4Ogh0AHPSi32DBgd2qNZq
         D4d3KOOuk404gM+SJHT4GPubQqtmXYRqF60MxUgHVh/Cu29q8HthWblPLAVfGVn82Qzb
         ddSmg9dk+T2aLq3ejKjgZv8193J6Nf1pwoUZ73muyFJCdh9Xp+SgsdOJj/nrXAxpHLfO
         mZ6rfgR/kFDNjwL4GxjVTP8ixIWNIeFzgh4y3eqT62FxU4VojEyH91f1x0NEliB7dhLs
         5U0w==
X-Forwarded-Encrypted: i=1; AJvYcCUk8BlQag2ock39qX1wrdQhw6BAwoShD/0MOyej2zQ6UFXAigSb1+DeaAoULTdaQ2LuoSpJmHWoxEg2lodFN9dE3dTqQtmtn58a0Q==
X-Gm-Message-State: AOJu0YwgOYi5RxJpZeyHJs8KieYR5Wkg2PzNp6rRnb1oxtIgw50MW2ta
	Q9tuGYjrJ33OKv2Ei8Mg1c4yRf8Z5b8QsuYPpB801H/sHmlRfk5X+usQSO26c0G+CVX3+6wSOaQ
	=
X-Google-Smtp-Source: AGHT+IFPFi3A3quauDGsOqx04JmlpPm4koWq3PUzgzg2EclDGacTspDNlbOggCl7panElw0Gqzj3rA==
X-Received: by 2002:a25:c50b:0:b0:dcc:5a73:1cad with SMTP id v11-20020a25c50b000000b00dcc5a731cadmr15672193ybe.42.1708486945779;
        Tue, 20 Feb 2024 19:42:25 -0800 (PST)
Received: from [127.0.1.1] ([117.207.28.224])
        by smtp.gmail.com with ESMTPSA id o23-20020a056a001b5700b006e466369645sm4436231pfv.132.2024.02.20.19.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 19:42:25 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 21 Feb 2024 09:11:51 +0530
Subject: [PATCH 05/21] arm64: dts: qcom: sm8450: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-pcie-qcom-bridge-dts-v1-5-6c6df0f9450d@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1249;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=wMGBDo8PfZNtRjeSzpd4083aE4V7NiguAVNg298g23E=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl1XEGPFkJEG2R9ixKQaN7nKfcNZLT7FLZdrDd6
 HuoPkAS7DGJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZdVxBgAKCRBVnxHm/pHO
 9Z17B/43E3+z6dq5RkjNMdjw/9k5gftRx7SBxgj9e3HiDqAqDtW3QFTVjYv5Qdi5U3HL083zD5C
 xJkOLw32bWrVdwiQB67tqljUNfGTUZUAyRN6D4YL4iyZKr3WSegnmwwZF82nCYoSEcey5AYoZO0
 nRrhDxm+SvJOe77ZGesTk1RaGyL/87gBjhKSDC5ZGSCE1GX3Sp+ZrWiPD6j9dmnVwLcdi4Hm+91
 Yeb6EtmgeaHTcCFDazT0jutoNHNVDpi3xmcfEaYDsdkbnq7OdMg34BIN7/slsjIklULkgcI4vw4
 bUAjCSKrXPD3uDAfyY6OzDU3McXZGWA//4OhdosQO/1PKF61
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 01e4dfc4babd..e874cc4f8e6f 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -1824,6 +1824,16 @@ pcie0: pcie@1c00000 {
 			pinctrl-0 = <&pcie0_default_state>;
 
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
@@ -1931,6 +1941,16 @@ pcie1: pcie@1c08000 {
 			pinctrl-0 = <&pcie1_default_state>;
 
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

-- 
2.25.1


