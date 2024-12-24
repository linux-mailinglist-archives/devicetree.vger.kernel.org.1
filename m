Return-Path: <devicetree+bounces-133796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED76E9FBC29
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:24:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E00F169CDD
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 597AB1B87CD;
	Tue, 24 Dec 2024 10:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J04eBuK0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A96A1B4146
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035437; cv=none; b=ugUoYXaBXe7kvRfrmfvrWPHCWI7jiW2DaI+dctBAOjSEhPy3WLLh9OjLPHBia3bMqmnk80xbpvjhZcroqwWPBQMxpTC9TNElm5vuAokrbST7uLrdwmAeJGWpaSuQsnq1XqnFIWdX+38aRGwDzLRNJDSKojWVfPnSwQpSczURNUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035437; c=relaxed/simple;
	bh=RRNUGJhydbP97WLehq1T9w+y0AXTLiZzoSCdrYYWsLQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lydnmd+0JJx9EE0vYtUGaV5IogktwtDzG+z8ZiX8XIMyBkLchNgRyrJhhYgU15ynk1xTmFbxgt+T264S7HLjj6dsC3eWbsnn/IQYK8SXS5uW4c2Sdi0dj3CrulwJgK36xYSzHKI7eszCs3Ll9EUMwSZfoPv17uKB6QvfEeYNn/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J04eBuK0; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso5288014e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035433; x=1735640233; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=epR874hobbwB7Q3STH+BJThMFI2d8KsVV/Va6kd5V5w=;
        b=J04eBuK0eAC6Ud1NnSfbPXCMKqLjp0VdFPwPbAOhzgNgqvmcoJDjyuZ06ive+w2mUZ
         TXHFVeH7RcoeSGgHY6vrUnELFDZ5vVIR2zVgDOPj8R6ozr0zej08OMeK3q1xCMr44BV0
         AL9gIarofBMFY+i3GRN64zNHUD8LztQ8Onh7s1xzXAr60SrL7YnxHnhMYodq4+2baacS
         5P56xuK9yWdq3PWDo6ujI4ub03gbvJZf9TFvJ1vl8ItprNYU9vNC0eaBp8dGF8rtLQy4
         DO73LZPNXEeN08wxfyRULJqzGFncpqMC+DmLr/Zt2yrgesHG5VRmiALhvdmSnSDuCISC
         /3xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035433; x=1735640233;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=epR874hobbwB7Q3STH+BJThMFI2d8KsVV/Va6kd5V5w=;
        b=tH4rAjunoY1/v4XdusJHFtQqRgRblPhSrEc0Uacb0S2NcijAQCNM7eB8sIorhbdVaw
         lpLYmHc1rUum5UBCPGrHRAXP5fLeVb2PBdbL3H9mWTim9i34Bi2RnhAWmTAqJQGi9zyl
         dbiXcJSIG9+C2FBVddbaBB2rg4WOUdo79ZvC90KdjTV5fyA2M6TwcZxbFTOFxLeqNd2I
         q55KFERTUMEqJB2S68iIKC493Idd+nqpVaTS61rUBfh3LbHXZGMl7UlleQECjeEFvgm9
         nr/DVarHCgLY1pHlv9+OfyaMrrK6cRQSdqILfUQz9pgL5VlXYVow2GvNI+uBXuGFBqag
         PVvA==
X-Forwarded-Encrypted: i=1; AJvYcCUbqvD80JrqikGsxkY4QaJOW5Hdik6m70lsdQrvfXfmghJsKK7mwe/HBrHbZngz63s0rbjqRuqXYjl2@vger.kernel.org
X-Gm-Message-State: AOJu0Yyvqv2rFun+eAmq8vtC4kGtTBEU19uKUN3rW0vaZ88tM0WxgE09
	GSvDqRMmnN79ShLcj5D0aTjWCKnHIv8EKZMmxuVASi2HQQDaiKHECRAbs0xs1RE=
X-Gm-Gg: ASbGncsvHFtkRZVlZIbUUc2G3CmJCU/KGG4nvso58Yfz5PDu3rExF7JTyiW+kYxieDv
	WFyPgNOzDgzyZqUOBB2OVJAc54I6ywjA8hpKElJUX+ZLEUsIbIap8JeJPIyra4UEup0XX2NSAeA
	J5m3YzeLkzy8WTC9xx5TZjqXrxWy1KuAlAXbDEYTYGNbVpCky15y0p96iWDzSMq3SGSIEIKQtuh
	YUf5rWRlg5QCY/olPBZMnUxzQob/C7DtlQMpXp+313Z5S4qUcjruhtR5IBL3Y5d
X-Google-Smtp-Source: AGHT+IFUtDqJ8+nxM4thkcJ6RnTmhESMACVCUIcvvBSYPXqlnvIN4pwNk3scHWzLOP4tKEXgRYgCHg==
X-Received: by 2002:a05:6512:10d4:b0:540:23af:837e with SMTP id 2adb3069b0e04-5422955fc5bmr4497195e87.39.1735035432734;
        Tue, 24 Dec 2024 02:17:12 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:11 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:00 +0200
Subject: [PATCH v3 01/21] arm64: dts: qcom: msm8916: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-1-e9b08fbeadd3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=922;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=RRNUGJhydbP97WLehq1T9w+y0AXTLiZzoSCdrYYWsLQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaoogSCbyYs3URdwMTGQMgeH/zYpYzG+aKY02K
 m4ge9/rgVmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIAAKCRCLPIo+Aiko
 1U2qB/9D3hai3SyhFJL9pbfPEIiJsXBpWgnottBU7lEYHppvRe9UvzhS14NlvLUCngkeDw2cu19
 BIqjUwIZsxZlTVUDGyN8yLnB7aQt5woGZZp98woEcsECBYgvb8S0GdpH5TIkoNpEodya8yLDcML
 oSmTZwQF793pvgPBwa+lpwGLpqdrvqBWr90E2MQHdB16xhi/YQ/xjhXZrMBnlBGnxlnma5QoPDv
 q9yxQVVvW0MoubEaB+G1A0a35RJ63ZMa46z9Gf4sqijFf27ZIGIovtoFfbO7oJ5jv+bqxpQj7P1
 CwFkJmYPnYgHaQychrjoscnatHI6evsM9uVjV53xttUfzdA5
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The MSM8916 platform uses PM8916 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: f4fb6aeafaaa ("arm64: dts: qcom: msm8916: Add fixed rate on-board oscillators")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 5e558bcc9d87893486352e5e211f131d4a1f67e5..8f35c9af18782aa1da7089988692e6588c4b7c5d 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -125,7 +125,7 @@ xo_board: xo-board {
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
-			clock-frequency = <32768>;
+			clock-frequency = <32764>;
 		};
 	};
 

-- 
2.39.5


