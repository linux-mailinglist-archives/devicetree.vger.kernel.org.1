Return-Path: <devicetree+bounces-204311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F774B24EB5
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:05:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 793974E4075
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 16:05:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C42329B8D0;
	Wed, 13 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a2oX0zyN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EBC299922
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 15:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755100793; cv=none; b=OGu8rggm61080SY9i1Bevx+E38LWmkO6b3RMuD2/+CcqmeM3/BF90JeGhOdX8JcsiPYXqyKHsr1zLOKFlc6R2vJu7wKpbUEwqUD7sYMbO5FCgcaUO1k/pW/yAmGOKrH+JzU27aQduFe2JmRBWOtQWMSVSyxw6EBk+MRCiVmRKUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755100793; c=relaxed/simple;
	bh=TxT3XP0xgV/7aiaCGEZotGL6QqLvbEiYjqpdnjAJF9U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jweQjCjyyS/wYtpVjpBR2Xt5+y1raLjMqPAwjcx2yryGhtqv6UcKhZVvRmhr6XwAcjCTG1ZhZYi4Ef7KNlDmTeqAwHz1SX1NSgmqW0hvTfq2XoaR9+DCd0dCqGcLg3Z0zpIIJazI2+y8mE/J5LIQjNm53XnQVByCmKOlIK6IvvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a2oX0zyN; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b788feab29so4245707f8f.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755100789; x=1755705589; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gmDU7DO+okib6EqaOv8JzKdmguaiibmXWYxBVNPq+Vw=;
        b=a2oX0zyNWUwMKpQPXC2C9x61u+CovCN8Suthzpj36Y6vXWJjzQSJMSheJB7JEetOYs
         cTQSuWIpMQdRht0zYDOAQfvusBFp+U8T80OAjKV8ZHF+wug8RY8ogCYK3nde6yJII+Nx
         F41EAO4/gvFFbLmycFiJuI2Ysu7TJyEoRdfYYuBBXb2kK91T3yp31HW47Iap8jfIla0f
         D3576sAAvywp0wFzmcJVsWBfBwT61lwH8cGoouc1+WXPQEvdZ5teNZgPyTB+95bden9Z
         FoHI+ei6NFxDO2CU8mJ93dYaX0Dar9uT9GbrQo8Klg69Mi3d0cGAH8B9SmHItakeJJlA
         JJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755100789; x=1755705589;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gmDU7DO+okib6EqaOv8JzKdmguaiibmXWYxBVNPq+Vw=;
        b=excOLNOxZjBpr/qi5JuzneNQ3dgw3m2D3DUmyLCM07t8RR9X8i1+emcgxchedqtAE0
         XCUlgiFRHnOwXui9+ANIdsvJSE5IDx7GKcm8LRtVb9mZHxXsWgi2t/Ohg5Uj+zr1nShW
         cWoTmhTo1u5m8e34pyd8qfeUkAzS3lGcz5yjsX6uFkWQV+UuPALug2oeRKvHM2H34dqK
         G7EtclTMOldu+s91PFbz+/leBVLJzKgO462kJUpl3Qq+y0SbXJYJG8OtY/1Fzrris6YG
         McQlOSIvwLGehv6u/WE3Ew72JUjXxBEYUyqYJLN6FdDevaXy6Fn/kuDvujCIRUSFJH2M
         JSOw==
X-Forwarded-Encrypted: i=1; AJvYcCXnFmYyWveaa/qnX5u/5UH7v2q8hJpQaLDCT66ZTKqKxgdbKiPIINyaSkcM4PH4p21jiB+SriBjIy7A@vger.kernel.org
X-Gm-Message-State: AOJu0YxrxcFdinR2WXOjbNgdJl6WpHrU8kRF2lIlNQXMUf1VWXp9tCkA
	5q/7yK2NGVztOCJ5TJgA3k8A9lP54UUhmBB/LGdtDH62Az8FZ1p37Vcgx/CbGeYGS3u6jNDl4py
	ysikZ
X-Gm-Gg: ASbGncsQTA6VwPR2crRcOWIAemUUqQq14WuQBHJHeajgUS+RVagnurCJLiItnRfFA+Z
	MDVuKqFZ/8A+/iXTKVeOKQEhXJDYeAro71PBiNeRYXFiBov02aJklRuzMpFptcj4Le8C2pwyVJ2
	vv38LO+SJ/tXo55E9pQHkMM4XQnM2cHeMhENWG9HrahsLOofJf+ZnqVieXVeVCF3MZbZcjotF08
	I4elzFDM2sfAKhrO/TwuEnwXL/Adk3988SRGlvGy3A0KmF0FPQlrkUtSGu8oskACGT3FxwFvEwi
	mDUjptxBQNXX+CADcf91CaLzQSvpcDBUd6hgC/qProMy6QIIWAlzbINpY9y1pdn1G5LSSq9yoYk
	JFBV/Yn9IwQ2UDwjeEI5AYWU+/jUuWqHXe+s9eQ==
X-Google-Smtp-Source: AGHT+IGhrwunR/U37K7KdPqHpQqbqeIaJFvnnvKHfM8rmssepuAqgduQ9Nj4OZ/qYOCx1rDOdHejmQ==
X-Received: by 2002:a5d:5f8d:0:b0:3a6:d349:1b52 with SMTP id ffacd0b85a97d-3b917e3918fmr2952191f8f.21.1755100788652;
        Wed, 13 Aug 2025 08:59:48 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:4537:5d58:c08d:204b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1a517c26sm7087755e9.7.2025.08.13.08.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 08:59:48 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 13 Aug 2025 17:58:59 +0200
Subject: [PATCH 2/9] arm64: dts: qcom: x1-crd: Explicitly enable used audio
 codecs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-x1e80100-disable-audio-codecs-v1-2-af82d9576f80@linaro.org>
References: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
In-Reply-To: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

Currently, the macro audio codecs are enabled by default in x1e80100.dtsi.
However, they do not probe without the ADSP remoteproc, which is disabled
by default. Also, not all boards make use of all the audio codecs, e.g.
there are several boards with just two speakers. In this case, the
&lpass_wsa2macro is not used.

In preparation of disabling the audio codecs by default in x1e80100.dtsi,
add the missing status lines to explicitly enable the used audio codecs.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1-crd.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
index e3d2fc342bd184473b37882f3bc4f9c4d23135bd..21eaeeff3ec3a668477859c466176ff1d1e0d82c 100644
--- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
@@ -1114,7 +1114,13 @@ touchscreen@10 {
 	};
 };
 
+&lpass_rxmacro {
+	status = "okay";
+};
+
 &lpass_tlmm {
+	status = "okay";
+
 	spkr_01_sd_n_active: spkr-01-sd-n-active-state {
 		pins = "gpio12";
 		function = "gpio";
@@ -1132,12 +1138,26 @@ spkr_23_sd_n_active: spkr-23-sd-n-active-state {
 	};
 };
 
+&lpass_txmacro {
+	status = "okay";
+};
+
 &lpass_vamacro {
 	pinctrl-0 = <&dmic01_default>, <&dmic23_default>;
 	pinctrl-names = "default";
 
 	vdd-micb-supply = <&vreg_l1b_1p8>;
 	qcom,dmic-sample-rate = <4800000>;
+
+	status = "okay";
+};
+
+&lpass_wsamacro {
+	status = "okay";
+};
+
+&lpass_wsa2macro {
+	status = "okay";
 };
 
 &mdss {

-- 
2.50.1


