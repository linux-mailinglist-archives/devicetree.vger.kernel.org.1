Return-Path: <devicetree+bounces-66301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 374F08C2548
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 15:01:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 641881C2246A
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 13:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2497171E41;
	Fri, 10 May 2024 12:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C+NSkcVY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0157D171085
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715345932; cv=none; b=UxqxUsJrmDC7qOrnDw/tL6d6zvlkFdnyliLwNsFFvfKWDoBxujLRCjLxYwKVqnLONb7U8iqRIh7WA/ic+ugY8YQXuwifq+JYbMRSU4aouHBxIfwmae0CzDZutJ21JEiezruwgFBdpAGSncSDRa66817CVff916vHZD+0LOZooNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715345932; c=relaxed/simple;
	bh=ahnPT653i4P3yBKIsubPh2pxiiWDa4+WxBcxEAxXX1M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cH0VtlLVjaqLBkOw5cFqwR5HQ7yrYzG4C4KHOpFWXGZ6yotKIOW1/O603/lKe+tH+yLJtCVXh9df8mZYmnWU2GsNWV6K+Na7tAphMcXqozvHej4MiyIJchnbwlzfF0egPUE+OTGThKCGQMVPj9TJ3ck+OtXCsM72nHJjEn2t/Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C+NSkcVY; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a59c5c9c6aeso491752266b.2
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715345929; x=1715950729; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lK/7BWX9Y0nvD7QdHzfYOrPNJBMxWT+Wj9Jc9yOJ7ow=;
        b=C+NSkcVYRw1yU6u8Qrmp9jkbWC//3TcCiCyvGIemh9q9plKZqJZjYeMDIQJur2/IME
         QTkBADHuy/l1VN2+ybubn+JDJOgBHD0esUPSwswgRaMZkregdsSb2+eruQ2CTAwp8CFc
         oVjhY0mpAnGiAhR3w7Egk6wQ8YEUkfWD+t4sO5817kpzTbc8ya/pC/H2Cg8ElyFN76Qj
         ab2v0ZznSsVuPDYXXUxT0fEMA4UQUlrSntfNC2Gh78VKdfs6Dpy4b5cy2joNrucsHJYS
         VTX2KkpG87m3RSw2/UwBK4QCFnkCJ3gttjmyzkw4pZlgqbYHVMcg8uhfyVNRAqwHK7HB
         yAXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715345929; x=1715950729;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lK/7BWX9Y0nvD7QdHzfYOrPNJBMxWT+Wj9Jc9yOJ7ow=;
        b=Hq7SBxEB3PjP68A39ovKmXdMZE85X73VoGmUKWMXr1gra8uwJ3anazo2vBkxv+2jYC
         7WkjCaKMkD/wJ6xBz2YSAapfZ5Pb+zopZxX9hrsn7E/bO42mI72ZCqFB6yQM7maJdW+/
         9lCDVtlPalkjAaBOCOrCrkXAWFQvP2TcmsV1X5BihRrTGokKwpSwkLkTjCCmeEMv6Bwc
         MzXVCRRij9nw3nlntk5Lg5b0Zd0OLTIFpESEPIvHOuH/XqVb3ZYF8JQBHKwxHP7jKqip
         9jUF+N/c7xUSUnUItn0UdjOp36TjAmQHOGa9tbc11EWALISgXG3ZISM99NBZBKdq0RhF
         y2og==
X-Forwarded-Encrypted: i=1; AJvYcCV3Hsfzj8IjjDuP2iq2ZdMzixRA+32+jYxfzYVcGNzAWC0qaz4HUvKQaEanNy1l7DLJ6bYwbxp30Q7/WQy1WJNkWlHNIzAJi231PQ==
X-Gm-Message-State: AOJu0Yzg6hPItEmqn1L0dzcyJnv1V5QOFLzAt+HczMJupLDNX136mqt9
	9wM9jFn5dZDCa+j0tghJNO5ood0Uszmxvv0Rtleqx9lFC0kqr1i7QqVs7JyGXXI=
X-Google-Smtp-Source: AGHT+IHKOpovGI5VphV3uLsVQmzdZyHyTEMnWFhb29n1MWn9SfqDm/GS+pvSKWIWCe5hMFJVhvUzgA==
X-Received: by 2002:a17:906:4ed0:b0:a59:c8bf:1269 with SMTP id a640c23a62f3a-a5a2d5eebf4mr178676766b.37.1715345929554;
        Fri, 10 May 2024 05:58:49 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d6bfsm181857366b.31.2024.05.10.05.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:58:49 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 14:58:39 +0200
Subject: [PATCH 10/12] arm64: dts: qcom: sm8450: Throttle the GPU when
 overheating
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-gpus_are_cool_now-v1-10-ababc269a438@linaro.org>
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

Remove the copypasta-from-downstream userspace governor entries while
at it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 48 ++++++++++++++----------------------
 1 file changed, 18 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index ee60fd257efe..38e8d3e9dd43 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -4928,28 +4928,22 @@ map0 {
 			};
 
 			trips {
-				thermal-engine-config {
-					temperature = <125000>;
+				gpu_top_alert0: trip-point0 {
+					temperature = <85000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
-				thermal-hal-config {
-					temperature = <125000>;
+				trip-point1 {
+					temperature = <90000>;
 					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				reset-mon-cfg {
-					temperature = <115000>;
-					hysteresis = <5000>;
-					type = "passive";
+					type = "hot";
 				};
 
-				gpu_top_alert0: trip-point0 {
-					temperature = <95000>;
-					hysteresis = <5000>;
-					type = "passive";
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
 				};
 			};
 		};
@@ -4967,28 +4961,22 @@ map0 {
 			};
 
 			trips {
-				thermal-engine-config {
-					temperature = <125000>;
+				gpu_bottom_alert0: trip-point0 {
+					temperature = <85000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
-				thermal-hal-config {
-					temperature = <125000>;
+				trip-point1 {
+					temperature = <90000>;
 					hysteresis = <1000>;
-					type = "passive";
-				};
-
-				reset-mon-cfg {
-					temperature = <115000>;
-					hysteresis = <5000>;
-					type = "passive";
+					type = "hot";
 				};
 
-				gpu_bottom_alert0: trip-point0 {
-					temperature = <95000>;
-					hysteresis = <5000>;
-					type = "passive";
+				trip-point2 {
+					temperature = <110000>;
+					hysteresis = <1000>;
+					type = "critical";
 				};
 			};
 		};

-- 
2.40.1


