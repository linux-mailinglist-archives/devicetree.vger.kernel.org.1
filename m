Return-Path: <devicetree+bounces-66249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8BE8C242A
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:01:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4587628AC35
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 826BB17165E;
	Fri, 10 May 2024 11:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CiROlHh8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D0D170895
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 11:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342385; cv=none; b=NTBLySfuAYr91ChBuVGP5hWgz2J8/iIGD3JJHNPg1U3KVb7PCR0LmVyPgRJ0Ckg4N8kWv3rImrlXzBMueX+ndzmeKFPPZOF3oHnZtmM9cGwOQCEUnHE5NLujL9C4zlEXsZKkBGJ+OV0rApXOjugqMtIpD2yq66Bnt5HkEFIa5M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342385; c=relaxed/simple;
	bh=mB8GgOOV7Biwjyidpy4/BPgdtAv/kn+KG8YTxBcyRsI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YLvbS3DrMuW9hJ/pFBzFL92tFBG3XG4roXZaEs2zWKrCPuDuM8n90vj3ZhnNZCunc/x0b5R9xQ/W4CLSCChUkzr1UbcA7gMwCz0rTPX+JOQ6xi999XsFlA6+EqSQMrDERNCUgFZY71BJ8xszBHq0R1JvMV5U1zZ/WkoUy8/kZFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CiROlHh8; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a59a387fbc9so508019966b.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 04:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715342381; x=1715947181; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8OG+JNgGzK/aqpupcVQEj46I3a/vANHttWVBqlAf0ww=;
        b=CiROlHh8jwBgCocA+ot740tZj4M4XEmN+jGoAupVo1B5W/teSH8zvgE0y/s27vqMQf
         MZSG/zJfoXQjiM1kKpx4xNbbfIg/gLWpUpQzAL+DmoxNrux4q6wdfAlJXnzUHKroe2Hv
         lQv1o4bpmXlOGS6Z2T3vCf6x9BqwqfPHbd8wttNHu64IVrOHqNzUT3IcBrPR/dvENP0R
         HMRmvVBIG9GZqCm/vIpRz2+GlHP6Kl6Vo/gHdBnnRNIHC8VDRnw+qzvdmK99rTW7O+4B
         4cgKMPUiFn1DBae+UNiUhcHj1TpORg+9IPO1INCHqI8F1OE7BeG6IVFuivQolQnrbJtB
         QDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342381; x=1715947181;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8OG+JNgGzK/aqpupcVQEj46I3a/vANHttWVBqlAf0ww=;
        b=pQZb6A50RXiqKvcd/Vxh8L08ghLAzpMKAgpOLAP/6GM3sPaLKIIE6GEx8SmZXWMNmt
         QIGMSTEm+QZ5FX+81RND42+rLtpXRCtxIrFHNmFVJoCKhQglPx2ckUNZxmru7PgXZ5bR
         YeR21Sv7xgy6Um2RMLEiQLj3+dteDvFnw+3HkBaa07YzY+p+GW7HV1CHSVkmheLnNFHF
         P/8c/e1tLh1OfPy2Pm22bliXLLNSw+QsqINdgoynzFgFoROIasU5kin2rqy3HazPItgD
         wgE9rhWIGVoj1Ms0+nPSjBNZjF+6c5ZxxkI4kOrthbj1f2ivJ8Ml8pbZRf/Tfw38OM4X
         qxXQ==
X-Forwarded-Encrypted: i=1; AJvYcCX45xj7N1Uxv98FdBiMKhZHTkTzDtKK7KLTEHlQ+BIcZPjhCDBisduCEs4pFaVrQBVn6RfSQL0BAcZgmONlcS6iJgZ+AyDBTNdGsA==
X-Gm-Message-State: AOJu0Yw/WuVLX9q5d8jAcHOr4EUNFiEfSKTyx8igUn/of3UUAx+1NlIV
	XIOsMw374GLmC3EBLdHBG6pqK5nWUw0XWezWsDIJtQnPcFi4nbwVrJuAE/BWF+o=
X-Google-Smtp-Source: AGHT+IGikFhSPQpUN0aelTz1pV11rD++e8fWx3itBhzAdPXY9gwx0GU92QGUHaJTIDtXVdL4rVm/+g==
X-Received: by 2002:a17:907:7893:b0:a59:bf43:4e43 with SMTP id a640c23a62f3a-a5a2d58a672mr143187366b.31.1715342380910;
        Fri, 10 May 2024 04:59:40 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7df7sm176795666b.111.2024.05.10.04.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 04:59:40 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 13:59:28 +0200
Subject: [PATCH v2 05/31] arm64: dts: qcom: msm8939-*: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-msm-polling-cleanup-v2-5-436ca4218da2@linaro.org>
References: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
In-Reply-To: <20240510-topic-msm-polling-cleanup-v2-0-436ca4218da2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

All of the thermal zone suppliers are interrupt-driven, remove the
bogus and unnecessary polling that only wastes CPU time.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index dd45975682b2..24f3bd197095 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -2299,7 +2299,6 @@ apcs2: mailbox@b1d1000 {
 	thermal_zones: thermal-zones {
 		cpu0-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 5>;
 
@@ -2330,7 +2329,6 @@ map0 {
 
 		cpu1-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 6>;
 
@@ -2361,7 +2359,6 @@ map0 {
 
 		cpu2-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 7>;
 
@@ -2392,7 +2389,6 @@ map0 {
 
 		cpu3-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 8>;
 
@@ -2423,7 +2419,6 @@ map0 {
 
 		cpu4567-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 9>;
 
@@ -2454,7 +2449,6 @@ map0 {
 
 		gpu-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 3>;
 
@@ -2482,7 +2476,6 @@ gpu_crit: gpu-crit {
 
 		modem1-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 0>;
 
@@ -2497,7 +2490,6 @@ modem1_alert0: trip-point0 {
 
 		modem2-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 2>;
 
@@ -2512,7 +2504,6 @@ modem2_alert0: trip-point0 {
 
 		camera-thermal {
 			polling-delay-passive = <250>;
-			polling-delay = <1000>;
 
 			thermal-sensors = <&tsens 1>;
 

-- 
2.40.1


