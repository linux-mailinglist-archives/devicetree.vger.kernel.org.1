Return-Path: <devicetree+bounces-217329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D15CB57582
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:06:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 391413BE307
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:06:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EB622FB0B3;
	Mon, 15 Sep 2025 10:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JQUFde59"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89FF02F90C5
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930791; cv=none; b=RUwRIa+tlKPFmNxPb6EhTFHfV6Pcy4jOk1ZtccnZQJbiMySKgo1cPsau4c7MeXS5Xmdl1IcypMbAI1RZSvi6SmJYMQcgMpuY5ObH1l/t7BAyky3AMm5qRGj7YFeOWX5k1I0+DDQnQKWFJDoTaJWLlF8jOxI29BWx2Gp+WI065wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930791; c=relaxed/simple;
	bh=JGji80klp66rQ1832BdwwUkhaAHryTM7+UK4ivqtNEo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iXHXsFEXC6TX6uMkKnnuXFsPU2L4CySGt/XbT/9+UG2TLyDAohyTsztFTmk4cba3Tt92qL2SFrbbWTOHgn6Mbz6j60+mdiKuQxE82rQkjqiIc3dy1C556c3gV6IC1DncCVr65+EqPNVTa1iFyo84GFIbCNmoD6H6d6yknEHOQ4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JQUFde59; arc=none smtp.client-ip=209.85.221.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f65.google.com with SMTP id ffacd0b85a97d-3eb0a50a4c3so437647f8f.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757930788; x=1758535588; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n4Cu4jlvHGZG1vrYyhNaU7JIiE6KW6coiFWmDAcYM9U=;
        b=JQUFde59EFvsCQv44yM8jP7K/oIjndF9OWalr1ntEfx+Kb/L/u36AResdJSS8NQEYy
         9XQp8nm5RC0DZVMzSHzRQBZ0L7SAM1dlJxUntVAFbpSFqKVhMZN79m9QN8vraD9aGcFD
         IwGg1S6aCUgL/KRiJjZ+WjF4IoEv2Zgi4Bym4pN98NT2ae9EHG4ibAwfUxo8c4OgH2zX
         m8yedkQg+gKam5owHdJ+QejhcV+fe7VdP7ZpPjdPIZTt6OLMwLN02C2XeLVkDoTgYyjL
         n8GKkQEZuzyr0R0snpe5vYVraSsqv8FvBXloRFqyiYG7F8NFOVg0oR1jG0vPWmrIx3nn
         DUlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930788; x=1758535588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n4Cu4jlvHGZG1vrYyhNaU7JIiE6KW6coiFWmDAcYM9U=;
        b=ODk1GscoUjAMSvUfaa64yC7Z2IrVz0EJp7D/yoSlwrNUMDVZDpPqgeoaohS8oPuffh
         sTYTlyf4MwxgsEeq3gF3nUJ8UNxkfTt6r4DAz7FVC+WSDTaPCvW5RUKo0O+3pXwB8U1K
         mqxcK/0U0YU6GkzBm6xUBPfEiC7yxcsJgUMd5ZUazwyHoVtqdpSF8RA77+9BYr5SCD14
         chtozNBHor+pOGBoJbfppohk03zMkNR3PfDtNGv2kssUejmYwJTT5/Ynm+otPOa6RbFy
         JwtcPOugWeJzgiBAS/kpCGbL3dZmKuFc8j6rDMcjTt2K/RK7Fqqcz64oQAOpXypn1Dqa
         IEhg==
X-Forwarded-Encrypted: i=1; AJvYcCWGnFZX6orCACx+M3qSjx28n0jta/0i0/cMfymRLKbDQGZpnE5Cs8AhSq72/lIILYOgA+edkGxJuYLO@vger.kernel.org
X-Gm-Message-State: AOJu0YzBH6CMe5tGqqDxgmtL5ik+yDQC4to6pKz1y7XSJLADZX47KpoN
	tAtjE55xUYJlt0VDLU3bUqaAFc/u1oqFTkmgcrgeDao6VzFejB34dVOi4yk6V4cCfTE=
X-Gm-Gg: ASbGncum/C0E1RftuNiyGvRg5s1JIGsZdHLsRGKXDEslq8i4Z/1VQREV0NSvcaB9VRn
	crtxS1cWw6VGJc8g0VuqPKY+gOQl3y1nQ1/yKoqACtstxRVfi9/i0mGwjKedLa0LXxCBkagNeps
	JWWx7kaaoFUuZCOWZUteFe0JSzTX8uYewn3zGv3Je30+apABfKgQb8o//CHUCP4MGp03oOmT1iA
	KJecCeO4L31r10l+vBvWPv7UXQ69xlcGO6IU+Q1uT4iT02ls/SGb3TIomq0FRGNtsvbGNcZo4QH
	yL+UYvnRvGN/tDHKFlWJeLMXIn4ioXQZ/xQkPbuQ4UO6ebWE0x3lWF/sBDIG5P1P6vWUlOZzV7b
	9i9tbSzycxXLnANGAc/GzXtkrA0r0Jt+HlPM=
X-Google-Smtp-Source: AGHT+IFkAq8ub1X/dEEk4zZSV1ran2kYTxb2Dm/pCgwgP6bhwW+o2v6NIDlWFlb++BMsIuWvSvu+ug==
X-Received: by 2002:adf:a1ce:0:b0:3e9:4fe4:2632 with SMTP id ffacd0b85a97d-3e94fe45e49mr3763503f8f.46.1757930787745;
        Mon, 15 Sep 2025 03:06:27 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd4cdsm17209127f8f.37.2025.09.15.03.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:06:27 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 12:06:12 +0200
Subject: [PATCH v2 1/9] arm64: dts: qcom: sm8550/sm8650: Fix typo in IRIS
 comment
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-x1e-iris-dt-v2-1-1f928de08fd4@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
In-Reply-To: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, 
 Anthony Ruhier <aruhier@mailbox.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>
X-Mailer: b4 0.14.2

It should be "enable on boards", not "enable in boards".

Reported-by: Alexey Klimov <alexey.klimov@linaro.org>
Closes: https://lore.kernel.org/r/DCQ8G73ISXHC.3V03MOGB6NDZE@linaro.org/
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 2df6ba05e0cddaebf3d35a4b4b8e5cbb9048dfb1..ec67efd64b78673352c4c6e3a4e7e504d4525b46 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3262,7 +3262,7 @@ &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
 
 			/*
 			 * IRIS firmware is signed by vendors, only
-			 * enable in boards where the proper signed firmware
+			 * enable on boards where the proper signed firmware
 			 * is available.
 			 */
 			status = "disabled";
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 367f448a743a306993b40f6c6b8a23a816744afb..e7582a19184b48de66d572d6e98fbf2f36a8c17f 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5186,7 +5186,7 @@ &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
 
 			/*
 			 * IRIS firmware is signed by vendors, only
-			 * enable in boards where the proper signed firmware
+			 * enable on boards where the proper signed firmware
 			 * is available.
 			 */
 			status = "disabled";

-- 
2.50.1


