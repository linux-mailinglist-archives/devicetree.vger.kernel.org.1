Return-Path: <devicetree+bounces-66293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B19D98C252F
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:59:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A36E285AAF
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC0A112C53B;
	Fri, 10 May 2024 12:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BmHre4/r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E7A128376
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 12:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715345922; cv=none; b=f+krTGB493uw75wtuOqmS28r40mITosqGQi+B8uaVjI6bv2hhRqoNU+TqNmlVZ7lK7emmQRrpIcPpsA6r6/qNZYlLJJqowbnwuEBo1piQDB0AtqjRPaqDg8lCTkYojtwRzLy/6yX/JmKOMLyyXQh5UW3Dy0o2tkeB69yJQ+hcwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715345922; c=relaxed/simple;
	bh=U1sZM6crvXzNr36TY4xzkTtToIbdblQozjw2mMpBGo8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lUUkmmiVo0P8/eElnEaFMVUxilHcMO44+ppYiO4pqepa2bHvIVC+9McMKwtHCysFTAosP8JT7MzZ+b956wjRH6EiUeiNn2dTil+FfBb03+q3ZByg/7V1cqR7jVGuta/P9iK6iIQDHmbm0ioOpvhAoP+AHtzFYjwRj7QSJOUhrig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BmHre4/r; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a59cc765c29so447008666b.3
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 05:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715345918; x=1715950718; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UviVANTDt/5uiKFqzI1mLhTEEii7CuMYYu8FBGQXpBM=;
        b=BmHre4/rsGV/BTj4++sBLtAHnj/KrXw2W3dk2k7Mm/KRWb9lJjgmCwcAbCWLIUy30G
         kdZovKYJCcYtiQnxEmMJGiHQXVDQVBYZZMJY0942YAJdxXnEHEinjrAAgwttt3SFgPD4
         yXGhBx65lJ7p8ZlGkbEfGPVO62JXbm5v4xXZG+fKRpL3frA9qVeepcWhp0QhvNnhzx/j
         13WgDseb+v+TV4GjUGJxWR5jZqPIGhtib4rqqlW6Op7zaWSlUjMT1ap5AQ6JKNVAoOuK
         bKzgTszggMcMajFaEVLMyYmRPA3MXhTzOFD2wYfSodSbu5Q+tTSqY0kk30+mnxigyM96
         Ykpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715345918; x=1715950718;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UviVANTDt/5uiKFqzI1mLhTEEii7CuMYYu8FBGQXpBM=;
        b=gKskkOcEkEUaXA40EtJqWAnrzYSpGWdCL32IphyuEfbTMLt5tscM6SjmH+jySdUTiS
         PGeKKS+YP4upbracUAe0QJPel4c65QTuGmd4rVYmA7ZaUVlH3obk10xNqryhKUCnI0/a
         tnVIjmrYjuHm2aInLl/y35IH0Z1NH0sAn+L3ho+xcCw1b18KqTDpjxPX9+o3ty17Xduo
         Nqu9CgG9T5Yhmj9b1uf/diNcsge/kXX4txR3HoAcEZ4wc+cg1MGSuaNqbBYZvhH+7vPF
         ddgz/MbY7coGNXNogwNvBz4IGa3N3K26xeUxlxa2QKlExw7dstjcGXKopndceFQkS2Gh
         M+sw==
X-Forwarded-Encrypted: i=1; AJvYcCUPQtWTyohs137dHtnmwoXVtwMBv9QSt/UyFPiv/ob9Qy6Zkio+NYpVl7OCDN9GobM8H0bagF3eTOBwvB1itFPWenLGHX6o1zyudw==
X-Gm-Message-State: AOJu0Ywx5XU/0gkpV9Lmq1QcE3oB1LWgyQFNK1nDwzrSwOU6+rZyZ7f7
	wbnyOozRcPS2YtLYZoq60uO2IZ8R7Y7EQr85vQouvEqCTKRoDE+kSxWMcTtHly8=
X-Google-Smtp-Source: AGHT+IFftFdwrJV56gfgsr34xjkjx+Jjl7MXGjKOYrjcpGmW0lfjcSGDIRBYjrCWQu4RRSyGcWCE6Q==
X-Received: by 2002:a17:906:194a:b0:a59:9b75:b90 with SMTP id a640c23a62f3a-a5a2d53ad53mr177181566b.2.1715345918269;
        Fri, 10 May 2024 05:58:38 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d6bfsm181857366b.31.2024.05.10.05.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 05:58:37 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 14:58:31 +0200
Subject: [PATCH 02/12] arm64: dts: qcom: sc8280xp: Throttle the GPU when
 overheating
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-gpus_are_cool_now-v1-2-ababc269a438@linaro.org>
References: <20240510-topic-gpus_are_cool_now-v1-0-ababc269a438@linaro.org>
In-Reply-To: <20240510-topic-gpus_are_cool_now-v1-0-ababc269a438@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

Add an 85C passive trip point with 1C of hysteresis to ensure the
thermal framework takes sufficient action to prevent reaching junction
temperature. Also, add passive polling to ensure more than one
temperature change event is recorded.

Fixes: 014bbc990e27 ("arm64: dts: qcom: sc8280xp: Introduce additional tsens instances")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index f63951186a5b..65c444cce00c 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -5956,10 +5956,25 @@ cpu-crit {
 		};
 
 		gpu-thermal {
+			polling-delay-passive = <250>;
+
 			thermal-sensors = <&tsens2 2>;
 
+			cooling-maps {
+				map0 {
+					trip = <&gpu_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
 			trips {
-				gpu-crit {
+				gpu_alert0: trip-point0 {
+					temperature = <85000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				trip-point1 {
 					temperature = <110000>;
 					hysteresis = <1000>;
 					type = "critical";

-- 
2.40.1


