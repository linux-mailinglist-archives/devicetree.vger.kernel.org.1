Return-Path: <devicetree+bounces-133809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DE99FBC47
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6DCD61887210
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EA0E1DD9D3;
	Tue, 24 Dec 2024 10:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jZvHSxR8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B9B1DD526
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035468; cv=none; b=QDoZ7SSP/ylMop3pG8+c8POEOhhhKFiVPE6+mroLrttT7KH4NebAqIFPmjEYUcCV9ycI8JH3/xORjEW+CjaRKiynS/KJcgzMNt2IDVACz43gswEf3zYopJ9eGzS+CmizI32doPGgeCDIF0QF9TFktoKVPl5NHLSodaYjxaLDc8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035468; c=relaxed/simple;
	bh=zFjg3X4sj0bxnLQr9HZSDlL6zt2ff3hQG2YCOF9/IoY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZtB+hYVHLEJBWTP2sSnk3gbt20x2yQqJBIAJlZzhYJAxr82ACXPKLeYANK6lJxEg6dkoS8Pd6UWVJ1fBnHlvlQGlawGK+zj80/DqdVldr7RKR4llWPGry9WPfVBJ4kg+P9CIh44BrT90i/wCDbULlO7D6+QfLNYdtCOfF2XpDQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jZvHSxR8; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so5344189e87.3
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035464; x=1735640264; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K/a5BAp3qzVqtYl9QHTxi0LWKFQabKWYE2YUriBQCrQ=;
        b=jZvHSxR8zrgjqwP0t69IySsW5H31ciQP4ikNV/Qgjv6BYIakKDtJexMgoPpIm+IE9h
         m/sH/4bXmShT8JcTPKmNYoSO+yp8THoMdt+Wa9mwCXeSdVDEuNqdySvDwAbmbOSHMQra
         wFLdFmuPoUUAPsGU1Ov8dfQjyQgughTJD1tFTWW8XGWZCoXbmiJfKQRuTGDV9aMR1SSe
         Ey1uIiMFiPpQPpOsCpKrc3KHWCmScVSEZQfcgM8yb5KWCvzgilZ49V9Srz1+2C9cu/7q
         FXJjqi55MO22uAQ1q9nGO/PTArSXPCOj82jFVVKP0lvzkJCc5Jp1uzODw3JRpYovR/yd
         OmFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035464; x=1735640264;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K/a5BAp3qzVqtYl9QHTxi0LWKFQabKWYE2YUriBQCrQ=;
        b=F4+8Vx3PLR32teLdRY4H84NPYR7nZ1TjkzmxHDynHDSeN6I0303QIABvFiUHj+LtHg
         8x2t8V9XVBK2ru+Ti+sd4q+YhvbywKg5Fr00BclOdzaVYPlwrBP25uZ3oVOG0Ml7INxt
         VXFAAYi5fmFuIeu763o3/J97p4gXW/TKt2xRVLtQleYs+d8FfyPGTdWsU1QAeJN9wLiN
         pIKx+T3BAmERBngRGTibcXyBtQ1fm4Gtrsi3V0OgGeH3UWjpPsYlj/Oh51uv93kd5B40
         IAKZ1N9ZS0NzbjE+qpqD8+Ikod6xqu7xpcACjrI5CyVE8MOpzpmG8SMnBZb0PsYcsU++
         NWWw==
X-Forwarded-Encrypted: i=1; AJvYcCWx2qkpW2v004394uJJrfOm+gtbNdOlMXcHJYe0mWaiWITPDKr2c8yNXrPM77KD1DRe87TBcJK9wJdF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8o7uD6VbgKsfGdeCM+KZROxHK+gCoqK+A39Irdo1tswn2+Z3s
	8NJMl2QsAlsp4/VQ9gKdWLMWH6HeMTdphgeOyW79fE9ECM/pg1ZCH6JH6pNaUuc=
X-Gm-Gg: ASbGnctyS1tLG6ZE4ljExLyEN7GjjAh9seJDUGW6Qltu3Ob4SFce7Q3Jcu6EXdrTcjg
	9xO20B9Jl9rD9IjBATyu+ryTwWXOn+4w+ilQy2XHEtmddTeuphgYxvbAcIXKWJgVn2LksvMXshG
	m9ObJRhchCyMEetFmPRF7X7InWDQhe86cKrF7hMLfAQ/Z6W2ltzI5Ly/wAP/sWxRD9M38I+LcEY
	bruEIJMxj2wY02z+Q9H+7oivsQkbXb5jn3ncZKQ//lBug0u0Mf1JVC9VIMWxZ1+
X-Google-Smtp-Source: AGHT+IE5rOh1Tzg4b3ELTdrYjfDeFure1hWx8oEUj+aZNrJy0uK0JnYsu34M3iVKC+SDHaqA/wFcwA==
X-Received: by 2002:a05:6512:3b99:b0:53e:314e:6119 with SMTP id 2adb3069b0e04-5422953ff53mr4205342e87.29.1735035464582;
        Tue, 24 Dec 2024 02:17:44 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:43 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:13 +0200
Subject: [PATCH v3 14/21] arm64: dts: qcom: sm8350: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-14-e9b08fbeadd3@linaro.org>
References: <20241224-fix-board-clocks-v3-0-e9b08fbeadd3@linaro.org>
In-Reply-To: <20241224-fix-board-clocks-v3-0-e9b08fbeadd3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Leo Yan <leo.yan@linux.dev>, Georgi Djakov <djakov@kernel.org>, 
 Shawn Guo <shawn.guo@linaro.org>, Stephan Gerhold <stephan@gerhold.net>, 
 Zac Crosby <zac@squareup.com>, 
 =?utf-8?q?Bastian_K=C3=B6cher?= <git@kchr.de>, 
 Jeremy McNicoll <jeremymc@redhat.com>, 
 Rohit Agarwal <quic_rohiagar@quicinc.com>, 
 Melody Olvera <quic_molvera@quicinc.com>, 
 cros-qcom-dts-watchers@chromium.org, Stephen Boyd <swboyd@chromium.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Martin Botka <martin.botka@somainline.org>, 
 Jonathan Marek <jonathan@marek.ca>, Vinod Koul <vkoul@kernel.org>, 
 Tengfei Fan <quic_tengfan@quicinc.com>, 
 Fenglin Wu <quic_fenglinw@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Alexandru Marc Serdeliuc <serdeliuk@yahoo.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Jun Nie <jun.nie@linaro.org>, 
 Max Chen <mchen@squareup.com>, Vincent Knecht <vincent.knecht@mailoo.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=914;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=zFjg3X4sj0bxnLQr9HZSDlL6zt2ff3hQG2YCOF9/IoY=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ3pWl1Io+9HNc0S73NnTpyQsSU+YeTLM5qLf6vTsKZfff
 ztSH/Wrk9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQATScxj/2dzsv2hTgGjicum
 U2Yv0hg31L2V8r03UXCLaS//hR8zyz19YryU9xU+c8tIn1QpZbOoTPvWvrMPs5gzozM3bVxSoeG
 yQZg7xLiON21dWNyt19H17JLphz6Ju12NLuIKemgmudzu5RvF0za7xT4/7/IxrODovdD5cYfruc
 47Gtf1Dxz322eoHNXP//3o9xT7BIUtPWHTnb/8Uj+TknVnabhA3/32xgXZK6K1WDSnnp3tO0vph
 Yqvwdz/buuY6x6lfjrZYJV95NQqT4VGAZln1XvM+NgThJjtds/RvLz07MoL9/giZxrffuf+nYPR
 0OlLg9/fYJ55SctbDe5slhLwbj4c29q52V2g44J77RxmAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SM8350 platform uses PMK8350 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: b7e8f433a673 ("arm64: dts: qcom: Add basic devicetree support for SM8350 SoC")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 877905dfd861edbcd083e6691a7cfa1279164ffc..15b7f15b3836dc544cb1209ab36df85263d612a1 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -42,7 +42,7 @@ xo_board: xo-board {
 
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 			#clock-cells = <0>;
 		};
 	};

-- 
2.39.5


