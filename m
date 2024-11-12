Return-Path: <devicetree+bounces-121234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42CA79C6297
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 21:30:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9A91B85B4A
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 17:05:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8296E2170DF;
	Tue, 12 Nov 2024 17:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bAZWML+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674D3215C77
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 17:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731430902; cv=none; b=UkoWeu8pmBmgLFmV38mz3dCC2tKg61jKHnfPPbqsKyZjubC6MmWLUpjKdZrIT/PZjIO8d5RTdOt0WmVfcwlNxZjehf1NO+KGX3df/0uegFnzYFsce8ATsuoxy2D76xiteQHpezsuNp7GkY+xAWyW8bJ4fdyYlpLSE5cf56g5Dwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731430902; c=relaxed/simple;
	bh=61WnwVbjQzp4sdxYNyL76ZP03AeRz4wvh/vA8IL+uU0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CMnoOf9FZNksh7eIAJ0cLxwyceV4LiVGiSI0uAZgzB53XR4cGZjA0Ey1j+lMooNwJg8bkRnRuUXHJHYrphtADzNbYKuoo3DMODQskMy2MHl2QubjCtntVo1Lf91bXtSRQI99FvJ7pHPYjtakzBdx9Xde1JD5/83/w42iZEPZGTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bAZWML+V; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43162cf1eaaso74627925e9.0
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 09:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731430899; x=1732035699; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dYRD1gad+A7WK3AqsJ4xVAH4bMsbdKZx89vtQ5+7n0I=;
        b=bAZWML+VIXjh3U79ZvnDaZZoJ3D87nPnak7uivNsFknHttiWC7sNxWvv+1sg66HIwz
         +fmySNDKlBMOIefLLbhk+6L9K0z7dSCSRL7Sz2c9Mtz9QawMHc8vXptX2QQgQwAChkWm
         1gY7XzxpbLQL606CYhtMTmVRugUckJKCjS4egWrVvHdmOV9q1mJHweB8GbAQJeRUO+fA
         kxo+ffPQx1/T0a5mAo+OV71ZAl+BHg4fEKCct1OoAXg/5+kD0VgcTWby/SIdrt522uCV
         XQThQOGk5DWa3y24BMDu8IQDydUMMrWS/p59G8daT2N2BTMz23qapp/iCzJBQ+Mq3+zf
         m5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731430899; x=1732035699;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dYRD1gad+A7WK3AqsJ4xVAH4bMsbdKZx89vtQ5+7n0I=;
        b=uUWLy1o0+FPezm2ZEhg49aKHSdvVWwa7DAmYUQR9Yw6VZVuj4Oxe8vi+BZ4px4sLTf
         /k8CO8WB+qQkoH5ORPSoBobUFfUSw7K1rvKpQsdTA3zt9qJGyTnSg/CEOfLGSI5GB1fT
         NuG2TNORn3CahBJdF8FdofvL7nToEoToL1OuLHegQQSdXlRelA9V//RWzbJrB+L663qB
         onmRo3trGvkqoVSxgGzS4wK3LrExDChQEDEbAi1a2CibQpcEpr8p3uDKRxkk6VEtyucb
         9tlJyLTzuQIK7B89QYXoe3pbPNwjm2CiYBdhMdzfdliaDo+qJXA5sDNjWGHuUIU0z6Gq
         b/qw==
X-Forwarded-Encrypted: i=1; AJvYcCWOU5mTJCwArOS4lcbKAksKw5MsdVLmNoGBq77JFfcBVNux2nGF4Vp9u4BXbEPC0HRD4nBBSIB+fLyS@vger.kernel.org
X-Gm-Message-State: AOJu0YyI9jiSNHikhF1FmrJo5hJBlxRm9YSrT5ltqfqhv4pkxZFAwHam
	t7qegSUIttj136f9oP9yP1nuNxYGKD9NkkSac9oaxNwDQFwuWzip/vNA7p8hXjQ=
X-Google-Smtp-Source: AGHT+IFRI1nSBBUOOm70z9ztdLYYEKagW/puF644Av2YsVVaUflDEGEHwRbpcW8H+zBcoRUTYBUMUA==
X-Received: by 2002:a05:600c:468b:b0:431:b264:bad9 with SMTP id 5b1f17b1804b1-432b7505af7mr190894665e9.14.1731430898243;
        Tue, 12 Nov 2024 09:01:38 -0800 (PST)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432b053051fsm215018895e9.6.2024.11.12.09.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 09:01:37 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 12 Nov 2024 19:01:13 +0200
Subject: [PATCH v5 4/6] arm64: dts: qcom: x1e80100-crd: Enable external
 DisplayPort support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241112-x1e80100-ps8830-v5-4-4ad83af4d162@linaro.org>
References: <20241112-x1e80100-ps8830-v5-0-4ad83af4d162@linaro.org>
In-Reply-To: <20241112-x1e80100-ps8830-v5-0-4ad83af4d162@linaro.org>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Trilok Soni <quic_tsoni@quicinc.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1260; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=61WnwVbjQzp4sdxYNyL76ZP03AeRz4wvh/vA8IL+uU0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnM4nmmDgldP/glKsTHkbX++wwc5N9TyBQC4yC+
 k/EAA0NK6SJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZzOJ5gAKCRAbX0TJAJUV
 VslqEAC8D2lePTSPVdQqNHrYKysszkW5UzOSdbryyHJWs97y6VXRd9o5Lc9MdmE36iJM6PNCwvo
 XMa72Zq15ARGhezN1mM1IQkUpE2Ka4sx9JjnvO+0AKW/sizgTh3wSjeh65f/RRoozAukvG43D44
 nzNZ8OzbwtPdNtmRt1Q64cjQv2qE3IlsvxRjxVZ/oxsStrPazBQbwfLq9Fp6d2T80uPBJMDatyx
 MX2pXtqYMfJb5TljsLwasUwUC4enuCx+DgLr1VlshtRF6s6L8cjIPeJEGaS73gj5loeyinga7j5
 1CKtnE8q9uZcAgxM0P3RtGS7ZRzR8OXdUcU3X1PbFI3ewPP7wlAUNz4L0t7dU/DB8LLcC08gJAl
 I14095b+wAawtMqfnsG4PZYeggkbHNN/dSST8TQX9dZA9w1DybS78luRrkQoTqJCx90uFlPlW3B
 R7dComZadi06GGWJxMGiIdumFTtUbwqBPpFRJRUa0vCup+FvSEop+lCLLPzf3nffShENhWtHC6O
 kFLEyJeQnKSlJBxJxqWz9C1+zfmTdRI+/8ZE3W/GvMPyQyrYCJFnAQOdJYxJ8d/Da5GZq7GSRZz
 ra5+sguzD/G3kroWeAUsorXxKkEpnpK1tK/Rde1gyHMU4ua5HHNM+xjqrlFBiLYcANn4Z4gvEb7
 njjUKTOSfJDTO8g==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The X Elite CRD provides external DisplayPort on all 3 USB Type-C ports.
Each one of this ports is connected to a dedicated DisplayPort
controller.

Due to support missing in the USB/DisplayPort combo PHY driver,
the external DisplayPort is limited to 2 lanes.

So enable all 3 remaining DisplayPort controllers and limit their data
lanes number to 2.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 659520404adec33c3551f8d0a5ae3db9e0a18d44..6dc2ebbf6d27fbbf0f224e58cd39ffd33792c6a1 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -1125,6 +1125,30 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp0 {
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	data-lanes = <0 1>;
+};
+
+&mdss_dp1 {
+	status = "okay";
+};
+
+&mdss_dp1_out {
+	data-lanes = <0 1>;
+};
+
+&mdss_dp2 {
+	status = "okay";
+};
+
+&mdss_dp2_out {
+	data-lanes = <0 1>;
+};
+
 &mdss_dp3 {
 	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;

-- 
2.34.1


