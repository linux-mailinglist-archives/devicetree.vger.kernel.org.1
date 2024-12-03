Return-Path: <devicetree+bounces-126704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9CE9E2B0D
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 19:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2AEC1BA5B74
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 17:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665FE203712;
	Tue,  3 Dec 2024 17:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E7+J0tKw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BB61FCF72
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 17:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733247863; cv=none; b=SQrQC0w0xMZPKsvn0uEcBWRfKtSmeFm67TbHtA+HhWy10E617aNmio4GdeesuCoHuqkWsciBkCrFptdVqEcIXDot+R6ebX9bNzgdDjeP4RuHY4xpFAyY2ucZMNLnA+dg5USqrv5dx1hvDiDWagh2oy47WQb7vgssetIKHp13D64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733247863; c=relaxed/simple;
	bh=2vUh2HRZeyPWfbk0QDMsBffCmlUfC7m/5QcWWanc6W8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s4E4mc229fXWrcX0eY+Zg28nYvjQFIiRPUOxZp6RgW6feG6B2RYX7+OIi/mtytHvFFu6Os8MmEdFkomWEOLy87DjqpuQyiBZgq/pIQha1y1JHCvIim5tKZsRKYbGR4PZqIYDUQq0pKCmqs+C/s5e56yhR9mliMYNDrei9gMyzjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E7+J0tKw; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-385e1721716so2246577f8f.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 09:44:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733247860; x=1733852660; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eiErjYAhu8MnB1/TnKAdAC45bnXaP34pbBdqkHH8OQc=;
        b=E7+J0tKwi9qZsncfVqm68oPZRrKd/kk6i7iObD+hk2Zg+LSFigy3K7jEIhaG9heEPX
         WUEIFemmw+8CUpl2krzhNneQPYnYzYVfmsockR1akn97XxKdymfNsCqVAEfwdqqHSkoK
         MI3yVWhb4Hjm6epVMgaH5WH/np8OWjbhn9WTTONmiF/lnz8QIvrRl6NxEdloWslI1BnR
         9U2oNrPD9h7sx3MJHw4NgnsH/Nbd+ogjrgd+pD9/R3eloFFh+qioVkTCIqvMsWIGXz+y
         1vU9Fvk+Dr7mjz/J+kGaCVee5LwHyeLAGzae6yir+80YpXYRtkHcmN+zvwPt7NQWIMoG
         8AxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733247860; x=1733852660;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eiErjYAhu8MnB1/TnKAdAC45bnXaP34pbBdqkHH8OQc=;
        b=dAlBOzS7KZvvnPyH6Rvr1LatQY3h0a4eD2I69C2KP5PLB+iIFDwr4LVN5s16Mwgc5H
         BfG1inttHFNiJ5MDEqL+eu1fuKIJzRSh9yWTK1dAkBGxdPHWzVvNEj/Q8YnBoFYJBpKG
         tUslk4NbXYrSUwQU789SCRZkf1XmwFQ3IqOHQ48ukClTjIeJHaXj4NHkEejdGmqeHdnd
         WJ7aO3j3u2sVyGBB9/Fp8uAQb/KxaqJD+Drkqoj6DRnDWQa5DTR938qxrU5j/gYOP8pn
         Hay1gg+yhfJv6ii6fMp4dw8k8DCuY/THHCU6lyO4V3DZExgnsLaKLolN/egl/+/Oq2xt
         4WLw==
X-Forwarded-Encrypted: i=1; AJvYcCVWoguAjFM/U/2NnXk5mXdCJcdOB6FM3h3T1VLDBpZdpwMcIxcuFZ3w5Bsf27zVvGJcDxTvqa6o2+rl@vger.kernel.org
X-Gm-Message-State: AOJu0Yymjh2k5upnXGtwvwhyUeBIAN3qnnCiZm7TmeqQMy6ffPPBw3cY
	B4loxA2LOH2hNYQj3T7gklVOyX6QI0eNYME+0a9D+xFFcMI+0QWEToug+ixJKgY=
X-Gm-Gg: ASbGncvGRsWLKYlo1X0/y3KvgdXfzlEqRvsOAG95zKMqCGLMDEOIYBb28R1Ug46Nz3H
	iub5XHRlvqJrp+Pc1X+myqiLGHOo8qIFTk71Rt60yMDJjhLV67hmADKJYrl2Kszj758KU/n4ktj
	8/hbsjEEXaHuV18F1+qBCV0Dg5AMilPTOwhMT8O5ARjM5EGZIM3NUuG0ucWDoCSFGeSnNCEDc2B
	xvTDlEm3sE0g3lQHRIl8qo0MCEyYUvqD68P/m8fjW/oOHlDLSd07f3LDrB3iNI=
X-Google-Smtp-Source: AGHT+IFL8yQpR4qeo7vpbXPHJqpugZ+Ztt1Yb4rNNqrVGzJhhHzSTPAwa0n5C5zUlHAIIYEJzjKpwQ==
X-Received: by 2002:a05:6000:2a1:b0:385:fc00:f5d4 with SMTP id ffacd0b85a97d-385fd3e9d3amr2314279f8f.29.1733247859714;
        Tue, 03 Dec 2024 09:44:19 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:9f9f:834f:9008:1528])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d05b4909sm17648055e9.2.2024.12.03.09.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 09:44:19 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Tue, 03 Dec 2024 18:44:03 +0100
Subject: [PATCH 2/2] arm64: dts: qcom: x1e80100-crd: Drop duplicate DMIC
 supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241203-x1e80100-va-mic-bias-v1-2-0dfd4d9b492c@linaro.org>
References: <20241203-x1e80100-va-mic-bias-v1-0-0dfd4d9b492c@linaro.org>
In-Reply-To: <20241203-x1e80100-va-mic-bias-v1-0-0dfd4d9b492c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

The WCD938x codec provides two controls for each of the MIC_BIASn outputs:

 - "MIC BIASn" enables an internal regulator to generate the output
   with a configurable voltage (qcom,micbiasN-microvolt).

 - "VA MIC BIASn" enables "pull-up mode" that bypasses the internal
   regulator and directly outputs fixed 1.8V from the VDD_PX pin.
   This is intended for low-power VA (voice activation) use cases.

The audio-routing setup for the X1E80100 CRD currently specifies both
as power supplies for the DMICs, but only one of them can be active
at the same time. In practice, only the internal regulator is used
with the current setup because the driver prefers it over pull-up mode.

Make this more clear by dropping the redundant routes to the pull-up
"VA MIC BIASn" supply. There is no functional difference except that we
skip briefly switching to pull-up mode when shutting down the microphone.

Fixes: 4442a67eedc1 ("arm64: dts: qcom: x1e80100-crd: add sound card")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 39f9d9cdc10d8e79824b72288e2529536144fa9e..a4d8da81bb4468e03ba8a9d37efaae10f7a6b53e 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -188,10 +188,6 @@ sound {
 				"VA DMIC1", "MIC BIAS3",
 				"VA DMIC2", "MIC BIAS1",
 				"VA DMIC3", "MIC BIAS1",
-				"VA DMIC0", "VA MIC BIAS3",
-				"VA DMIC1", "VA MIC BIAS3",
-				"VA DMIC2", "VA MIC BIAS1",
-				"VA DMIC3", "VA MIC BIAS1",
 				"TX SWR_INPUT1", "ADC2_OUTPUT";
 
 		wcd-playback-dai-link {

-- 
2.47.0


