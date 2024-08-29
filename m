Return-Path: <devicetree+bounces-97990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 750F69644CC
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 14:40:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C8849B27D50
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 12:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEE721B4C2B;
	Thu, 29 Aug 2024 12:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ExigqJ8n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10B71AE05A
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 12:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724934913; cv=none; b=le71yiHu88tpK7eAEc5vJOUJfWTPeGub2uRAJ1ulUGsEKa2Wq68ZenU4GlwgOrNfgPl63Hsl7WBhrGfupbobwOpE4Et94s+FFAw8CJ1m3PemioYBhyT/XTF7UQyjt9GHWd4oqAMZpZG6eNymjL0vcgSGIIIsIvKWFvVqg0fv9V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724934913; c=relaxed/simple;
	bh=VRn7vc4Z1JA9+scPbHojQ2V3qHqDLR3yFuP54ma0FiY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IUWJrlYzoSBq/G731VU+Go1SXhT3klGedXyz+POP1ZT77zpXYM7bMIyCHB0w1H/wx8ptFNECFfcmE7bEnFhiSuqB4tuyTL/CbO7SDKoGPScphGc0Gwq97cYJdVSzVWMUT4D0UW+daHnPEgObchW8/N2uo0U1uos3zJVegRqXZuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ExigqJ8n; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4280ef642fbso939615e9.1
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 05:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724934909; x=1725539709; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N6OBwjY2KXO6xC+CMPk82B96QpUvXw7DBQfVw7yHx3E=;
        b=ExigqJ8nA+0gaTQ8hmBz/Dwwd1tcCxjdtnF5B3F7Msa8WEHxmiCZnG2nfEvpWUfZ5y
         wQhr/rWVz06Ni7w6uG/tClS5UqJPQkzBslwa75p90POf1kwH2WOuDRc6mhd0p2i/54Zg
         Rz3KBVD5VHhqHa34+d00F5aew010c0SPkmRnPaxfxohF7gSQgRjteL/CSSSTjc2bXGo9
         qRgV9Us+lv3AB0nLCgN3VgqpWMmmsvlR1pvxHkBj88NMeefnHxXPvg8sOX4La2joZeT4
         pb1BEYJxzzadRa23Lwyd02Ng0tB1EQiiDSqUVo5TTYwGfGrwdiRR9ZbEGaM4dolhhGyS
         mTjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724934909; x=1725539709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N6OBwjY2KXO6xC+CMPk82B96QpUvXw7DBQfVw7yHx3E=;
        b=lZo1GQWt2RHCY9gMW3Wpu62YNAT3TM0TzBEleAi00uFw3NNu+VXh8gy1HkclH2Ywva
         pUjg5HG40pmEaW/lsnd4TgSzjKKl2geMIUJgkaCDDo+B/jsaxrM5CQOC6GgTgh4clYtJ
         zr89SSFFWd8s7OX3WvAA2lYVN+hYTrAUhF0Zne4fd9irklJDe/bt+vOJ6Tw60ZrpfAIP
         212NTwKZyFfZRCnbUQYk+oGLKzfDbgQI5cs0jH3f0PtYPuG492L1W8k2BSI37rAZmC5k
         KR8rUgwhxyAi6+KLNiynVJvPbQQkNOwJxNMda2rRzrS1D+B263cQexcStoM24MOMGChe
         bQ0Q==
X-Forwarded-Encrypted: i=1; AJvYcCW6WXQggO2SFAx6b/EU2i+aACZ1K5NokDQAWHlTxF8PrjehlXDKAqErEazog2FidWuvdqMdfKfIooPN@vger.kernel.org
X-Gm-Message-State: AOJu0YzLZ70WD7o3KJkW4jI9LIZ0CwBe3K7+SsDrEKybq1qeXfupkq9a
	C8uWQzkD2n+Fzc8/ObXXF4Wo88ApCOlxHkb/Ivg2ORyriSUhQbfRuLJiCz7/yMM=
X-Google-Smtp-Source: AGHT+IH1pS2ydyjY2yzfYX30Qd8YjG4AYz6JiymfXuxgGKQCA+KoGyM7Hl3dLJinM2cIKAR5MbZPfQ==
X-Received: by 2002:a5d:47c4:0:b0:368:4c5:af3 with SMTP id ffacd0b85a97d-3749b59ec8amr996774f8f.8.1724934908974;
        Thu, 29 Aug 2024 05:35:08 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749ee4a55fsm1322270f8f.10.2024.08.29.05.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 05:35:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 29 Aug 2024 14:34:38 +0200
Subject: [PATCH v2 03/17] arm64: dts: qcom: msm8992-libra: drop unused
 regulators labels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240829-dts-qcom-label-v2-3-5deaada3e6b2@linaro.org>
References: <20240829-dts-qcom-label-v2-0-5deaada3e6b2@linaro.org>
In-Reply-To: <20240829-dts-qcom-label-v2-0-5deaada3e6b2@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1071;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=VRn7vc4Z1JA9+scPbHojQ2V3qHqDLR3yFuP54ma0FiY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBm0GroC3MP8Fvbi5hgApLk3kPcLCXGXQW4Fqu9b
 1uaxtUPJ9GJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZtBq6AAKCRDBN2bmhouD
 1+LrD/4gnP5oRva+FlgI2F47OHA2r2rtu/3zj9cUsr9DVlr18LT6Y/Apejn4h5vJQVE48tu5847
 kmmq++FvBAa5T6cjBmhqLZjVRdODRSThPevxuLwyfO/3KKtaLxBRY9CG+MBp6mnKmCK9Qf6iGw7
 2Ehe/aOIUvkJjrtsHbdl4bsWz1CgeOf/XZ6LmyN7ITdY+JL0gYEJ76/VgEVCAy2hAYgdNNqcBG1
 hyRbyfqFykaKjRJCxU9Z6hskofdngP0izT917L5ouQb3SQNDgayEP3EQmo2TEXxA+iVJIyyvomp
 g9TfQ3/eb4bGy0TA0oByEJh+WLqVKHUEVZ0tGO1kh7cv6ZKMqX0ugEXd3XCjiWImrlADQ7SuE9c
 7TxHkyz12RFBPyIJAPPWiGSpSexQ6UGnh31KmF5vu76uFYN+EpQtASx4Te3D2dW8qZEtK0Z0ynm
 SIkw77GkP/t3MkIgQDUtU4KzzAeWBc0J1VIcju+95cTp53zHgW7AHQODSBGhil+Qpk+CyAj//uX
 /TIRNyaZI/RQoMt81Nd23l3VmvQQm1EBoQ33aYMBDsaSux9EHUSsukc+Tt/p9FS+gburcyBjdkL
 2mUcy+4nHjhNvYEjZ0wUF8P2Ne0kct17G/DvdYdmO1utBb5W8+NaWUqhWYbuc8s3ClLi3MJZLr2
 eIdqpjCsMORAwdQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

DTS coding style expects labels to be lowercase, but the labels are not
used, so just drop them.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. New patch
---
 arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
index 133f9c2540bc..d0290a20b888 100644
--- a/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
+++ b/arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts
@@ -175,7 +175,7 @@ &blsp2_uart2 {
 };
 
 &pm8994_spmi_regulators {
-	VDD_APC0: s8 {
+	s8 {
 		regulator-min-microvolt = <680000>;
 		regulator-max-microvolt = <1180000>;
 		regulator-always-on;
@@ -183,7 +183,7 @@ VDD_APC0: s8 {
 	};
 
 	/* APC1 is 3-phase, but quoting downstream, s11 is "the gang leader" */
-	VDD_APC1: s11 {
+	s11 {
 		regulator-min-microvolt = <700000>;
 		regulator-max-microvolt = <1225000>;
 		regulator-always-on;

-- 
2.43.0


