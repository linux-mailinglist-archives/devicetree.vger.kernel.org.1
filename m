Return-Path: <devicetree+bounces-2835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B835F7ACB6D
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 20:39:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3089A281786
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 18:39:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C813CDDCB;
	Sun, 24 Sep 2023 18:39:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B6BDDDC4
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 18:39:22 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A67CE3
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:39:21 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-405621baba7so20861095e9.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695580760; x=1696185560; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JDWHB1WKJQ9UFWx5zu1gEgL+1FlRAm4HOBKXObVJBnQ=;
        b=KHC2DOjjNA2wvZS9Sp2plgOMI65CJsThYamDBoXK0H5FX2Msj+ps8o1sKG6DkHc4FA
         OOCWDtigds6Waaw2zdnE6ME3uQRSNV0ENqByL40ctCNQECCEeqtIRYNQxZcrGCTNI+dj
         7iOFUoe86jXoNpXS08yEuRFKoMaFoj/oQSAd9BD+ZLBXNe0gw3TC9ht8GkD99gYTs8XT
         US2yvIxfrCZXY9EXcfKT6TrGvhNEt+MRS0Iw1oVLQc/eXQsC8vfGwzZlIVYIjr4xfTUa
         nhG/KUtXNeRady7TOKbXRuakaFUtjIKz1ue7YzqN2xe4ng8YtehrzOT+bTYqdD+9qZSL
         EAQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695580760; x=1696185560;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JDWHB1WKJQ9UFWx5zu1gEgL+1FlRAm4HOBKXObVJBnQ=;
        b=EV2mneYOjPeFikHw21p4KRcWB4VX1nCMFHFvVTgn5X4ZqEn4wo75RBjdmCNElbX6RD
         BIIDqgTXpPy3zgNCx0vu9IJZSlCl7x4Ak9vCgNZe83b4R83rSO3mblMJT/HeWFzztsde
         joE6igcanLqJ1fjDwYtaY+43GRP05Y0fIA/L+zM9BlfGSM9kVbGfNW6o3ixQdAUN+YX6
         zhJQ9QzIauPHGdbQrIUnoYF/L6Dyf5lvTay4Hac7k0UkwXkDDneHn687eweyA0p/ukMU
         NSpzyRe+KowLVuCUvwyte7RburJorTCMk/b+yiaUwDRWg5/VJolbfWispzgJVw1gTQm+
         QZ9Q==
X-Gm-Message-State: AOJu0YxN/oRnAG2ko3VPRYAFW2rdNQA/Ihdoj0HmrNsdczJXyk05GxSZ
	/UebhkbiRo+Q+gYAQNYzV7I9og==
X-Google-Smtp-Source: AGHT+IHv+nx/rJB1OOKnIvD0oA5UGq4NPuXVJ4tt3A6W7gZQko10kjhseLnqn9343D7X11Tc1jeFcg==
X-Received: by 2002:a05:600c:289:b0:401:bf87:9898 with SMTP id 9-20020a05600c028900b00401bf879898mr4498038wmk.25.1695580759930;
        Sun, 24 Sep 2023 11:39:19 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id v20-20020a05600c215400b00401b242e2e6sm7570446wml.47.2023.09.24.11.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 11:39:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Stephen Boyd <sboyd@codeaurora.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH 2/4] ARM: dts: qcom: apq8060: drop incorrect regulator-type
Date: Sun, 24 Sep 2023 20:39:12 +0200
Message-Id: <20230924183914.51414-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org>
References: <20230924183914.51414-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

regulator-fixed does not have a "regulator-type" property:

  qcom-apq8060-dragonboard.dtb: regulator-fixed: Unevaluated properties are not allowed ('regulator-type' was unexpected)

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
index db4c791b2e2f..569cbf0d8df8 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
+++ b/arch/arm/boot/dts/qcom/qcom-apq8060-dragonboard.dts
@@ -24,7 +24,6 @@ vph: regulator-fixed {
 		regulator-min-microvolt = <3700000>;
 		regulator-max-microvolt = <3700000>;
 		regulator-name = "VPH";
-		regulator-type = "voltage";
 		regulator-always-on;
 		regulator-boot-on;
 	};
-- 
2.34.1


