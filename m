Return-Path: <devicetree+bounces-125660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F1F9DEE1B
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 576C8280D96
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59FFD155CBF;
	Sat, 30 Nov 2024 01:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QvhQx38h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CF0155336
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931091; cv=none; b=B1ROS+Bnwke/GO2iRZV0VX1Hei7u/WhNeZV59RyLGyk6+FqYN/khnzHMGKFxiv5sLglcEkmVtx6nH4Jx/j55W/Cr88+tEpQjtQFNkLV7llBw7K8balF2fla9nIevA+AgzNGKSDgG16SE0/wLmYi7+YhLQ8EJYMTSobljPp2iBQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931091; c=relaxed/simple;
	bh=cwHGT8dW2fufdVjeg8a7nAT+ERCmV5CuNqJS2eXbLFY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bgdYI3pi9YgfgiPM3QiHI3nY1tzkb7ha1RHzzHVUtZySEPizWH1n/i5d5rhNx7nmVsKf5HGi1jnI2e05+8bRFaqp/xmWWuI0YmEpA2nyR3s0eDOqEamZWXOtILS1PRtBzLFQ6ncNQN0PpmEgvTvgzm+bRYWQRHPR84bMyO+a8G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QvhQx38h; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53ddb99e9dcso2466662e87.3
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931086; x=1733535886; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pUBAhw6SG3dsXPAFEzT6mizjETu8TuHeYIqS7qX2o8o=;
        b=QvhQx38hQZi8XKLRmJi6P1rM4TAkRkIZAFAy4yZnv3+OUr2rbdSfuCRV3Vwh6/2LrA
         kyBnVNmX0hqibKFLiCSZMZhvBckiUxgYTvlGymvi3vyxOv3Oj4JYsfJjZrpbIytu6Q47
         YZU7+JplFt85KgETQY4NnhuAyOcM02NIC/GYFb8jm4MY4BeZJmxJRSM6cRs7C8XNlHSg
         +eaN/y/Intyxxtl4gDcZZbHTD2cd9dcCUBhwEvSp4jS+sEm8MvIVA5LVLxQOI5uPZEe9
         Y+pn5lYzOq8KAWk+EbGC9MyTz2rkqKaGF7cDnci6tPo/vuEz4pF+Srph/zN1kZ9w7uwK
         akuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931086; x=1733535886;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pUBAhw6SG3dsXPAFEzT6mizjETu8TuHeYIqS7qX2o8o=;
        b=vPZjv9QuquqenPzDgv6PI6YOUxUjeIE9GN7BDR02wVPx8p9MbPPj8jFLEkmlnYaoBh
         B5/gtSq9Je2VjMPX6FAeeL4o6D0J2FupY/Y+5s0B8SAE2MG1KCeuC8B9VI0vWvmC8apF
         oBGuRai5NQXCD3NhjPmoD2J/T8Aodpb4UdTdR+mnasDCPZgy/QJ8Y9Xwt03PoLjfOhuV
         MszqDW+gljZkAeBSK5zYBkX1bpk/35bSRC2qPTj6D4jHPea1x7s7GYws8hdJ1QGqsqEb
         TgwRclmGTdFrF4IJ/zfwPlLOCJCaumMh6kOxaBsm3kaWSlhFr51gg2BRqFKZh9NU/7PK
         gXtg==
X-Forwarded-Encrypted: i=1; AJvYcCXWDVSRh1ZlRP3Ao2jzxVhSXNLUb6SEm42xDRhs88e+hRbKeVPDQV0z4/I0CVsVJvzfu4hBTmNV9zQo@vger.kernel.org
X-Gm-Message-State: AOJu0YwmimQWiwb/GW7ftPbmg3rs5zbd2AmSqrEC7Ppn1TSl6KV+Tv+i
	KXOV21U+ijnMs2zRWd3GBUCY5fZcNJT5AcozZJfRAMiH8vH4Xm2AffbXM9I/zfk8rRLmYvmiduW
	7
X-Gm-Gg: ASbGncuNL4OPqtrl1F5AEx86hnVh2VoeewMK03XqW1c2puZhZU63KNFbHqOEcfb6144
	1P/nafcuPyz3RcCuwnpqFEpAv+KXxvs/m8GzU8XRcTF3hpbtaEv+ddFStqroVlSfdIZ+t8zSywY
	z7f0KRWnalfWX3odV/3nxY/rcw5XRbajpWtyeJidfehNVUU9CGr+YYYb5+HDiGrd490dw81bMsm
	g6xylCeZ0hvsTpY3/WdC9fy68DasjU8fXFEFtKKaZ7yff856jdjGT3lgg==
X-Google-Smtp-Source: AGHT+IEPi+X71Xr5ydlpsLZUQnmiaX1oplH8lKawDP7TUOsj75l8a1wW89AwaS9jiffqrAY1bOLP7Q==
X-Received: by 2002:a05:6512:2203:b0:53d:e43c:9c64 with SMTP id 2adb3069b0e04-53df00de2b2mr8648482e87.30.1732931086317;
        Fri, 29 Nov 2024 17:44:46 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:44:45 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:20 +0200
Subject: [PATCH v2 08/31] arm64: dts: qcom: sc7280: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-8-b9a35858657e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=918;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=cwHGT8dW2fufdVjeg8a7nAT+ERCmV5CuNqJS2eXbLFY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm30t8SRmKOAuhUMuhgKfV7LHUvg4Wstu57so
 qZdzx/edM6JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt9AAKCRCLPIo+Aiko
 1aLuB/sECWiL2m2/MeQbPYtq6Q21sh6UP8on1KMocDd5jR4v6VgOSCOz7vTlB4l5sLpMYAXD5gp
 Gr8eB6kG/oGpdemcwWSVhmNvmySIxn1Ad0JMVx+PtXf9Pq7yCQhtYDzCQfbk2LuhW+c03cbq/5Y
 jrLwQC4RKjNyK9OS3grA3nKD5exT8t0y3XUKtIe2iuqnszRHuVxeXcQuAJcV1YHyyjP0EYYc4Q/
 CiW5lhaL0VYBdVZJNsiFgrgfsnsHE9vo9noJ1g9LC+Y5O6tLzsDB/WVwJIlunnAaHTaQZVuovop
 l6TzjBSgDM5Skn3CZZmyFNW5DkFut5i91qCIcxJizY5V0cx6
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SC7280 platform uses PMK8350 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: 7a1f4e7f740d ("arm64: dts: qcom: sc7280: Add basic dts/dtsi files for sc7280 soc")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 55db1c83ef5517f82504816baeee583695065225..d12e0a63fd087461a33622e8771422c8acfdbc25 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -83,7 +83,7 @@ xo_board: xo-board {
 
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 			#clock-cells = <0>;
 		};
 	};

-- 
2.39.5


