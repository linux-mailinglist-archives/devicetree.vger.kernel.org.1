Return-Path: <devicetree+bounces-34755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B37583AEA3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 17:46:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ADB711C2155A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 16:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 135DE7E79E;
	Wed, 24 Jan 2024 16:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RtmEOujY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E757E760
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 16:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706114716; cv=none; b=sDIWyOOuHZU1lo7CPS8vNsEIwPDdWT6eqY+R7PYc4xpNPbTeBieEeXkcocJ6It0OHO05ssVYtZXsOv0kA1r3H+yGMgxcR9C2J/K83ubgxwiI8TP8KmjFFBJXObi68j/oqKXgszmnIQSeAjueLrNH829+KpX03/g4Rtrz0Lt5i8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706114716; c=relaxed/simple;
	bh=jpcsDAXA1KZo6FHeypWnR2nrsXwXdx1uTU+szPAsXns=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kveq+zlAikxtvUYtcapJceuTBxEvhsTvQj5OrxyudFfqiUhn3OrwMyUK2cIK4pfaWHu86YObAd7kE0TJxi27mD1tFaZSGY6fk+lCev2UkufibdCEI1XaRtzJuHRGKh835I/oXHE2Po4wiwYSgL80dUnPda+siDcZjBVfTMBuqaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RtmEOujY; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-339237092dcso4149512f8f.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 08:45:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706114712; x=1706719512; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ma1QQhK11zUQI9f4hz2k25EV0GtpYeqsCa+/7KAoKQo=;
        b=RtmEOujY5veOsJjr1Ih8ThLDzgb78MykZozR/w5AePWJQO8ThlitYILjYCzS+iWfZz
         MDCysTjBbTCCNg7xxNAuXKcFUYcFYMyVDxy86xnKbWW5CuplnS20wdWnTfTLvpM5Y7uB
         qoccCgst41jZK1PspCzAVeYFz4gJ8cuaTxcwD83bCHFbZ+04O7dmaMoMTRr38VQ8ZT+D
         NAPzElpCy8vopzMWVLmhzOHqqcBN9o3nnjqZxar7WaFLFxsroK2sbUVBvXQ4y3BBaEEI
         z8xCYkYKTo06oewVDIT4hmyJ9/RfAmQcA/6mmRAKKUqm0XPMrqh5eUAtPFdVlffcGc3Y
         A2Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706114712; x=1706719512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ma1QQhK11zUQI9f4hz2k25EV0GtpYeqsCa+/7KAoKQo=;
        b=IeQRYfaicfW/IPW9+spo2n7tjJGCks5hN+v5gRKAQV/YvIYy9xThdFq4S2fPRGw+NG
         bJaocQVoJolnyRBqhHDOJjSLn3u4TZcDdqPzIm40k1F4nRi/XRk0latXwqeE/mwoJn73
         NX3/uNq1Y8bTY7x2ehRmdNaI1uO/CwlDOGoMNa95npgwtIMfGbfT2NUtvfWwTvxwv9x0
         NoP0ZBCkFAbYltFY7jQCNARinuzqcYmtu6gl3QL15fsn0I2oeEhAzvtgBcgw0lRx00ih
         YhtflAeWFnjS3rXtGjhGzJILA/c9e/3Zcjk+G0RuSjxn5PbzGJVGp1K8st9jUg/SadiU
         m4jA==
X-Gm-Message-State: AOJu0YzaJ2uDpIU2RqaA/lCfQ6lALZ+2zWFrCyOUyBSRHA0RlPCusqUh
	6tkBBddTtQrpcH7X5u/GWPSDOI1FJLvFthYyIkU6HDVEyyXg0MsADBGiOtGWoVg=
X-Google-Smtp-Source: AGHT+IGzDIEpUxydzHRjypRSAxJj3nt4qh5Z5VHhh07APhW85LKtlspdKIerOdWzYvhVVp/mhxw6eg==
X-Received: by 2002:adf:e2ce:0:b0:339:2db3:f4e9 with SMTP id d14-20020adfe2ce000000b003392db3f4e9mr770103wrj.32.1706114712445;
        Wed, 24 Jan 2024 08:45:12 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id v9-20020a5d5909000000b0033936c34713sm8137883wrd.78.2024.01.24.08.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 08:45:12 -0800 (PST)
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
Subject: [PATCH 4/4] arm64: dts: qcom: sm8550-mtp: add correct analogue microphones
Date: Wed, 24 Jan 2024 17:45:05 +0100
Message-Id: <20240124164505.293202-4-krzysztof.kozlowski@linaro.org>
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

This should bring AMIC1, AMIC2 (headphones), AMIC3, AMIC4 and AMIC5
onboard microphones to work, although was not tested on the hardware.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 393702fe61aa..0c94edb8b824 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -105,14 +105,21 @@ sound {
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


