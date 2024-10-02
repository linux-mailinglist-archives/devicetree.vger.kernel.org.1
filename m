Return-Path: <devicetree+bounces-107006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 398E898CB2A
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 04:21:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01032283730
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 02:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4BEA2C184;
	Wed,  2 Oct 2024 02:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XbdT/x6c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA0A1EEE6
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 02:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727835630; cv=none; b=Eg3AMLqHrUyMPMTm6j7SGTcTPn3sVwymY3uTIPjJjWjJ36VwyDsxWUjlPGl2jyCDc9PmuUJtO7VuX40Wm2dMIVIy1KWGuI5pJGCNrfqZcyewIAbxbCmAwiRHqhqadpQMq8jMHk0K1ewvRG/hR/3gmxAKlfJGNh4ygGoTB0+GWzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727835630; c=relaxed/simple;
	bh=KJ/XBCfRYMGGmoGw6pT+HzGpgHNM0HqU+ZU6WmeHwTA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CloLOjBdxUJr++89/Sl9JlGHzqL68u0WUYCVldLh/5W6ZiRWogBRYVg6kDLPxeDJsFluDlIl4VgfUPjxqqkVgGKm60DfFytzne0k3tymYWivSjbvb2MUL2BBrv5+gz3sv1aXKGlD2js8r8NZh4imFFMXQ1iEYV8UFVf87I7nSIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XbdT/x6c; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a8a6d1766a7so106980266b.3
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 19:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727835627; x=1728440427; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O6tt3oG2r1wMqarycN8kg/XqfelGZiLqlb3bl/K/iuU=;
        b=XbdT/x6chzSaPJIxDfWUqWJSYrH24odQ9WVoytBepNrzwfpkbu/gIhZz9bQd2gkndP
         4JLcVOjUV2fi2FVa2JmlKyaUaSQl/8E4jJyUA9LPbfFaqDLX4jxfqKZrVf/9whIlSZci
         KcmfKaz96eMZTvprEqlCGEtjqbCGKsqkyKl9CVL/bQkKarloIqDtJNvwPBWLp0EcsvEF
         f2RTf07b8GZpHkOMJ6ENtAgwQvy74PgNRtcqcknKChBFIan/kq+DKjLoqAQ7naLMeeJ1
         sHsBs2SPC1cPguwgfGywFIvXAlycTjFJtxYRuA9vWkZ/UnMrueAJ6DnqOuOvANsUfIPJ
         kxmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727835627; x=1728440427;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O6tt3oG2r1wMqarycN8kg/XqfelGZiLqlb3bl/K/iuU=;
        b=rUr2CMWUCrE5gFKLp9KScK1vJQnaN1aG7WXvyGMFM28tKVlR1g5fYYXJLURoVzMmsR
         uBRgVWS2SXyiTmnXm8wfstguudjEn2GYoSepwSpN6ppFcy8EohwVgORuwAHq3IPbekwc
         rpDJm9IRwX8WfdEs/sWYLPd/SQKWEoZM9Yt+cTub0/C7pzVTvrSkc1amj6ne8w+IPe9O
         rBy0lfs8beylKUxzeUhHyHNHSoc047410D7yQuw/vUcSjaYuVdlRMiWTqN0j2M9ilnq4
         1aHvgCX8dZApv2QWvDKQAHkqqtZj9SCzSOBPnf1LfUKymjbDFvFsuRWEs5xy9iFgbN4/
         iWrw==
X-Forwarded-Encrypted: i=1; AJvYcCUTG1Au25f3ymHsKoYZF2B//2pvq4Lfmos+r5nRgaWZt/Yj/nQZRSfPKRoEQob/RhgcBLO5CjEpXuyK@vger.kernel.org
X-Gm-Message-State: AOJu0YztrWgwAClWJ3zr3724Mo345pHZHKEQIdAbm568HUrnQXGttRlQ
	e+BnnpyDHS1eHxJjWOwUptZGjo5FSNjricC7ZA6VyIkTArqpdL2r+FsP0D0IBlQ=
X-Google-Smtp-Source: AGHT+IF7DSxO6S/zg0dV87J7CmDUxTyQGbSW2llz09R6q945EHLqQDNzRVtWVZkaJVui3r1JoBLxgg==
X-Received: by 2002:a17:907:848:b0:a7a:b4bd:d0eb with SMTP id a640c23a62f3a-a98f823904amr119175766b.24.1727835627397;
        Tue, 01 Oct 2024 19:20:27 -0700 (PDT)
Received: from localhost.localdomain ([2.125.184.148])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c2945f2esm787518866b.117.2024.10.01.19.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 19:20:26 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	bgoswami@quicinc.com,
	lgirdwood@gmail.com,
	broonie@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	elder@linaro.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com,
	alexey.klimov@linaro.org
Subject: [PATCH v2 4/7] arm64: dts: qcom: sm6115: add apr and its services
Date: Wed,  2 Oct 2024 03:20:12 +0100
Message-ID: <20241002022015.867031-5-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241002022015.867031-1-alexey.klimov@linaro.org>
References: <20241002022015.867031-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add apr (asynchronous packet router) node and its associated services
required to enable audio on QRB4210 RB2 platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 72 ++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 41216cc319d6..b211a49982d6 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -14,6 +14,8 @@
 #include <dt-bindings/interconnect/qcom,sm6115.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,apr.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -2701,6 +2703,76 @@ glink-edge {
 				qcom,remote-pid = <2>;
 				mboxes = <&apcs_glb 8>;
 
+				apr {
+					compatible = "qcom,apr-v2";
+					qcom,glink-channels = "apr_audio_svc";
+					qcom,domain = <APR_DOMAIN_ADSP>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					service@3 {
+						reg = <APR_SVC_ADSP_CORE>;
+						compatible = "qcom,q6core";
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+					};
+
+					q6afe: service@4 {
+						compatible = "qcom,q6afe";
+						reg = <APR_SVC_AFE>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+						q6afedai: dais {
+							compatible = "qcom,q6afe-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+						};
+
+						q6afecc: clock-controller {
+							compatible = "qcom,q6afe-clocks";
+							#clock-cells = <2>;
+						};
+					};
+
+					q6asm: service@7 {
+						compatible = "qcom,q6asm";
+						reg = <APR_SVC_ASM>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+						q6asmdai: dais {
+							compatible = "qcom,q6asm-dais";
+							#address-cells = <1>;
+							#size-cells = <0>;
+							#sound-dai-cells = <1>;
+							iommus = <&apps_smmu 0x1c1 0x0>;
+
+							dai@0 {
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA1>;
+							};
+
+							dai@1 {
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA2>;
+							};
+
+							dai@2 {
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA3>;
+							};
+						};
+					};
+
+					q6adm: service@8 {
+						compatible = "qcom,q6adm";
+						reg = <APR_SVC_ADM>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+						q6routing: routing {
+							compatible = "qcom,q6adm-routing";
+							#sound-dai-cells = <0>;
+						};
+					};
+				};
+
 				fastrpc {
 					compatible = "qcom,fastrpc";
 					qcom,glink-channels = "fastrpcglink-apps-dsp";
-- 
2.45.2


