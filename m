Return-Path: <devicetree+bounces-52144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 016228857EE
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 12:16:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7BFD81F2174E
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 11:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27BCB58126;
	Thu, 21 Mar 2024 11:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lJccgxqS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88B6157864
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 11:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711019803; cv=none; b=LhC6WvQKvw1veWs1aPPWHqyJ92kJHsw4hu5PwvwX/8kSRaGfyblmaozeiOk59oatdXT9QoxNWVDByK23Pd1ZaMN3FimOIcFk+GU462buSis4tsuGeHXjKF6Z+XKtsUwbgajIIKJvdnV9pg7t0/87/5FV0DoYDdC3cLovqdXK4w0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711019803; c=relaxed/simple;
	bh=xcvj+XNV5xfW8YlGd4sTKzqiizvFttVCC+lrwkkusgk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TyiMf/8dUNN6oAZ7l9YcUzRtOTlmuggm0cwPKMjSSAoFT2vw+oL9j7rfvh6TdDpmuwYDCho6qVA0vIQq96ZZBOuhtnC6FQlT2Jf2TfrGApbgqF9IP32bXxUJNLYbJc8fso/XHzTLbbWhyOERD0xgEoyU71xPf+k69+AfhTOhlTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lJccgxqS; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6e6ce174d45so709640b3a.3
        for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 04:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711019801; x=1711624601; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t8mYqUYFmXt+OqihQVehR/CRt6L8yHG3IFqMGWpjwwI=;
        b=lJccgxqSlnNt5oaXtotV5wNNbSc/mJ0CdTsgFrqWkDA59xeSKn3G7nvoWs3R3pysCa
         fBwcHe7dtPiiE2usc48fHgItYdzzTFf6JQrGnPSXCRzpsZImswBfKlnSQ0rAjoddX1nw
         iKqsa80nW6+evkXDHPGJBTG91yr5fNbjP3u1DwrrXOd9kaTB9bBChpdgn27GHbZtNJb1
         Fd7BWqx79ZlzR59O7stg3k3hwVbangN8PS6bBt2MfxjeG+2Z/G3fLA1gjO5FM+Mfms21
         8sSz5R9yuKnUFWnEMniqkvejJyLRlUvISYrblknX5YGZWfAlBoO2g648i/qcW1xaaJKE
         WJSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711019801; x=1711624601;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t8mYqUYFmXt+OqihQVehR/CRt6L8yHG3IFqMGWpjwwI=;
        b=hnLxIJUp2tU2DPSyBAhJEQlEpmIUljIw512JHYmpzNZhtEan3Hxy4NWQy5VW0Pr7zu
         EIjGGDivPeathl+Uw9b88z9kBXx5CxtesAle52qryp2NMfpQiq7aSBlRSyABlxXoWbKu
         Xt20EwslOZmxGDCtqAdQrcYVeF+M+7pH8GgcmylICwjS7Mb6PnQTxumQaY541gfY5D0c
         CSOszBTPPxeW5vdeXDNldkztAiBJ00k/dCHgcJGWDBW4Yie6jkg8WsAne7MPWOzCH5i3
         gP1ZZPu1CvN6TtjByLeJp7VZT68CBuIAi/1ZjG8dkukBUcP+nsJJekNkXbxGjd0TA9Uy
         FIXg==
X-Forwarded-Encrypted: i=1; AJvYcCVseYPwLfLZgB2o2DhJZHDK7kPgUJaAOtRp9//HrmLAvNO+5tWBhokBLuwHdF+ZHkB+Qek0HSk6ExfWQt+s+JDTPw71fx7dkBniOg==
X-Gm-Message-State: AOJu0YzbEXpuDK2JaBwOo0iGHZCacY5+WZb27vGCXpXRw9IISywnHdhP
	rBP+jOUxpVe/Uyo2DUxoJFYy7+pSkzWMBGHZtdUzFalGBB/aXSgoAOjhtiJVbQ==
X-Google-Smtp-Source: AGHT+IGi917XlZDZ55NXEQh0N9HCOUUJYmC/p8BLvNhprm0vicTdQ3QFeprHT4oe+9HyuoMZZGJ/2Q==
X-Received: by 2002:a05:6a00:21d0:b0:6e6:89a4:60ff with SMTP id t16-20020a056a0021d000b006e689a460ffmr8816921pfj.29.1711019800551;
        Thu, 21 Mar 2024 04:16:40 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:102b:a64b:d832:a82a:837c:6d3])
        by smtp.gmail.com with ESMTPSA id ka6-20020a056a00938600b006e7324d32bbsm5531120pfb.122.2024.03.21.04.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 04:16:40 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Thu, 21 Mar 2024 16:46:21 +0530
Subject: [PATCH v2 01/21] arm64: dts: qcom: sm8250: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240321-pcie-qcom-bridge-dts-v2-1-1eb790c53e43@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=xcvj+XNV5xfW8YlGd4sTKzqiizvFttVCC+lrwkkusgk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl/BcIeusDr2hnIncB0F6+Dabq4Z+f4c0sKAnB2
 dueS/GWtB6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZfwXCAAKCRBVnxHm/pHO
 9Zj0B/wMPhFsXrmC8vshhzWFBWkP+3XBZMBgO3yts1Unsf7ENOqaI4PsAg7zKhIYJww4BtEDsOD
 KW7xOpEIT5HueFuwSIec0USyAJWjf4SE5ON2quQj8/T1YrcY1R1W7V37FNq9+SlvFVU6EKl0aho
 YneAZlGXMNsrODCY+hJMIa7mpsZBqBNodC131R8vKVyrN8j5e2kVyWk1iNvVaFJyZfmyVor8OZf
 HOIZ+lYnqzLLsejjHzXpm+wZtDnmYFAewPYCjumRHmoVaDuQ8r2I+chLaW+G36w0TIR+aJX3XrR
 eCAJDilYJLXwxNSQ2d0VYRxon0BwT9EeKIhy1g2QPb8EhU+C
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 39bd8f0eba1e..fe5485256b22 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2203,6 +2203,16 @@ pcie0: pcie@1c00000 {
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
@@ -2318,6 +2328,16 @@ pcie1: pcie@1c08000 {
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
@@ -2433,6 +2453,16 @@ pcie2: pcie@1c10000 {
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


