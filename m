Return-Path: <devicetree+bounces-133810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4979FBC53
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:31:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F0481887515
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2BB11DDC15;
	Tue, 24 Dec 2024 10:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wA722EMK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E62081DDA3C
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035470; cv=none; b=I7rmkU+ERk+I+bYY/tkm7gfELpo8Lvz02HHf9Q7G32axoWjyInRHiNpTR267jEEV6skALwV8XMtYIJ+qwNoAk4kD9oDEh5zaiwUC7i5ggoX5T1zynBg+inpbJKTwZWuhZE/ec738rHf3fw08Us3iBHXvOSqQo3zzZ6naxQ2LNAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035470; c=relaxed/simple;
	bh=kRo+lLE1W0MzRHuVjiZ53lpqFjRc/n5gL1+u9Wg23vI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZsnGvyrEBcYYAwJIE2jSlSYwLjc9o9hVHZE8f0srXkv6eEiYZyu61KufWaWdWrh/yDXXlx8J3REYjyjbFi7yACIv8kAytcwJQL6QYWSMyR2veFBVB9G3MdklEGSM63PvpOCjpNXRf8nKHfTTbXQKZ51wujk+HDtJIr7ATuw6fg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wA722EMK; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5401c52000dso5683001e87.3
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035467; x=1735640267; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vWJlRrn7HaBkpMiZ8jEbjKA4hpcZtQM8jkZV0zeKFag=;
        b=wA722EMKaPlYPIYfLFiAuTvrQKLgX0fP6aMM/iq1j7t/pMXwCugvEBhBosi6Kxd61r
         khRmBCVla1Y/+KabN7joS+WDo+dPRD36o7VrAAunJe7hY69VEbODleFe3Z6mo0cv9/Gl
         ghW03p5Gz3+oZGrF7SNZ24SMwGuY4vZLuOx1hzI2fabGdN72BgRwlEtChKVhfSRfg2Dv
         b1F15kOb/NqxPtaYV6OhAYW3kEkCstAzdFJ5wcQS3NhE0DvtVb/T4q73Al+6BYGjYSnm
         /pjDwh7B3Use0oC5GgMwo6NVzkMMf/Lj0Qc0mwW5nxOJnT5b0M1MhTdj03vxa151ilGS
         5YNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035467; x=1735640267;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vWJlRrn7HaBkpMiZ8jEbjKA4hpcZtQM8jkZV0zeKFag=;
        b=XKoILe2I3wY859zASAuxD6dM2CX0vqvqlzIf+yJ1Elev9KVmQO1HsRL3GlG4TQVJqM
         fZj8HuGx3fGJLMo+i4Nqy5/YTrKuxmasep4LKtWS/EuFLTUR1EKpMp8sOniRkhOjImnY
         QlwgJbDc+YuzAJyNYefPzPxJxCeKHvGpK1rmYhqTT7+9eT1x4AAQyoV//fjXUKVstwsS
         DjK3zuJDsBxhCmThDGVbNI5tFX8o1KX4LKOMfHf3wPUFsVW4iPidBxoqAVSRHAFUZZol
         s9/TY9tcyMMCPbw4OF4QodItEjPxKGmcu1jUP86mmjBFjS1f0gAewHKtSHG1CBu2mmo1
         efDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWg57lrkUwk2q3M9udT0Mbc7JMN4opGwBQpHZw0gkxEHlWXDyRqC1M6IEjAAtmGFyQusspnXfgME7k@vger.kernel.org
X-Gm-Message-State: AOJu0YzlDrBUIsOKngP8VC8rw7EGiusyN7EJWAZ1GNPDCK18C1zJAkqa
	BMdV80HP8GWBMgN4m8+Q2BVekBvI3HX0uTYZXob2mT+Z7XLo9x4qcAP7GBk+D9o=
X-Gm-Gg: ASbGncuLGGo24W6M8mPW5f1POH7a2/KEKcyup9lrWLdrP6d2purYEnDFbBHkjAq8yvL
	OMCqshk15fxrM/u292P39WztTDrYR6jf9g9dwjwsnoyE+lTZ3St3sn95UPSr/GoYclIfmjP9z7Y
	QF3pOOtPa1ziskE5M8I407jzpIs/wX42hmprkJO3WvVTdT5lrreMheBvyXNj8ELQIWPYCeeT9fD
	Dy93+4HhKPx03Cqf/U5//qsvkxW7euoJ9Ijap2u0EpwghV+GAIkGyJTP0RdAWFD
X-Google-Smtp-Source: AGHT+IHOcL17FoPZu7n+j8bAy1gloLuHCzwCfeEhAvot741juAai4Qd2NuMhKOLNpqervKB8/oY9fg==
X-Received: by 2002:a05:6512:23a7:b0:540:251e:b2b9 with SMTP id 2adb3069b0e04-54229560278mr5080888e87.41.1735035467106;
        Tue, 24 Dec 2024 02:17:47 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:45 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 12:17:14 +0200
Subject: [PATCH v3 15/21] arm64: dts: qcom: sm8450: correct sleep clock
 frequency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-fix-board-clocks-v3-15-e9b08fbeadd3@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=891;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=kRo+lLE1W0MzRHuVjiZ53lpqFjRc/n5gL1+u9Wg23vI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaooixTzAm2+3LesXsUmVxBlmaXZOhTOM9xqlC
 ixJHX0EB0KJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIgAKCRCLPIo+Aiko
 1TdmCACA2jicMrBqZ7WsS/9B25FQ4Qp7njiilpcWxdcn05jpiiBjcXYH/n58MMsowXurPW84t1f
 SqpY9FRGz8QHKhrZUPXvjKFMuHeoQax3RZ7VImKs+ckE3mxAdEK+RIfn5QxqC+AObPqaZ22Rlys
 70BKvdxN/afdlC27Up2E8l+/46UGO7LuQOeX3W6GwlLJwssF0x1e706LzuG/pSVxIvQ0JFSZ9rC
 pT94F1GGAPVD2paqfWe0rDflTMu781deiBMxAaI5mPIfpjkEJI8uOESY7aPJBtY2Sg4lS95ktMX
 2WH004A0i3CMI4RjtyMgYirmAJY3FJ/QhlRRHCOtrr5Q02Un
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SM8450 platform uses PMK8350 to provide sleep clock. According to the
documentation, that clock has 32.7645 kHz frequency. Correct the sleep
clock definition.

Fixes: 5188049c9b36 ("arm64: dts: qcom: Add base SM8450 DTSI")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 53147aa6f7e4acb102dd5dee51f0aec164b971c7..7a0b901799bc327b9d31bd84e8a00fd62b451596 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -43,7 +43,7 @@ xo_board: xo-board {
 		sleep_clk: sleep-clk {
 			compatible = "fixed-clock";
 			#clock-cells = <0>;
-			clock-frequency = <32000>;
+			clock-frequency = <32764>;
 		};
 	};
 

-- 
2.39.5


