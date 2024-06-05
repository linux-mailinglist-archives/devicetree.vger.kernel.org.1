Return-Path: <devicetree+bounces-72840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2468FD24C
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:01:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE3411C23694
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 16:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D502E18FDD8;
	Wed,  5 Jun 2024 16:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g1bsUUuq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43722153BF8
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 16:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717603241; cv=none; b=se5f4ou9pj6bfqHV1FOvmj2kyGeWaHU+kdmxXZ9KQhAMyXPxDrrsw/3t72w7N6q5WA4CF+cDUlGqotvaHl/TTmp36lURQEltxkSFBd7JePpTqT0O3DnWhG9vuWQLe9jX5M8i4CKSyGjhtZoLo4I+20nzpRWR2WARLuSBY0JB8P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717603241; c=relaxed/simple;
	bh=c/2SKyVNxmDDEy4jtRH3u8SNLIlWuUpwBcMP/asBnSc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gDkouAogZt+YCXF00iwrwigiyZrIUyTLNTbGQiZdOwOPZqEkMH4ZZp08WcPAr1rvY8zquP7uzokhA93+BESgZxf/odYcwkCN0/IHawViVa02/Z0TVRaYDZHnCSBgGSwyrCswYKjfDZLOTcUrq7+8UeVbght4VbFzTwAahzkayPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g1bsUUuq; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2e95a1f9c53so1115471fa.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 09:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717603237; x=1718208037; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IS6pzXJDK9QslMNjlWCKMW5GnNTj+YYAKSrFzSpQVwY=;
        b=g1bsUUuqpOhBWPzE30Jlh8lVWsdDyfdJY9Zy/kdq7kxcJGyIEvui0SkornbDUdFHuU
         v860oTepOZF+3k66EHZkN1kjyjMBD3OHAFzzNMcvguX2xk2FvGP8snzs7dwC/qBUq+oB
         QAMihJOTASDfELqPsMz1KbL+H3aXVosYUOyiz9VrmZeMj/CxdtctSP9qQ6Bc4XRPXGFa
         jes4uM/hQQKYXmW0k23usyfCmwUTcMl2aSuHqsk7d05FG7Khp5pci+nm3zsMaga+r6yo
         rhl4cbpa3yWm7wbFOxFGkyV8jKSx9M5MJUYTJzblb0gFLIL7lpCWJIoILZ4r/n75iwI8
         wAZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717603237; x=1718208037;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IS6pzXJDK9QslMNjlWCKMW5GnNTj+YYAKSrFzSpQVwY=;
        b=dfhIKVTJa769C/7/8KVKl6YVEV1bK6RD5ROAnpbP9AFD6grQQsiEjRZVoHVYZY26WY
         FcDmhVWR+5s1N2IiiS3V6l3EgRr0gXiXQmMkDmaZ5qJ1iMiGSQXVY5h0pFl++rgKKlIs
         0VB8jXRrt+ImRIpyZCNPjoD6yKNWJDV23vyS1NUNAzPqqut14h27mY8ucOjxzDTFBGij
         9h5ZACSxKEOdWCmHeafOWXM8KX8o0fkFEmmz+x/6Sh2oxxRtR/XiuHQfMN1r0eyCtc5y
         SGDKTwD/206lcvvCcJT7l4zC6wCOZQCyCdigzlGknaAknMKZOOYaEtRjkhXkiA6GrKdc
         pLmw==
X-Forwarded-Encrypted: i=1; AJvYcCWPxNSr+gafqiIrR/aJQDwkpWQw59neG1IpF+NnKJO0QcZhJqgin12JX6dr76ckzQgMefp/ZNuvACROanwMuTlvPB3AwpF5M3wbUA==
X-Gm-Message-State: AOJu0Yz9KNIRD2cC1RH5TscX6/7dN5U6VO2iu2bt4PPvbMQ/of14LRup
	ujl0CYJC/9VyH0MvcoDpfsRxcvmWZte4epknUktGrnop7/Oywi2BPv/mfub73Po=
X-Google-Smtp-Source: AGHT+IFVQ6EuFCOacFNDp/dYjlatng7UYWk7LSo2A1ZJyk2RuDDqs7BYNK1FQL5VNFszGvVvaRqBWQ==
X-Received: by 2002:a05:651c:119a:b0:2e9:6265:9926 with SMTP id 38308e7fff4ca-2eac7a9a366mr14411021fa.49.1717603237432;
        Wed, 05 Jun 2024 09:00:37 -0700 (PDT)
Received: from krzk-bin.. ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42158149008sm26288975e9.29.2024.06.05.09.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 09:00:36 -0700 (PDT)
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
Subject: [PATCH RFT 3/4] arm64: dts: qcom: sm8250-sony-xperia: correct touchscreen interrupt flags
Date: Wed,  5 Jun 2024 18:00:31 +0200
Message-ID: <20240605160032.150587-3-krzysztof.kozlowski@linaro.org>
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
 arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi b/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
index e07d0311ecb5..f6870d3f2886 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo.dtsi
@@ -520,7 +520,7 @@ touchscreen@48 {
 		compatible = "samsung,s6sy761";
 		reg = <0x48>;
 		interrupt-parent = <&tlmm>;
-		interrupts = <39 0x2008>;
+		interrupts = <39 IRQ_TYPE_LEVEL_LOW>;
 		/* It's "vddio" downstream but it works anyway! */
 		vdd-supply = <&vreg_l1c_1p8>;
 		avdd-supply = <&vreg_l10c_3p3>;
-- 
2.43.0


