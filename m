Return-Path: <devicetree+bounces-145914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E28A32CD2
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 18:06:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12A213AC8F6
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 17:05:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E6CA25E463;
	Wed, 12 Feb 2025 17:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fplOecLa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D9425D523
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 17:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739379861; cv=none; b=LGIZQP5Vg9ohpnRhwQ+Xv8OcAazzxZSCGCmGjI/zOpe/6oQgov3HvSAqxFqUhFR/ZWmKv79i7E7+6GspApT+vYbkevkvVHfICNlQAq6U74tfIQ3h2JTe3Jj6n8Wlkom59hyzcoCwAyzV+1N+ckLVSSemBsiuNMbe8alA+m7fn6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739379861; c=relaxed/simple;
	bh=sItJi983hvl01AxWCTmMFX7g70a0Fg4QZpXz/Tz/yyA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y1mtyL8cESd7PpB7v6SAmSHxXsDIlT+LkgRHA7DlPsLoTcF1ubuYyUCsuU0BuoIhI7EQMRGY4qZ9Yo8aEU6ov7BKuT4Z3ToTy+J4RghG3CevEK76hd07Mv53F3itaFZg7NK9PEf+TvUnj+kTDJCpK2Q1BvJv6xyF3ZPrxR3rKeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fplOecLa; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5de3c29e9b3so10185229a12.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 09:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739379856; x=1739984656; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S6w5okXU2Yu7jFnBUo43BoM84SGqbG4jaCw++xQVChE=;
        b=fplOecLazFKo5bPFXcwrIqQPAKwTv/hZFpxZ3qpbztC1+19mMbHK2yFc9WbbDYe6ET
         nVv2e+6D9DuF8iYMYSAxCSn/+K7FkrhohfbI8R1ZB09JmdhREq+uNQG6asRfeB5jYh/R
         J+/O33zB22fnrkfnKzU0nYNvaA4t5FsRiE7uN6r2KtUFu6E5ep0JGhidgUksXKaX3ooF
         +6HzAoeAOFLQ0qAFQ8YyuRiHkQTRm496czah6qCk9eTAO8m8wW1gI4sW4WJr1RwIP3Gx
         Sd3sHqk/+hdVd6wIigKkkemT2eCMZZfsWf5jPlJ6LBsfXRPK/k3/hJMUk3yD2IN/i7aP
         HHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739379856; x=1739984656;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S6w5okXU2Yu7jFnBUo43BoM84SGqbG4jaCw++xQVChE=;
        b=naU/IQ7dW+XghsC2ClMGZ/7Oe/ZC5GdH9Z0tFTe6PngUy62edBy4XYz8Oqpp+k2S4h
         sv2RP+bWyr1+JZ+2ll305/yBVJuqz3VQL79lAiYCp/ncMLaSlodl6vSNY1LAQoJoYW70
         PDIJZ6Xef/L612PIpS9agz0tnUDFWfWRnQ+k8pDOtcqfmr6p4gZqq+7anPaxxQ2+ukdz
         qToLCfXHwpsYlYHxLrDsQDoC6ynn3MQZPI+E+3Blg4cc/tkTig2fzft+9rBP2xErwnSU
         M7zyW+Ti9WH2As1jSIST4N2xswjxSjTv29pIVG2NCq6AIVqnKuzxgko6JeudT8REjr/D
         IOyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeOe/7FxCbrQEp7MWCsJc+7U9HzLHDqwlcdRQt1Cj5BrrDJx9qr9juouiKbwRcDyIaR59APleK10vQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwwTkLobn5GYQoRGmGfodjRZMEZrjWxHTftaftRzniUxU+sB3Uu
	fR+kCnVBr/Y9vG+jNC/o+1k3lFm5VFG6TRr2fm7Sev1VzCiGVeFXcUWFkMPp9Xk=
X-Gm-Gg: ASbGncvVhdw1dIMTjuajOScCbTfZDT1QLaRch+utP7vMe+FwK9owJmXSx6bXG+Zaql/
	3HPwJRs5LPEYoGAc323/eTaeUT+K34o2Kih2ljFIIZ0UWnBdyCVfhTik4L1HnN+BUy7g9F7JYpI
	/73T0hOWAMSzLDgHmzsOHkRfqH8/GdsLPgve38hnkM6QiCVLc7FKWXmPZGf5hSXDefnntxfzTo1
	i+WhOGefyWLcAaVHiJzz453xc/H26w/nWImER8+APQ8ayjFS6/RGwG9u+WIQB1q+2W2PILb+7pK
	bfW+pm3GmUs53A/0pyhH2L3xqByU
X-Google-Smtp-Source: AGHT+IEABcOOIELXz+JFdeOSsPBTKQScoxzR7QmtBueg1gF7h6+a32NeKWZuRnmzY2n57dt66bqjMQ==
X-Received: by 2002:a05:6402:26cf:b0:5de:42f5:817b with SMTP id 4fb4d7f45d1cf-5deade15403mr3357122a12.31.1739379854662;
        Wed, 12 Feb 2025 09:04:14 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:52e8:f77:3aca:520e])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5deb9f6e46bsm819230a12.71.2025.02.12.09.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 09:04:14 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 12 Feb 2025 18:03:48 +0100
Subject: [PATCH 2/8] arm64: dts: qcom: sm8450: Add missing properties for
 cryptobam
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-bam-dma-fixes-v1-2-f560889e65d8@linaro.org>
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
Fixes: b92b0d2f7582 ("arm64: dts: qcom: sm8450: add crypto nodes")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 9c809fc5fa45a98ff5441a0b6809931588897243..419df72cd04b0c328756fdc484f4e46b6c325412 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -5283,6 +5283,8 @@ cryptobam: dma-controller@1dc4000 {
 			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
 			#dma-cells = <1>;
 			qcom,ee = <0>;
+			qcom,num-ees = <4>;
+			num-channels = <16>;
 			qcom,controlled-remotely;
 			iommus = <&apps_smmu 0x584 0x11>,
 				 <&apps_smmu 0x588 0x0>,

-- 
2.47.2


