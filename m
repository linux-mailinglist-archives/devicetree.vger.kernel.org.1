Return-Path: <devicetree+bounces-133808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A109FBC4F
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:30:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97718167FB4
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:22:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A88071DC9B9;
	Tue, 24 Dec 2024 10:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vjG6jDOL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65071DC995
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035465; cv=none; b=q54X8e8+ZjmnQZujH1x3LUCvJhuhkcSDEVFV4s/GfuDNsbjdXdAReuItESSPJuVEtKCy8KKGnMPUhUIEms18wdDshv3iqU1Y+633572pVADYGhMQOVQgSX28wcMbHYTpWLyHPrk+xldKitp6zIOWwAq8+SmHR//0hobvikPNGME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035465; c=relaxed/simple;
	bh=t0rQXPrtoBaJrNoELAVHdj8ug8kB5TUw+I/NzNZW0co=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p8gdRTUYamCv2P1NNQdD2tT/pdcExAL/Mto739ynuP873CUiflQYDWVkg92zpbrHNfX9wYNHDqwPV4LOE93A9AfsnnxDoZjLc1YDgyjYaNsOic4F9/VU4/ZUHrJssnFHRbIy8lXKgsRhZAQBBErDT5SqUsNh99XpLCVMeghZKb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vjG6jDOL; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5401ab97206so5152539e87.3
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035462; x=1735640262; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dZvlf47lLnOuGGVqz501ZYTHYvZy2AJJ5Z/oU2OF890=;
        b=vjG6jDOLQhcxKRoiJF9xd1b2h8BnR2Xb0w897j47hK3NMhca3e/NfJPKWSZQRkhvNy
         v4myjmGJSddji8opmbTK/JTlXd1l5K9CKmvNHJ9FnNP6COdJn6AEcBU6I2PrUbvUemC3
         /t+c6HegVmQoPr5RrBir5uxCaUROHuaavbVtDcq2iciYft9STpvhN65GemR4+rzaqma8
         kpC8B2D5bv2oSCMkfL1OD4X6LmoCvadORJKtvAUw1ocM2jZpjjZFl0nq3nXQMmGpKtWU
         wDdpOYMG86U8NndAYJmGZ6k4H44vfr62YZG+pJQopglfN3EF2pKW8ziaVTtKdMe9pD0f
         tiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035462; x=1735640262;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dZvlf47lLnOuGGVqz501ZYTHYvZy2AJJ5Z/oU2OF890=;
        b=dbGO8HGxMb+TZCmjDx9JA9+H3dmTwUTC5Fb5rANBaJ5P2sn57O4PkEfEejseYnWHVj
         oXK3PYT9fnlxUfQqy69LmY/Oh2hiKHlvS9qnZ+IlTkQwiI7GR2yvkSegJYslB0Q2WvpL
         IHBhjOpwSZQT24wjXcrf3hlW1TbypkFDZOoXG2Hi4S/Ch/XLndp93EtA8WGowXOMPXuX
         Dn4SlH45Zhf6dS/yA+CQqDdHp6XrefvMAZU3QwNbid9nW8JL5Gu1Bbv28OQlR1kVyBCe
         vTfl2O/6bwqfyGgdTmYfEyQPXs5lRH0yiR6dR9LFAV7k0NGuDghHehqQVV/aUsBz0hWT
         fW/A==
X-Forwarded-Encrypted: i=1; AJvYcCUHfdri0X3xo3B9+p5d5VwdL+6btth4mzPr2LPAmGUbihh9tlnyfPswvt372qIco9zWiRY3+9BZ2bn8@vger.kernel.org
X-Gm-Message-State: AOJu0YzYLh5QdSddZEsqM3oXvYFZteI+f4owAYKoclETvYb0+3FAACGU
	Ga9/gto0B1ULYfyLXBCzmEP0rFqeT/zuRAmj+BvntOkg0cnvDXMAtM5gSl3qEDg=
X-Gm-Gg: ASbGncv+7Vnv8+n+a2VhEieaoIsQR20SDSFr7wH6KYWCo+mK4/ZcnR5qBpXX7qHGtfg
	CWhvwtXddrb5Q/bz7gAXP9auecjETfpi/EPiBnthWxU01xqQECOwYQ8dd6a7XkLneI3jM5Rlb6H
	pDS59ieN5xsZMSfRXzM+boNcGpkp9qMjga9jduSnhf5dfLQaEkwFig4PGVY+0rby5I/EA0PAGsV
	25niRBwFh/n4yYR3/HUimhQ/j37owvsKWX8teS5gGN83xAiZqOdgeqxQYPdBnUe
X-Google-Smtp-Source: AGHT+IGxhGOHWxlwjfHXni4jgqjY+M8R2QnS0+2eP3WAiaiHZA9jk641PfZgrwlgEilCxg9JQMeQ7w==
X-Received: by 2002:a05:6512:683:b0:542:2f0f:66d9 with SMTP id 2adb3069b0e04-5422f0f69d8mr3932707e87.16.1735035462028;
        Tue, 24 Dec 2024 02:17:42 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:40 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:12 +0200
Subject: [PATCH v3 13/21] arm64: dts: qcom: sm8250: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-13-e9b08fbeadd3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=920;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=t0rQXPrtoBaJrNoELAVHdj8ug8kB5TUw+I/NzNZW0co=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaooi9ABuF6/gcvJtVneJJwiTskffxsrfuO9Cp
 skgPBE5yeKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIgAKCRCLPIo+Aiko
 1fbFB/0eBVRT6Wzute2kVUQ5AQ61H09fKYyRVWO/htIufrooKRmjXOwG/4UvsXtdgqfU8mfZ1Ab
 wgb2UYdRG6WBJvNgYGfjDRlk05uxYYB2gwzEqQkBUXLV08HhgCt+jyYCWYCSdH7HGLIQ6BC8snR
 10mZBEUnqWiidmPygj4yHEtaBDL5m1YPNN+iVBnMFB/maA0+aB4966pqV7CljpekrFT/iOY+GDX
 jeCM3HHCU+SH8y5HzGFsqYS/wEHdoBX+NydR1q4czSBNBt7w73P3TFCZbE/8MT6YPWH7Klb+wEg
 pbc65+7AbDnF9VpbDIF8qj03VhZRgcKZMP6qBYdCdBKpde6P
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SM8250 platform uses PM8150 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: 9ff8b0591fcf ("arm64: dts: qcom: sm8250: use the right clock-freqency for sleep-clk")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 48318ed1ce98ab40de75129cb9bdfe32eda4c004..f39318304da8d02ded9bc4ff833bc88139ded744 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -84,7 +84,7 @@ xo_board: xo-board {
 
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
-			clock-frequency = <32768>;
+			clock-frequency = <32764>;
 			#clock-cells = <0>;
 		};
 	};

-- 
2.39.5


