Return-Path: <devicetree+bounces-160688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB097A70A40
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 20:23:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A92873ACB8A
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 19:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB411F1303;
	Tue, 25 Mar 2025 19:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nTbWBWyE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C71E1E1DE2
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 19:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742930508; cv=none; b=PctjOG6iMJ9CBKg7yxJnMTd6WWB58rjmlXVn17xJENNRZgzc9hC6QTWoLR3OnXpIESvO2fiEuf7JWW7pEFoWninMcloQA1wd+hP3yADXNZXtsOvEpoTaBHznPRNn9xqhFzGb+4nDsoMNAVMvSu7Wj2LiL6trFpMIsbKvg7GeijE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742930508; c=relaxed/simple;
	bh=Nthaz0NG4GUzoxW0ejlW+T4NO4kSTaE/go27pedcyso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I3cSdvPZhmKCODyE0uzRygGuh7xL7W3f/TkowKKpAeiZvWP9HYiVOEKwlmghM9r2KVXsrDSCXJndZD9gwD1OgZV1eiOht2exzkFWMQ9K8K8tdhAShQMx9Dt99Zn+ENc/ZtO41zEe/V/cgWnwT5UaKz3zX5rQPwHrsRebr9rafG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nTbWBWyE; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so63022315e9.3
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 12:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742930503; x=1743535303; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NX3X2Lw9o8HyqDve0bpkran+lwUmFVl0q3xx6EdvBX4=;
        b=nTbWBWyEXtujxkhHLdEeTPAk6HO/p/K4qZKoLHn7vaO1Npw9wE26hO4gw+So701Ib4
         ZTjIzQQY/iQwundgfdjD8WYZNQithihJjt8KFCUsMOw7dhw+5ortYsavPUGEp2hz/eia
         TlAi4A1eMBHR/7KUvct3up6h0pO9qsOlRphgBLI5/pkWDXdlSEcfJUYzYM6XMgU4O6eH
         0kMALtSOTV30krpRM+Ou8SIrsyRhB+ZgzkMWdyiK/wFkJNfhJwRsCU8yec1CMrniu0Nb
         I9HWT893j9cCdvLbskbKDhAwmgB5H7c3ONI1e6/5v5+LBeXFLG3/+7vylsE6saWWJxUg
         w9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742930503; x=1743535303;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NX3X2Lw9o8HyqDve0bpkran+lwUmFVl0q3xx6EdvBX4=;
        b=wZyluiJS4zityA79vcK2lxoFybh3/IL4u6RPNY0oEWt9wJ+Bp8E73lqDvhnk3Hay1m
         TRC4ZN1euIDWYRQGWM7T9aMDp7wsWJJfD4gwEab1DDH/8Ul7SrhfSRx3Rrx5PAxPkWzf
         Oh/196KD4ETj2D7ijQ1AiEKLiMJKskeOvRcjo6+0/v/mS7ulbuYY33xmBetCaXDm3KIG
         /h3e7RkcDe9JhXqyaR49qgGZ0CzN/+Jq9AOXM3IC4d7iHDl8KsncwCVCG51Fxlo6MgXN
         2EoQ2JfvJSDFxdQdBoc8nXVq2Z++Bi6nndQptqpmf4uUgxK/99UlCYoh2iR7iSmi9kfC
         hixg==
X-Forwarded-Encrypted: i=1; AJvYcCWLs+/6W8naaknJSUEXOx385w0BaJafyHmlUq7ewRARXZgmbvny17SxbiHUNoEgNKvr2s48q9KrsLMZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwLhhqmz7BuzBTZIZ4SgRMQs7syEkMl3mhIRsC9zczG6irowBST
	AI52Wmm1nC2GCJ4VU99o4ET03sSKXd9ryJVWOrpaHMNyTe/MLfi8AnA7vWJ1V10=
X-Gm-Gg: ASbGncv0GgvocZKYsaS5xne7+Oo5csO/2X2JdqrLVD+e22GZaN7RYwdY5UGmInLEcv3
	3FrbFC2HY8awKVeS2bIw9NAoFnRUZkwO055ag2e7d5xnrpuZn0KTbXG/Oe/130rzqsB3MlcqxkX
	Fuhu6XqPDu+U9Xm36A3CSthP0SkVKeKhEjEUze6FqS4h8mR12tcasiaXD7wsxwCpe/AR95hao2T
	cZYDKcPjv9L0gcD36g0aCQJdtE6SqHnohqsIwlKBRKtQBXUFYuSewNRdwjbVIMzrJ9RgChIUfnT
	6iC2J9FGMgJauF2Clmoi0RPYMKN/Bhz4vzNobwoaK5Msv7toDWQAtvgP2+Ucwya1ZH8=
X-Google-Smtp-Source: AGHT+IHJrql0z1/Oqero5ZGyDYqpm792+Y1VSees9b0ZQC0BjriRq7qtGyhraVJ5zsff8nRKEETpPg==
X-Received: by 2002:a05:600c:12ca:b0:43d:7588:6688 with SMTP id 5b1f17b1804b1-43d75886820mr10210845e9.12.1742930503539;
        Tue, 25 Mar 2025 12:21:43 -0700 (PDT)
Received: from localhost ([2a00:23c8:b70a:ae01:9cf7:b69:fc50:980f])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43d43fdaca8sm213330615e9.28.2025.03.25.12.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 12:21:43 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Tue, 25 Mar 2025 19:21:27 +0000
Subject: [PATCH v2 2/4] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 LCD panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-2-e9bc7c9d30cc@linaro.org>
References: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
In-Reply-To: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
 Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
 devicetree@vger.kernel.org, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1609;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=Nthaz0NG4GUzoxW0ejlW+T4NO4kSTaE/go27pedcyso=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBn4wJFj2X98t0uiYe+j1XPDXnRw/zysHE5UWqp9
 uWjnbfunrGJAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCZ+MCRQAKCRBjTcTwaHBG
 +JOrD/955KOQMYKGtxljAeIGHuWcjZ/P6LUTLpHgKDYqJKaM1/qzI+OfEzxDXv8lAUEz6+p/sQ7
 2jd0yryGySf26uxgE3BSbey1ETdbGTpjGSuR4t5SQyyYwM3A4kXFTZWcdCIKLO8IqOr/RzAL4vV
 vPN/pBcgjf7sgC5+Kw5MMi0MpgNf/b8SG8aOgOsDOLqUP9jJr976gqMSNJ4VkFamqYO9PkOSxME
 AVznSLYk7G8WB50xbnZ28hagju3n2WfXzLrGCmHLs+XM6fj2C5VhczeYVCO0zbA/nSb9UQvzQfT
 V7nIm4fYZh2BAJ/+++624WOpJjDaGigsZ0EplgXHA59yO3gxk2LDVkfXZURyZFUn5mGv+4nMfBl
 WW7hS7rfxc36vo5rAbSSUBFamyQ6GTEXYMFDNnPUVXPPduvSNqeWSbC4WWKyGVziWONuyd93B2B
 owKQqdtIPDr1cRf9jd0WWClG/uzUTzGY76XLY2gNKN20EN/xRsMylfjsg+a1ISyrZNGVDsq7xDF
 9lHJsZibfyaGzYZujO9zMT42/YP4fH4ByREnqqOdK9t01FQJEQjzA7QvnGEhLT+jOqzKifGd2jQ
 +kfCfPPgK8NsNVH+3+kNJUI+NqIsPEzVQ7KF+XTtBE40CRSWaGj5Ce8YXZhSWAnDd2Foz4aVTK3
 WGWgvoArKHax4Jw==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

The eDP panel has an HPD GPIO. Describe it in the devicetree.

Unfortunately I cannot test this on the non-OLED model since I
only have access to the model with OLED (which also uses the
HPD GPIO).

I believe this could be split into two patches; one adding the
pinctrl node and one adding the hpd gpio to the T14s devicetree.
But I will wait for your comments on this ;-).

Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 962fb050c55c4fd33f480a21a8c47a484d0c82b8..46c73f5c039ed982b553636cf8c4237a20ba7687 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -980,8 +980,12 @@ &mdss_dp3 {
 	aux-bus {
 		panel: panel {
 			compatible = "edp-panel";
+			hpd-gpios = <&tlmm 119 GPIO_ACTIVE_HIGH>;
 			power-supply = <&vreg_edp_3p3>;
 
+			pinctrl-0 = <&edp_hpd_n_default>;
+			pinctrl-names = "default";
+
 			port {
 				edp_panel_in: endpoint {
 					remote-endpoint = <&mdss_dp3_out>;
@@ -1286,6 +1290,13 @@ hall_int_n_default: hall-int-n-state {
 		bias-disable;
 	};
 
+	edp_hpd_n_default: edp-hpd-n-state {
+		pins = "gpio119";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";

-- 
2.49.0


