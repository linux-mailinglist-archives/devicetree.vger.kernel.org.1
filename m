Return-Path: <devicetree+bounces-133799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F209FBC30
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:26:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1011316B3F1
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1791F1C3C13;
	Tue, 24 Dec 2024 10:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S14I98az"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B0F1C1F22
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035443; cv=none; b=bCO0TvBIP9nBQf0luxZ+Ec1jIu1io877pRmYiGQV1la3eweqW0iJUng5R/81OoALt6pgwTibhD8lJj/7GIeoGf7CPMi5tNuUMB7NQPPX+rJBT6UhuMngyGWTsdPmVsIs+SPyHacy3UspVsS5dmFGj2oRdNOwPyMp2iqmmjyqsNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035443; c=relaxed/simple;
	bh=rR33tk4iShQizxX1vNrKanPGs6fsj3vgKiMhLvDMp+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d8QetFJkJvjT3URkW5i83FZodwnrpO6MLGOahC7lt+5P8lbq+w+BRieg3b4GblMN/REPgvOSXeC+m4E3Kj/8S26zY/hGf7cLurHWe1CYTYxNrdIU+7ldgJbMcPiJ4+XErOWQiRc2lQ3YSTQ4JwoyszBH7tn/PHrzrOJuNwiseA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S14I98az; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-540215984f0so5243553e87.1
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035439; x=1735640239; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=enlHR4jkuvtTrE3pGjdSHmUxNqvLGDczVHxXmenPlOE=;
        b=S14I98azOpmmLgC8Rg4l80LmiBhGFYS9k9hEurE8UqddYrhwfAuH2+XtdajrY74i7A
         4lONAAFTGSaQZ0BIzOfwCITNUv4t70yT+QUtbqlq4BN37/SuulSvK1LTuPPlP1gImo6V
         4N/tqSD4eRejXkemD/Sv010H9YGmb7zR9u2hgsXhJF7pIoEG04lYjxt2E+oLKYwFj3A1
         NHUpmxlNF6RTZeTnIV/kwNTWLgSFub7WAZNKm4Y9HrK0zvLobSBKQ5oTu4arPSD5Px7P
         zsWuWwzK6GuUeWyY/aevduwaSTljaoX6/5Dyj2cm4ZHj2iNk6+16JkmX/D9UefB00roq
         xSvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035439; x=1735640239;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=enlHR4jkuvtTrE3pGjdSHmUxNqvLGDczVHxXmenPlOE=;
        b=m2k9oO8V74+9DAEvWpEk4CEx9Jc6vpNS0FU7ABsdEXCzAa870t+3v9NKO9f/Pe4weI
         z6Su1aMITCbmkc2L31j6gUNAtldxk46OK4sDTPctGa3lTwP+aCnFLuL0ZkgGngtb+Ck8
         dAL8oNQ+Dhw6yW4JIaG4K7csR7G3NNrEO7DpL/YO9pOjucdIwUyQihmiBT+bfEw0kmjs
         6gW+eOb7kGGXNpZmKKEj5YZpVAwb9EM6xz/yJDr01ZIZNCXyQfS9Oeg7FWsqgsh2QmK1
         /nC/XgbjZlnUPN8AfPnVNHCwKQxeqaRB5y+DbW1Zp9jOhrkRsIHuzblzxd2RKFQKQKQD
         Fgfg==
X-Forwarded-Encrypted: i=1; AJvYcCU1rj+IY9kSt7obOIjFIDTtBM6eogXuzmZuP3OQYpl5oWVWuxyRqhtv8xAEt4YxdOEX0bWvIC8R9MYO@vger.kernel.org
X-Gm-Message-State: AOJu0YxScdN3ztw1aLzLSe7In4cIw1CZe4d/MLkkjTU4P6cQFbYFs4nH
	mA1SFoox1epnTpXxvR6/lIa0TTd7HnIq9TwYECEPpjhebp5sqIBXicOwl7e2tk8=
X-Gm-Gg: ASbGncvPl6FYZBXBBy/xclayMHGuMy4VX5waMk9KvhZDdQZhcn0rFnuDpmFPth4FPi5
	ve1+HZ3EVdqyLGnTiWb5GGvZfvWwreYMofUBRtO1Dhrc8gYzz3tJYxpNr5UqpS/pD/ZqWp5E234
	7kOw68kOaLFWFV2OV1wJXaEGU3X4KodmzhO35cri53C1sXylgskndt4fWK2nvH7lTBrAaxPGqTf
	fS423TbeVbEHbgxncFgz+XLRZUQVfAEnKoNsR3v2zh7IMD6r+5CTym1p0Pwu8CZ
X-Google-Smtp-Source: AGHT+IE33j3OpeC0LkiXMY0BcJ0AvVK/vaxCUQ0afwTPn7x6Hqln5Sa+mOdqOulhAKpwASXBmZx8qw==
X-Received: by 2002:a05:6512:3994:b0:542:214c:532 with SMTP id 2adb3069b0e04-54229538b3amr4679142e87.13.1735035439554;
        Tue, 24 Dec 2024 02:17:19 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:18 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:03 +0200
Subject: [PATCH v3 04/21] arm64: dts: qcom: qcs404: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-4-e9b08fbeadd3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=910;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=rR33tk4iShQizxX1vNrKanPGs6fsj3vgKiMhLvDMp+M=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaoog3M3tf/lRnSZbZqYVXGhcJ9Mz4IIqFzU/2
 yvOKOtFgUGJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIAAKCRCLPIo+Aiko
 1aHIB/92B7+zTKkPhCZGUgVU9bp3zlKJ6Y89KZJam7RR3HqsFXnbCN6mxbAcP8WwGFI0bU599aq
 tHOP55sigjWQ7Rg1AS4x4XffLpDy8rhEqaKCsWy9/iyiZWK/DZs/FGIUf6Dw0wt40fUmdgj8+1E
 Yga21quoiQbtMdjZLitZavhVPS2KjQYLtpEJ1//iTBUvF9mutXT9YORJX9boR+Pyw6l1aX7zO/D
 13JXojC4YTynRvdbDvXWutWziFjbI4PTXNsHnuXLJqKkevF4Mf1tCew3zL+HeGaUap1Mf/mTA9G
 hXGkM/dY3MCHpappNoCGt0ehMmBYz8UZ1pOoHCOh93JRyKe6
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The QCS40x platforms use PMS405 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: 9181bb939984 ("arm64: dts: qcom: Add SDX75 platform and IDP board support")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 215ba146207afd25128692781926cf1964743655..2862474f33b0eab7c42fa2b22006f580c567ad2e 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -28,7 +28,7 @@ xo_board: xo-board {
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
-			clock-frequency = <32768>;
+			clock-frequency = <32764>;
 		};
 	};
 

-- 
2.39.5


