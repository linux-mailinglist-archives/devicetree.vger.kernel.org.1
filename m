Return-Path: <devicetree+bounces-18371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B097F63C4
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 17:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0323B281945
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 16:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07BFC3FB04;
	Thu, 23 Nov 2023 16:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PuKHJoKZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D050610D1
	for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 08:17:46 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40b27726369so6937295e9.0
        for <devicetree@vger.kernel.org>; Thu, 23 Nov 2023 08:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700756265; x=1701361065; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D1QWKo5v1x3RldbHoETv2ObEXLCGaOLMr/Qq6NkPTAw=;
        b=PuKHJoKZOgm6NKkcURNE+DT/ehuqGdHHOs25dDJque7EDpPzXvkgfe0G57xSgAXzl8
         EasBU8v8YqqL3yGe1/98uicjkxfFpIRBoJDtNBUaLnh/MIkAmMHH5DjP/SSVD2H3zG7L
         mQZiwekWNEP0XgfweP2TBNA/NUNnrx5Fd04YksUa2tqJMGyIl258Oyx3ia8oaHfNd0X0
         RtDTQcNXScxMeMMoJ3Fn3R9qf9fS8csd9OBK5Uk9z78ckE+oRDb4yvBcjJ/e6aoK3Ot+
         IcqTQdLnDw8ZK1JfakwjTEvOu9Os5jWwxpSYTW2OsnhMt4YwC7NAXfIz8hGnPp2oUUob
         OrQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700756265; x=1701361065;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D1QWKo5v1x3RldbHoETv2ObEXLCGaOLMr/Qq6NkPTAw=;
        b=F+dFM0ujeAj1gJax9c32DCMDr+bq7M/AnKctfhSS16dBm90GWzGs/mRKRfsFas3bhl
         3Fvq8AEp1iJ+yp4+jZpptsjmRa7TtTQ2aZZrIypWU9o37DZuG7+vDXUenA5B0yRly/DH
         TK1S0TRfecLxY2D2TBBpySjfQKzfiP/jWLvqsChH1Lgm0Qzl8/RIeZxASWAPtV9Qklzk
         v9FdCMvu2XseF8efkbzABYYTh5SiCnl3hMlGrG4HRkJMrAn6mCkPgSyO6o1ztyYukpj5
         FE3v6RWoVvOaWdeNnxH17M/x2e0umlLSOlPJ//rTu4KjB7qEOvMTuKi/VS00iK8JMowM
         X9wg==
X-Gm-Message-State: AOJu0YyuqXA/newlms23pEYLEKIWJmzY2j8H7fO5LuubonD+Is6dY0Rr
	NHUODA+v5jE5cfWNSBkSbaybHA==
X-Google-Smtp-Source: AGHT+IHG1IHPzr5+pbBp8rozL88cTH/APU9g55yvH+q/8GEbtJ5D528qSdJUOc4Q7WvVqxqFHAVyUg==
X-Received: by 2002:a05:600c:354c:b0:405:39b4:3145 with SMTP id i12-20020a05600c354c00b0040539b43145mr75899wmq.2.1700756265210;
        Thu, 23 Nov 2023 08:17:45 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y3-20020adfee03000000b0032f7e832cabsm2052748wrn.90.2023.11.23.08.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 08:17:44 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 23 Nov 2023 17:17:41 +0100
Subject: [PATCH v2 1/2] dt-bindings: power: meson-g12a-power: document ISP
 power domain
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231123-topic-amlogic-upstream-isp-pmdomain-v2-1-61f2fcf709e5@linaro.org>
References: <20231123-topic-amlogic-upstream-isp-pmdomain-v2-0-61f2fcf709e5@linaro.org>
In-Reply-To: <20231123-topic-amlogic-upstream-isp-pmdomain-v2-0-61f2fcf709e5@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Daniel Scally <dan.scally@ideasonboard.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=643;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=TxQCQp8KexETWz0DJ5Ct9muX5KYY3F1pMZr7p8jc1eY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlX3smKF0j7nA9VBHAoArGETDgFABLBq+akOAUMfBw
 jks/YGWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZV97JgAKCRB33NvayMhJ0c8+D/
 95IVvCDmoe/Lg2/8P5KkyobwLXAIcequgCcdntyasiSIm4J1E1f86uko4BSsU5yVlpIaaTRrQ0N/3R
 y5hkNE24ppDxdjraw/K5W7Lu3ooELU0qiCiLJS46My/En8UXBv52LSI2RjzUA+IH/xXswYlvt8/RZj
 Cj1BmDSFmVewFPyctRF5r8YtaEsUQMhUd6lOxIP1OFE02wlQdklaRnjGH2DY6D4iFXg+NMwGUJ1Kt2
 eygrQ7B8TuV5alfnzgQvPvwBCws6dXOzVnufEGz6NcoZJoxCjcy+nLJhWa72KyVMFeiE0XT3x0mtC6
 Ru+l9E48F29MPVit+ijBGu1SkEfaL17/yqs5vJ6S40N+MfQ1Ta7A2pOQr855AsXn3ZTHPX1Vwp/FaK
 5rspfLzkyL7WvQXVCGbK5C4/+i5ltdiJgq7UDpXcU5zfJNF3YnKDTnd7yaOuWdp9ihmGBi4kmbSjG4
 cvq2oPuLGlmsmVNw4gUoYj3kJIGwnIYtFzWGDNWgC3YJBktymd+L39jSAhdt+B4lxU2UaGk8OUTJDz
 fTm9YxSUls8SXyiRfkzZ9f/X0w0WDzqYXT166ul81xaq4aaAan4BQLwcPxoTgewYTPbMo/4jIcjKcv
 yDMMFdXEKi5qq6578gj4ZwfuR1+G27bQcwYruddf39cSSN9vfdIOFt6pTVYg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add MIPI ISP power domain ID to the G12A Power domains bindings header

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 include/dt-bindings/power/meson-g12a-power.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/power/meson-g12a-power.h b/include/dt-bindings/power/meson-g12a-power.h
index 44ec0c50e340..01fd0ac4dd08 100644
--- a/include/dt-bindings/power/meson-g12a-power.h
+++ b/include/dt-bindings/power/meson-g12a-power.h
@@ -10,5 +10,6 @@
 #define PWRC_G12A_VPU_ID		0
 #define PWRC_G12A_ETH_ID		1
 #define PWRC_G12A_NNA_ID		2
+#define PWRC_G12A_ISP_ID		3
 
 #endif

-- 
2.34.1


