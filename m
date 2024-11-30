Return-Path: <devicetree+bounces-125676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EABF29DEE4A
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:49:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 40B51B220DF
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:49:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDC391AA790;
	Sat, 30 Nov 2024 01:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SWXTbiPL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50961AA1EC
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931128; cv=none; b=qeJebWW4ST2gGS+n3bctBiugIfnfTkm8WpI5vAb3H3Duh61tYttuvwWmoaEkzSsYEOPj6AaskHsHrlTypwtwKWMK1zsL5SUh9C9w9fF0W/9Su7G+SAbebauSYNLVy5zU3nvHigJW/aLzqGKL0teu9jv0Bh17YotX9w9vHCSSilc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931128; c=relaxed/simple;
	bh=9BlTJQGEp/lfIbHiyNcAr5VExq0CdgkR8slh3NFoJ2E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dTgNPb0N6ieMnl6xhAapppC9vp9uryvDX9rxd3UkwYeCeCn+zuy2OdYQYtTS1mVxqQTLFQpFxYqP/LfU0zOk0njkc5/10QtunJ1i0EPj6ICqpT83XdKfVpxYrX9sde+cvU6qLeLj8rHtWGcDX5wh0Z6YoKBMAgK3b6K1kZighKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SWXTbiPL; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2ffc76368c6so40426731fa.0
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931125; x=1733535925; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JquIV+d+J2wwE7A/mDwBElcK6qUTym7hmuHmlfaX3fk=;
        b=SWXTbiPL1qgt9VqzdfHZDsadK3NnZQXOZtWcZqw5kfqTyRoc9cyz1sWit9tZ30QaT8
         1ZhzA85wIE0ok8XenHh2X7yz6xxpCsX9sc3afaxEtrDFdYSzSyxiPn0M12PzMXfyNGXp
         lxxD89T8goNU5c7edoyLMFhgTrlKMbk/T/49pEWMGyxHyx63Q4vqeXP5zHArphjUCKuy
         Hf5bS/qtEgWZyBrI2adj5nGnz0/Z6AJsAYo8yDEZAJnaI72du71iiW3S2ud3Wmnb9hJB
         5fsmrai4mtIjHPF3hahkvNxCR7NBP8fZIohVLAkoczkFHnsAXjb6l1agXrr7LCahjtRE
         64Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931125; x=1733535925;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JquIV+d+J2wwE7A/mDwBElcK6qUTym7hmuHmlfaX3fk=;
        b=s/SlQuC+fDB9s/x9naVBzbpJQ/GZCCvcyAqdC9Aw+J7ddtfR1EPgdora2sCxqaVF02
         2dGjN5qELvZnShUeml+rPhXuK+QWbEzjENRZFmpVFRFro1y0P/xBoAPecDod9rZu8w7V
         UCtvgWD/PmbdPInzQqz7RTT00N99GgXrUDi12PCSLdkJC7Hbr86BkK41IqtRREw7H+ra
         MLTB8EF7RVk6kGPyJj8XTYUHvwR9hs6lo3xIqEBvCR7N7s0YbeZUF6wcEMIllWrrZcti
         dxAsu0yz7xkKqVrkWxUDO9CfEv3TyPRt5QugZoPsbexIFZvMLe9l9p/BcDSOwqULqjsc
         3k4w==
X-Forwarded-Encrypted: i=1; AJvYcCWossZhAWz883IutU/ZyGDliFecEYMkqE7DWs+mDVHCekjbtNwIgU9gAGSCLRfXEX6fkd+etUsO7oT0@vger.kernel.org
X-Gm-Message-State: AOJu0YyyT0qQhwr7vezQGyOFzvxCXN9ezc90dJgCI+Pp3lCBSC16jbPP
	mV/fBA2kcHH+S0jkIP/kRA4zCLXBksL/77DBw637QDZqQuD499movPSxJxcTqR8=
X-Gm-Gg: ASbGncvygHONtbkeinU5B6cadY+YF6UricsjzRSpaun2u7QegXVsE49S4WsTTzhERvV
	+wSkmeFNBkn6WQlBtSpM4oEVBFhNkslQ5Yh6VXdg/79gr+lyKQvxzN7c9EK5kU0e6UWR8ma5W33
	dLGgUFpJJhgd19+PrfujolbGzNlF2gTsZPX9jenJS2I9oaHQ1FXN7FreCjRrTLev6g/S5jNKxAL
	fywAcWKBIPzWfN88nMH/SaiewuDxSTybc/iEQ+rrhREjPgFhfkNLuaTlQ==
X-Google-Smtp-Source: AGHT+IHEO9ESUfBAg7amCnrSAzcVfw45dkLaVd1E3YumSxdIWgBg3Gz1wMkfFnlpdDLnQhItf6G4eg==
X-Received: by 2002:a05:6512:1283:b0:53d:d246:5aca with SMTP id 2adb3069b0e04-53df00d1080mr13368590e87.24.1732931125020;
        Fri, 29 Nov 2024 17:45:25 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:45:23 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:36 +0200
Subject: [PATCH v2 24/31] arm64: dts: qcom: qcm2290: move board clocks to
 qcm2290.dtsi file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-24-b9a35858657e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1531;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=9BlTJQGEp/lfIbHiyNcAr5VExq0CdgkR8slh3NFoJ2E=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ7pX7rdGE+FHyqu4LlauadO9y2O6JXF3mFaupUK7UCBb+
 nyTFyqdjMYsDIxcDLJiiiw+BS1TYzYlh33YMbUeZhArE8gUBi5OAZiIsDUHQ0Okoc/dg7Xtyl0v
 7PPYT9yb3FV06LbJzJXXXifrsS0xzBT5zHwyrDD5fclLGbdL3CmuJ/xMmU/yXPf127ghR4Pnh07
 +3uV8Kbsc9OVW3fENCW+XnPbk4HH2jMITkw1uFG+8x5i79vClACG+d/d+L5Phz9PzUzu7f+5V3e
 t+re4KL5K8G59MXJmw74ro6kTp2ZrzQppYDXfl6H7iYbr+6XhFtczP1p0FXSocRo3rQl0PFf85J
 HPsR6iYBr8Ou9+rh9sePfgdorWjWdM8KDL4bOjMt4+81ikuS75gedtD/IJfoGB0QL0Ti5bwyydf
 7yRc0ZF0UrMLYox40dPGuL5L6WrPs33ejCsOTTV6nLkPAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

QCM2290 is one of the platforms where board-level clocks (XO, sleep)
definitions are split between the SoC dtsi file and the board file.
This is not optimal, as the clocks are a part of the SoC + PMICs design.
Frequencies are common for the whole set of devices using the same SoC.
Remove the split and move frequencies to the SoC DTSI file.

Suggested-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi    | 1 +
 arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 4 ----
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f0746123e594d5ce5cc314c956eaca11556a9211..c653b178f5034d2cb19868b241a4c36459028d57 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -29,6 +29,7 @@ clocks {
 		xo_board: xo-board {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
+			clock-frequency = <38400000>;
 		};
 
 		sleep_clk: sleep-clk {
diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
index 7a789b41c2f1887f0c41ae24da2e2fe8915ab13c..2030e59f8fa162fdd8b66d31dce00bb44aabde5e 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
@@ -624,7 +624,3 @@ &wifi {
 	firmware-name = "qcm2290";
 	status = "okay";
 };
-
-&xo_board {
-	clock-frequency = <38400000>;
-};

-- 
2.39.5


