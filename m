Return-Path: <devicetree+bounces-243936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C486C9E8E8
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:45:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 931D93A8D77
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E7FE2EA174;
	Wed,  3 Dec 2025 09:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="M9Klh4/2"
X-Original-To: devicetree@vger.kernel.org
Received: from out-170.mta0.migadu.com (out-170.mta0.migadu.com [91.218.175.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D4F2E9EAD
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764754965; cv=none; b=jVBX/2/fT3/YetLuqt4N7tENxGTN1OxYTd6AeOY2BhRD7TwzuswchDX6QdC3XhoDux37xJ1etTbvKspygTx09xkFfS3jDVdXCWgrCcbbyzsS1ZosWZFN1de15CwmFewlkJzLMU2jxzWDasWo1WtqTERHzoPukn6SslVHsFG7iaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764754965; c=relaxed/simple;
	bh=3idipFl6GoUCwrCrULGXk8g6n8BULa/1gNd/5Ulfkl4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G815aoo6dBMIdWJAYBrw7Z7aAjuVRkWbi3YT7WyuPdNa8rkPWl2JTH6y46xBoO88M+/RDrwZ6ttf8jLEXkzmsCSImc3TThoTPt3xmMiwgVDbnrRuEE/SH8yP+5mex5dc3JxuGdNnhzL2H/cC+5gNvbDYaG+AyrI78ubWRJq6Esw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=M9Klh4/2; arc=none smtp.client-ip=91.218.175.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1764754961;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=K2Fi8dCZQRiJSMBwJUwWjixJK6rj0qnXLgPt+K+Rs9E=;
	b=M9Klh4/2MS0TB2cQVKU6rnDz4vkzPdQoT/JUuazyaU/WuSFd2B02s3CRlw4WZrlQ/9BbCx
	3XB8Y9GWLaVQB3fbp6PbA19gp5hDdZ80T2Q9mvvGwkWiEOJGaToQDvre14BB+oy2PKihdv
	MQZBj8qw98NbRDT8MnFr9M9uoOdrW8IZ+Ehd3o9+AhOi5j6SEZmFTAQfRhN1XNaFgMPKpK
	Ja6ypWR39gasf9sbMWPJsGLw4s62lBW7db2/q3CeTBLqVzYLgfAvreX+LEbjfePU7lFb5q
	MyYKTCp/Ds+kfd7gYWHTCBnxKq6uRmYQBbgpiq8uaG2ex5FvbdMjJdQx178obg==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Wed, 03 Dec 2025 01:40:58 -0800
Subject: [PATCH v5 09/12] arm64: dts: qcom: sdm845-lg-common: Add camera
 flash
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-judyln-dts-v5-9-80c1ffca8487@postmarketos.org>
References: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
In-Reply-To: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, Amir Dahan <system64fumo@tuta.io>, 
 Christopher Brown <crispybrown@gmail.com>, 
 Paul Sajna <sajattack@postmarketos.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764754921; l=950;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=3idipFl6GoUCwrCrULGXk8g6n8BULa/1gNd/5Ulfkl4=;
 b=MbGVAt19AFSyyDf/mB11rIRTA4kALxcCq+e9EgtBl2CT8mlSkNCQolSsn9uOfnBqD/7jFCilw
 gjWr/xGz2TqALH99iWfZt9UtWKCHqaT6xqqQK5ef5EZ4c2tFML+cAsM
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT

Camera doesn't work yet (imx351), but we can use the flash as a flashlight.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
index 93b9a0246510..1a80921ff744 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
@@ -494,6 +494,19 @@ &pm8998_resin {
 	status = "okay";
 };
 
+&pmi8998_flash {
+	status = "okay";
+
+	led-0 {
+		function = LED_FUNCTION_FLASH;
+		color = <LED_COLOR_ID_WHITE>;
+		led-sources = <2>;
+		led-max-microamp = <100000>;
+		flash-max-microamp = <500000>;
+		flash-max-timeout-us = <500000>;
+	};
+};
+
 &pmi8998_lpg {
 	status = "okay";
 

-- 
2.52.0


