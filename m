Return-Path: <devicetree+bounces-28977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 80126820311
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 01:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B388E1C223BF
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 00:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 578AC10F5;
	Sat, 30 Dec 2023 00:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q1CT7wS2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2BC6FDC
	for <devicetree@vger.kernel.org>; Sat, 30 Dec 2023 00:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40d5336986cso61712225e9.1
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 16:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703894720; x=1704499520; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GL80+WYlCQIAqqkJFylb2WgYDMx1WnwASnIQCm3BLQo=;
        b=Q1CT7wS2PR7QHRy+iw0Rbrw04/J5wFi+cWPXh1GrwNW6HRoNC3J4gttw0z1Exu/4eR
         fTk427UZH8Y0utZwIhjnb2LcUkh0FqXbyfD5AlNMJKYUMxq/LHaWzhFJFNsmbLTo2nuU
         IINvcHOZZTSvUi3fxvua7Q0syqj4Xwrjjkqc7lTE3tY+nQ4fTPl4Ulnk+sMTlghQbI6x
         SezT7ggRQ7ZsS/TDmoOINSYCEApT74Z5U6PEw4c2V/CnVRY35kP7CRM/SrrpABXFpsrT
         T6UigOWRozMaLd33T+6wcEHC4Jjppd1tkCvtahLNwbKpnDiKDjn9QZaqH5ddMPwRbGk+
         h0eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703894720; x=1704499520;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GL80+WYlCQIAqqkJFylb2WgYDMx1WnwASnIQCm3BLQo=;
        b=TdUPScq6WjIZvnRUryvIz7VCa66eBwcf7bqiEdMjScPrY2WkNEtcHRPPz8/9MB2s1y
         MPSBpWpF7INuswnt3nE6h33o+PdWUhi0OssXhUR33VWAtjjJxMBwYyplPguYAG8y4xLu
         XFqplmIQgCa+vlch4af6rckX/jceBzskqbeugv6DF/PiJh4yGxVjYzBdPRUYze04xqgZ
         mGN7jiQr7rVXEN6z+s0uevwcAXZjoTHvzSDbADZgSmoaBFxEeXlgG6NCWc+ontwqa8M/
         oDBydHCx9FOqIwq1fE4FgbXkNMSrXrca1bf7Uiut1HdC2bbzkQ/wEsWHPyNHkGY58RFW
         1ksg==
X-Gm-Message-State: AOJu0Yz+oVB6OiKsvrRqkWWJ6jQk+XB+6liXz+hqgznlIMLMHHmTlPtc
	i+7uX1Hr2HFwvlq+dWXmHlEA3oIRa3/kFg==
X-Google-Smtp-Source: AGHT+IFuKaVQCkOk9ABox/5WPH9Ps6Uoi04BHotM16O8m57/VRltX1vrjPl+xJw3Lolho6oBKkIdgg==
X-Received: by 2002:a05:600c:34cd:b0:40d:8369:3c19 with SMTP id d13-20020a05600c34cd00b0040d83693c19mr44674wmq.248.1703894720064;
        Fri, 29 Dec 2023 16:05:20 -0800 (PST)
Received: from [10.167.154.1] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id wj6-20020a170907050600b00a26a0145c5esm8609623ejb.116.2023.12.29.16.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 16:05:19 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Sat, 30 Dec 2023 01:05:10 +0100
Subject: [PATCH 09/10] arm64: dts: qcom: sc8180x: Shrink aoss_qmp register
 space size
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231230-topic-8180_more_fixes-v1-9-93b5c107ed43@linaro.org>
References: <20231230-topic-8180_more_fixes-v1-0-93b5c107ed43@linaro.org>
In-Reply-To: <20231230-topic-8180_more_fixes-v1-0-93b5c107ed43@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1703894704; l=920;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=LEbmLsPXm/9M5hTW+SKlsqEW3bnrOcNAlT3KpR2uyEQ=;
 b=VqMpnLBy9y1YFRH6B4AFWfBvGqyGK7685P+sxJs18D+zGGm5TqNjQALUIo+UGMNmU1QDSamKv
 exE22GAovA1AM9JvlHhVOcnWLzM/OeooD0KlrHe77gWv26HxvrJhUTL
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The AOSS_QMP region is overallocated, bleeding into space that's supposed
to be used by other peripherals. Fix it.

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 960058624a2f..c0dd44f14674 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3262,7 +3262,7 @@ tsens1: thermal-sensor@c265000 {
 
 		aoss_qmp: power-controller@c300000 {
 			compatible = "qcom,sc8180x-aoss-qmp", "qcom,aoss-qmp";
-			reg = <0x0 0x0c300000 0x0 0x100000>;
+			reg = <0x0 0x0c300000 0x0 0x400>;
 			interrupts = <GIC_SPI 389 IRQ_TYPE_EDGE_RISING>;
 			mboxes = <&apss_shared 0>;
 

-- 
2.43.0


