Return-Path: <devicetree+bounces-126957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 575C89E3BEA
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 15:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 163141669D9
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 14:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5A11FA251;
	Wed,  4 Dec 2024 14:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CzVk7SSB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E033F1F759D
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 14:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733320835; cv=none; b=Yn6XJPK57HdHviTFr/08JYgNdbdr6r3nBSKOJ85PWzWhOUNj/+YGTNUsSoY1FJqllYJSybiWxkPDv+PdhD2rH1mgkLLK9DkqkgPpUH5aGutZI6BzUOk4PcGlWx07xJcNo43MngbSHOZLUPpmhM01lds/gIuBBQHYV5wi/luOXBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733320835; c=relaxed/simple;
	bh=Y88dxKTEB84Sy5sor9WVb8Lb3Eunx49GPWiCvst3MDw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ETfkJZGCTs9L3ffamkpEldjmTLRN3ejSQrEZ7iLW1bbqPAoicwqBgwfq1feSh6xQRxOQ7CCxdxQjL7IA4sO6KH2DqCeEh7boAhtPdAc+6rNhEMoHQAR4zmYkH1vrFmoa3sLAAHHQFsmqKW74ko2VWjpUi0dVYjTxVyyyGdGLsto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CzVk7SSB; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-434a1639637so63488885e9.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 06:00:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733320831; x=1733925631; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FNkMnvZSHVbHckJCKRyiqgolyEylIkwRfPR/FWi1wBE=;
        b=CzVk7SSBmlUhWOo6Uu1wiMPaqBawFLry0OzsNUKhGvddJUhkXZAMIvDCGAC1AIfD46
         0Jdu9CpMHFyUJJ7dHxNiFEHonYSC9Z1IyddIMkHKmEwc7I51n/pDxCgCQeHFozia/HJL
         Sp557ummHYc5A7sW1CkNIEt11TK3Hq5Gr37ubLN5inxFslunsF6qtOGdgLgyBWEPtxZl
         WKq26G7vL4PVPWd2MSxw5Dt71S0k44i1znshb2Xg8eZAaGFqI5Aj8kK4cb+zl+KFQ+g4
         i7vRXGmGIIX6R2Y5UcizmyaRHq5nm5LhfAuU0TmQEUVCigDVhaeGNM82LZZNKvIqkj8V
         /MVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733320831; x=1733925631;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FNkMnvZSHVbHckJCKRyiqgolyEylIkwRfPR/FWi1wBE=;
        b=PiK8XzIdmXSHsw8OV1x38yDGk2kI2ijRs+KwlPoySZ/+MRsBC3YPZTz+PHaprqltPI
         0uAknw9vxIpttcAqj3MT1vUleLxfktrK7GYRd5Dbhakbd8EHcoEBpFFP53F2WHsBaG7x
         LcD1Ufojv3jyWQdx/MaD2NNLNFuMRBbBADudmu+j1D5/1SXp8bYyutaAhB9RDMXtAnkE
         i/xYCiIBfHUtO+nCVLeBPXHL+pgf+dV3jyuAFYpn0IXMdnYTJF7vFroyp0Ab5UWbrYJ8
         zCa6rRo+lZAXkfLOWlcaL0Cc2bo0xBfYfLKOiwbhkY2TpVaEDLjw0eY7fOPcgzehgZai
         mCzg==
X-Forwarded-Encrypted: i=1; AJvYcCWFP7Wc1M/Et99AM72IAFtGOyuL3063/acvS5xe2QzFMWE+rjGd6qGZgPbma6B5Kon2fRR0TBHB0mzc@vger.kernel.org
X-Gm-Message-State: AOJu0YwkqTEvcNWwDXOP8nCMd8c5l76JLozoXQqHiUAsVOrfm7D+0q0S
	CK24ym2KvFcI78cawMIBNhNF6f3GPkwhsqvbFYGGhojw0/SNl+GeBUDZMG7QBYM=
X-Gm-Gg: ASbGncuubOQ4u9SlI7U1uGTPZE8tYscL0vjGy1a+pyK13t1K6ZcW2GElQ8Yew6zc0DS
	0jubu2Ehiin/uYTf3LdZh5Pr7OJzLQZSoKR02V/WEYKLLeuen76Yb/b6vagJ8Ieo5PHvfH8R1m1
	eXNK47BJ/Hj8wSYjNSJvfdrVY7lrvAsPg/RE1UPz6aLrOOaFEesBsYBboQnTtZ9VKBNq99COR3b
	RK8pYSYkcFxt5quL9wyEs/x3lirJ51nadLN1tGk4zZHPqVFCLSKWByuvSiZLh6YO89JrV8=
X-Google-Smtp-Source: AGHT+IFLm3mAtpQU8RqFuHUpb0/Y6Czk2iuRyOThmoKrp6zlYXL4Adntsv9jCROsNU0P1ZXKV67r/w==
X-Received: by 2002:a05:6000:2aa:b0:385:f349:fffb with SMTP id ffacd0b85a97d-385fd42a35fmr5359588f8f.45.1733320830981;
        Wed, 04 Dec 2024 06:00:30 -0800 (PST)
Received: from localhost.localdomain ([2a00:2381:fd67:101:8e2:966d:36c4:3579])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e2c84d52sm13689978f8f.49.2024.12.04.06.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 06:00:30 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	a39.skl@gmail.com,
	konrad.dybcio@oss.qualcomm.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 1/4] arm64: dts: qcom: sm6115: add apr and its services
Date: Wed,  4 Dec 2024 14:00:24 +0000
Message-ID: <20241204140027.2198763-2-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204140027.2198763-1-alexey.klimov@linaro.org>
References: <20241204140027.2198763-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add apr (asynchronous packet router) node and its associated services
required to enable audio on QRB4210 RB2 platform.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 72 ++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 9b23534c456b..816b8331933d 100644
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


