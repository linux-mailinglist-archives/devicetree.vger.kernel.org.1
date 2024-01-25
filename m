Return-Path: <devicetree+bounces-35169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9582E83C71B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:45:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 31502B21FC4
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:45:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAFA47316D;
	Thu, 25 Jan 2024 15:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FkZxV+zU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C153B73169
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 15:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706197539; cv=none; b=s52uzF0GG/jT8udbuiqFSvw1ZVrooTiO3a9s8nhxuV7dJIwunxW02+aY3NdrhPimye4rQXS4soO9UAXpTlCMGyXUOoOvEfXMbgptUn1eIvQ4lBGfjn/Ub++KefsUfzexz+5lUENLbkuWvziow6pl4TmIBOpnbE3pnJEDCuSVvzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706197539; c=relaxed/simple;
	bh=q1qkIXtslpnOwyKogLlXnCMaPNppQH6HlI4rFEyb7Bg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=T4Z3SQzmOa7bO1bEzHk6GAIV9/3WHX/2BKx1A4YTECUIwcMK7X0ezNogN51moKlmP/xR+ki6168Fd5Uo2FsmhWDRlW4I69kFRwZGx6WbKaOwkGtXGQQPSDw9O86cn/wd+zPDj14qxNdq0L6ITfFhj4MFPZuYDgpLKgnoRJ9Rtvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FkZxV+zU; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40ea5653f6bso71890805e9.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 07:45:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706197535; x=1706802335; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/ZKp3uqQYAmq1YVDENjbc/8chIdFJnXVp5TeqqADjso=;
        b=FkZxV+zUVnyuTCuXiMSYx561hRcu9OrmwxksFuutHP6M8iqftS86fp5FkFT5NhmdHE
         FE6EoOTZiQkfyCYR63rNZEM7pVp2N3L58vGawFBw/WetCS1CB3i1YkAP11FKBm5zPOER
         EoSAxE8dgrEm7LujSJ6DcASMPSZqWfkYnBcWEQmruyuTUVAx0MuOgkbPezstfPRkcQ1C
         MsYZ8yEr23jIZX+6O2+V9ccgkCZVAVEWYY80Yq4fHWnQ2MPJYRVZsgFYb/bVyBb//zB6
         bW4pBis+2V0P3TvfQYzNHi0ZF5vwzB0bqd9eZTz8FFNAMws3zcJQrp+/w1Y8zelAk5eK
         t45g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706197535; x=1706802335;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ZKp3uqQYAmq1YVDENjbc/8chIdFJnXVp5TeqqADjso=;
        b=XYl25f4DBM6KKWOJGDz8kG4tfIRgjhJ5i8zwRErSVisuER/Cy/pK3NipVeLEk+JDSR
         WVcG6909o6B2YuLeblxed3/zpx4Ir6lGIs2TRw5ix9tIlFx+J4TeaAU0pLzOAZ0hDrrU
         Y7lBZOKzTVTJ1rFDjar648YtStv+tw6y68eXxVUR9dEBKmkN4NQPE2ud8udfnaklcTsO
         eb4vIu+05TWMf85RpBMuOHUmvUAF/vOIqVgEJ7BVJPygUM4HS1HSuddbzeyWkEvxul9Z
         gFuFAk/BhNIXin27YjTBGY1iRIxVrvERJNDLi14dOGpJg2rXjIuM03atxa6ZEZLz3ygz
         Obzw==
X-Gm-Message-State: AOJu0YzCJgrIhLzhodJeh7T5DA/HhB4e0ck4h7DnKRfVszlr91pD1If/
	85imwi7z5K1IMCLo3MkGQx2Wk0ovbebqjNL6ypKJYzgMci+prv2twLavk/i6vBM=
X-Google-Smtp-Source: AGHT+IHuoNdaRTPK5NXqlIvnrcXgXqBejZK0Hmr6tF0tLG1/F4avGqmk5r5MmRqsRsj/fcgf5Ba8Jw==
X-Received: by 2002:a05:600c:4e88:b0:40e:b95b:e482 with SMTP id f8-20020a05600c4e8800b0040eb95be482mr672975wmq.115.1706197534905;
        Thu, 25 Jan 2024 07:45:34 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c471100b0040ec7fcaea6sm2986552wmo.37.2024.01.25.07.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 07:45:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sc8280xp-x13s: correct analogue microphone route
Date: Thu, 25 Jan 2024 16:45:31 +0100
Message-Id: <20240125154531.417098-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Starting with Qualcomm SM8350 SoC, so Low Power Audio SubSystem (LPASS)
block version v9.2, the register responsible for TX SMIC MUXn muxes is
different.  The LPASS TX macro codec driver is being fixed to handle
that difference, so the DTS must be updated as well for new widget name.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

This unfortunately depends on:
https://lore.kernel.org/alsa-devel/20240125153110.410295-1-krzysztof.kozlowski@linaro.org/T/#m62da29e6b80fa419e6339d3c27439894cb04cecb

and my tries to make it backwards compatible failed.
---
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index def3976bd5bb..0165492e4e11 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -986,7 +986,7 @@ &sound {
 		"VA DMIC0", "VA MIC BIAS1",
 		"VA DMIC1", "VA MIC BIAS1",
 		"VA DMIC2", "VA MIC BIAS3",
-		"TX SWR_ADC1", "ADC2_OUTPUT";
+		"TX SWR_INPUT1", "ADC2_OUTPUT";
 
 	wcd-playback-dai-link {
 		link-name = "WCD Playback";
-- 
2.34.1


