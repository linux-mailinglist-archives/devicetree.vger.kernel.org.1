Return-Path: <devicetree+bounces-34754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E009B83AE9F
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 17:45:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E1161C22D2A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 16:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A3077E76A;
	Wed, 24 Jan 2024 16:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q0bT4Blz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97347E578
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 16:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706114714; cv=none; b=YmGqqdeHmkUfhc8X9WB212xTsv78tHv/Plox2alG9Caku3l9/IIMd06RMJeY26FHULu1NkqwiF59xN2lF0BX0WWkrDYYrX2Wf5VTHzSju0tQAN+7x/GAMuvhP9DxEpdF6x0PH2UHVdQs/AIfms4l4ORhNHJgxteKMCYTgJj/v5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706114714; c=relaxed/simple;
	bh=QoOGnO9l48+0iK2zIq/3QM25tfKdYuavsbe3FmMLGCo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=S9v0xEqEgEz2PHmZjSGQ9BW5kCtBnLHcqdrN7tOjmnZpx43InMrqjgnYnw0Y0rEUKSBqnK9PGHzjQ5tDm+iU8Bx/CTRN4+GCOolPm0CB+lU3cPvcdVHG1dtRtKETHCEV6PYNi6Ma2+Ak/jlJ6sjKRqmBKg6jzZ9wDO4M1V7masY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q0bT4Blz; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3394b892691so732036f8f.1
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 08:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706114711; x=1706719511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oPfitwNDeh5IgnqcpIOPgmDXuTM9ZGL9gpaSrx5A5EI=;
        b=Q0bT4Blzca3gzvOquclKRUMXcovCgJ3rbjkEdaC6IiCS6146aCpprC7vxsqn6BmZwp
         0Inw3gzFJ0DL+/unlqNpbrYrt1yUiLymcTmL15WXsDXlVdf+MhnTKquCTdzGykTPMn1q
         TNP0hpsims2RBYMT0+Ge3TFVCfaoWnNe0jUsPVVvAJJ6afMTX6NentK5MgWyNeH9jaVs
         rjdOLUOkHKnavccCdJgpRKIGXGIeplV7KnXE7uJnFVslag5prIst/BiLUAor4xjrBbXw
         JrvmJBckWF9NLrJqu+pWTC91RW23g4vDy5+oxp1Ksxp9y1I5B86bZjF9qHhKVI8fPTtS
         2/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706114711; x=1706719511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oPfitwNDeh5IgnqcpIOPgmDXuTM9ZGL9gpaSrx5A5EI=;
        b=XCRbuNSfyw8YIRIBoSXCYOeOQsevP+dRGKwryadWD9fyf+7HS7qDaCJkuCTAiGLkvL
         JNSIwEGtXZCagxsFgeON0qZIao9YGycQcV28T78Qfl7pZdKiLaWszl9LAVCdS+C3hLEF
         S/oiD79TC0EL1xtiBldp9JbpMKKTg4m4SlshxuE/3Pi3RykYscIMcmGfLFN2DnmP/4Yc
         Oqwji+V4xlDdaY7wvTg7HQ4ulN5yZ/4T834wOd8Dca0JgiB5eCM852Pl3u44F3gGbWX5
         W6v5CmqYT/dtjJYMqZYy/TDfxutCckMfwpsCixkHeYuE1V1xDR2/teysQ0+P3oCTKMWE
         i+NQ==
X-Gm-Message-State: AOJu0Yyc8hjMoYpMeXEXVC1DsNPWF7uOERH1eaHzYuT9HVUVvFDmsg6C
	25ZXChVImZ2AAoIwtJg8Zn4P2vlG4T5qFMqUAFcYHTtxw9TGUAKA/xNYinv0a2M=
X-Google-Smtp-Source: AGHT+IFNcVQ/QAhZDmpYTpVA0l1F6ufY+pFwRE7hXKbSPf/Vo2IglSs9KoURycgpOMh/wr1pefDR9A==
X-Received: by 2002:a5d:4703:0:b0:338:5dfa:5080 with SMTP id y3-20020a5d4703000000b003385dfa5080mr595282wrq.24.1706114711106;
        Wed, 24 Jan 2024 08:45:11 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id v9-20020a5d5909000000b0033936c34713sm8137883wrd.78.2024.01.24.08.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 08:45:10 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] arm64: dts: qcom: sm8550-qrd: add correct analogue microphones
Date: Wed, 24 Jan 2024 17:45:04 +0100
Message-Id: <20240124164505.293202-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240124164505.293202-1-krzysztof.kozlowski@linaro.org>
References: <20240124164505.293202-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add proper audio routes for onboard analogue microphones AMIC[1345] -
MIC biases and route from TX macro codec to WCD9385 audio codec.

This finally brings AMIC1, AMIC3, AMIC4 and AMIC5 onboard microphones to
work.  AMIC2 (headphones) should be fine well, however it didn't work
during tests, probably because of incomplete USB switch.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 76e9ca954093..79ec673f9f7c 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -123,14 +123,21 @@ sound {
 				"SpkrRight IN", "WSA_SPK2 OUT",
 				"IN1_HPHL", "HPHL_OUT",
 				"IN2_HPHR", "HPHR_OUT",
+				"AMIC1", "MIC BIAS1",
 				"AMIC2", "MIC BIAS2",
+				"AMIC3", "MIC BIAS3",
+				"AMIC4", "MIC BIAS3",
+				"AMIC5", "MIC BIAS4",
 				"VA DMIC0", "MIC BIAS1",
 				"VA DMIC1", "MIC BIAS1",
 				"VA DMIC2", "MIC BIAS3",
 				"TX DMIC0", "MIC BIAS1",
 				"TX DMIC1", "MIC BIAS2",
 				"TX DMIC2", "MIC BIAS3",
-				"TX SWR_ADC1", "ADC2_OUTPUT";
+				"TX SWR_INPUT0", "ADC1_OUTPUT",
+				"TX SWR_INPUT1", "ADC2_OUTPUT",
+				"TX SWR_INPUT0", "ADC3_OUTPUT",
+				"TX SWR_INPUT1", "ADC4_OUTPUT";
 
 		wcd-playback-dai-link {
 			link-name = "WCD Playback";
-- 
2.34.1


