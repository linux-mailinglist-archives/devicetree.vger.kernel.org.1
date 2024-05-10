Return-Path: <devicetree+bounces-66253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6208C2436
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 14:02:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E6111F267B3
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2024 12:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0405172762;
	Fri, 10 May 2024 11:59:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hoIFCxP2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ABD172BA4
	for <devicetree@vger.kernel.org>; Fri, 10 May 2024 11:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715342390; cv=none; b=Zjl2Et+to2KSBE66dgdRVxbBGo8Fzm38WWr99NkyYZODnlzskYoA+26bjsmqX0WIn2EdouQ5tyQHsOMYP6qH8ED3WJhmXVzjdKQZk5+As4Oti2gXGnzkiCqpiTf63kNPI3zAP9kBKT2uLhNKL5uV9HkJm1NmIxlpEdmx/lfvMy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715342390; c=relaxed/simple;
	bh=F6LVDFMYAmM7JcjujCIXWZBP4TC8w8mBfjUWcwOJmNM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s1nf3lV5jv3nphN/b7EXx5y3FfcVc44pMEdkwVbRvLnd7exKP6g/jy0E4w+6bVTrsrak+5rGXtrlqUt4bruqUSXyI1tTngwEzpFE2LX04+1zXnMYVHlqR/bXYZFXx6J35RGvM/ig11Ynkme+GPEWcqLAhP9/Nx1Bgs4CLJTJpmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hoIFCxP2; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a59b58fe083so457955766b.0
        for <devicetree@vger.kernel.org>; Fri, 10 May 2024 04:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715342387; x=1715947187; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1YCAIvPNRaWCiuoixyBepvQGa1SGEK7bmvVw2e9ptmQ=;
        b=hoIFCxP2mwmnZNeX8Rr/24MBC3D0tr2YbnomDy/iO+qPaFb78U0cSpgc24VRABU/vv
         pTdyUv7cxczi8yamc0uNH+e8yTX7w7xHrvs/ixy/EgfUqsUdki/u7mfIW4O0L1bI5L3g
         jJJFnFP60mrZkKyXpSfSKbO+4kJRs5Nts85j1lFA6Hydw7hCrwn3o/0pwle296HqnSEn
         QLFjOgLvPzqnrkmp+aqUIKhB6AS8uzpbqyp8eWmZ+6OF/BiyX+7rnwrv9UX9wZeTxxZW
         0riFdfmZsTGiEJUi2CrHUTU8xAkXVK1qV/LvZWndVelll6N8soRqug12qRL5b0A2fAw9
         svng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715342387; x=1715947187;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1YCAIvPNRaWCiuoixyBepvQGa1SGEK7bmvVw2e9ptmQ=;
        b=XE9G5d+1YCCprmFW7akwEfWt3OtVrmlYU6rDbTU4Tl5Lpz275YjNDu4AK5cAXGIXW5
         YBH0I26Ev+Y+3EkTpkqGddQ6FJGSGm799sff9M/5THzkjw7MsikbLI34jMQcJ59YR22B
         u7Hw5ISHTloFxYiYxqlvJEAE7aTT2QsulrPuNU8BpyJzvZdr6p7PQMD4ynz2OMkKGmFg
         ZB5y+LhM03hj7lLDPTlkNdqEWq8wVPZOh5j9t/vF1lR7/gtlsYv1zxiNg4wf7NwOT2GQ
         WMxLr+mnuuO1r5kVQKqx2ItuMZ5xYTEb2O6Mcg5txQvkWkM7FcpfgDZRq32hjbYW7q2c
         1ZZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHzv/+8tXpS7TmyhjNa/B6Q5Vu5g1Me5hSvv/B3hz7+G8ZGXNT+pxOqlfnaOrDzl/ZVNFtJ1JFPkywIz+9OVY050Z+RHQynEq4WA==
X-Gm-Message-State: AOJu0YyVETBt5S6U3DBg+HVAomgEHeD/Jj5fE/1/E6mPsfrmqSfE0G9Z
	Fw50ZDXUfIi+XzJvzLZGMRAOqm39hxnh2/LhcIebAy72X3QkeEIKRZAdPHpBmCs=
X-Google-Smtp-Source: AGHT+IG1bLjKOe41AMRsBmA5uo/6L3/L2uOpaPU9NQ+8MTiil1v575HvVjy/jkMYVI19AfvIYu4f7w==
X-Received: by 2002:a17:907:78cf:b0:a5a:1b60:7cf8 with SMTP id a640c23a62f3a-a5a2d53af8dmr143767966b.15.1715342387555;
        Fri, 10 May 2024 04:59:47 -0700 (PDT)
Received: from [127.0.1.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a179c7df7sm176795666b.111.2024.05.10.04.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 04:59:47 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 10 May 2024 13:59:33 +0200
Subject: [PATCH v2 10/31] arm64: dts: qcom: pm7550ba: Remove thermal zone
 polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240510-topic-msm-polling-cleanup-v2-10-436ca4218da2@linaro.org>
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
 arch/arm64/boot/dts/qcom/pm7550ba.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm7550ba.dtsi b/arch/arm64/boot/dts/qcom/pm7550ba.dtsi
index 8b00ece987d1..853a1d83a7f0 100644
--- a/arch/arm64/boot/dts/qcom/pm7550ba.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm7550ba.dtsi
@@ -10,7 +10,6 @@ / {
 	thermal-zones {
 		pm7550ba-thermal {
 			polling-delay-passive = <100>;
-			polling-delay = <0>;
 
 			thermal-sensors = <&pm7550ba_temp_alarm>;
 

-- 
2.40.1


