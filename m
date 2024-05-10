Return-Path: <devicetree+bounces-66296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 209568C253A
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:59:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAA9C1F25DDB
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D8B16F82A;
	Fri, 10 May 2024 12:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DUV9Yfud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F40812CD9C
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715345927; cv=none; b=QsDVQIUfsDXoRqHS1kK6ZLipnPbW28c8HVGhCQi3pMefcEcHU+WW6v+xuaRZaNbFqIGF9y3XauEvq1PwLiEq3vPiaqq6SKRgEnijf04bNCs8UIryhBBjyxvkMESlv7QjrjEzRJrAQx4MJ8fo8owpiHuIg7obJrUgfr32e3Ze/zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715345927; c=relaxed/simple;
	bh=xr4WOE90b0yFT70mlWTOrZUkB4FzmYThMvJB/hOW8og=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rgtAh3gAhS0UZFiks+SpM31awFa28iTRvoe6RVv4FCN2sijlWwUjnzyCHE+RSa7mEGnWWYpHzheTHI7cC7wwiZX97xxlrDjeFbe6guRdT/mus1nj1ohzjmPj4tSkOQkyImOvaUFSEpx+BKhr27lO18h8j3G7yaYFGjyQEazJhGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DUV9Yfud; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e3f6166e4aso35378761fa.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715345923; x=1715950723; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OCBtongGKMs+efoOjSpIIFMYyV9OANLuyMGYx1s4Pl8=;
        b=DUV9Yfud8E0o1IPy9ww7n1kge1KStCDFJEXjML469Yu5FTDxm0i/x7uGd+39GGQ9QZ
         T6sAX2rnzLM4Sl/tnyBgGRlSaGJXpdpKqr57G+IvDb0ZprNLj5OYhlOmTYGN2OtoA50i
         trdBpux0MNVi9ubugp2gHQyWUxIC8kts0CxBfbH0YRB72cXDErW69kUWGKxlHR1fNcES
         DHSI8lcpPwacyv7JAl7adkfhcZobWc/GCaBwme5qiZ6XYVcy3nNF/3USdrZyk6s62dIC
         2YE6D1GhYho3a6yEVJ857DuFrxP3okPGrYaVZO9UxGhb9IhG0Xs0ESGamdyOhyv/DWdL
         Y8mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715345923; x=1715950723;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OCBtongGKMs+efoOjSpIIFMYyV9OANLuyMGYx1s4Pl8=;
        b=L+WgZHuzqtaSYonbaRWn1Xt0aJZDijT08fd+99OTgqXcYC19iiANtjl+xaHuu+dEH7
         4c6hai+InTtfohnoJfSBQCfCDaAvVSXzXVwBM5Zx3kuaWqPJUnuIlNoXTc+nzJrqSWjs
         gzSdXfUVS0bBBk55pGKdpzhPNnYSciJJXjEVe8rX1CP6tlegb1cniRF7AWPJe1uUIjiB
         lOZaVGcU32iXNVHIhtQ8y/ToCVtUTw3FbpZa8nfncNMY94hc9hnl3sEe6LLcIeAHxVBK
         8kLZrBfsOqwSVTWCsSa8ry+uGjFXZbWqNZ21ET25z2u3xZK2km1xBfnJTi/NPOI8e9fe
         Epxw==
X-Forwarded-Encrypted: i=1; AJvYcCVaMUEtj0L5mLZS/M2NCCwn3GVuqCV5V3u3b06qS9BQfpJgMSb+kNmpAeFS4WyVaNbj/W+v4a68dc5TA9r01N+sps1y4RmAILFTww==
X-Gm-Message-State: AOJu0YwttOcEigwXpvLesrfxWH3fb7SqAcj8jIJHc8dUxnhHxIcK9Fon
	Z/bbB88HQnADqD33okg46hyDb1tYe38zPYrNOWRIvIgSCXRxtqRUWZ3LD5L5lxI=
X-Google-Smtp-Source: AGHT+IH+YN13W0D8aUVsryu7SpYiRt5r1DezyR4hziV4BMefqRfWNCNwspAQXdw4tb+xT2vetrmyhA==
X-Received: by 2002:ac2:4c50:0:b0:51c:d1ac:c450 with SMTP id 2adb3069b0e04-5220fc7c5camr2948565e87.10.1715345922740;
        Fri, 10 May 2024 05:58:42 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d6bfsm181857366b.31.2024.05.10.05.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:58:42 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 14:58:34 +0200
Subject: [PATCH 05/12] arm64: dts: qcom: sm6115: Update GPU thermal zone
 settings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-gpus_are_cool_now-v1-5-ababc269a438@linaro.org>
References: <20240510-topic-gpus_are_cool_now-v1-0-ababc269a438@linaro.org>
In-Reply-To: <20240510-topic-gpus_are_cool_now-v1-0-ababc269a438@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

Lower the thresholds to something more reasonable and introduce a
passive polling delay to make sure more than one "passive" thermal point
is taken into account when throttling.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 0a0bb5310849..afa08dd0dd69 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -3323,6 +3323,8 @@ trip-point1 {
 		};
 
 		gpu-thermal {
+			polling-delay-passive = <250>;
+
 			thermal-sensors = <&tsens0 15>;
 
 			cooling-maps {
@@ -3334,13 +3336,13 @@ map0 {
 
 			trips {
 				gpu_alert0: trip-point0 {
-					temperature = <115000>;
-					hysteresis = <5000>;
+					temperature = <85000>;
+					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <125000>;
+					temperature = <110000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};

-- 
2.40.1


