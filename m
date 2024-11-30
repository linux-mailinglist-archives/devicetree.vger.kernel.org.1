Return-Path: <devicetree+bounces-125673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D87BE9DEE41
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:49:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F534B237FE
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:49:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2057F139579;
	Sat, 30 Nov 2024 01:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y1LXC5W4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BACB1A725C
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:45:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931121; cv=none; b=mNUwLFlg5LnB6us+vug/LuP1pkNcIoc5KaYE/CQjqyn81dSl9U6AEMroF9BbH/pwCcSMNMwNItd+nqVScYNyF9/bot3DCKXCCPlPb55w27ZJ/t0BZ5vSqtfGjkeY7abqG6fapYaDqBwvvcu/f9DsKOCgU+gzgZKn5KCwmyI+ewA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931121; c=relaxed/simple;
	bh=dkeL8p4HqSsIjxDugM32Q10QGE/4T67RadiEMJJD0gI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=vE0iiUIgnYV3reWb2PofdLaUAQP008vQBsGx11yLGUS4rXKjTalIYCjWZ7h017kVx8VwX5exZQZ0CBQQf5zMNnIrvdzhxH6yqkB4DxWcH5oRk+GIyiVHM3T7U73v8wcRCQKuzV1BWVU05aNpwNBQJcwtjVWDvlizf4QfzYD5cNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y1LXC5W4; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53dd668c5easo2530385e87.1
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931117; x=1733535917; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XGdJvJMseRnvPzCSR0xijdS83gOrTA2HdjB32n+Yub4=;
        b=y1LXC5W443W/dv046ZHKXbBr/rbbRnKnGxah3QplCTpZ59gydQC6xR3gtqeu0fuDpm
         mAGL52VWzblnY0ok1DTeHYyebWjXH9K3oCq5hMSQcnE+WsqltrBsc72X963DTv64iTFm
         gnu6K0BeegX8yBWUTV88IH+BkGxAOtY4TPu4ANXlgCa1wBLrqhDNfW8WzwpEKsTgGi2w
         BfEL6sorm+aCTDPHIYy2hO9u29hdaUfPPhSwKmJfHs+TYOWgca2WfV4AXyIVivyK1CHx
         K9Z5r9fAfN3OjxCxGSmRXwfUVvUrFmEX9ZQlF5d3UAte6gEti8tMPaLuijcH+S3ulfvV
         7/eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931117; x=1733535917;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XGdJvJMseRnvPzCSR0xijdS83gOrTA2HdjB32n+Yub4=;
        b=KP1gmrG+PJ+hLOrpwvnJzNGzy/q+GW3F1Ih6xOMRl9Aoro9rJ0xLCbGkdw9jCW2nD+
         y8pYj41x5BVrTfLhasU87O55Uzcf8CSuz+W8CFrxH3BwCagB4lW1Lcw/LRfZJ2pASoUS
         tIK3/HVCPlOWLOsj2edeEjnMUBGNkvsMCVwy8sAJha6FR6lZSU/FvxSrWEjp8GCHHrZz
         4KRg8GSeJZAGIUEw7BDOYHzw67+qfT8JV2AfyIVrUmgl41dJlvD/cFUtYfC/OVPoy7G8
         sEUsuO9ObQ3jh/BwSpOFXveCfb2/AJ1hQCQNbViFaCTynSJPQo1tGC8PL6sCwpdERwQs
         Nqew==
X-Forwarded-Encrypted: i=1; AJvYcCX2xARo0E1MXidz/8sHJ4xjnT2hAqOtw6mwS11WKcHI2Yt67m4JeLgo2UJAqfJ54ekR/1dhBE13eC3e@vger.kernel.org
X-Gm-Message-State: AOJu0YwEPjYMigRE+/LssNtPY2EgNgxWqYvGTmMygKI1mGg+xIM3nlwJ
	OanJj07GZh77uUAo1i9AmNdEng6wCuxA1X02Om/dVD8he1uXnbcqJeOp1Bdp+4k=
X-Gm-Gg: ASbGncs4RSEwK6afnpUclhEPwnDaWsG1QeYJA0roWcIIatfQh307XfD+6BRJBNAr+gG
	Sfva4mvvVVZml8+8WgXsmyQqUSqIWanSiyj2I8xzyWQwbne/+ByRlkzkAk2J6/SFsAIEggMRXMs
	bCLIrdM1A+SP697F8F3704jOHWVb3Urn4D9ktt/BIy8L/Tvtp/+JidXLnFe8fMh4V1H38Jkj4MN
	0tUGG5UdWUv9+6MAQMhE1OQ4sX0oHBPi4/rF/nE+W+4jT8skyx63ilkIQ==
X-Google-Smtp-Source: AGHT+IF7n8cNmi8xhY+pXRXykzFNNknTCu8fREH9pgpXbM7CyHY+hZCaNQnAD3oebkFEc6iH3MGoOA==
X-Received: by 2002:a05:6512:3b27:b0:53d:f042:c66c with SMTP id 2adb3069b0e04-53df50795b2mr2997672e87.23.1732931117425;
        Fri, 29 Nov 2024 17:45:17 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:45:16 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:33 +0200
Subject: [PATCH v2 21/31] arm64: dts: qcom: ipq5332: move board clocks to
 ipq5332.dtsi file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-21-b9a35858657e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1803;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=dkeL8p4HqSsIjxDugM32Q10QGE/4T67RadiEMJJD0gI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm32X/ox1dWMNmNpSwGRsBnocHf/cdBjMzQVw
 7vsl7U7+KOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt9gAKCRCLPIo+Aiko
 1d7hB/9+/oXyifnNs5CTfv485a6zBmhHI3Ptc77Y4K8SMCjRhkvmwqRbkPsUVqtVSWReNxdLTY3
 9LxoWLzJ9M6KrgY81QkFxwps8zZHSVKlOUTCrP3YI2BNOwbZ6lxLEsv3vxGsRGngTEGd3+oebk6
 ySHLdyBQ8ms6pJ4r8vIGjYgtbq0+xi7xNCAU5joyQKlSBWmDX8OFSkb4BNLEaCkcXgw9qMjzsNd
 62ZdknBL0xgtKGJ2ZdX47N/EbkOV876Jxvs6IItK3Vt1s6fnmvoTb6JgvT80AY+Pi1FNV7mXNx4
 C0B8Q0+vwZcUvjUqvOtRXPm5eIF8d+0a6g4DfBn/iEf4OmHT
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

IPQ5332 is one of the platforms where board-level clocks (XO, sleep)
definitions are split between the SoC dtsi file and the board file.
This is not optimal, as the clocks are a part of the SoC + PMICs design.
Frequencies are common for the whole set of devices using the same SoC.
Remove the split and move frequencies to the SoC DTSI file.

Suggested-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi | 8 --------
 arch/arm64/boot/dts/qcom/ipq5332.dtsi            | 2 ++
 2 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
index b37ae7749083f43f482231c1de9f99ac28ea2b66..efe4ed4a5d9fabad1137fc7211c95ef38e69c0be 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332-rdp-common.dtsi
@@ -55,14 +55,6 @@ &blsp1_uart0 {
 	status = "okay";
 };
 
-&sleep_clk {
-	clock-frequency = <32000>;
-};
-
-&xo_board {
-	clock-frequency = <24000000>;
-};
-
 /* PINCTRL */
 &tlmm {
 	gpio_keys_default: gpio-keys-default-state {
diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index d3c3e215a15cfc3998f8e30656828a46b6991898..29feb27df5d4314bb2d2eac50ab320e173e8c7f9 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -19,11 +19,13 @@ clocks {
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
+			clock-frequency = <32000>;
 		};
 
 		xo_board: xo-board-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
+			clock-frequency = <24000000>;
 		};
 	};
 

-- 
2.39.5


