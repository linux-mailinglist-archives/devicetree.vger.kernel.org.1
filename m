Return-Path: <devicetree+bounces-169344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EABA96749
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 13:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A10A17C91F
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 11:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F89727C177;
	Tue, 22 Apr 2025 11:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A/XcnX9i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDB727C156
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745321145; cv=none; b=T860IDAt/EVJk1zoF0uYRplRtZW4Zt8PoJYDNYO4xuymRNiDPHy63bIP6jni4YiDK4t+Lx//0Kv3XD3S1ffnxo43iGJ7zOKOLq5ZypxLnW6wa2ZWBYK8A/7Kw2iJv3sS3f2Cbms9HraW2g7vkyo9dlRL3sogNmxeopTi6orNLeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745321145; c=relaxed/simple;
	bh=f0MHxJKf3Hkr8DXWB06Dx3sr0fAufMdrJeDI0nnyF6Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tA5JvHykuMa5/GRfhh9BAVyX4lNeE8K5IGHwCZoE3tUlbKKOWcY1IsBSnleMapO0Mr1aZ3hUcQWw+QAORU/zq9LeVl+XhDyCnbRFDa6uy1zE5AEfcnQBwa5glfeM/lazZLk7P4l9WfBvJvyTUBzAYD7RhlCPLKtIv3e3lG766Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A/XcnX9i; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5deb6482cso10588109a12.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 04:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745321141; x=1745925941; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8xih8C5/ff87ixFofZDkzHS9XUgGjx5tCNqquBqz1+E=;
        b=A/XcnX9imSm8D6TO+Zmp/OSAlbMUKLYzNrjjvyoI6h2+3Izsr+KEcWDu3uLYHB4jcS
         LKJoc8FzA2bcgNX/8FZRyJQf8EcjZ380UcgJfMQ0Qo5H0aYYqe88BKb2ZphHLgIm7/yq
         sTOHWy+YfxMMIEgwmZQQC6HKcQr/+u98Ps9V0Dk+LecYXK32Y6KPeE+Cv1uxiKGPo4I3
         4sjMhVxV4eHjJlCFI0MkFVXRpapumLA/8IGuI2EK13Uie7yL7Ebd6kbSNMMdVB0U+c2h
         A/wf3FXZXXhjkNh915RQU7dOT7YdvCQ9Qak6nqVHsbRBEhS0LUJpGWQsf8ljwRctKL3f
         cs1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745321141; x=1745925941;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8xih8C5/ff87ixFofZDkzHS9XUgGjx5tCNqquBqz1+E=;
        b=dOjxAQ9B2CINNT7vf8PGb8nb9Anx+COS3uHlW4BbqDtLW5mrCtxjlcdxGS+RaaaPhm
         RE9WF43xxDNzRaomXkLFiw9a0bOrhJHpGxED6fcDAO0OppedfKfA65oUxlFTUytK4NZH
         ZfstiNj4Z5H/2RcknvydkpoAoBxVQ2nT8mbj/yIgzaM/rYeIAdgRG0O7k79/GReRAoRp
         qAd1b22B/T+DZpetc2bsx4gR3jXaMWW0qcO5Xs8KzVwF6H8ErxiwYDvzOWExUwIbjHI0
         TvoF93wmhf7qZ819ImSZ2HP+0fs1e8IUu7AKC7UfoodadoUI+NyIaUch6gewJih/9F7M
         5SFw==
X-Forwarded-Encrypted: i=1; AJvYcCW3ShNkz4v2MOD8HwsUtMuNkSv0HIr9bh/vR65mrvYydPTLCPyOGuGpF/iIppPWP76hthCBsdCxoTui@vger.kernel.org
X-Gm-Message-State: AOJu0YzOwLWKLU0Lh+TOYmB4gWJmd7IYJfSkuX467Tw5r9NKECCkApjJ
	nsMTAJCEJD802Kq1f0DD4WRGNMDBcY32V/WCoKeGuG0wo6UgRzBxW0YLsyBiTdU=
X-Gm-Gg: ASbGncv7OBtdSdRdbhZA5T+8QS/4pzNc+Wfdemr09KyfpOinSrflTe2yi/wbGsvh7N/
	uIWDO92t0H4Jy9mdwLFCJknQm28f3AOBqBRDuulTQcP4Flxr5Mg6TVaKXJjnEUKUcZhHvW/c7IM
	To4cEPE70+8+pdaTBBmHfkeUX2hUk3Ua8ZaftWHdAqUwl3Zsoj30z8uy9vJmE+H8nVEAEJrYuWy
	9lA99mBnbQhBjst1Lao0R4D/RRKR6z5QVQzVrVli9asiG4CH96ZX39qMMpfEK9bL1jexMbFqq2r
	KWNLrFAt8L+GAypeYWAHMelVGBYtWVTLjt9OKKg=
X-Google-Smtp-Source: AGHT+IFNW6MxlAK6ZXmyz0bM7EMSyujIk60Xjp/CHp5P8FEIxp7zbDhOvVl9MF+BzG1eBHfqFySC7A==
X-Received: by 2002:a17:907:2d93:b0:ac7:b231:9554 with SMTP id a640c23a62f3a-acb7512199amr1076294666b.11.1745321141417;
        Tue, 22 Apr 2025 04:25:41 -0700 (PDT)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef45784sm630692366b.129.2025.04.22.04.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 04:25:40 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 22 Apr 2025 14:25:23 +0300
Subject: [PATCH v2 2/2] arm64: dts: qcom: x1e001de-devkit: Fix pin config
 for USB0 retimer vregs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250422-x1e001de-devkit-dts-fix-retimer-gpios-v2-2-0129c4f2b6d7@linaro.org>
References: <20250422-x1e001de-devkit-dts-fix-retimer-gpios-v2-0-0129c4f2b6d7@linaro.org>
In-Reply-To: <20250422-x1e001de-devkit-dts-fix-retimer-gpios-v2-0-0129c4f2b6d7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1518; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=f0MHxJKf3Hkr8DXWB06Dx3sr0fAufMdrJeDI0nnyF6Y=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoB3yvJ20SI06bKskDgXlxMXmA/3j9ooPW9rzlV
 4SAtMdORMSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaAd8rwAKCRAbX0TJAJUV
 VpGREADEm1pFAljBBkQk0/qkWYxpIMDOLKgXxQB9oTDkPtPN/y6NRimfGq/GcuDAuJb3sJtLa3D
 iD2YcXdqN5dkoamQv0x7oIk+OI9YVMaoykSbUdvy0APVGwExMhGgEwnA7G5sA4KGco38XmUib0a
 /XdyWMuIodOCP2TuonQDFh/daQwEIyAsf28IfOUMtqS+MxeevmxTYaUqXaBvO9lFn2515yXD6Xp
 9wGosrVHtfD8UPOhutQBqSEzXFEVdh0kFGrsoANEp/dB2mJhnvOjBiC0jx8bgUGNT3RC6gwux4M
 RcwwyQZBfkhOIzU8WFFF27+a13PuvoR1Foc20KWRM1uBlU5FQaLXOqyMQTCQ6U/auaXfLLJzxA8
 f0kOADK0TarJVa49hreBv/bwOug1ZkTOVUXpgPg34ScJvdy1+pF+ooEqLOvvDTiKCy1q1LNOQR5
 sA11917Fjla8DOjla3sEmNuN0+g6yZC2jllsIz2/0wN2+8iNcXfBk36A2ZON1HtfdS78nfG95ej
 R0hwq1M/g43LRcX4s16f5OWR7vONgcGeTASDgi8Hgi+yiVe2p346nTKkuiqUihJ9U7qMS+DC3PT
 VxtK2l21wUdkEYO5z/TuNePc6DQLONSasYVpWFbxNjqugCTEkozg2WsOYZNIp5EOdNVbbvVowOU
 EyYVhHKmAB1J3IQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Describe the missing power source, bias and direction for each of the USB0
retimer gpio-controlled voltage regulators related pin configuration.

Fixes: 019e1ee32fec ("arm64: dts: qcom: x1e001de-devkit: Enable external DP support")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
index 13516ae253fea6a7872da6c48bcf91eb95167a42..7104a21f852b8658b893490a01cfa1d1fc75f90a 100644
--- a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
+++ b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
@@ -1039,6 +1039,10 @@ rtmr0_default: rtmr0-reset-n-active-state {
 	usb0_3p3_reg_en: usb0-3p3-reg-en-state {
 		pins = "gpio11";
 		function = "normal";
+		power-source = <1>; /* 1.8 V */
+		bias-disable;
+		input-disable;
+		output-enable;
 	};
 };
 
@@ -1046,6 +1050,10 @@ &pmc8380_5_gpios {
 	usb0_pwr_1p15_en: usb0-pwr-1p15-en-state {
 		pins = "gpio8";
 		function = "normal";
+		power-source = <1>; /* 1.8 V */
+		bias-disable;
+		input-disable;
+		output-enable;
 	};
 };
 
@@ -1053,6 +1061,10 @@ &pm8550ve_9_gpios {
 	usb0_1p8_reg_en: usb0-1p8-reg-en-state {
 		pins = "gpio8";
 		function = "normal";
+		power-source = <1>; /* 1.8 V */
+		bias-disable;
+		input-disable;
+		output-enable;
 	};
 };
 

-- 
2.34.1


