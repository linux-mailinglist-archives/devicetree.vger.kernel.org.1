Return-Path: <devicetree+bounces-145915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A39A32CD6
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 18:06:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E702188BD4F
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 17:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9429725EFA3;
	Wed, 12 Feb 2025 17:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="flHOZUoS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B114825D55C
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 17:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739379862; cv=none; b=kXloVwheEMh4NgheK4TFZFmQPhbpFm9HtnzVqNqnCqyXJYz+vuELiSVI1oaN3QnUTDK4cZ6dFelu+IBzbBeJMT3FtwCZgyQF+hmwQ0S5XzF2psKn74LhmxRXCiwCKJUgPCX/uoTuJ9QmgeH2SmruL28+AY3qH2B5L2o7H+bQsLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739379862; c=relaxed/simple;
	bh=0qyK2u3z/NjnPLJ+3zpCNms4pKQWuPqdWHn9aOhe7T8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qiuaFulJvnpozZ6SkOIMhdjX/ozPak1M0vw4vDpZ3L47XRO9E5FQL+xtdp14MrCzVgp5ppowgkZXj8gGLrhMT/Y5cSOt8b0rnTW5TQ3o6PAl2FFHcuZOjDuhl7X7UkaVZgq3EtQyUggMH/L+kETPNFFShkdZ9l9ICJwYW2nlrBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=flHOZUoS; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ab7c81b8681so2261466b.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 09:04:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739379858; x=1739984658; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UyOxpDSL06VJYzsC7GVy/mIHwyNXFSDSkM/lCd+8REc=;
        b=flHOZUoSvyBajKJqvP+UiHgxPZziw91JOMSZ50wsveGAHG4eVZeYtB/rGOhA3x3725
         ymQQL5plbzhXw/VtTsF+8a9ooqvK99kGMJDjFO/lkk3ptP4elqUTu7WmeWor8l3pioW8
         fiWMOuHZRGwHMR2ucE5zHn+S3Qd7q4ayaGZRz7fj4bFzm7iwHaMVUCYC0VQ2UPrJHobo
         8E9loQ3b8X6ODL5l2XdSAq+fZmJc0XCPUqwz+hLrTZtHF7CFtNBq0WMHD4XNHVBwEbE6
         BknFTuZn/K/KFLzZu2sEcf1HzMrpML1QcN1PQY2O2T8kXTtY0h1PtspRO+71JgjeiEPI
         X/Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739379858; x=1739984658;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UyOxpDSL06VJYzsC7GVy/mIHwyNXFSDSkM/lCd+8REc=;
        b=fFAgjUsqRRYPXfASh96P/IsgOEAZxMNzTVElsW2ZMz8pnn9OPa4nswd+UyFFG6WpWt
         9eqoEqW6zjsNkJi1K+vNUT7coihkl15enRBsiXK/YE+zL6xssXTyM0ZVS4ajfKZHeKEd
         xbnugH9SRn7JrY8waRsdU6FWa4KUZw/syph7mosf1RqFp+xVkArrc//KW6s4jxreDtjK
         ZfOoMv+/3oVRkLWlcRlk7OE/maeTCHAy935bA2tTHUE5dl3U/SPmt1TKsuGeWYe0Re7G
         euA2G+dEnB6wZneY4Yv0dD6E/JY56g3BQmds98wOfrlc4ebwJnfBEqBfgGnMjkSQTVLH
         Lj+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWTw07u5OKbyx23/4UamD4QVRvSw+AiWDyj1Oqk0lRrShJRydyZNZc4pol9OJdz5iv/1UUCdSdABT9C@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmr37sTIxzRYPY5cUKLUYHkQUFVwMRTA4j0QPpNP4BL9lnR4IJ
	WvToXyikGY7GDP0WpQmH7Ec2xO4Wib5nxZjo3xmICAqKbCbLsmsM9mN+uEqaH2g=
X-Gm-Gg: ASbGncvAOc5M5rI2s2UdZp02QFNvTwYd+WCczKij2wWhJJiRvvVMMO6zv+v2dstcLXL
	8M/AfnRW8M/JR/hS1mBDbVBKjWfw0Y49/ngu5ETt4L5do/JVatuCsMBx35N5sXMeNluv3hFIsQ8
	gpNoRA99FMaBjKcJHGxO0ARhgkaNSybURP+SGt9KoMe4fPm2/NxeZ72nHPpDcy4MAW0yMD0vIhQ
	eQO8y/kAtZP8CdPuIZY+kDip2PZvXHjYpMKVGW3ab5p/VaLYEok83W0zhukbd6GWRTYmvdwCjG6
	w6y36QYAJYcuG9WMCQ92iFJX8+2d
X-Google-Smtp-Source: AGHT+IEfiTWbMpQQLn1RJXdfkKpVVIRE4eJH1Ib8zZn4l3QF/V96r1o6kde9pJJhsidNjbz7Sos45Q==
X-Received: by 2002:a17:907:7249:b0:ab6:d0b9:8fd1 with SMTP id a640c23a62f3a-ab7f3787affmr361088666b.34.1739379857852;
        Wed, 12 Feb 2025 09:04:17 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:52e8:f77:3aca:520e])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5deb9f6e46bsm819230a12.71.2025.02.12.09.04.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 09:04:16 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 12 Feb 2025 18:03:49 +0100
Subject: [PATCH 3/8] arm64: dts: qcom: sm8550: Add missing properties for
 cryptobam
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-bam-dma-fixes-v1-3-f560889e65d8@linaro.org>
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
Fixes: 433477c3bf0b ("arm64: dts: qcom: sm8550: add QCrypto nodes")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index eac8de4005d82f246bc50f64f09515631d895c99..ac3e00ad417719be2885d76d3197f96137848337 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1957,6 +1957,8 @@ cryptobam: dma-controller@1dc4000 {
 			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
 			#dma-cells = <1>;
 			qcom,ee = <0>;
+			qcom,num-ees = <4>;
+			num-channels = <20>;
 			qcom,controlled-remotely;
 			iommus = <&apps_smmu 0x480 0x0>,
 				 <&apps_smmu 0x481 0x0>;

-- 
2.47.2


