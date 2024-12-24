Return-Path: <devicetree+bounces-133806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F2E9FBC3C
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:27:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB59A1886836
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82A5E1DAC97;
	Tue, 24 Dec 2024 10:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tuIsokOD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD88C1D63DE
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035460; cv=none; b=LBgIYqOcTxPwTyhYlSj0z62bJzgZyF7otE7sVjrC/NXGYpvuDh4M9L6oK6HLOEDVhg+wTM0YDBu71H2jbtp6S3JdfVmBrRZ9SQGm+eFugWLP+Ve5KxhgymgBUVweh+n89RwnZrpNIGdjfoBrdzrQoxnHHsH9fFMzJzInga3d3xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035460; c=relaxed/simple;
	bh=q3UE0E2mDZCC929aI9do16YaC9c3UMVZhi0tXk/GPcs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uQiyGXnqtBSRQu6KpFWYcI+THnAL6TenSnxIoQ5aid/lGI3QZQ5asgzsdgjDkTk4LjkO1LyBJcFELR4KQwi2M+zYF4qkgrJrSzIQqu8PXFW4VgsGE6PEQGKdDQU5k8M57F5TEW3gf+bfP0dBYno7j6VWAWX24PJnpwgb3T2RpTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tuIsokOD; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5401be44b58so5075627e87.0
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035457; x=1735640257; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R4ChnpSI8rQpGaKLPT4prgKqYz0wE7uQJXmY4boADvg=;
        b=tuIsokODFA59n2AXVkspo7wAtJw+m4KNyKFATVY0s6n3n+hW7XtVmdMQt4X0QRBOso
         uix/jjvoNIA0D3cmI7rYjCHAY1qosC19WtOS8RPxLNE6YWi3sWBU9UkswOus7WaeKqWI
         qxVrm92PFzeqf1yeFhD/oHTHsN+sd1I2TkGqdnOvRvMxIbjTxyVjQyh2HgR+52qThFa7
         eR4ppOTgfXVA+11WWgDDTlet+QFbNveNdJvREbNbA3nmC8buDNtCMgZJUdyb7DgzwRL1
         UhXSIG1vT9k6vVfc4qLtViWsuu4rWlUDKTBrJzHxYfxh299PxRn0DJN76eZlgT8twsXl
         tZcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035457; x=1735640257;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R4ChnpSI8rQpGaKLPT4prgKqYz0wE7uQJXmY4boADvg=;
        b=gW1frGSKgmTkXoKUkTfdIqMP4N6skCIQd3FmjqDbj0MtXg+zavipJ0wBPblefL1+Ix
         S15O3mpKId7NNKJE1uK88kXhZtEP2QU/k7zQhRhfjUY2H7nmySk/m3mEiFhEw6X0rfpC
         C9iYMxMjGs3t3BvUIYXT09G61rJPqkgSYBd9mEAbIzuuTXsSP4ae6yHw2e/KCwr4kRj0
         JmsVnowVqYNVYKkVncGR+vlX0Tj+6V/bIF/AIE+ezXrd7IbwjkaYQ97Q7eom3TvE2lG8
         EAYw8Ywvw/Aqkhq+T3DWCJWPlmE6NczMZ+IR7lHzKeMH2FDG8gOXOYr8ZhrN9wIOpGrD
         9Jxg==
X-Forwarded-Encrypted: i=1; AJvYcCWwoeUbzny+0ppCZOEhTpnR1nTKJgb5UrjBjYDay4P6aOPWbagk7Zwll2H3kMQk/fb0H0lU83OtPTYj@vger.kernel.org
X-Gm-Message-State: AOJu0YyGnRgXbCFH41r2GJegSw+R/eMhRY7x2a41Pm7F9fgiCtH9tIYU
	TW7YwUhbPUYv01w/unqKV9CPLNjYdF7Q78Q361WCJ82iDd1/g+9/qgOs504oy64=
X-Gm-Gg: ASbGnct6ssV7d7XRMVvQf2FEEhSHKTLOM+aTyZyRezVi8RkcIQCuWLUOllzEyC4GyBF
	H3VA3i5mOKvele5tkGBBKImc43Cl5ySGNEFN2qgz+Uc92FoopeCa4Fz21Cx/DiWDtHcu85fBHS4
	kcf0J3KJxUG3NbUuJKC4lwJqSLeu2aVA0DmXQKWT2m4m+IxAKKtZTguzzqb3cW8leiOZOia5pbM
	HpUc5pXyrWIT3rHBM6QoBNLWHuyhIwTs/MaN70UicySyp0oTqqhy46XPXFLawtc
X-Google-Smtp-Source: AGHT+IHQvDGtBLRPtn4oAi/Q6YyKVP1EkKyOfbksilEaRviVYS64GWXKMs9ktkPgjK1NJNxwpoI8MA==
X-Received: by 2002:a05:6512:1149:b0:542:1b6b:1e89 with SMTP id 2adb3069b0e04-54229525408mr4584594e87.7.1735035456982;
        Tue, 24 Dec 2024 02:17:36 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:35 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:10 +0200
Subject: [PATCH v3 11/21] arm64: dts: qcom: sm6125: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-11-e9b08fbeadd3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=928;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=q3UE0E2mDZCC929aI9do16YaC9c3UMVZhi0tXk/GPcs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaoohaSeH0eCgk1LpCGycJR3dezjhfMQyqDnwX
 /Gdqsr4IBSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIQAKCRCLPIo+Aiko
 1fxICACl/LqbVvlbE5s56U6Vwtw+gkpp+S6Z1sHAaGAj1SJ5J/Vl1hgYtgk/7vgO8wPsIShgnti
 zgva+P8apKkkJjOnWFFHmW0kxKbUTES/GXsqw3TIX2ETlD8+jjFT5/XHLVTjTFfL3ALxhbL5kyI
 TG6TzD4A6qjVQctoOCspSFA2384bRPV5g6QTiutZTgy8nlVfiK5V1S0bVHkYbmHfa5x60FCmA/G
 ZzMGItKMP4UAbegOGNJO08Q7rURJchUwiSGZW3z2GZ2um7zJr8Zm21Go4ZT1n0oXre3CFsAo7xZ
 WLo+5xnJtYoZ5/k7KTcDfpwXqa0mlvSbGInRRtXtPGqhsLa1
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SM6125 platform uses PM6125 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: cff4bbaf2a2d ("arm64: dts: qcom: Add support for SM6125")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 17d528d639343b9d649167d231aad3aa63474435..f3f207dcac84fa2f72fa9222c26ab3d7fe8813b2 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -28,7 +28,7 @@ xo_board: xo-board {
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 			clock-output-names = "sleep_clk";
 		};
 	};

-- 
2.39.5


