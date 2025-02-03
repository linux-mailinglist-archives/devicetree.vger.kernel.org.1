Return-Path: <devicetree+bounces-142537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED149A25ACA
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCA851658A8
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27A27205ABF;
	Mon,  3 Feb 2025 13:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kM+1DtZ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91BA2054F2
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738589008; cv=none; b=MfE8PbwSul98Kvor2Pil77zvtGkhQd0R4Anrdm9xZc7q9JMdHAYUlMK8J9W3izKP/sc5ZZAgCqjofMUSstTLawYYNLpDGl9GvYnwj5D6AqixiSSDFXVe3LqgBmJz6l7OvIw1zdog/K8hjn277mYuSdaob8CBDabVZCmiLa5NoEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738589008; c=relaxed/simple;
	bh=pPPjHSDlRSmjJrvtmUx5gQ6ccWOFtnt4ixNEfY9ZZY0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GFpQ9npU7/B2AukFpJp+tyetyfo2nN2WP1OhMOxSsafngGQfjoMwWudaDEEI84XpP32lc22sEqAIP8MnVURgcWwEjBjhxITvdOF0KWxNAJ7ntxxLSPGyOguDruez3yEDjrzZZ7ymjlYsa4AX20AOMcPWGa0haZ5iZe2XI7e9zJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kM+1DtZ2; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-438a39e659cso30217605e9.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 05:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738589004; x=1739193804; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pStKCDB+ZVSjuAmkijk1NSz9iCb562SIhP18Ki4b/24=;
        b=kM+1DtZ2wZzSbEH5wNwc2pBXQllMLsAXo9PHkbFXnh0uo6ApeRV1fQbMIHmCS2iqBo
         AUmpn7H2vpjO2gJW4MGwfRekHq26BAuHqwd1VrMmeWeHN3ZYuC1mtPJjVchJr4+q6KrB
         v4b2GUhjEc/IgwaAN3HIIaMyaAMdezZmmTd+djoyIGdn0aepp1p0hy1h2rO2eGMEHcUh
         fHxy7vyMrCkMVtoiX/mpwJijET7SLBL80Sx8mLPfwFtr3UI8yABk4aeuUd+AREESiuVE
         DZ9GYK4V7bNa7sJk93A5s+MolDHeZRDbxijsIGN8fajmNYA02VgIuMPlmPjGyEJiMRpd
         j8Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738589004; x=1739193804;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pStKCDB+ZVSjuAmkijk1NSz9iCb562SIhP18Ki4b/24=;
        b=EsK/n7fVCE9ElPjJubrk7WJREMgQLfiIHDMbbUlRnmyjCwIV+zANOFHfq7F50DqphL
         in/NEQwJrgcgz3GYb8xRu6Hjn4oCesVN47qyGPH51jm4re24fwEa9WhSQ6/PXPbjcveZ
         RqqjHUSRiO+1SwEOe3G/Wc7uzSIyflsD0gdZWaPyUo4RmNTvtTH5Z1uiGfKTLlQpJ7P4
         e03hm27oTn5vw4mXi3axbera7fUOfYoA28ZNbWTfy1+zTyGzIcSi4MH2DaKQ7FIpyZyF
         vWk6EFsPu3uUm+DBrVepxUCMi7945/Sizm+JMchrDXzB8TuFctmLkMWKA3YM0d0nGDg9
         3SAQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9D6QxUK9uO8X4iSvcLJ6wwgzhmPxgzQkKoPBav+Hrep9iPBleNVCZB8NS6cD3no2b7XWxwBIdjbkf@vger.kernel.org
X-Gm-Message-State: AOJu0YwqI/fG+RlyI+hXBWChfDlQoVnpyEPZ4OieeWq9Spwl02kIbldi
	p3uSiOjC9IkgtcAWZc91jLlOikyzCXku4t3Xlx7tYOnFEz/DvM7VyxUG1ANMZyA=
X-Gm-Gg: ASbGncsZKft6q3e1XFkAE4P/b2idDFMyAOwOv3KAdbl4qDWOliqXX8a1lpbdE+X85bP
	p/A9awlIz0CVL4IdrDRpAE0qbR16g0RijwzVlN7MECs/ltWyhACcqsPs9k6fAra61aviO4qztEZ
	0WQf1m+EWlZUd84ZuEOMX0Fb+VNm4IQm9BYhMzAUWHkaovncVHIs9UMTGyIXTqzHm/ujzvmVTtJ
	N3abyJEtZKkPgq+3o5hP+0UqHEbckzTNB7DPUYJNNe4RnqWcqz5QK/uP8Qgq/Uk/JP1/qVtcJpT
	rk835wpSG/P6A7SXPahbZkLoVRv7lGxng1oz
X-Google-Smtp-Source: AGHT+IGi1i7MJSMei3cRyd6gVuDoDAXBw+NwD99CJnh3gnme2OXRMwsfSBqppZabd8Tow8tx72cGCw==
X-Received: by 2002:a5d:6d0c:0:b0:38a:888c:676f with SMTP id ffacd0b85a97d-38c5194a531mr17599558f8f.15.1738589004144;
        Mon, 03 Feb 2025 05:23:24 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c0ece21sm12570858f8f.20.2025.02.03.05.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 05:23:23 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 03 Feb 2025 14:23:20 +0100
Subject: [PATCH v4 4/4] arm64: dts: qcom: sm8650: drop remaining
 polling-delay-passive properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250203-topic-sm8650-thermal-cpu-idle-v4-4-65e35f307301@linaro.org>
References: <20250203-topic-sm8650-thermal-cpu-idle-v4-0-65e35f307301@linaro.org>
In-Reply-To: <20250203-topic-sm8650-thermal-cpu-idle-v4-0-65e35f307301@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1925;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=pPPjHSDlRSmjJrvtmUx5gQ6ccWOFtnt4ixNEfY9ZZY0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnoMNI9Pfur6NrZMPxDPFuNSQbD8wmGMgmBZmYhtoG
 shPghTiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ6DDSAAKCRB33NvayMhJ0QjGD/
 4/47vXC7TO5rJY0wWg/gNOHojZXR2rrpR1xajt/Hv5e0fssJw627GeOwl41yrFU+eLQ6gsVmJA9UR4
 A8CykJZHeX2WXVhaBOr9dqov6Jn2s7P/MWTmQ4/Ab/aS7zK7Ci3IMatC3J0QDNwt6zyr5vPMzceOGd
 8hwfaFpiyZrRgJJLQRqYk3+nUEf1j/9QqBMSNwwTyxxP+p/2aT0F2rrHxBXQhU0qiXjrQmf51Fs/r4
 dUGWjD2oNqTcGVCOQAyS5JrFCCxVUVbMWq5NewYnbG2KT73/IQhivuX9Gr/aYw3cQdhj0LjsgJr2Wx
 0x0s6zMoZBqP4raVIlpZbpRNAD1Bx7eWCYPaHNDI51xiZVwPJvCcniKaHPhp2GIIBObBItHPv9gPz1
 XbRRTyTDK+BlLAUcVXe6P2hdLZet2dsz5JVBj9dV+0roFAl6CXhHpLUen5f1YocwC1pGeWJT/6CERu
 c35QOSuimhixNyx6gSMrMyV62wuQKwHxvvUGbMQN3Cze3iGiSxxG2xuvtLXYefQTHZXAfftgJ1pmfh
 cCW1uP6YuEgZRtzVc9pAy2UM/wXTkEORI53daSkLsxXya2YP7JeY/kyX4dgazQt6ViNqsMDxxpeGGb
 +rW94KR94l9ILhEgGc5Aew+FsH4qMwKPC8WyptV/MFYK9MDRl1tpNc5eRiUg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Remove the remaining polling-delay-passive properties from
thermal nodes without a passive trip point.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 24070d99b6f097f38e618330414b5a04734e7e32..fbceb66969156052467473e7bf637c762df03147 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5946,8 +5946,6 @@ cpu1-critical {
 		};
 
 		nsphvx0-thermal {
-			polling-delay-passive = <10>;
-
 			thermal-sensors = <&tsens2 6>;
 
 			trips {
@@ -5966,8 +5964,6 @@ nsphvx0-critical {
 		};
 
 		nsphvx1-thermal {
-			polling-delay-passive = <10>;
-
 			thermal-sensors = <&tsens2 7>;
 
 			trips {
@@ -5986,8 +5982,6 @@ nsphvx1-critical {
 		};
 
 		nsphmx0-thermal {
-			polling-delay-passive = <10>;
-
 			thermal-sensors = <&tsens2 8>;
 
 			trips {
@@ -6006,8 +6000,6 @@ nsphmx0-critical {
 		};
 
 		nsphmx1-thermal {
-			polling-delay-passive = <10>;
-
 			thermal-sensors = <&tsens2 9>;
 
 			trips {
@@ -6026,8 +6018,6 @@ nsphmx1-critical {
 		};
 
 		nsphmx2-thermal {
-			polling-delay-passive = <10>;
-
 			thermal-sensors = <&tsens2 10>;
 
 			trips {
@@ -6046,8 +6036,6 @@ nsphmx2-critical {
 		};
 
 		nsphmx3-thermal {
-			polling-delay-passive = <10>;
-
 			thermal-sensors = <&tsens2 11>;
 
 			trips {
@@ -6066,8 +6054,6 @@ nsphmx3-critical {
 		};
 
 		video-thermal {
-			polling-delay-passive = <10>;
-
 			thermal-sensors = <&tsens1 12>;
 
 			trips {
@@ -6086,8 +6072,6 @@ video-critical {
 		};
 
 		ddr-thermal {
-			polling-delay-passive = <10>;
-
 			thermal-sensors = <&tsens1 13>;
 
 			trips {

-- 
2.34.1


