Return-Path: <devicetree+bounces-133802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F199FBC31
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF4251886807
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 841A21D7E47;
	Tue, 24 Dec 2024 10:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pURh8fM5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AA01D7985
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035450; cv=none; b=E6S0wP0sXWAAalf+jdNrlm4pduYRVZcHL7+6MBVeoL/LZualEKmYZ+v+kHme6ZhvCgieqhG7AG/P/YAVKnbKCHwWaGUkxmEbIPdynyPQ8jrjAOWgjlR5k/oJyqI5/CypawYHy3uKBIWWOERvdFGgi161vwugs7flYneX2TTa8yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035450; c=relaxed/simple;
	bh=YYLN/oY9BZAxpdyRliEHDR3RyIM74cdws5RTMVCcPsE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Md+tVdg1QZKug1UYcTFeXoXTM95xo7uh87yKznp5bqCI2Xrza+5Jfxhb8V/xGQiF/TH76+/nbCdBX1tlbTwj3pPN8G8b5qEH9zxd1cE8EoWVern7Vd4MC3zHnDz3MjxqiHQnVQIR03xmwayy3c3b3mSF025U+oFX4/1FPRJo0cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pURh8fM5; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53e389d8dc7so5244384e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035447; x=1735640247; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MTWn/nT9EEx5ji/oK3o3CEmYZEGrJrLG4ik4y/ciX9k=;
        b=pURh8fM5ZTfpxYbN8RaF6qtXWDmSMxPlIWsfifFuMX4Q8E4ACILSPjBlvEGnr3CAIe
         C0VlfzxvGgZFjziteXjF8Y6SZwW0w7G7g7Im5rF4OriftULjgKMKs956QdTZUO4VVtsN
         gWFmy/M2anBIctjT+D9t5OObSvW7fV2Dg+Pc0t9baRH5TW4U4sviq5BJ8g5HePFgcoh8
         QZcA/BJqCmC2Uuzt2d2XhYSxXNIpc4skewFrZAeasvXN9hY0iIMwEY/8KUfIIhXlDzU+
         PUawKBJzKf8ac0IEYzys0qow+8NrT9yKojgSPvDERxS1OhnSXFL2D4a7GPX6scUomfOu
         muIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035447; x=1735640247;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MTWn/nT9EEx5ji/oK3o3CEmYZEGrJrLG4ik4y/ciX9k=;
        b=nzsi/0Zd/zMbBOVH8Oa2g7Su3D0WovxnNa9CxWnwKvhaW1c/fw3Rx4Rrd2Gc/LX+qJ
         HrWHESOH2M3bkkNQr4muQtOpFWeOaq2Z8Jy5G5qOxMknu7rvozGwjN367O2yGj2NBTL0
         Qak4pOyUWNVqq4IoPAmakoezJK7v80UQALFdmnqHa9VtQcSOt2iMIPSdsp3LHZZEOrz4
         en5tvDD7HLnPWFZRs5weF9OsWPu12zynnaekpwbQD3XKAEm/m/o3A5lYEt7GDSZer2Gk
         iUjutS6NKnaMjUPBsEil1lOCNyQNgAV4Drnkr9MDjfCmcX9LLbRou3wFOvmSbT+Irk8c
         exyg==
X-Forwarded-Encrypted: i=1; AJvYcCUWhhUGG5LJ+YlfFg/dqUe8yJJuQZHtCCIle5THhS0ZRIv+tLAjArQVLNE6yzGlu863OVD6jyTLntqo@vger.kernel.org
X-Gm-Message-State: AOJu0YyVnsMMqTB4jydnAWrk9hr1IkwVmkrSIIUXsfKgD3SPADjiPcqC
	lbvJTvmbXXnCBYkcxej4EADV3y2n99lHIN/F428vFDQHZolIh4CKiBwQkHSvqWw=
X-Gm-Gg: ASbGncvmz0CMbFUvvdbkfVfrunwOghL2aB2Kz8fbDeFdXiDnKwJ97hOTTh1u7yfw48l
	BowH1bDDzZKhb2qHDtes8IrH2qn9miRJCmgCR32yGUiinPdi4cj3jzok32flW4fUgc+3fQOGV8R
	vT2iRZD8TlessfaaRDJYcvxaGCJcWFIp5bU4FvCmd9mV3yCz3LOOHLAsFXSzGibAxCkSdnIhRq1
	SwYLaVNQv0m9nCmFJzjXxihz73P9JuGI2cUZd0O4NZU/bXxL1c1dqE+5T+stj3U
X-Google-Smtp-Source: AGHT+IENpxaMu1LteO1S7WRTKy/B9eB/Ql+n7t/JIN0I58tBM0RGoZsU5vVyTHEKfFXpjjbjI1x6xA==
X-Received: by 2002:a05:6512:3352:b0:542:2972:4e1d with SMTP id 2adb3069b0e04-54229724e7fmr4263483e87.37.1735035446728;
        Tue, 24 Dec 2024 02:17:26 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:25 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:06 +0200
Subject: [PATCH v3 07/21] arm64: dts: qcom: sar2130p: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-7-e9b08fbeadd3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=916;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=YYLN/oY9BZAxpdyRliEHDR3RyIM74cdws5RTMVCcPsE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaoohcsqRBxIiSMe0tXJAOEA5JoOuex+QjvcVR
 8imu34jSl+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIQAKCRCLPIo+Aiko
 1SazB/4yKbXQEhC8CGTyOkeGZW7xU+iAW9vvGrQmYDkmLcLyLLEWT4+Mrf9uR5HXvasVNN4BMv8
 2zIGplebR0U4PX7DhTfpzObIOpmV9ijaExzMiy6NfPT5F22twcHJWXp/yBp5XrWwKqeXiFhu3f8
 dc34dd4lKojUx+0WlBtpCWb7+1REEDxZlyfgStTb5kc1Zux7k83EBwyzWrNEQxojWrlDq7Ftl7e
 hY+XVi2H5GrPay+czIJHCquc8v/JSLjp3yjj7gv7pV2J4/+02TD4kTY49nmt0Qv1gVA5rNiCqZO
 lFKq7i/SoQ7ZjRxVQs/RGtWKEr1WafulYWUlVvgyIDwXs4xh
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SAR2130P platform uses PM8150 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: be9115bfe5bf ("arm64: dts: qcom: sar2130p: add support for SAR2130P")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sar2130p.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sar2130p.dtsi b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
index 56f40e8ecae561d49331e51c57581d517dbc9b51..dd832e6816be85817fd1ecc853f8d4c800826bc4 100644
--- a/arch/arm64/boot/dts/qcom/sar2130p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sar2130p.dtsi
@@ -37,7 +37,7 @@ xo_board: xo-board {
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 		};
 	};
 

-- 
2.39.5


