Return-Path: <devicetree+bounces-125683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B85689DEE60
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 02:51:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D68D163F54
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 01:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A55CF1B6541;
	Sat, 30 Nov 2024 01:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ly1+q9gY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26F31B4F07
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732931145; cv=none; b=GBn9SKTtvp4+SRiPLxlMk8ESIxxAbZURNTORLEXW/6ft78od2FEQnb+51deavzP7nbwx2Y3/sybRbobNcfxKNVO5MpAPthqEdWv1NvGGaDGXDupeVhTInoEJwQJ7YltPwfzxeizcHqFWCHrDsDK2OcUnnRRO788w0BBOlJiT+0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732931145; c=relaxed/simple;
	bh=x2bm9LjU8gDnzSnTK9zY7r1UhakQ0COQvQ8bOcHGsI4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qn1Ejt1BucAbDPvmqxlrFYjHUYTGu+YNV16tV8IqRJj4kHXHRnvT1CR6HiNzyRCXwgtseeTfezGrUpFkXxDvjpGAYcRyld9z7a16/Np0LeH/gnj5wjc3cnBEuI9aEIoZ1Z9ByWpjEU3qSMDfHIyWpGdkJ9ab/CWpAgtDy0Dj6uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ly1+q9gY; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53df67d6659so3992806e87.3
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 17:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732931142; x=1733535942; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VV7cJg54Wosh+nhK6rc7uL5eYZ7PTz0Z5q2l7WfMjeM=;
        b=Ly1+q9gYiUxqckVFufyk2Py4gGgKr1+QQHtf0xmlACROfOt0dhvWceTzFkY+cHV0RM
         5HjSGq5Drzs6LwS1heffT3drWVBf/4P5MzvRrCgwXr00RIl9U8ihBPKgBArTbluIR3Dv
         LjOhfMZ3zXTRSW1GmEAbVBhOQmduA11MDYlojRgfw7ldTa775PGMTA7LPzjxKeq9XCTP
         GhdgfO6czyjQh3jcGTfCm1r+wyw2u2PnQ8Z7KfJSnfjTPuBCeFcOsid/NyXiXG0p1sec
         lm9wxbQcwf3M6n9uiwfyYeqR5+THGnVhc+he2OM0ylBIf0eWsxFZl9H0YGHUucqi1vAi
         NDkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732931142; x=1733535942;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VV7cJg54Wosh+nhK6rc7uL5eYZ7PTz0Z5q2l7WfMjeM=;
        b=lvh+EZxEKQypjqOAae92uWVfqYtbtD2FDSQq59F+YVxzFC80HvbQZvCJK7ufRifEy4
         JG8iBltmmoOhjq+iOfAc9isNUG8icM0QSeiXcG0akzzDokOQ2v6xXm5/KoUG7/Rw2BWl
         7brKHAQh8H6Xwv2vJ3H1uQ1i4XAcNsfy7gKfVIjAM2ZFZePyFArzUUJsVyx8DSZwkTTH
         JH3mFbQUBe3T9G2O98FX1GoIry0k6SwtmkM/5+rFcXqgRllgiD7c5xvX+3IqP1rmdjHa
         N+N03F2DzU0wfA6/rGB/rqmRPQ29Lz3NFqK+0Y93bEBjb2T1S9M6jxBfyPxzprH4yNz3
         JRxw==
X-Forwarded-Encrypted: i=1; AJvYcCUeDUNOAXeZavBfCK8PpzbwIVRiQ6pKHfGgjROvGhwj3ggSXkcpRhWp3YhHSe8gF0DJGcfcvjR8Cn3V@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3j2DizxueNdMY92cWee1VLSaMdJVDTTBhO8/A0kIH1iK6bE3g
	JA9eyF2FU4hYZylmI0B4PrQ87lfFcyA39YJCzHP96Vnl6+R0nSXrcIQ++KjEPVU=
X-Gm-Gg: ASbGnct1FeewgpGnLiD/FCaE4z3O407bFiO09ac53fZv4n2lxdkXRK3yTTCDZi/Ej+J
	wzwdjwaC86Xr6xBasiT8zXZpbPefrsK2D+UGcGLW+/myDpAkO+REzUSyRaEBWVkcAExvIa8j8Rh
	Rp+BLGwN8ggUps7+0GZ9Ru6Cac1YypFLXkvPaZc0/rl45gi+kF719qqjgeGEpsNeHeArAbwxqD1
	QCmm0NhKMicr9ubTU/xISWsroIvVRAfmPkgx1/uthXGMrgkCr6uGbfn8g==
X-Google-Smtp-Source: AGHT+IFP2fmRwIoE/ZeVkBQa8svX5hEiJi+sM5HgK24RApwfcVCoYg5GJZSJ9vJbCmYHx2yOoBaEvw==
X-Received: by 2002:a05:6512:2216:b0:53d:ee0e:b466 with SMTP id 2adb3069b0e04-53df010b19emr13496176e87.38.1732931141987;
        Fri, 29 Nov 2024 17:45:41 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a0742sm631946e87.261.2024.11.29.17.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 17:45:40 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 30 Nov 2024 03:44:43 +0200
Subject: [PATCH v2 31/31] arm64: dts: qcom: q[dr]u1000: move board clocks
 to qdu1000.dtsi file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241130-fix-board-clocks-v2-31-b9a35858657e@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2729;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=x2bm9LjU8gDnzSnTK9zY7r1UhakQ0COQvQ8bOcHGsI4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnSm33CNF2WLfr+WyfRFgu7ex2UM/+DSb3LnUtb
 LJomsgij+yJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0pt9wAKCRCLPIo+Aiko
 1VDcB/4v+V/Goy6Wzyd/paUJP74PVHkMTI8FJ7fNP21eqaQlNPPR9QGHNffiJlsz70VbOlVmzG6
 VkTkPWJPxy1kUN5h8nqpLdVsV9IcNzzo0Wu0C0eKmN9N2Nfpo/Z4Yp+faKAV1VWP+V7fabcTbtl
 zqyvB2eoxajn0XUrze0pWdrZgr5ERMYce2VmfOnh7thb2zoqoiebZZ7IxFC2uhvZBQxBpzMgRgI
 YwNcq2mOC8rA6nCmYhU0ywTf4LBbsUbYwRPeM03PxuiMFPQxXTZ3Y4J9IoMqL8ywq8kooe8272r
 jGVhDHXLIqNbj0GNGc5xswRm/hh+bCMfl99O+wPMNcfi7fXo
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The QDU1000 and QRU1000 devices define XO and clocks completely in the
board files, despite qdu1000.dtsi file referencing them directly. Follow
the example of other platforms and move clock definitions to the
qdu1000.dtsi file.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qdu1000-idp.dts | 14 --------------
 arch/arm64/boot/dts/qcom/qdu1000.dtsi    | 14 ++++++++++++++
 arch/arm64/boot/dts/qcom/qru1000-idp.dts | 14 --------------
 3 files changed, 14 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
index c73eda75faf8206181764df4d1ea32f96c9cfcd0..a36a56f03c2d112c6afdae1272b81edff890fca1 100644
--- a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
@@ -22,20 +22,6 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	clocks {
-		xo_board: xo-board-clk {
-			compatible = "fixed-clock";
-			clock-frequency = <19200000>;
-			#clock-cells = <0>;
-		};
-
-		sleep_clk: sleep-clk {
-			compatible = "fixed-clock";
-			clock-frequency = <32764>;
-			#clock-cells = <0>;
-		};
-	};
-
 	ppvar_sys: ppvar-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "ppvar_sys";
diff --git a/arch/arm64/boot/dts/qcom/qdu1000.dtsi b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
index 47c0dd31aaf2e42d6d85411956207b2509a605b0..30fa8f5f992ff5b440db9871a254b60acddbac94 100644
--- a/arch/arm64/boot/dts/qcom/qdu1000.dtsi
+++ b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
@@ -21,6 +21,20 @@ / {
 
 	chosen: chosen { };
 
+	clocks {
+		xo_board: xo-board-clk {
+			compatible = "fixed-clock";
+			clock-frequency = <19200000>;
+			#clock-cells = <0>;
+		};
+
+		sleep_clk: sleep-clk {
+			compatible = "fixed-clock";
+			clock-frequency = <32764>;
+			#clock-cells = <0>;
+		};
+	};
+
 	cpus {
 		#address-cells = <2>;
 		#size-cells = <0>;
diff --git a/arch/arm64/boot/dts/qcom/qru1000-idp.dts b/arch/arm64/boot/dts/qcom/qru1000-idp.dts
index 52ce51e56e2fdc51c05fb637ed4b1922801ff94b..f35e3111f516ca1ab59011f8a4145d3e21e0a221 100644
--- a/arch/arm64/boot/dts/qcom/qru1000-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qru1000-idp.dts
@@ -22,20 +22,6 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
-	clocks {
-		xo_board: xo-board-clk {
-			compatible = "fixed-clock";
-			clock-frequency = <19200000>;
-			#clock-cells = <0>;
-		};
-
-		sleep_clk: sleep-clk {
-			compatible = "fixed-clock";
-			clock-frequency = <32764>;
-			#clock-cells = <0>;
-		};
-	};
-
 	ppvar_sys: ppvar-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "ppvar_sys";

-- 
2.39.5


