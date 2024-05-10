Return-Path: <devicetree+bounces-66292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB068C252A
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E580D1F25DFB
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 348FC129E6A;
	Fri, 10 May 2024 12:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gq2yq+Ns"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79BB1127B7A
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715345920; cv=none; b=uayMXvFKiKZclzoutdixzoA9k0e1ipbveg+qaqDtRYDbCWdvyCT1tcoKwZm0TtYsrFYpBC349tIC9qIxJPkZO6K4XJg7I/5dDGyB30px/aZf1edLCI0iXqHmCgKFUZmt/9GQKPExVqFYiyyrftK03jeSEeTXhPxnJibSCcrGsuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715345920; c=relaxed/simple;
	bh=+hBO09VnCHm9VUUEnYGXn9/ohn2w2P5q3w4yWPS3JP0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qgo3yj/CQRPqZsNFLI7kUGlEbv/FfgW4shoIytB9Zhh7TKiTytSKeKJBStUQ1ExTyph60gPft1xk/jJkZjpR5HgdV1EPRIUAqpEqv5HzxZX/+l3Xp+HbCy0eWBF1vP6fQO5DX4u0/i+mF9AedWwZzwFSXS2kWvHxuDtUHwyxJXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gq2yq+Ns; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a59c0a6415fso570498266b.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715345917; x=1715950717; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RtTo5y6kM/M1KKRuZY68F19Ec5TCfP5qx4+TJLYsHpE=;
        b=Gq2yq+Ns76zT+lvSfvzr8HzDCMrZTvMZJNNLIu/v58TW6KViKou9cXnjEXurnUpnq7
         OdAJv6i9HMzKQrpmvzrjSn//uPnMDO7ZpL7F3iA4T/+DTTZDR4qJU8Py9LY9o/M61gwK
         o2z7ctgHiUWY+pg50rdNWK70mvp59D6cuqWYeA08Tf+OlLOW/mrTiR5J26myBzEMEsZL
         C/kp4qyVsdgdV9j4TpuFzOesiRKKdarlExvqw+r23EA+l0SVIInsu7qXJKofQjT57asY
         Uiaalrw3o1eGkfKQJLs/ZZAcgr6HAaQsePqVUhSAMgySj1sDcvajd6w7MhiaklZojZEz
         8B7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715345917; x=1715950717;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RtTo5y6kM/M1KKRuZY68F19Ec5TCfP5qx4+TJLYsHpE=;
        b=v85aEFSaq8904PfG2FfetOKy0fK4xmiLBTXWHHq7R1WYrWVEtjpuzbCchtRsIEfM0k
         7CNW+QjxKcbGdkV4DD1upu1zjNG/CxxHOe/VFqKaZU432GeaagnIvofe8Rrn8uAYRgEa
         mg9MW9Tjy8BrkHxJwgXl3Ucf6Hchj2DESIZh2KEYaEcBQ491+AI8wjxmHTBgDK2MTptj
         R3HpI6TFm/C4wQM2EHd3NvPqgVjLkGqTFMuqGp1LTW3YHLEy51aEa+9iwbVgNFF3kuXz
         pOP7SUE9m5z1+TMkIN13MpnnvrMvsXUblid0zUE4i1ON/CnIw8g7PLenXsS1zaha9Pum
         k5Zw==
X-Forwarded-Encrypted: i=1; AJvYcCUsBAHKlRJW7LNLHent/bC3/bjmcxiFCONaK0GorGqPAZ1CPn0fjoHDjEhVehE7taO4CqZJRbBQ/+SBCLSfQ0cgoXZ23K7nY70HDQ==
X-Gm-Message-State: AOJu0YyaB1id8UBUCKmNHSeMrlUwNHKC1g88hRF5jA1JOl3AxtQHTEC+
	SySONOfCqBYMHLvmay9GfWk7+GgR0bYwMj1MXaYym4GZ7MMCq452f3G8EU6Nrcc=
X-Google-Smtp-Source: AGHT+IEEqYn9/tuFqFQ1H1nKhLJKHexkeLgg3g5zX7HsfbpiPvw3TUSny57aso1INzM/xI8+sDhsmg==
X-Received: by 2002:a17:907:7b8a:b0:a59:9b8e:aa61 with SMTP id a640c23a62f3a-a5a2d5c9303mr195736266b.35.1715345916998;
        Fri, 10 May 2024 05:58:36 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d6bfsm181857366b.31.2024.05.10.05.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:58:36 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 14:58:30 +0200
Subject: [PATCH 01/12] arm64: dts: qcom: sc8180x: Throttle the GPU when
 overheating
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-gpus_are_cool_now-v1-1-ababc269a438@linaro.org>
References: <20240510-topic-gpus_are_cool_now-v1-0-ababc269a438@linaro.org>
In-Reply-To: <20240510-topic-gpus_are_cool_now-v1-0-ababc269a438@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

Add an 85C passive trip point to ensure the thermal framework takes
sufficient action to prevent reaching junction temperature and a
110C critical point to help avoid hw damage.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 28 ++++++++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index aedf2e7db038..699f377e94d3 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3993,10 +3993,22 @@ map0 {
 
 			trips {
 				gpu_top_alert0: trip-point0 {
+					temperature = <85000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				trip-point1 {
 					temperature = <90000>;
-					hysteresis = <2000>;
+					hysteresis = <1000>;
 					type = "hot";
 				};
+
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
 			};
 		};
 
@@ -4140,10 +4152,22 @@ map0 {
 
 			trips {
 				gpu_bottom_alert0: trip-point0 {
+					temperature = <85000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				trip-point1 {
 					temperature = <90000>;
-					hysteresis = <2000>;
+					hysteresis = <1000>;
 					type = "hot";
 				};
+
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
 			};
 		};
 	};

-- 
2.40.1


