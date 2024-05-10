Return-Path: <devicetree+bounces-66299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B29E18C2542
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 15:00:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C82B28756F
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 13:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FD8D1708B1;
	Fri, 10 May 2024 12:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gh0cfRgv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C1512839B
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715345930; cv=none; b=nKA2CNJ2ECS9Vsn0eZxOt39/w1uk1u5tNmBmNDJJ+tLYsh8IUTedYqGkWg1c9MncJTKO/tYlxkEWZW0DiI2zkhL1XwDOPqN+dSSZRObd2EFZg53MyRhcF0PZigc5VajDisXI+WtcFv103NNyBKVuqzD0UbM1RIJCxHhRPU29R8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715345930; c=relaxed/simple;
	bh=Q/00BRJkklPf9s3fO8pNKrRKTd5/TRA3QyfrOoaysZM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KTKIBBYPHYaIpBC1zEjVXxULge1XdlfhP5YB+kEvEqGX7gA55TB6bn9HyqNhhDk58GMuHdLeRj7OYNMo1OmaYfrbkuI87gdkGLGRyitkGiorlKTxkjihLbQis9wY1vUyPoxcG5Kq7dqM7vtdbDms+MR4wo532X7FyEE9kBzwx2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gh0cfRgv; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a59a8f0d941so483017766b.2
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715345927; x=1715950727; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2C/n3zrsGQEl/w7MYTYQqZ44jS2ToMDUKr4rl0zMck8=;
        b=Gh0cfRgvoDc51AgDGh47O4xreRJOUCfsWbOFbdN0tP4moabCxlN9ju1+PGvmnM/SuA
         jTIWNMygZBZj+Sze0WghWdvNPbKHYxc4n7Aso4SvRsUlnnKKzKJ/4BmAFkSSy2pds3hh
         /r/Lni8dfOzbtcSL13S9jQdAlg8TSFyQPj2HBHy7MZ6O3nGA+L9+9oeyOIOU6vPqk8CY
         A8z/NIHStS0ipluegbXnh+p75JnJ8mOwgaj0wSP1tsoPgrq/lIknfdPcjHAPQ5TxZZDy
         5n5fJ8TBLsE2csF0ZHsyIW1rdq45SiVG/xlWrOiYqnhmP+2CQyxuAM00S9qwziFsPrC4
         wfdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715345927; x=1715950727;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2C/n3zrsGQEl/w7MYTYQqZ44jS2ToMDUKr4rl0zMck8=;
        b=bUc5IbyLntVfsMnjk5Woh6XnSpMEXR22PpFEi7SvhTE5QhximJA/RZfMOBeYsn0704
         fKPlMwP9vP4qdeTV4hGsIgdpsBzhIAmW9IiUDY3TfmBLwxZh1pLElFgcNXhoE6CiIiIP
         avqzyWTwg4IE6vaITIoX2A8keafH3PLcusoWA2iBREnEUD6oCDlEIeCPZs2d9ooFK0ug
         DGTEjhAXZKuRQJcF0T4uZYRx+5wVluuQ0QtgZHwdI8v8ZP1NcfEHa1sBOZgXfmrAcTOX
         EMZAgnK3oA5vthH8QVgLTlxZyXusJlC9rRGcWJ10DOYyAz14iNJycjLhRyuVYEroKheu
         O9/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWZ8D0/7ZODOHaeXGia6uJUwAD9uyIHmaNSdX2Ozo5RpWK5rXxpdGIFdANiOIPRxPIRKIO4ig+LqupleNTLUhcx+80FBy1b0oknJg==
X-Gm-Message-State: AOJu0YwvXJ0g9PERqgxaV1MzsdwxhA4fl1bz6M0oKrVYWwsjvoZOCrTL
	j/84xWjbsH5zgXzeSrKYR0gbj+ESkT0KIhqLv8A36+X5/h0Kd4QSW5rlJzx6vZk=
X-Google-Smtp-Source: AGHT+IHSz4PmItWjK52t+PowWobXv69T8rGUTfx3gdtmyvYhvgC4+6C2HVB2d8UAWyDzcLKOOLBcKA==
X-Received: by 2002:a17:907:1b0d:b0:a59:cbb5:e09f with SMTP id a640c23a62f3a-a5a2d65f230mr198156666b.53.1715345926982;
        Fri, 10 May 2024 05:58:46 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d6bfsm181857366b.31.2024.05.10.05.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:58:46 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 14:58:37 +0200
Subject: [PATCH 08/12] arm64: dts: qcom: sm8250: Throttle the GPU when
 overheating
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-gpus_are_cool_now-v1-8-ababc269a438@linaro.org>
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
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 28 ++++++++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 1a1202bdd915..b734aa13fd2e 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -6855,10 +6855,22 @@ map0 {
 
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
 
@@ -6988,10 +7000,22 @@ map0 {
 
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


