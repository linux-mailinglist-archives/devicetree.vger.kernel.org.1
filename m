Return-Path: <devicetree+bounces-133814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B36D89FBC62
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:33:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA26B168109
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BAD21DE4DB;
	Tue, 24 Dec 2024 10:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CaYKf+oI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841C31DE3C4
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035478; cv=none; b=VtZsw2hhJnaE4FKTKiRQ+cF1E16WuToauqrUjDw/ZAnyStgJoHMqXS9sWhf2scdVJvaq4wV6EKQyOyEp0cpdAUu0G3BmJVj9GSVmZ/6WReduG6xhVIlUCtOi2MtvQcwJUM9melmZmiP+iOQG2OF8aKnRj5xZV5Ff2xuZrCSCvrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035478; c=relaxed/simple;
	bh=kWQwXDlbilsYXfDRPCbFZMxqzihzbNYaTbZjWDNNvZM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QWoJUGH2k6DFzw8QSnaHH7E1amt7LLOQajHuxG1Hd8+XTJsfAMInAU37zo6cRfTLvfdS3va7MaW54RjIfpaNrYiugE6doCblWocp2/4laXbmP/31T+SbawXNeIpICIB/KZwv9ofJW3Bpo+6+L/tZSmU2bh0Dlq/zidtSjd7Ae7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CaYKf+oI; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so7544371e87.1
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035475; x=1735640275; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V9aOYi846ctHk/n1KmFCWB3HQZO0oFlbEq3DCWf7dCw=;
        b=CaYKf+oIVLid4fV3gy7LcpyCBA/9npn/xi1/+Xc0vaQ1xRoLMQ8mXQAQ6ggkqWkVYy
         DIYw5Mu86ko3DsIklI6yycjTzBIBCkb0uAIY5b0AbQcfXM1mZ+wq4tSYQBVy68jVa49P
         jDma2Alra+PGrrTc12bgsRMzQFUugA05/zJUKVCQNNIO0mZqum8KiUaOdAPDO2CNiJ1c
         q0oVHws1Vugcq8nIibOMB3nmrYW/eURSg8EllYEvX4fKsJUxWRCKo9H+7i3BUjUTvNvw
         X/ybKZ9jzc+eOeemtkZ0AIPR+nOJxqg53ymmrbUcAhKwfu5UjvUGORupmBmOGpTuK3R9
         jUMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035475; x=1735640275;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V9aOYi846ctHk/n1KmFCWB3HQZO0oFlbEq3DCWf7dCw=;
        b=tXjoOnouYbtGm8QCdUmCzjIW5m9D+TJi5BmaenmhCM3lyLO656TgUjnXQa9yLWpLu1
         Oby4/qX/ANPE79bDMbx+DtE53cO3fUXSPip1+R5zEMWvejj6IKkuWBZR1Tedt8cCYRJa
         E5fzU7pNTboQ7YWzZqnna5kTn52H4xpFK24vLqNH5Mno5ynz8mzPjngomnu2IGCVWnpJ
         KS5SqANqXbgNjhGbHeja0WGaXQFRwsxrgsSqbgoKhL7UDqNLco9I+AJKGXFLvqW2Rgwm
         Vta3PEtspFMBMGDrYpVtwMwXf8myPUrqs+c48I63L5SqO++6RhWm01AON7la13kq8xxq
         2nbg==
X-Forwarded-Encrypted: i=1; AJvYcCXf4Yr7B3Q2a8lpBEnRrldeFPm0gpsftd3z+sq58HqrqmltUrdFVohTK+Gr3qCKJvbsqV7XgLbf/tax@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0AMJp2Z6zyFG93tX+11EMfw6m5HChry+jvwEW621khiVb2t0J
	9qlfVDfOF5bfeWSchu/RElb7dEHRqm1un7mK0cWTa/e0MJtOVJe5i+Jx99wJdmY=
X-Gm-Gg: ASbGnct8dHQSTDL6LbOiN99WixLA+19jegnHlalqgDK8VVWva6IZ9tLzM97dJPv+0qq
	Tn7QUoOCgnschNZ7oxHaiW4DhYtcPjv9TwwEJcbR4v9hyVZwWAunA3LoJASHy39RZ/7eRnAiUXO
	nuPq2jrQh8GpMjd6fVc/O3LMVARcl0KQOpp8bgCUoxpJrLO3oGFG4XLpMlbCLJKn2kC0VqXodmy
	r6SN///0bQtxUnJwtsbCDiDEVrmWlh+d+yKMtZDwwkAcAJhcWJimr7n4lhKr4w6
X-Google-Smtp-Source: AGHT+IENulqom78bKGL1j59J71t4OHm8EkLO5hzYAgNmYJC0Qf2w0OFdb+O5XnT65a3TQ0/jXedh+A==
X-Received: by 2002:a05:6512:1149:b0:542:1b6b:1e89 with SMTP id 2adb3069b0e04-54229525408mr4584789e87.7.1735035474843;
        Tue, 24 Dec 2024 02:17:54 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:17 +0200
Subject: [PATCH v3 18/21] arm64: dts: qcom: x1e80100: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-18-e9b08fbeadd3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=918;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=kWQwXDlbilsYXfDRPCbFZMxqzihzbNYaTbZjWDNNvZM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaoojuGj4t4y9jz9TfDC1k/UctVHH2b1IkH6tp
 BapJmLDrvWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIwAKCRCLPIo+Aiko
 1SKaB/0RrC19Nze0nL1jW+BMlXZ0c/AFqzNPuvga5fKWCPm9xIP+yhPL5doAPawCS621faj6q1z
 E4/UTs1rFnh7kU/TesQupFSZU3FD/VLjbXUU4Q0AUm1o8ZgQX39pSCkTGoByPWM6bfwb7ns26kt
 9+PgHQ9bEB/HG4HxGbu/H88E+yWj6GDd0ixoCbdyEjaWVVapwcDzYfF5+vwLGIKzlDmtGX47wP/
 FZ587VYL3rXrPzMf162S4YSTFiCFcdskFOJIt8HPCHypsKyfRxY7VkhpZ+ZCEoVL91/hS6RMfaS
 f4iLi+pxD+tl4mRVsyo0Sqb6fD+qqqdj9bIjYo03/gQ/klY8
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The X1E80100 platform uses PMK8550 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index f25e2d3af4a40125360831367830cb3d217883cf..bbc2bb2e9b9b3b5bd22b35a4fca085bfe2965d4a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -38,7 +38,7 @@ xo_board: xo-board {
 
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 			#clock-cells = <0>;
 		};
 

-- 
2.39.5


