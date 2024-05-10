Return-Path: <devicetree+bounces-66300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D258C2545
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 15:00:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6536D1C223E8
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 13:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5902A171644;
	Fri, 10 May 2024 12:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wLqRh2Zw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA03A17089C
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715345931; cv=none; b=X4+mlrrmgOxoEP7kj/qsnpNcTz/QKm9cLRPWN/nMpNsHL1F3nnJ6XKDtKjJOVuen0y/JL2rgCI9/27HMic+bAuu+qpcmLN1SwThwvjYVMPDPru5o1HAiZQzOVvXMXySqK9ObA1sp9oEsqytgaWaEhZy2YmMVH4hhz+JFU5WQZGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715345931; c=relaxed/simple;
	bh=M8G2mN4TaffnfNOqtxWoho4eYoLY7YRmtFMMoVV0Cck=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ttg7BNHVTNAo1oUo5LOLYP2gNPJRJWgzdFqjF3Ps6V/+ZQPhIOAYEZj0b/p3vQ66LtNgudaeidxWNCcIxbfazb+fS9vqaApmrpDnctDAL6Mi2vCy2ERiIzwqM4igmYV20xVp+g0oy5+OlR8YpJ5kLad4nnCbR38oLmRlAivoy5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wLqRh2Zw; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a5a1054cf61so506324066b.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715345928; x=1715950728; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=REOe2/rSmMpWIuGPFH1QLzss9p7iDlF03Wz1gvDMeLQ=;
        b=wLqRh2Zwo5rAoi6K76+WiC37pSaDINzFaw2m6kbOMtsu5MHXlVqrJcLuo90hzPunNs
         +Rk9dpmda4lGaM2EkLJNQXBgS5GjZ+abmp3l85FPJy1D3mLl+P7W3saMUj/zOiWOR2MB
         5lvgVz5ROxMGhAhF+lILDbjRNTexWSEc2lHkGWrNmKFZx71wqdj6MqXAW3zS8VVrVkA2
         H19z78kgG6cKnm9bUEGmfI2HgxWX5IlFcCEfVUlN6mv48m/7yB9SwMqMKdYEm4tsprOk
         DHOJ6HMEr4lQt3x4HKcf85OxUJRBZ97EDwEnu3tUOrXuFCMsIHvgaBgeK1ARuLA4Kk2w
         Zfrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715345928; x=1715950728;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=REOe2/rSmMpWIuGPFH1QLzss9p7iDlF03Wz1gvDMeLQ=;
        b=HLhJNUvkbfAM8YfCfuKCWbR0nXUFBVsZP+8WJ/GUDACbdoADn7YeZZFFs2PJvGdKLU
         XouV9y04NmTHd8nClSGzTdLnIFkVRjEm2CD09Z5Nl3qBOSyiyM+NaO0gdTy2IM+AL0k2
         b5uzbCQvt6Qtm25oziLNTQxDlhL1uFLTeXsw2XB6sMB+M8+rjmI47I0KdCJ/wpUuN00D
         RIZFV1lLTKO2VcqlbbcP8SZAf/kbzMoZ57HniEeetInOhr9/aKXYEHJihisqX9Y91g2C
         brpe6CHx1zNx7PPnRQ5SSuQWLn7z3AscOJ7gLXQYhwonljQz1CUexP1a5eA+p+mwl8x2
         Z4Jg==
X-Forwarded-Encrypted: i=1; AJvYcCUx6i4S9bjPVTue2n3OQId5BBUMaSZmb3rJ0Rlbc2P3gW1+a8XaPaiSEqJEHtCSQr7am2a2qo7VzEnVCowv5hmrMi66H9ByqfxGUg==
X-Gm-Message-State: AOJu0Ywfn6k/m+ymRgmt8WpM7SEJcmq0wyHHgt05h4aCcuMhVUQY2pC2
	xlu0NwOJ2rTqbhz7S9X73kWeiHmcu1rb+wn7I/gRm0NuvFt0Xs5cqJMTuREe6N8=
X-Google-Smtp-Source: AGHT+IGmtosNKiZsmXipclDdUMX5B1eUzYiRvXVU4iJIo/8nky814hTE0SkCNKwjjcTbgLPK0VkdqQ==
X-Received: by 2002:a17:906:1992:b0:a5a:15f6:157e with SMTP id a640c23a62f3a-a5a2d53adcamr235180366b.11.1715345928254;
        Fri, 10 May 2024 05:58:48 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d6bfsm181857366b.31.2024.05.10.05.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:58:47 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 14:58:38 +0200
Subject: [PATCH 09/12] arm64: dts: qcom: sm8350: Throttle the GPU when
 overheating
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-gpus_are_cool_now-v1-9-ababc269a438@linaro.org>
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
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 526d3c92eae8..94782180bce7 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -4259,10 +4259,22 @@ map0 {
 
 			trips {
 				gpu_top_alert0: trip-point0 {
+					temperature = <85000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				trip-point1 {
 					temperature = <90000>;
 					hysteresis = <1000>;
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
 
@@ -4280,10 +4292,22 @@ map0 {
 
 			trips {
 				gpu_bottom_alert0: trip-point0 {
+					temperature = <85000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				trip-point1 {
 					temperature = <90000>;
 					hysteresis = <1000>;
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
 

-- 
2.40.1


