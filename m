Return-Path: <devicetree+bounces-117946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C286C9B880E
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 02:00:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 536791F23008
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 01:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B142E12AAE2;
	Fri,  1 Nov 2024 00:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A/KVrrhv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8FE347B4
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 00:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730422781; cv=none; b=TgZIVGbta+1ifv979XwlaVkUhGOfilU/dNYgzOafqmL5pqsRriZNSGzt25Vtv4XFnwdX/nEv/PzF6vWeyHmrVs4tm0X1I7a7it9M8wxj2e97HPPYoSMlCAsIk1RhstUc9KmrpkF1FuK628f9I4Iz6IvT8z/KuSn9xN6AgDQVnl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730422781; c=relaxed/simple;
	bh=VCi6ONG+eExx5zVfektZQ7rdLcz1JpRnARHjJbjRWDM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BMzNTSFJwG+ZR4FnARwwfovnwoHq6ExQHkUy7UntvJ9LgYVKPYseZ2eQA8KLF0IAzPMO0BPjMe2VK8soq0v/6U7MWvNJeVlf/yQuq5ywydtO7mBsQILw+jMRnCtRVDNjBRrrFDW7k6XDnkGucqcc8eX5pzOdJOZxNq5WK/zpqQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A/KVrrhv; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43161c0068bso12555865e9.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 17:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730422769; x=1731027569; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NxmD4h7X2/jUK7rdCnWeAf+paKQ/zGmzscgZHwidemk=;
        b=A/KVrrhv+E/D5BHSkUTP5uJxmAJfQgH2CRerBzVe91ce+iSGXqzuTnXal2YtA/pf1U
         EPClT4bqb6i8gGQrEgoV9QFDh1c+2VrRP2sbxjx9hN/BZ5T+tVC07Ga/u1Vng26DeAp3
         exkQf+DzpJ1iYraS0buAw2lLHcF/3f6Wi3+WnJl7xvtInuYTcO/+ga7qNi+ZjWMp1Skr
         iLkHgz8i72yAZ0i/Wzh8mgU7feWnx/fUcV7ZMNmHBKs3kpepAGPqWtVDByrLB7ReUFBn
         UW6t9v9YUXxy4MaYSFR4UEpxCP3k8NOGcP6OJtaYRn0qwlyTfYEWSpx28RAjv1GanhVH
         fX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730422769; x=1731027569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NxmD4h7X2/jUK7rdCnWeAf+paKQ/zGmzscgZHwidemk=;
        b=H5Krq1oCezB7EzB0GCTpy8M/TSPyQafTjSMwwFWO5smLGUB787jWZszR1z4DgdGjym
         PKZYwfublLJanrrRfcq4rjWH2NMnjVB/FlQbLenLDtjUHEnof1W8+JXM5VsKjcOLn4a4
         lF1YCh0Bf7Eq6dxRfKMLs3m6AmOt55AO7+ak2J2fGjqKtPUmox6/1yNHaYjHVd/L3XBk
         Un4YvJ7hzTs56bwEXe0DQWnQQhNm/lCCbAqWOJWUmqKIV0kBTaHZ01u2kyXemLBAdPp2
         0vN2NAlWKwZ0VNS8XnnIjtwBAr5InFV4iwh8/hBhbe3tVn9GJFVAgvahPzQbgmO4FEsp
         r1Ag==
X-Forwarded-Encrypted: i=1; AJvYcCVVEtSdy/GMmK85Y0BvOul/PP0V/VuPtmVQnSrFm0cWY9B1zmvOBJM6ZQjGM6GzOgK5X/MjxFIxmvl2@vger.kernel.org
X-Gm-Message-State: AOJu0YxMw8Epd50ViZlqrqnZWHHuVOrU34D4OG/X5EfaSpgW4+nQYm1n
	gzByhrypGGxaZzVeOnPULQgjl/Q21ykn9Vsi0WEVAxzXKbPNJK2jWOwCQxGmESU=
X-Google-Smtp-Source: AGHT+IGVabdH84m7Pxob8e3TXE04XGU6HyoNM5yVrAASwBiZxbSZH/+7nnWLPr5n3iVCWBga2Rf0lg==
X-Received: by 2002:a5d:47a4:0:b0:37d:4894:6878 with SMTP id ffacd0b85a97d-381c7a47dd6mr1323810f8f.10.1730422769484;
        Thu, 31 Oct 2024 17:59:29 -0700 (PDT)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd947a9fsm74208035e9.22.2024.10.31.17.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 17:59:28 -0700 (PDT)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	broonie@kernel.org
Cc: lgirdwood@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	linux-kernel@vger.kernel.org,
	a39.skl@gmail.com
Subject: [PATCH v4 2/5] arm64: dts: qcom: sm6115: add apr and its services
Date: Fri,  1 Nov 2024 00:59:22 +0000
Message-ID: <20241101005925.186696-3-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241101005925.186696-1-alexey.klimov@linaro.org>
References: <20241101005925.186696-1-alexey.klimov@linaro.org>
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


