Return-Path: <devicetree+bounces-12839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E54EC7DB83B
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 11:36:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E78C281583
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:36:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5903D63D9;
	Mon, 30 Oct 2023 10:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u/fEPZXV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51A512E5C
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:36:47 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB7BC0
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 03:36:45 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-507bd19eac8so6200217e87.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 03:36:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698662204; x=1699267004; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/4+eh4kuDYlM+0XoOFl1j21GXPiGzFQcZ1jyrcn8Ob0=;
        b=u/fEPZXV9eyvLZ9iB6nTekew23qDT/qQNTEfN0OlLceiONqZNrmS4d3dKWn2bfVoxx
         Wb0xKOTtUaqoHDYK0K+I+Y6Qb2oioEeOQ8xREb/Pa0Kbx/DJ8Zf03IihPEHzq076GdiN
         edMrok4bjLsVBJYDTn/iwlgyeiuyCh/Hhv42shjlB9Z5wdQma9fslCwkr0iXqG85jbKc
         AWY6erqRoofgXssD5Hjz3g1YyuoNJMFOAEE8lECAeAReMI1ztd6Am9d3qp2oM5fngmn+
         JLG0+cq4jymxHsyKiOi5B+wzRbaUuFcXL1pnRWn0HZCJtQgzLgkd1nlTO8MbewsM7J1g
         IfBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698662204; x=1699267004;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/4+eh4kuDYlM+0XoOFl1j21GXPiGzFQcZ1jyrcn8Ob0=;
        b=QqMtGXxVz/2PHZ6lRnifKQsAdqJUaaq/HzCWUslxUpBHcRvEprwt7opVhWbCLEe201
         EPDvMe5rc0BVmfAC70ws50Xe4iGqUHMc1Cl2SY7OLQWM95xaHnxl1Goggi4y2lfhiMFo
         6D2zTJ86pkXxeD3X7dYzeZz8xIib5gajtK0LV3jPP7p/QfTX3bAsYCz8hTLAkhNzQ5zS
         dZSOTQ19cTw/DfFGiDUuDOh1TPZN25YvpjRkDDjMXJM7bF2lJftazGAuH1SWIOv4pUwE
         tToI5GvpD1+PpSYDi/HqtU1ALH0crPD6q5hp1jlf/cJg9c5NbtL2fuq1ldRUegZy7w+x
         iSdw==
X-Gm-Message-State: AOJu0YwgvIYGQx0F4ARyNc717fe8Q0sUtDAurR7X2lsS0liy2l40hZLb
	ja+5aSrKjfgn4z1egQoMnrdZBw==
X-Google-Smtp-Source: AGHT+IEGVqS4uBQs7Hw9muJEQ3nUCcWEPHRVACdpa5VFhl/0qtWKcas+HfqqFi17wdBt63lJA02IpQ==
X-Received: by 2002:a05:6512:1323:b0:500:c292:e44e with SMTP id x35-20020a056512132300b00500c292e44emr1937739lfu.54.1698662204156;
        Mon, 30 Oct 2023 03:36:44 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r5-20020a05600c458500b004060f0a0fd5sm8783209wmo.13.2023.10.30.03.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 03:36:43 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 11:36:23 +0100
Subject: [PATCH v2 1/8] dt-bindings: display: msm-dsi-phy-7nm: document the
 SM8650 DSI PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-mdss-v2-1-43f1887c82b8@linaro.org>
References: <20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-mdss-v2-0-43f1887c82b8@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Marek <jonathan@marek.ca>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=815;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=OnxXDntwlDGC0O778vMV/1raM0wE4XEonnITvW0QgTg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP4c2aGxS0U5Ah+TIDzr6R44jBG5iqvXQWoDEG8RF
 ie8kz06JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT+HNgAKCRB33NvayMhJ0Y84D/
 wOLJD1bdmKRgnGkL1btpWYk2/qN2eino/ju7Djdxyil88vqlZ/C/EVo6DzR+Zofdbrdge2PJN0J8I+
 STBVVgTJjC6CSTb3Br2t67OdW0OOkzV4uFusPMtvFR09u4Ra6C2S5F6qNBk9TOpR2Z7o6fTu3wuflp
 Vb9+MC9fPJCn6fjDtXCq6A702uGswZZMhYHatu7Wwz3TjS3MkcllTBs6SUL+Nzv6kjQX6N2bhReQ1h
 JT3yyLDi/jugzzTUQDsilTS1UXusAw1NbHhM+C66e9BwqezEbwTpqhjtOfMIGlJEt4mvHIdrcFi7Em
 DUPUGXvf+Y1+BsgJh7q9Lk9BOJ19wKA5+PrW85Ep9SZWAOWQgIrtjHEvneKVa1w6TUsa5x1tVuKNZO
 h2VWFvKWnUdJjInhMkBrGmTNIs06s2u0NhtYRZYDz3Tgl62qws/nLq8kf3VX/AdfPhZKaaRxE0j75O
 hECfLfa3ByxasP4Bl1oAp+PSFW65XjwAa0oOfGHko1vDCZNL/C0nxEhqa1SZGYySiiQuhoWG/Dia7R
 k/cwahyL5audoDI8msJ+PDytTFa78lo+KNs2rBLtZRBZcwlAqn00gvei/KMY5Jw0ghHTwTgi528jVZ
 GgxbrH8q0fJF5yBypUQoyHIdBre/pqv958DDwfbT2xdkJ70HwFHiIkn9RXwg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the DSI PHY on the SM8650 Platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index dd6619555a12..7e764eac3ef3 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -22,6 +22,7 @@ properties:
       - qcom,sm8350-dsi-phy-5nm
       - qcom,sm8450-dsi-phy-5nm
       - qcom,sm8550-dsi-phy-4nm
+      - qcom,sm8650-dsi-phy-4nm
 
   reg:
     items:

-- 
2.34.1


