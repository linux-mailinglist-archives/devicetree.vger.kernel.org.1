Return-Path: <devicetree+bounces-133807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4315B9FBC4C
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 672C11882A0C
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC5AE1DC99A;
	Tue, 24 Dec 2024 10:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ET7Nnb4+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8CC1DB34E
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035463; cv=none; b=ch30g9iW5XKDvIzXb1r/fyIPFcVfcNZf6gn4hWbjM0wJSX58zNpVFa53U1/yjcbsGkfJhOE+Y83eRMIR5WMB5PQMzSzf7uWwcvdzY6hF7DmBSqlmkRCmh3bbU9aBn0Sqw6Pl/Ok7Ck4WAARjItCBHio79X162Qo/7UPc+X4MpR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035463; c=relaxed/simple;
	bh=pg+0ixud7QxxrDakgimvHJR2/Qzsae3oMGYCum0sTmc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PiLZ94k2FQJd3Eh7O2mYU/va6nKBAPv8n5Xp3VMhMys34ptnW7/YM1GQYHt6AbZQw58UdktMG4e+mnmV0qafV9MvGbYF46jHqHvC9tZcBBzNtaJK03a7EHhn86u730Rp9Zit17tVnicz8CV0wLASJBO35WyEJdaTqpZfrugfCv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ET7Nnb4+; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2ffd6af012eso68769601fa.2
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035459; x=1735640259; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=65t0GELKzjIJZOp61osw9K8U2WzNgdRx1Petkma+CoU=;
        b=ET7Nnb4+BhaFUky0vn2IJhbFcy8d4agVIbcbqreS0mAD2/Z+IsuvAv0TVaAd8ZQQRG
         T/9M9CGkN2wVtKHYr9yzcYAjsNH0D/WziIDQXIyMT44nQ/mpNJ8FOsN3IBFKW3RXipuo
         it1lR9EnnBYak13wrq56g29WcNXs+kiJsVfZht009bzIjqMD9JzObtaT/znQ08zEZ7Th
         y0ANbSnIxBmAp6EN/pbEuEkcO64R4F+6P/rGV38G69UAOHS11KHG8ZnXOvNq88UPJrQh
         blJoobROCUSEZ70n0NDKts+godE+cgvT1RL5C99KdhKaYzGcl3CjAijE4dtErCNfIH5S
         pOwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035459; x=1735640259;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=65t0GELKzjIJZOp61osw9K8U2WzNgdRx1Petkma+CoU=;
        b=FEYLm5A+Ke3AcgxTdzCXbm5pLFCvzZ/Sldzq77LB4b/TyA5OcB5/ZK3F69qM3KKKWq
         djxk+oL4sjr8nU8xWRuAp74BX6lXEDKiTqon9XUjhYKAjtMyw7V+ZsPMb8Ss6V4CdnoF
         /Q5xw1m0EB407iT94UmD3LCzQ+bI/Z8TUSQNkGCYhP3fcTqFWbJtmynxrX7jEvjn0dys
         9gqnsPSBQa1EPVY8OI3NryOsoc3PhjYy7QNFvrcGTXHfVy0htjrX2Q8TW+z24bC59Fco
         pP28ZWHvmhZPRO4N2QYcmyLNTNXnoE5bYkbk6YLtufZVZeQ0z7VwQNoSCr9gf2NBx1oJ
         JR0g==
X-Forwarded-Encrypted: i=1; AJvYcCXQ7rC8ZH9Bq/ybKVEralvRDbuMAxNqWbBbMu4FW5y2GiZ85HImsowuAML17oeTlWVP5RHLZSOVTi5H@vger.kernel.org
X-Gm-Message-State: AOJu0YxOM/WaByDVLQwW2DQJDqhjYe6eT2GvNgxmKdbnhf1yPHMQ/m41
	SnHoqCQLxfmT2NWkTHUQrAoOB0yKaK3RwDeNG2aryPCmrD71itpc3YpRdsC/yao=
X-Gm-Gg: ASbGnctJkcMv2cRGpQ45u/xo7BBHLuMFxaabFzd/rHO5uYFEYw9Hy0yW0+XCeh570Vx
	yQtVS+Anjj4iDLcSdJB33rgktXv65t0WneLrs74/G6U9UxzbrapKm1HhOHxm8OKb98xBGeFHY8B
	O3TlnerkcSHPA2GyiP2CeFIbT48AQmBTfoEB7AdZbgZFqAMWj1IcUiKXg3QUb3Y3qYw0RJr8NPq
	vP5SZ98WY/Wzuq4uecdNhAd21kEwifTb41i8CexHL5ftjF7ejiIjNf+PjMI2NWW
X-Google-Smtp-Source: AGHT+IFYwcJordC7LdvwCF4jj7rpAmVYZ+WoDa2QyiQBXK2TyG9wEBcLAocJ033QWHAxVrK862Ii1g==
X-Received: by 2002:a05:6512:1247:b0:540:1fd9:b634 with SMTP id 2adb3069b0e04-542295493ffmr5167375e87.34.1735035459460;
        Tue, 24 Dec 2024 02:17:39 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:38 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:11 +0200
Subject: [PATCH v3 12/21] arm64: dts: qcom: sm6375: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-12-e9b08fbeadd3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=912;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=pg+0ixud7QxxrDakgimvHJR2/Qzsae3oMGYCum0sTmc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaooiuTqTnxaWWhR1X9lZBW6mQzWv7XY2rb4P6
 pyIdLC+vl+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIgAKCRCLPIo+Aiko
 1ckMB/0YmaGqWVXY///07eZg/fXcotYFcjfNsru0BqNeJd2W6uGW13/pPozbvv4rrsxx/Dystxg
 gMT/1hBbMRiMEbAwFO9NEItjlNH3D+B7Nb6ulZSC+t3Qw7r9HKY9pkt4mfTaMtQW2/u1ISRV4MU
 /XUcgM9Z65PsvgC+L7Xr5FJre6eC/oIASmd8mB9yhaH28y8mSh+CmeShQrhvKqjHkEoT+7MrF9h
 Vtid7q1tSlZFAp7dFaMZ/nX2kbEYvFrZcIagz+CXH40vM1XhVASQWwOYfoCav13azRXUcKW6asB
 pqHgZQoC4PynSa5y9pjdKL5JZl54hGE+FE7QtJ7wJ7Cdohku
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SM6375 platform uses PM6125 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: 59d34ca97f91 ("arm64: dts: qcom: Add initial device tree for SM6375")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index e0b1c54e98c0e8d244b5f658eaee2af5001c3855..7c929168ed0805e832b818516083d48968d3bbce 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -29,7 +29,7 @@ xo_board_clk: xo-board-clk {
 
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 			#clock-cells = <0>;
 		};
 	};

-- 
2.39.5


