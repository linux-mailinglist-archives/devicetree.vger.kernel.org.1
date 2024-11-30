Return-Path: <devicetree+bounces-125671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFE99DEE3A
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:48:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF96C1616A4
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE9C81A3BDA;
	Sat, 30 Nov 2024 01:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ABBHbLac"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBD713C81B
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931115; cv=none; b=C4naBZTB6LoBeDQ0TFWa8XLKO95xNT6S5i/byKFRcWCeBaWrbmvqfk5YpFP7kdJHlPpcGDfXN1qQE9xE/mBW5ay8vRIlzmmbwZwb5LzPDb6JuhMx6p1A7IpCNRCK1K0SyZAjggi5FlLVJ6GriXne2ftXcCtAfVl782BE5WBmo+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931115; c=relaxed/simple;
	bh=LXX0tpGxrPC2kis2WoEdR7Ui3mOGhEj+zhg45SEX/Ao=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kQITrjv4cU8WUqbhtzzaNcM2Oge8/dEDlLdhdIs8hQuPdNcn+LkrBoUoXwkoQuV+XK8fhbmJWH6NaiU5kYuMyEEdpoNSoI76lV/sQTf3AOGeUQ6Ylm4eKBrNsI1fQv+hrspR4YvIAS1loO1LlYKMpU32gmoV7YQgtn8l9vlj2UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ABBHbLac; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53ddb99e9dcso2466802e87.3
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931112; x=1733535912; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qLx30k3oLtldvsgstuJQ+s3SGXKcYe7FaeB1beknjb8=;
        b=ABBHbLac0BsfsvvwMTXxIOHarXaqT5ETtFSflVcg1Wi8AxKZbXxv6Nd2G6Cn8/83LI
         VaP5bZYLSMxlTHQPvQUk6W3nwxMDo4RxJ/i5LdFv1RnTXSCs9G5LB6PE4vAnvu7y8zpG
         QxwdIdzLbhd+B60srYd+30c6Gglg9BUhdyuVdbYpavvFwWfhcn76AY4PyH0VcH1m6iIP
         B9yVNj47BEWQqLojyg14Y8aq5fwTFKBI+CHnhGjc1oPGW1DAI+U+KRWV1VLHiWy/dAHt
         8TFvBou4djray51W9RZpK1LduMYOo5cgtX6A5P8Y2fXzy7nrS1kyUpR3XPpR89phQW3T
         ZWeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931112; x=1733535912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qLx30k3oLtldvsgstuJQ+s3SGXKcYe7FaeB1beknjb8=;
        b=gRdR9WbOCOM4kwAWbcyJNEwGddpDHWoBZjcswZNALZ4ZRtk2FNG7F9QuOfkvN4Ujsd
         0LG24mvHVpDRLUP2P8oOoktn0lVTbcsKM14PwgXjsAdhLzAEzr6qtXmOeI6fV2FttF/h
         eDAlIi5fXndcXHzA4K3uX0BFKkVdVdyVod4d8Fv+sWgy5QqVizlauJnFqHUG8Y3GoFDv
         C8OnJQDV/7sZfOVogtFbex6lcac/4oTgGpDgi0oF6dKD4r3dwVyMDXSXqK3PgDZksgG5
         9CrlJ7s3ugfwf6KocGu9RB4WnTNoIzmNHRSZjSXPqGKDX8uGkpRPRlQefKm0hixKvTuo
         MWOw==
X-Forwarded-Encrypted: i=1; AJvYcCUNZVFzN1Qcx/8WpElp+WZ1qxseyn4l5nn96YWWJX7SOeIWjQ5X2Pxik2cxyxiHpO0Jp23cPttSuHcb@vger.kernel.org
X-Gm-Message-State: AOJu0YxKHDK875Wj3Q+Isv8gTsAEd9r7vHVRCVbKcqHr4LUEJxu4DIeL
	2RTsY49ramvw5ccjm63ifvqvU7pSp3WYUmkzTWhH4X/We60+pHuoubDRfBwG+ro=
X-Gm-Gg: ASbGncu/glYNRg/EcGYvHhODzJE58g+vSQbM5nwTVNBHcJLyTQYc+GVQ3e4xPF/99XL
	Apw0asC5Cg7RUvenfLsPSmBvm3yapgjm7MYcBI5fpcRD8I0y1gGlw2fG3giCBm+EpqS0Revlz/5
	uLT3Cbv/2gMo87Yu/T1W5hyK74fJDP2MvW6G0sDz9FZBe2CSoxGhcPJYxrqTw0hhQnYWquz5Lh4
	b+IHRCvvi8wtTJWIhCNE/GL8SIJxjZc155EkwKc3epu0NABvule9HhfGA==
X-Google-Smtp-Source: AGHT+IHFQ0NyCu0orpLKv3xjrWL8Avs0kPgEYdYOIiv//cGCHygZQf4V6eq44clsK8n7/xBG9nCR9g==
X-Received: by 2002:a05:6512:3a95:b0:53d:ee75:1443 with SMTP id 2adb3069b0e04-53df00d794fmr7797805e87.18.1732931112305;
        Fri, 29 Nov 2024 17:45:12 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:45:11 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:31 +0200
Subject: [PATCH v2 19/31] arm64: dts: qcom: sc8180x: drop extra XO clock
 frequencies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-19-b9a35858657e@linaro.org>
References: <20241130-fix-board-clocks-v2-0-b9a35858657e@linaro.org>
In-Reply-To: <20241130-fix-board-clocks-v2-0-b9a35858657e@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Leo Yan <leo.yan@linux.dev>, Joseph Gates <jgates@squareup.com>, 
 Georgi Djakov <djakov@kernel.org>, Shawn Guo <shawn.guo@linaro.org>, 
 Stephan Gerhold <stephan@gerhold.net>, Zac Crosby <zac@squareup.com>, 
 =?utf-8?q?Bastian_K=C3=B6cher?= <git@kchr.de>, 
 Andy Gross <andy.gross@linaro.org>, Jeremy McNicoll <jeremymc@redhat.com>, 
 Rohit Agarwal <quic_rohiagar@quicinc.com>, 
 Melody Olvera <quic_molvera@quicinc.com>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
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
 James Willcox <jwillcox@squareup.com>, Max Chen <mchen@squareup.com>, 
 Vincent Knecht <vincent.knecht@mailoo.org>, Benjamin Li <benl@squareup.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1337;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=LXX0tpGxrPC2kis2WoEdR7Ui3mOGhEj+zhg45SEX/Ao=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm31MhGEqb50neg5rH/N010ZmC9Og/YXRoANL
 NStRUSHKLuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt9QAKCRCLPIo+Aiko
 1QiUB/94zmzwNbHEHJ+AOpd1HZhwyCNY6wo9c+FWQhpUBhmHCfqol1BAx7EHeYIRqEaZp3Sxx+A
 U1BuxzFRKYW/Q0iXr7i9jXT526qgec1/Cgj7qI0EBUNjMB4tTIZBo/EXJDr5JWQr99FDfAvWwkB
 4WHZkosBo+N56FSMczBDEh6zAtKexiwYNRHzKotN4C1JsAE2e7IUZI0le71ZEImVIdXvoAi90SY
 SWuxpdcwkqG1tjEqzdkUpk+1yY48w7xPZ2z0VFKfX1TJVBGycgDEALLjwj4wrC+VK2b2YW9GoGF
 Ma4xs+2KimVlQhElhmSZHr0DE2DhkRTLhdCSzL3z3gf1nRS9
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

sc8180x.dtsi already defines 38.4 MHz clock frequency for the XO clock.
Drop duplicate overrides from Primus and Lenovo Flex 5G DT files.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 4 ----
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts         | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
index 62de4774c556d3954a797287ba2ecb36d979dc9f..21c2d25a294506de41f6e8b7197be85c02d03568 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
@@ -681,10 +681,6 @@ &wifi {
 	status = "okay";
 };
 
-&xo_board_clk {
-	clock-frequency = <38400000>;
-};
-
 /* PINCTRL */
 
 &pmc8180c_gpios {
diff --git a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
index 79b4d293ea1e70d68346e7c5458c94f7c2b6f1eb..7a4bd6955470338dd9c7a628c9f9a01de8b480ac 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-primus.dts
@@ -773,10 +773,6 @@ &wifi {
 	status = "okay";
 };
 
-&xo_board_clk {
-	clock-frequency = <38400000>;
-};
-
 /* PINCTRL */
 
 &pmc8180c_gpios {

-- 
2.39.5


