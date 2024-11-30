Return-Path: <devicetree+bounces-125654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EC39DEE09
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:44:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AABA4163768
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AC0C136671;
	Sat, 30 Nov 2024 01:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GMjkWigG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1EB70801
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931076; cv=none; b=GHOUX8Gzm0qzDAUfvr57/f5ZLC1d0nWVr8MUOoO13MDswH3OWqpjLw4OjVYQ3+6ocONdZOJ+L6PnktUCvO50OezQA4eFC1JKwxjK0MLpu2MFbddg7ShvcrAaxnORD4eX2Rr+RLbxxzDYfjPWBRIWLPJFn1xGBIiczLrHr4Q0e9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931076; c=relaxed/simple;
	bh=AcRj8PcnHg5wF8WrCCf+iONlLmGYiLAyr6ue6biir2o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GqnZxnbygjtQx/VPIdirDf36nDyfb0SBOhzpr28qoxMOPOOHzTT9SMMtLD8oXPOcGZPVsPjHl4Em9hHzD53ygMg37Aj1mdxTdRTCSeI/8/q/tNVGx1dzdgB60BULdJFyJnZ4EAc2Y1YpLdbygFQBAdQsZfM/4OHwBOzQgePria0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GMjkWigG; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53de5ec22adso3050280e87.3
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931071; x=1733535871; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ehDXhExaGgh+zo/Qn+x4TP62l4KmX0Vf5iuas4mEBCQ=;
        b=GMjkWigGjxx0qDJPMDrM85+Mrom+ti83WiuvkcW8GPIL8WIxMw00VbQL7IDCfd3Yyi
         Hs+PPe3YakQkpCXKmJB8XN6uBE9X2aiCKPbNrzT+AHSk6xjr8ihZ5imnmiEpqNh7SaEm
         KXPwBZv90DIg35oyXDZPCtyDedweJeOA5k0jVaC86cZLQOUaibWA6C/gi3F5R9ThTlY2
         9W7zrIWj88qr4pWpZ5Y+L0kv7k+xjRwQkpuyebSyqgpZsluhS/iv4hx7ljXdfw02Gc/X
         n+j+CHypJWEMkIRL0nc/IcV26l3NvjcBgQbhvZuZ4Htbd+G81xeDtTRO8fAJNEWea6Yw
         9ntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931071; x=1733535871;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ehDXhExaGgh+zo/Qn+x4TP62l4KmX0Vf5iuas4mEBCQ=;
        b=H1qJ5ntdn4sZ/F6+85gCZ77WP9sidJLSNQpcv7JAnZ5KJqyK9xh3XbdXshVZX53adP
         IgzZrIECPabfdABiIiM+/zmXqyHrZp9VnmhXA/Xc2e18e5Cec1oTxCygYnohEsrd0IqH
         GqiV236mj2gv07HLf4W2aXudPSBUWoD0AEstFRs4hQpBkJBAZYIr71eLtjMo3Wvrdncv
         uGxEF+3IW/Fg7vLK9rndLsLa9caZip2epG1wK5UUBoxYIbODFWRWpl0atOJ7ktr+lK0l
         1mLk2LMuxS6c914g4ZJ7rZZyacAb/f9OwZIi3ERwTg/ak2bzuckL9QMuUWcZyKvEM4Jf
         AKsw==
X-Forwarded-Encrypted: i=1; AJvYcCXPv5gRHVmvSYcy9S+gxPIvhCeuyFPAaDodiLBk/l4ELh90B1/i8N228LXf2shOX1Tgx4TmfCnwvqjc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1RaRfvbWYm7xweOPFZuqtc8Q91incsucsSkm1xphF0Vh9/57p
	sqUYwgSo/QBM7V6+covk2l/hrfMtnoJJ60rBklSHpkNOAPbhuMph03GhOsA8LFY=
X-Gm-Gg: ASbGncsX7voXubJS0Xv6qnE1PGVhIYPeU5ZqhRCWDHNYYbxPWgrqcs36uhYbPsfxL+p
	P7yxNPb2DpX4Jidq0i+KdWAXpPEWGGAAOaWB9RSDNO0MTs6wAPeckkX0n+dHBPuXt7FO4ME16Un
	0HiUMT72+ri1TSOdxC6Rc4BRSjT7NLF34oNoEt5//Wo09toDALDhMjR9i2nRUxUmzbC2HWEsB11
	hwpY/s95huz5xIhX68bD18zRYC1HLk4ga9grhnJXwNhVzb9B4nzjnDopw==
X-Google-Smtp-Source: AGHT+IHXQP0c2jYjel1INGubRNNdpIHSfJyXm6AUfVNMfmh2+ZwhgoRbsk3DRmxI9aRLm4MX8zBryg==
X-Received: by 2002:a05:6512:2316:b0:53d:e5cc:d06b with SMTP id 2adb3069b0e04-53df00cf669mr9128290e87.20.1732931070926;
        Fri, 29 Nov 2024 17:44:30 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.44.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:44:30 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:14 +0200
Subject: [PATCH v2 02/31] arm64: dts: qcom: msm8939: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-2-b9a35858657e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=891;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=AcRj8PcnHg5wF8WrCCf+iONlLmGYiLAyr6ue6biir2o=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm3zjTODhGaXhMw5GjsZz6c6FWII/z/YB0Ziy
 Ek9y2EK+wmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt8wAKCRCLPIo+Aiko
 1XQ0CACPZUwXJeTKce9ZLzkELUgLoBtmhNIJ47J3t7RF0mOLVW8i7hH3PNG1DLlHnNe+3XJs2oM
 gx9Gm33onq/pI427yx7avVYmxYHqziVLV/xioQlIvKCme8YOzo6gfBTd1jAGjer8bXgbw+BqgwZ
 TpCRZTpRpdffPyt5xyIDg2fk24KOmD3HAT58FxirrMLhdxtJnWEYnups4ZAZ1c0SfYyLuliTvmw
 JQuJodVGdURcwf8P22tHW0SaD2rZROcbM3xaLL90+NNj8vXtOs3+rFW+Pda0KtgK9qo4eP2PLsQ
 EEX39yoJDg6zL3vzc9b8Agp1r7u31N2hK/tBPI7Yi3wO30uh
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The MSM8939 platform uses PM8916 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: 61550c6c156c ("arm64: dts: qcom: Add msm8939 SoC")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index 7a6f1eeaa3fc438f7b6c1d3b2dd17fb1b6f81d9a..7cd5660de1b33def5b9dc8a0d02583c3eaffb17f 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -34,7 +34,7 @@ xo_board: xo-board {
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
-			clock-frequency = <32768>;
+			clock-frequency = <32764>;
 		};
 	};
 

-- 
2.39.5


