Return-Path: <devicetree+bounces-72839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 254668FD24B
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:01:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BF7D1C23435
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4FE918FDD3;
	Wed,  5 Jun 2024 16:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PAAL3aNw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B63715E5A0
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 16:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717603241; cv=none; b=s04HA08INtAqXA5cWgxkZ7XUkI6aEqhKafQXW3l1o4PuHT5mNmK5aaCmYFGmD9Nz3NggPqiaBMPWnLMcethp8X4DurV8uXEnD3seJz5RkRz52TOy54MebFPJPx4s/rWGwuGy0aHJaFr1hESSoWW4SwBfz1WYGxRvCPX4Sjigt8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717603241; c=relaxed/simple;
	bh=Z3V5mVxSUuFg+9G2PnTNBZMP9LTIe4c+pzhdPjpkFDI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WMPiCX8VaUu75QfCqTaQ5f2PDfe9SHRZpTBywkG+GABfEqQ1NwBpJkddY0hmAJp/Zyfrb+nirU6A5/jjtGRKqUzcJf5WdpvVZ3NL/bzWqcBnhWYQsUH2GEWg5xLmlp3cMmEuacEsQX2cM5M3Oc/QNKj5iQqnp18QLVtvFc/ZiVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PAAL3aNw; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-35e816b735aso193327f8f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 09:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717603238; x=1718208038; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b6JpAglsaN0d79pvWFu/cyEHqqzh04VnENEg9cgtePs=;
        b=PAAL3aNwKJA3V9dDknjtUGtMAtC5yRRzuwwVbQSyqtftJlf1o0MQcLgjo1o0slDB/7
         dI5xnqkeXrgob2Yp/tsXZa0C73UsvLin1YmKAHBelwKEBIfsK4MWg01gY5RKbfGJMjyI
         KfdqlHQmD7tegaqgWUCekwFQdlKZqeDHKh8VBiJgFNtNQsyIVd6IFAlMAOksnTEgpJY/
         D1hDb3LK92CcZ43D7iGsKImPem9r5fOhSQ2mWVHGEbmODH7cB0RNEcejSNSk1NfO2mQo
         YtK6oWv/ugS1kkUZkLFHMGse7sy/chrUC9dvW98Daesk4f5wgBytj4VBCjIQUdM3AJAk
         hvgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717603238; x=1718208038;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b6JpAglsaN0d79pvWFu/cyEHqqzh04VnENEg9cgtePs=;
        b=E2sA8VAUSuieq1sAMUz91kqmSeWCVDWYyyTGDiFcBBYiHaQEgKkJwGrQ8hYA7D90NK
         cvwR89FfmR2z1Y/dmkUbrSpMBolgEURhk2mMsr5hrbds5K1oFfcD5rOeeULUqg16Q/sC
         jowROGjqF3bztSC8qDq206VYKMkxNTYnzvDvoPLRcN9O1s5P4RNvhCNKhBBR7bnSzmnG
         O7Tvtr/L5jRxmPbYAVdU3fed+LbDcfflPjJs2+3V5rD3q1EK1N2DbU1JkPCBAFFp7TJR
         ZQPbSVAVx7UfKnzHfGGzjDp05O9xG11PUatDdVUogBiRA9NBVvM4ZCstse/ab0OSTvHB
         DYlg==
X-Forwarded-Encrypted: i=1; AJvYcCVhyW60EP2znGkUNsbR9kq35OcItX+AN2FkIP8c1YsYME420cg+bcfCCvlrnOD2i/FBJ2tH0snW7Gry9Ua66cSGW3JsUoYwx8ucKQ==
X-Gm-Message-State: AOJu0YwFQFU51fJGChx8mE08NvTIKH6+iHJ/O2f+ncnxrXXpsw9JPJAb
	v5L750o1Jj3anD45YaswLgc2RQY5Q3rhMDaTFU/6u7fR38wHOKfVCMlZ+YBjqCE=
X-Google-Smtp-Source: AGHT+IEdlXjBLFrGlceUU70bhxiydsRr4mkLa/WCqSg9ALFtiEoD+j/ZCMSrb7yCq/alxDLwLjn5yw==
X-Received: by 2002:adf:ab18:0:b0:35e:7ddf:768a with SMTP id ffacd0b85a97d-35e8833a1b2mr1973579f8f.36.1717603238620;
        Wed, 05 Jun 2024 09:00:38 -0700 (PDT)
Received: from krzk-bin.. ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42158149008sm26288975e9.29.2024.06.05.09.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 09:00:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RFT 4/4] arm64: dts: qcom: sm8450-sony-xperia: correct touchscreen interrupt flags
Date: Wed,  5 Jun 2024 18:00:32 +0200
Message-ID: <20240605160032.150587-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240605160032.150587-1-krzysztof.kozlowski@linaro.org>
References: <20240605160032.150587-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Interrupt flags 0x2008 looks like some downstream copy-paste, because
generic GPIOLIB code, used by Qualcomm pin controller drivers, ignores
flags outside of IRQ_TYPE_SENSE_MASK.  Probably the intention was to
pass just 0x8, so IRQ_TYPE_LEVEL_LOW.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
index 8b29fcf483a3..17dbb67868ae 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
@@ -488,7 +488,7 @@ touchscreen@48 {
 		compatible = "samsung,s6sy761";
 		reg = <0x48>;
 		interrupt-parent = <&tlmm>;
-		interrupts = <21 0x2008>;
+		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		vdd-supply = <&pm8350c_l2>;
 		avdd-supply = <&pm8350c_l3>;
 
-- 
2.43.0


