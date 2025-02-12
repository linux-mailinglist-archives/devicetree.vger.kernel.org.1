Return-Path: <devicetree+bounces-145916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA055A32CE1
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 18:07:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CDDA16B26C
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 17:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2282C260A3C;
	Wed, 12 Feb 2025 17:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PGxUY2on"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1957125D52B
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 17:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739379864; cv=none; b=oplU40bB8eqKph9czeG9XGuS2ynstbsqOMhc+F2lmotpB6ZeMvOOH5IcU3diEydotpXPf4KpesXaFkJpbM+4yX8eXeMzTHrqcrCmM74lpNHsA3O5Vdr518geIQIuFOVTjmL0CF2LiatpU0vQiKzZqRwhaKT1fOynhDRIsoaaRmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739379864; c=relaxed/simple;
	bh=/NYZuVJ5CW8Pc7756jGUtf0Lv3irVG+gP3QhGB2cFMI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=X0sCh2YLMhH/aeEkuSp/vSGFnRiE3a6PTbsplpLbXaiwg+J6zx7pakbkBjv/KbNkhgiQt0p3wfUuG09S4s4m+KZG80uwWqhN57B8iyX+090lL11VsckgXxudESb38JcX+k6ytYT+RhUBEfcMeN032vilClCQRZHepaChlNf7HgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PGxUY2on; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5debbced002so943684a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 09:04:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739379860; x=1739984660; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zYw0tG/nuWEvSbLScJnWGG2Q11zXbK7g2BHQcn5xcy0=;
        b=PGxUY2onQ7l/ynhXzdODhL+LJ84b/njUlAb0Qfc2wsoNq/3YrhAzm4R5yaGIUY7TOD
         J7mYNxdYBqbpL9kYY3Cw9M5Dt38OTiJdmuliWGbVGKFDoifnvU2MfyYj1qHDL2xR97TX
         Xtz0Zt8a94ML64LhZndC88WcnG4JFnO3RgnDroNATRZ/xzYFUKdKJyiy2M/aSsnQCbkc
         gaqEoab8HNblxbUHGmHGSVdH3tkwDiBQ3Fvxnh/L5T+FF9KGzJiEPahghjjQYFd/ChPI
         lRq8a8kLFlYNmI58PhtjUqt23Nh4jnoHHx/3z/ZOfsDBKfQMrkNsHxnIF2PRgllzSGQy
         INkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739379860; x=1739984660;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zYw0tG/nuWEvSbLScJnWGG2Q11zXbK7g2BHQcn5xcy0=;
        b=Lrckl7Anu/Ti1wfEO/UXjsGviZ+3VZVQYxOprujk3NF3ye9BZnHzK1pmjmrTJ9Xboo
         CdE5054yAnVVN+EaIT0ULJiXZu1ElnaKkkdhDLuVbhIbnqF1CnbuPDpYmjk8KRJ3oj1l
         jxEZTaszUTeWm24qnQYBxCOBtoRMPBuF4X06SFF1nH9qX8Lg2vwfQ2n7wWDhqzRvgO98
         hlHNPTQmnWFmEwtXk1eyQvv01hNbokx3srKO9DoL4TU32cS6k8UDYE1A+69hW9TdNtdp
         o7veOAkHREHNKtpkzfhUHMdi6JtqpQ4bJr7bTJWIq2Zma7sCLoBP5DEvQ6SDNPEPbGDc
         gUHg==
X-Forwarded-Encrypted: i=1; AJvYcCXtyG35BmO0oyPVwEKz+zawqwoi7/nmqL+kyyB9Rt2YN2XBFYQ3mFsJw+cmfhTnJMPrOO++01cFm12i@vger.kernel.org
X-Gm-Message-State: AOJu0YyjVwjBgupa2fKa9seL94DcH1AczXrgdOnmw9UzGR3YPrlfhtqh
	oICnENLHylaGa7jw5IcKZc8kQZU5xmyKIrmVG44xbazBUkDZRkm5RuHQR7u3j4E=
X-Gm-Gg: ASbGncvMwOf+LpmicOM6kd8ETQyriF9r5J8iw91Hu+gKvJKWQouRDksobeSOekm1aVj
	P9SA+Kw40gTVn2tV+zrQHDP7cM85L79EsymHddp2KLxIwC8R49EYWYROV9Oyqq0YedZ3PlR/xb6
	6VNSTrUUGL37VD+KUIMe5oOOP1JWnrW1wuiYdUDTW2mtM46Meas8iyuiix3OOnCl8Tq0tMEs5v2
	KV6SllrA6ZQj3f7kITXRFEBpel7+/dxKg8IzElQd3/P88d2QFMNEggfBayO0BDmCh0vAHtT7W7n
	VUNHl06xAXgsqpAO7DceacuC4/hL
X-Google-Smtp-Source: AGHT+IGwS9pGhWIrn8y879zF3bgF1bakf9yBm5N5I3DRe/DsDY25Qv96woF2RY7pM8YiIFh7fSb+cg==
X-Received: by 2002:a05:6402:27c9:b0:5dc:80ba:ddb1 with SMTP id 4fb4d7f45d1cf-5dec992221bmr34314a12.14.1739379860196;
        Wed, 12 Feb 2025 09:04:20 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:52e8:f77:3aca:520e])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5deb9f6e46bsm819230a12.71.2025.02.12.09.04.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 09:04:19 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 12 Feb 2025 18:03:50 +0100
Subject: [PATCH 4/8] arm64: dts: qcom: sm8650: Add missing properties for
 cryptobam
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-bam-dma-fixes-v1-4-f560889e65d8@linaro.org>
References: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
In-Reply-To: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Yuvaraj Ranganathan <quic_yrangana@quicinc.com>, 
 Anusha Rao <quic_anusha@quicinc.com>, 
 Md Sadre Alam <quic_mdalam@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

num-channels and qcom,num-ees are required for BAM nodes without clock,
because the driver cannot ensure the hardware is powered on when trying to
obtain the information from the hardware registers. Specifying the node
without these properties is unsafe and has caused early boot crashes for
other SoCs before [1, 2].

Add the missing information from the hardware registers to ensure the
driver can probe successfully without causing crashes.

[1]: https://lore.kernel.org/r/CY01EKQVWE36.B9X5TDXAREPF@fairphone.com/
[2]: https://lore.kernel.org/r/20230626145959.646747-1-krzysztof.kozlowski@linaro.org/

Cc: stable@vger.kernel.org
Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..c8a2a76a98f000610f33cd1ada82eebd6ae95343 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2533,6 +2533,8 @@ cryptobam: dma-controller@1dc4000 {
 				 <&apps_smmu 0x481 0>;
 
 			qcom,ee = <0>;
+			qcom,num-ees = <4>;
+			num-channels = <20>;
 			qcom,controlled-remotely;
 		};
 

-- 
2.47.2


