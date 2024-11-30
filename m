Return-Path: <devicetree+bounces-125659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D98499DEE18
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:46:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 622EEB21EC9
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E3F1553A3;
	Sat, 30 Nov 2024 01:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UVFq0tvO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7322614AD38
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931088; cv=none; b=eCFwaQP5dZ112K5F1TKSoajhCxFR334Vr+xKpzjXKV4CWW3vFk8NCaHPucSOdjpCpwDyvPz++iCaGPeH6NxnpHNWMX2WppueGmLBwSLZepDxmcnySbX5ICchjpWBrsk9G0RCGVLkYobT0aJ8Cl/8aogbLfGAPYtSo7/aJfaBz40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931088; c=relaxed/simple;
	bh=YYLN/oY9BZAxpdyRliEHDR3RyIM74cdws5RTMVCcPsE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p6V4qPiFL291j+xQGshfuRSX7D1IYjdpkBTuFe28w+dmBcOJrubheb0Sg9EC0FmcMhvygM7uiaGcfO7WutH7daotldIJGZtjLP49rsQuho56Eey9SDrMOB06yxEjEkH+idIIDeLoHEPI/vOGNFIRZyRgugu86kV9ivtUSXc0E2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UVFq0tvO; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53de035ea13so2444036e87.0
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931084; x=1733535884; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MTWn/nT9EEx5ji/oK3o3CEmYZEGrJrLG4ik4y/ciX9k=;
        b=UVFq0tvOQdWxwjL9E8TyiLrf3i6Hnn8vv7W8gdWnQECdGRHphx5rBwnlPT+uKgBCTv
         KkYaV0fAD5tO4Glyr1YcF6HO8Bu97rrwviKV6IoksbOKLc7CLtbbqvBCooAkrZlVMNJw
         j69DWUPUi3/B7a6LrJenz1FAkTOfcy/3f5m4pfkbK19Zl81juXLazrV9LfgUB9u5yF8u
         eIYHQrZ4EJWalZ56KLFi8HJ61ICMSi+WnEUCwyHA6EgPKL7XPv8vXWZEPjEu3hlpZdBj
         iZskljEkK2a7tVHPDdQlOa+U37313USaLWt8bbo16C7XOqcCww1/foqGU/y8c31MuXVU
         ZU/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931084; x=1733535884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MTWn/nT9EEx5ji/oK3o3CEmYZEGrJrLG4ik4y/ciX9k=;
        b=mN6BCUkuQsy+6oCQ7D1JNp8s6mOSPRfx99fWYBNUciFKytzV7IbdDoPQ/J1XbWKq5H
         pKpQYsN7CaJxlKdJTrGjf4D72P6NMRzd6ab4LHl+8R2jWumxq9W7fw/U9sIOuM/UvHqt
         ZgySW61cZjRG6CO0ioBmo9rlYHvChgg58gURD+3nPUUi91lCUitVSgtr1kUj2svpxj2c
         KnloQal/AQ1bqQeCUilXcIfH5pIjFz6+eAGzcv5P1p34haVbPoMteDuLV0WpqOSPbChv
         pfsKdw22txsJUZzn6Fv4pFUCRKIT0LdREkxokqc634d6o4lB9ILYt3vQq9BzQxZHxbix
         fuDg==
X-Forwarded-Encrypted: i=1; AJvYcCXL/Xs+qyUgSOfFKVWTG1ByBwV5Ql3Ik92L32aYUDF+JtJyb7+BZ9A4ePjd8d4nupA8NUJgPVv282gM@vger.kernel.org
X-Gm-Message-State: AOJu0YwqbSnGKfrGcWtc/nbDJWmXot7gBD3pDp1Sk4iwpHoBL3/hu0/4
	xoNFw2g08TdK/7+dtqwVg/mdXLaoYDh+Qn8AJ0bMX1eOGq7XlROGjBhdw8X1XlU=
X-Gm-Gg: ASbGnct84BWRvZcahrYt9qroFm/0NdwNeSkS18NKLHh7ac1T4ZBYd6x337pqRzCPfDP
	PtWkZ1XPrJ/+uWrVsZ9FGAUUI9lUSg4q3mmlYeDIB6OpkEHHs5L5Jb2iIQxbkgKG+/Wj4IlzLMI
	X6HMy+2TZSOnnMEk266msL3kZjTlu+RYyc3/8Q3zwFSg8SeaGLsLlZxdvP9InC+x9yleGd/p1Yz
	KU6/8dMZ3tJdreDJHgXyhRKQVrxXjqxJBJiXp6pXCIDwOrmizoSfX6b9Q==
X-Google-Smtp-Source: AGHT+IHxK4AqlIHGoaltvjTU2ndTrXdw78O5oSUktEdK3p/i//LfD3gUSjJQ1/NVvL7gNHg75RbqAQ==
X-Received: by 2002:a05:6512:b26:b0:53d:e4cc:f5f0 with SMTP id 2adb3069b0e04-53df00dd50emr8130191e87.33.1732931083811;
        Fri, 29 Nov 2024 17:44:43 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:44:42 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:19 +0200
Subject: [PATCH v2 07/31] arm64: dts: qcom: sar2130p: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-7-b9a35858657e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=916;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=YYLN/oY9BZAxpdyRliEHDR3RyIM74cdws5RTMVCcPsE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm3zvZ1CMfQQQXt/FKizxvxGmQVmawDmA5ho8
 E5VSxlMeG2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt8wAKCRCLPIo+Aiko
 1UFWCACbOlzc7IlAG8oCNlJCwQl136NIunQVh+fy1O/hu13ZJFfYCegoa7LpJEjDn4wcrpr4z9p
 w2aVs2ptzbkgUiRVe6T+FxsHmhMrNEo8Cv9/rRVsowcz/iTYSNwGFJKu6JgnLQE8LebOTRvX+jk
 T5HP+ZPfNLwmcHHCC1Ehffa01vtJeleYbZNG8yCHYtCw6bhW9I8OmKVa8Hh2vGgP97BH5KzY1LC
 iNJ6IIsh6I8rf8F7apys1tmTE2/4MZNGHhjy9EDbL9iLX6qw1vyUrC8hcfzof2Dc/+j9jw0F8TL
 5UOmVeQG9t19apBQNNSZfEek3wLqsX3kugYkOCUigI2hqQ7s
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


