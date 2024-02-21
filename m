Return-Path: <devicetree+bounces-44152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AF485CEFD
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 04:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 473481C226C7
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 03:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A675E3D540;
	Wed, 21 Feb 2024 03:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ECxEH5+n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E803D38D
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 03:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708486961; cv=none; b=G/c0DKtP1LMKEF+dgJDBp8EWAgH2TSxK87dDprhURLZ9cPREbpuvnSrDnRbHD+OwGBncex8cs2aRzd5mOCLzSa0DUn1ivZEho4bzWcz8ABfgUyH+/obDCE+tzoRhtthC7u/zOQGbtA3jwBkWydYl83aBcDja4n+GXnwLoCQ1qV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708486961; c=relaxed/simple;
	bh=XwgmeGggFrXeetR+EYAdr6Z2A4DtJUzK6YNLFgLFJC4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V/ojo8tgsc5BGnmg7IGyhdqPm/khLi2zqdIMruDusXV+QTGVWmZx1ZVbFAskaJAwTgJqqXy8ppROYIgqT75WaXpGUrak/93ZlZ5Uy+xbeemqAf3mHU+c8YK/As8NvlxkQm7gnxbxqOy8Uk9j7A/sDgvCAGN+MBBkKuPT8zygFFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ECxEH5+n; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6e43ee3f6fbso3202554b3a.3
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 19:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708486959; x=1709091759; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P9BqxkTc2mQrdZu1UdYE7KMSoJ/vtFyFv1CjWrHWdPo=;
        b=ECxEH5+nfzsnmGTNgZEqZ1+V+nfUVuX9CTwHOQJosUgcyN9QvDgwnsHZE5j3sftrZp
         8muSEYRVdHFW2mYbtZxn7zLQmQHdhaZIbz7cd0VRwdM82Nb/Wkw/U+llQbOZZ1gSyDok
         mo24KZlPSjsea7NTraJstc0pu03mRmNG5d5gan4VZnxEHx0SPnRL5RvHkfamyUqI0RhX
         mmO9wREvkcOP+FOCHJaSzVagSfw7dieIPkGOpdo0PyYMURVaUe8EhBxNkmUQnYae0imv
         D8NU1RujVxqYP5z8MC3wtXaDJHXlpomXFmCiEDQiynRY9zTQrCU/UiS0jZBvbQikn7q+
         kILQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708486959; x=1709091759;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P9BqxkTc2mQrdZu1UdYE7KMSoJ/vtFyFv1CjWrHWdPo=;
        b=Mfl7EOCy1Hqf+OWnELTTGj/r5Eb2yARHOHMcRrLxK0S53E2bwlbgmHTR5a+lyqbQZ8
         JhIp9gDbUiGfV2JJ6kbiRLhTjsIE3RXAYuVNlTYMmyGi4WdQ8oCL6qZ/sFnd+xO3Tg1O
         /hDJW+bEITVQmXPjbOFpIA/N5y7Fj2QJrIJ8ZmZvYxjRMGoWmXxwoqtiuB3GBjmF8ta6
         ieBCHCyeI8cP0MzJhQR4qnRYi+kLVwnaFxTsGTPvjuLzM09eI3VdEq1D/aM+IijQbwFk
         gZJ0Of2pZmIV6V0HohQGy2M2E+XPgeuYY9lW/AlOB6SdmLcYeiMr+JaDWipMjq0sBRxo
         0L9Q==
X-Forwarded-Encrypted: i=1; AJvYcCVtfMvuUnxm7KbXL7EjrVFrE666W0xJ9awpHvI3YRWq6yXR00w34vKTteX9XXqTMHLeZw5/Ga6Lm1didBTHIMPF4yCoZBeY+SdPtQ==
X-Gm-Message-State: AOJu0Yz6GivYuwg+nZsr042GuxOrjPRJW3RFLDGaHK4VMMNdoaZgDUnG
	kJqjs+ITwA5HUSzANK/Lbfm5J+XMyAtytg56fATSx8e5U/VydbFmm9PWfgTtBQ==
X-Google-Smtp-Source: AGHT+IGKfC5yZhbWUtKCvMVAXY9EL5KTWbWVegEw0P7Rgr+jQKxROkXVrKsMC5AWxYlJOT/O4/Ahvw==
X-Received: by 2002:a05:6a00:bc4:b0:6e4:886b:d0a7 with SMTP id x4-20020a056a000bc400b006e4886bd0a7mr1761729pfu.2.1708486959342;
        Tue, 20 Feb 2024 19:42:39 -0800 (PST)
Received: from [127.0.1.1] ([117.207.28.224])
        by smtp.gmail.com with ESMTPSA id o23-20020a056a001b5700b006e466369645sm4436231pfv.132.2024.02.20.19.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 19:42:38 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 21 Feb 2024 09:11:55 +0530
Subject: [PATCH 09/21] arm64: dts: qcom: sc8280xp: Add PCIe bridge node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240221-pcie-qcom-bridge-dts-v1-9-6c6df0f9450d@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2700;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=XwgmeGggFrXeetR+EYAdr6Z2A4DtJUzK6YNLFgLFJC4=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBl1XEHVShYIbB8TBTLfW8as/DVemrTl39xLMnVH
 PHUKnCg/kuJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZdVxBwAKCRBVnxHm/pHO
 9dEMB/sHUSKJDzXFGuECJ6iPlaykTCqH3OINz0eYVlbxMG9/x1kZ3U7G0WClA4vHDRq5regAbNG
 IXj82rqC2LAmxtaj0VWn71/r3QArbOP0HeVV+aJkhZJ/vFf135QH/0IBNg0oh6EBU/+75iTfNdK
 zAC6tCvnC6uz8JrImXvkinJu8ARwZkmu5Z9S3ONElk8IEzPS0HIwjjQ0fzz6AH1ZM7I/WUfcbih
 Z8IJ0V74+ZCAdtaC5BnYrrye+W0yzCF40hYQ+e9j1KxV4A3YSlLgscwSFES301Adnju6qtpiRzx
 nXrAU8pr4i7xa2BO7WX5Hag9krNRGDtsTrleiHq0IIpcFpbG
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008

On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
for each controller instance. Hence, add a node to represent the bridge.

While at it, let's remove the bridge properties from board dts as they are
now redundant.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |  8 -----
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             | 40 ++++++++++++++++++++++
 2 files changed, 40 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index def3976bd5bb..f0a0115e08fa 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -733,14 +733,6 @@ &pcie4 {
 	status = "okay";
 
 	pcie@0 {
-		device_type = "pci";
-		reg = <0x0 0x0 0x0 0x0 0x0>;
-		#address-cells = <3>;
-		#size-cells = <2>;
-		ranges;
-
-		bus-range = <0x01 0xff>;
-
 		wifi@0 {
 			compatible = "pci17cb,1103";
 			reg = <0x10000 0x0 0x0 0x0 0x0>;
diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index febf28356ff8..37d9e01d7e4e 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -1779,6 +1779,16 @@ pcie4: pcie@1c00000 {
 			phy-names = "pciephy";
 
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
 
 		pcie4_phy: phy@1c06000 {
@@ -1877,6 +1887,16 @@ pcie3b: pcie@1c08000 {
 			phy-names = "pciephy";
 
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
 
 		pcie3b_phy: phy@1c0e000 {
@@ -1975,6 +1995,16 @@ pcie3a: pcie@1c10000 {
 			phy-names = "pciephy";
 
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
 
 		pcie3a_phy: phy@1c14000 {
@@ -2076,6 +2106,16 @@ pcie2b: pcie@1c18000 {
 			phy-names = "pciephy";
 
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
 
 		pcie2b_phy: phy@1c1e000 {

-- 
2.25.1


