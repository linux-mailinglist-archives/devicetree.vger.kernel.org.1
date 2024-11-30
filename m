Return-Path: <devicetree+bounces-125679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 135529DEE53
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:50:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78C0BB22B93
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74B9870831;
	Sat, 30 Nov 2024 01:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BMnZOIED"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE5B1AB537
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931135; cv=none; b=CP9CkX8ekHAlKXIWLuztHE4nGAPIvXvzlL2rWc29dJlopEf2K7S2LbuPRrO562Tpc6GFqi7p5BF4/AZ0c1hP8uHCAf/nzEazKvtrq0dC7c+sGJHOEVlLCudjQj9Sasur3vOq7Wd2WSfcQN10jXVsbvGzA71yZjZHkzf2mFhpak4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931135; c=relaxed/simple;
	bh=FDmwUhTUBNDRmxiOJAuSVnW1s/GAN1vMfT0L5XGuvZ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qz7/RtPJjtYuMcORKv9OeRYsD2VRTRIzJjzLvnDiIiz/VB8Aqubk+bIHLjUvqZmUZCG+qTDBbAH7doKHx4uSoW9DLWBcqR+Z4tm5iVHdhuLykSHNKP68bZzNAwt4TEXc8QvJgKepMO1mli7zkCZp50iKNIVaVUDvVzNapDpfX/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BMnZOIED; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53df119675dso2965980e87.0
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931132; x=1733535932; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Eufja9sWCtUM98Rvs+DNij6xoEwxDceQpKUgvS2NNM=;
        b=BMnZOIEDFsEU8526furuRAdZj64aVEYktX8tmgrQgIx3LH+RrPtSRItb0iQWRgfiEU
         7eZr5LMPcB7ntR/lZ1MIVqmEDVoeAsiFTThv2vhTJbyqOY/M0i20u8j97Shz1xXnSWWB
         Wc2esdPPzBjumxZlST8+WT4j7Fgux/JyyGy6lyE8Qc56gbuukt7POhAYzEjppy7L0xsW
         YJ4ncgWqG2CwWJFtpvulKiUKJnGvWFj7p/Lh4T5MV/RunIfGzUhN4BVC0eJ6tZll+d9y
         2tUbolGo+B90RoRnD7t+RItmtDIsE2v9oBfOf6DWo5nDCvtfwnv1BlutE8hfzvPoUa/L
         USbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931132; x=1733535932;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Eufja9sWCtUM98Rvs+DNij6xoEwxDceQpKUgvS2NNM=;
        b=sb6yO/AKSzuGkxfuCKGp5U+yfqa4zbyTEUW5N3eZEGmAYanEdzCpgQN01+osYxEx2X
         wswQHNHSaKcuxSw7xk3iURL9pDmGSRoh+IcaFmQy6MrTjce9uMqejmmcVr8HEW76hMzY
         kqnrma9ULohczSxDW+bx7Xp+8eqGqRIcR2Q5qHreyxwoMO3ugBMx3HoXSsSOkhza+zSh
         o9U28+e8pnDSMgM0hSBz3rRsEy2/TmEVCRGxfH5qRViyUvdViAwsgrt31zEeSi9hUi0k
         91eQlyPQmEsKR2L65zfdnZbrGO414AXBhan8d2Yt5eOuGoUV83VzNDPMvTKRJKGui8lU
         ajvA==
X-Forwarded-Encrypted: i=1; AJvYcCUMrPBwii9xpPWVVICl+M4F2G5Cvm2QXZIc/b2Qka2cif0ZqCV5Rnl9zcCOQFa3N8ad5RtMKu3I/zue@vger.kernel.org
X-Gm-Message-State: AOJu0YxEuSo27qM2+OTq2ffnCvxQvjGizGySAPNHqWg3MUbIE0zdsjYm
	zDLYlJd3kcVpETgU0iq/smArrLbmcJ8vZ7+gDWnLu9YMfxTse0YtJ5+9RF13GqI=
X-Gm-Gg: ASbGncvOMsFEiAzif6RScyUyzyM5z9y7p2Ka3rxzCe4CNfn2DurYOicA1xfbPn+Bick
	RUZd0nQUj9w4NaTbO7KJT92SDSNMNCv+fP1h0R2a1Q6lWnJE34yj59O10KFc9Mhq9Xdzu37Qxqr
	lolW97iFJ7VOEEf0sF5L9B/SNaiTcdgsMpEXNoLmpC637cKi7fU5Rtz4XjQ44pIxvnoYUKb4jvO
	c1GYJlfko3BuImtwB5BSFZVIPWRXpoXjRnye9K0RgQFXfTU2aq0u4bjBQ==
X-Google-Smtp-Source: AGHT+IHaJeND6mN7GEx9m5sQXcVEyy9vZ8S4g4Uvw9M0IPgbX5lv+rz5I8tVKCnTbKubtNKDourcbA==
X-Received: by 2002:ac2:51cb:0:b0:53d:a8cd:4285 with SMTP id 2adb3069b0e04-53df010475fmr8842210e87.39.1732931131689;
        Fri, 29 Nov 2024 17:45:31 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:45:30 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:39 +0200
Subject: [PATCH v2 27/31] arm64: dts: qcom: sm6375: move board clocks to
 sm6375.dtsi file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-27-b9a35858657e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1634;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=FDmwUhTUBNDRmxiOJAuSVnW1s/GAN1vMfT0L5XGuvZ4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm33qoP/xDATuHTcyE3CQ2jcK7EJrEoQdEkDp
 knU58FQjGmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt9wAKCRCLPIo+Aiko
 1WU9B/wOr2Q2QuYgJs+hRK0zMb2U7SgJ0aRUmUmFz43238xr1OboBMhr/DB8WlEas6KjGj+1pZp
 1hdO4FVFkDjaJ5ftmfaV2+EnVB/YjbPU7Qx22is1X4j97HydmeqAG+BIfHvi5WJPcJK6QrQtoJU
 EAva/mniBX+CH8RI13ViWD+VOGUV/EInfC/I2545BqJdAYQRx3M7ROD8kGMyk4dn8t0ZtBAT1VO
 2dnXkE040FIaaef/vRPmdb080Jyj+YSrnIVBB6uFBHcf6wYHqGZWMaS0ILrlketuDecwV+ELQnH
 +SyqnJvs0FWdftroWK47tam1miS+jB/zF0yTdF3mv5eF5cMG
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

SM6375 platform has main XO clock definition split between the SoC dtsi
file and the board file.
This is not optimal, as the clocks are a part of the SoC + PMICs design.
Frequencies are common for the whole set of devices using the same SoC.
Remove the split and move frequencies to the SoC DTSI file.

Suggested-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts | 4 ----
 arch/arm64/boot/dts/qcom/sm6375.dtsi                          | 1 +
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
index e04a3b8f81c556713550cd22feb2d0f282564baa..9840868fc7196316bbf9d2de9b8967ba73e541d9 100644
--- a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
+++ b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
@@ -454,7 +454,3 @@ &wifi {
 	vdd-3.3-ch1-supply = <&pm6125_l21>;
 	status = "okay";
 };
-
-&xo_board_clk {
-	clock-frequency = <19200000>;
-};
diff --git a/arch/arm64/boot/dts/qcom/sm6375.dtsi b/arch/arm64/boot/dts/qcom/sm6375.dtsi
index 7c929168ed0805e832b818516083d48968d3bbce..013666efbbe8b5b9c12f3d7dcab0b59de8a69c50 100644
--- a/arch/arm64/boot/dts/qcom/sm6375.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6375.dtsi
@@ -25,6 +25,7 @@ clocks {
 		xo_board_clk: xo-board-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
+			clock-frequency = <19200000>;
 		};
 
 		sleep_clk: sleep-clk {

-- 
2.39.5


