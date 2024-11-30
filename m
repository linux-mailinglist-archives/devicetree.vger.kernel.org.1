Return-Path: <devicetree+bounces-125670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 864459DEE37
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:48:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 468DB281BAD
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54F291A0BEC;
	Sat, 30 Nov 2024 01:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kix3jDC4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8531919F43A
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931113; cv=none; b=shAvU6lbgpwHNuvkEKouUV7UGDIwn2yudu0XnJ1HqWBM1xCCNokiKlLFa9qXB+5IabR8AhShGaaU0mQS4757YKm8sC60VZEeIACVG4ucKJNTARBy6cB5t2QXf9lkSF7/s6En1zmj7gtqYCgGqa8KpomvqP4W3PHWFuWgmti55G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931113; c=relaxed/simple;
	bh=ZvLjLTixMdBQjoPe24nZu6YTlSKcs32JUm86ti1qKNg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d4UKHpfTSkHQmkGPbn5dOHKaCaLkjKB7kdSLCudWU+Cwc9xIIt1X4Cs5tdC5PPBZ6mhHH+g/h152LExM6/rAPrgDTlEQ4H5p1LkFtRzT9xhlsF7K/vUJW4zv1xUKYr6gL+bfFTJOGA/u7D0VZK6dc4o7wrFfvMWs0P+kfE/uKJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kix3jDC4; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ffdd9fc913so26124281fa.3
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:45:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931110; x=1733535910; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eVCmmUf8PBHlUaaL3C3W4VRmmCJtG9CpcUfpN+vwcLE=;
        b=kix3jDC4GoFZRjw9PwBhsBw/lDt25sOs2Stw+leUFx5MlqihIG3jl2JNJz/tNwUK0I
         G98tmRm9mc1DKyevFiUpw2wcZf8J3WGOodC0KcetswNnxcRaFAgU/CWXeg3BPuwp532W
         q187BXjsKrACRDFyD7bnDA2QncmwTxAw+aobUS9fXeGtpD8LUq/x8mLL+T1oSEQ8Os52
         sIfCIKPPMWGCD6pPZTNo3+nyMKu8w7kAPIiyzvkLj6uwYth3sEQjoKqRcNM6yKYiY1i9
         lmj4FxFxZ9QFO4gF+kYNRf9Zb1UFiTa2jtiB2MFxnSi0AxWJiMidKgwr6AWDWjGsERgP
         dRgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931110; x=1733535910;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eVCmmUf8PBHlUaaL3C3W4VRmmCJtG9CpcUfpN+vwcLE=;
        b=D7zzUr3hkLwFqrHVL7OKDdSP5eODrxcs/2NvLWx24uDxr3ufoEw+yYuz6Pjz0iFJPc
         m/uu4DvNEbolOrbr5c7Lnbxuc/6XkFN3aqO0EM6AccuNBpJ7tr7AjK8Kgz7bXD9Tyxny
         D+Dd9t1o+oKRYJYIZwbMCpffW49nrbed8wDqYnQT9o3GmZGTFjVTm1AXGzmwuL+VMLIr
         rzxNglqP9/7FJEi+cpwMvrx67ersNLZG1leEMoqiIEHl25NBbCMbNwa77UfwTbX3ncGz
         XAOY0IKOG7X2g2dmxApAs9/iVGE9jciRRYNywsi2f7QAUW62LzQxurcooqD1cxxT9Zam
         Dl0w==
X-Forwarded-Encrypted: i=1; AJvYcCX/c3kk+eQEcRtWhPIAaJnJmeSfkg0P/zsoo6sjEddGZrpBKv62dF4qTy5dixNrvHd6WOZvFyRwgtmf@vger.kernel.org
X-Gm-Message-State: AOJu0YyL8mNW/iVg5Btea5UGT9m8xTgrWQUPzLjP7Jxx+IS/RYWB/iBl
	94WJwT76beVC6X967VOa9/PhePxxDH0NL/tAgAnc4ABmZtPoGCvygfzHB4QoDKQ=
X-Gm-Gg: ASbGncvTBT9eCYTtub7+0+1IAyWB51OdLLMKWJF/j3bkVU4NxocHJiKgx0LXdIkj3ZT
	dv+ZzvLTVCQuT+scpmhxxyZY7uIKRGFvePSVr2Yj8LQBiehSHiBwZ9x1VG0k/xlHrPisIL78Y3u
	c8JlehH9DkxJab4HdJYvo3xjAy9HwLRwz1ADVEFVSJfuMbo0psaYa41ch6+CEE+eHavBddGfjTF
	AC1eq/4bIbrQ/T3CmxHrheRcHtK0r1ilbvZgUDNLj39edwW6hLJzIkC5g==
X-Google-Smtp-Source: AGHT+IFesfHPpMCbFCxXsi/n57S7VZGvEbuXC2Xzw8DQX8eNlh5DmPWSv8WYGrXzVaSrbpL1Zf+8Lg==
X-Received: by 2002:a05:6512:b15:b0:53d:edba:d3fd with SMTP id 2adb3069b0e04-53df00d9ce9mr8503662e87.29.1732931109708;
        Fri, 29 Nov 2024 17:45:09 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.45.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:45:08 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:30 +0200
Subject: [PATCH v2 18/31] arm64: dts: qcom: x1e80100: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-18-b9a35858657e@linaro.org>
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
 bh=ZvLjLTixMdBQjoPe24nZu6YTlSKcs32JUm86ti1qKNg=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ7pX7tdeIW0JHfv00sobK/M55wbeeu6Y6GF9Zlvycb+9v
 /sV9bw7GY1YGBi5GGTFFFl8ClqmxmxKDvuwY2o9zCBWJpApDFycAjCRoofs39QiZTY78QbWcGx8
 c5vzXYrg5GrJtcnrFJQjA5fEtf4MnyWXPqXM6VTHh2CGfR5GslsXBTtUsT0Q/X7fbCN7TlzaifQ
 VksICe9m5VnFH1B4/FbfHYFF+a/PNA68nq2065Syo3Rz+Uk+t6MWvQ4l5lWczQkVm7ldgemNeee
 908O7Lmq/Ej0cmxR7QEpuzflf6V/0ga872+H3/1+3U6Np3QTRpz48DZUmeyq/sax1lq35kfVO/G
 axm8LV2uqxXUc5r89m6Z7JVlsTe/Fd9O/gn6wqBztlKRd5cV26EZfm23fhhLriJ20nJ9sVC0c7g
 jhcOdrefC9wJskpLkLld8l/uclnNdc/18i9OnRdcGg4A
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
index c18b99765c25c901b3d0a3fbaddc320c0a8c1716..8f3c4c6a1fbc57412258be820e480c1bff7b520a 100644
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


