Return-Path: <devicetree+bounces-125669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AA42E9DEE34
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:48:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06F0916178E
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E4F19F40B;
	Sat, 30 Nov 2024 01:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zh6VX49r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC53B19DF62
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931111; cv=none; b=Z3YIoSMZJfySQrjnsVrRmkKgir1IEdHFIL7A2HOrPXwq+GjfadUhrWmdkNU1ASn6xg8Jtw7hOsS8J9DOiYOzhDoNBxCBbNiIlXtCiBqYD/+cqUJm8v2dxkzt9e7dRQ1h5sYZWJ8agWkFn9nDij+zXJZxTp4zoPR7TQESjps3Om0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931111; c=relaxed/simple;
	bh=k6VUs1ScFCdCh+SFXZEEGEWQ1wMPimPue9P3iT/F5+E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G8uwiqLWyL2wb/LW4G2LDEgzGOtEz1Yct5rc4m/JYiy/t5zklmjs9OIeU+ynTUYGQFbxnL1UfTZmwIu4B5/xUhl6yJXZTxT44jEe2q4DaRi8rVDVAHoFnbbR9s0+we3O5Z4iP4gOEPCQaTJcRbHdMg3o7XGor4LodxcGN0OI2fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zh6VX49r; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53dde5262fdso2756091e87.2
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931108; x=1733535908; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4UBAF6UjiLUGwxXJXXuJ3ndE0M3ekgfexe+qBug5T/M=;
        b=Zh6VX49rwO5J0+lziEc7+baJI6G+OqXwqUr9TwbL4vBNB9n6QlO9UlRo7uE58Yx9uj
         B8HDvEboLuj9p7W3T3VNRHy/1QK8ydVnsVbeIRwsF9LihtAlPV8QtLA36xJThwNKntFz
         CUKYexgVe0LTBtSa0I1P6UUPtzSTDAVObHYrA0sJdpOR1uZCdVJX5hX2EeMohY0byQVy
         SHaWVcR+8LVEmTfKjwHR1fU0X4bPlBwAjzH9xYmyvAhz88IfhOvJRZ/+9CnkNwvZ/Yyf
         jxxBcHVtO8ny+lORgIze2vSMKiLo2t0A2l8PQ4s0esdJKntQ0F72G4YVfhz1Hvo05qBz
         nWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931108; x=1733535908;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4UBAF6UjiLUGwxXJXXuJ3ndE0M3ekgfexe+qBug5T/M=;
        b=KKHBvckQ8SGa3f7bDIuJHUON+HjCk64lVBrH1yP6XLRy0Kso0wftjxYzX8/KMaACdu
         om1OsGBMmmjlg22QuSRR5E/SuGm8pVHgImZyaTHOpA2HbvT1nr3b+he7phWBklGTj9CA
         GvXdutH8kmFqeq3HCakmrAQSVCK3eBHGPtflZOhsFJ+JBpA7WQsW+iqn0qAxyk9+15ma
         eLzT0TQI2WhuzCqGXwSGeH0wPBez4HmdlmsHcTCp1NeGcyAmMSOKpyAy6XnAOo3/OGYp
         9rMS0ytPEHVY5avxBuM7Yws7E8Od3l6P/W/zsqHvkUIqNvsGpx1xoIMMOifzPLzB5Vrb
         oP7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWDCprGG5jMW8UGu3Twf2f56lrp3a50lL3gUSUktbCyMx+0+6bcxfjcMdg8vlufi7ymI2WYYqxujhnG@vger.kernel.org
X-Gm-Message-State: AOJu0YzvYM2OuJslV4en5tthbsmnkYi/UFlqPU7h7H6AtwHtkkd7Nhdu
	4UckpN2TuYCMx5lalhIP5/M8KzTXfuupQVK8T6Zh3Wl2xTNBByfXt+xRhdGl2OU=
X-Gm-Gg: ASbGncthS0IOuLTdvTq0Et2+92e4bQQ95VB8uUKJBliPvwISpHUqdWtuSZWJnANKUgU
	eJW0+HBtREarz7q8rqlRoqekASe7huCqwmKZvzvP7YFjbkubwgOH7Ulja9m7sTsWxpPqkBPZvLU
	wbrxABKvHVf2Iz8018ytQF8PIlagvOCy7tb76xgNIuEASUM/QUmJ8tAbHoTn32AXPRvcEh/gNSa
	3A6hkPfDP0/vuqSHGw4bxGOtSJtNFBWw0FRUdismAyV1PXeCACeElIN0w==
X-Google-Smtp-Source: AGHT+IHgUV2H0V3qveYW9vM8m6Sz16PeQG5OJ2ycdGd0M9ucuWVyHr7bFYH1ZtfUYfvoa/EM3dp0ow==
X-Received: by 2002:a05:6512:b97:b0:53d:e8ed:2172 with SMTP id 2adb3069b0e04-53df00d71cfmr8286841e87.14.1732931108050;
        Fri, 29 Nov 2024 17:45:08 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.45.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:45:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:29 +0200
Subject: [PATCH v2 17/31] arm64: dts: qcom: sm8650: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-17-b9a35858657e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1965;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=k6VUs1ScFCdCh+SFXZEEGEWQ1wMPimPue9P3iT/F5+E=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm31N53BVunJtGm69GZ1EaEc658s6CQsIs60X
 wwwFfQMxH6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt9QAKCRCLPIo+Aiko
 1YppB/9BnIg7VHJpJlZtPXIQoFZHFrdmnWqOYrVY879AQBFUvrYFyCQp7XLARzoNb+Kt8q5W8Nm
 bHInu6YNUUYDtpWSA5QxCVppNwXctb7uvWHJf1qJpqTAHlxniqxwAaZd//MyPiPlqtQO4l3SRi6
 CAy9kF4JoW0fixpR61Yh1MbkZgRBxAZ6A5ok/FwetIis8PN5ES3xlx0Rw0+MVClNLM3HTPOhY2m
 n/p+w43OPCvKZYlu/5GczV5JSF14FEi5NnQBlOJL6PHoZLZdwnGgR50E6+nBAgP68ihJxh+cGPg
 /Yqi77HjFsFcSX3aaBv8+3lH8FITTojvJY12v0iuA6ifLNrC
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SM8650 platform uses PMK8550 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: 6fbdb3c1fac7 ("arm64: dts: qcom: sm8650: add initial SM8650 MTP dts")
Fixes: a834911d50c1 ("arm64: dts: qcom: sm8650: add initial SM8650 QRD dts")
Fixes: 01061441029e ("arm64: dts: qcom: sm8650: add support for the SM8650-HDK board")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 2 +-
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts | 2 +-
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index f00bdff4280af22f6f8b23e33238f53c602bc169..d0912735b54e5090f9f213c2c9341e03effbbbff 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -1113,7 +1113,7 @@ &sdhc_2 {
 };
 
 &sleep_clk {
-	clock-frequency = <32000>;
+	clock-frequency = <32764>;
 };
 
 &swr0 {
diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index 0db2cb03f252d19a1f8b171a562a8e06290c8a21..76ef43c10f77d8329ccf0a05c9d590a46372315f 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -730,7 +730,7 @@ &sdhc_2 {
 };
 
 &sleep_clk {
-	clock-frequency = <32000>;
+	clock-frequency = <32764>;
 };
 
 &swr0 {
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index c5e8c3c2df91a49476f49832c0bd6418f4dfae3d..71033fba21b56bc63620dca3e453c14191739675 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -1041,7 +1041,7 @@ &remoteproc_mpss {
 };
 
 &sleep_clk {
-	clock-frequency = <32000>;
+	clock-frequency = <32764>;
 };
 
 &spi4 {

-- 
2.39.5


