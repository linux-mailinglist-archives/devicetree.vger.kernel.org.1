Return-Path: <devicetree+bounces-5382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D17FB7B6232
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:10:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3F1C72818B1
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 07:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA95FD275;
	Tue,  3 Oct 2023 07:10:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06F5D26A
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 07:10:32 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A24FABD
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 00:10:30 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40572aeb673so5986675e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 00:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696317029; x=1696921829; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JssHYOFSSsJtW/9ko+cRQNdDDnX/e2dMOwlr6O98kGw=;
        b=Bw3BUh16HcG7MpTKAbNKrFk90VMe/WAHpAHIOieEahF7gaSwcKWhYUC77JCfgJA01N
         9IEzqd9GFf8nUVNy0iGCOtgsbUoHgAdeIPbvpB7qc7Mf9dJHCNY9QAbIF3SuLDEnaO1G
         K6RqxOQ2uSwsjabILVDfgEaux3xaUR1Zd3HIlcqN4s+e9gmay1Z3BFUP/38U1KwaZdtn
         Q/ocoOccy0aSeqJZbuIER673TLvHNG8XYXw0bXgm3mUgytAXvUo2qfxPoJ89d928iEqj
         Ko0av2QRb6ETeUzybvAVGzglrtjdi1NRnYNata69a0ZJxD3pXGBJmx/DweezGCzi2O4t
         nOTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696317029; x=1696921829;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JssHYOFSSsJtW/9ko+cRQNdDDnX/e2dMOwlr6O98kGw=;
        b=Sst509IAJvaVvlCYe5OLknbxLeFaiZkDoLj8hfrQM4JsNW+XA7ZKASo9Rg/0frvowk
         OctzhfOG1ZUsRetGOSNBp3ObGFXZy7xRgbba8vMU5DIb8YO80U7MB5HtQLmp1rpRThLE
         IIr+3o3NXy6ICbDB/3rx1kFvEJGizgP+zk05n/X44Z81qeUADfUZcJAOGt9K1qdLX0ya
         vllsksgf/TmcJWEWW0R/IbhtrORHkWNV6sNNcyx/DiLqSR9FgOzNwpZDiwlmP3rnqqxn
         uNCXTFi8fllU9hwqEpVZ2WtjsBFLpM3tmMOOGcRcRzCYorIntG1U3N9snTcGO5jCe2dj
         nNPA==
X-Gm-Message-State: AOJu0YxefvNI6wq3wZN1iKHE9zsTnOJaB2Lo/CM2XXg7EAbAzISPKviS
	MfDuauohGafxmS1FM+FDGsreyw==
X-Google-Smtp-Source: AGHT+IF7aHvQpC0Bf6IGTXkdlSkgULFkZEZzy1fGTLIUj9kIes1KcqPlMS1t1CQ10jvTzHteINF86Q==
X-Received: by 2002:a7b:c3c1:0:b0:404:7670:90b8 with SMTP id t1-20020a7bc3c1000000b00404767090b8mr11953540wmj.27.1696317028852;
        Tue, 03 Oct 2023 00:10:28 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id k2-20020a05600c1c8200b004065d72ab19sm8746652wms.0.2023.10.03.00.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 00:10:28 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 03 Oct 2023 09:10:20 +0200
Subject: [PATCH v4 2/5] dt-bindings: crypto: qcom,prng: document SM8550
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231003-topic-sm8550-rng-v4-2-255e4d0ba08e@linaro.org>
References: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>
In-Reply-To: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Om Prakash Singh <quic_omprsing@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=848;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=577swv6REyO06YPayl/NJ2+pSbFK1mIeUk3V8xet8Ks=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlG75f6qguhMqLrMtJ9Gn1S2J0RQ/8QXI4aa9yW9/g
 BsLkUE2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZRu+XwAKCRB33NvayMhJ0Yn2D/
 9+KxFN4Iwpoe8z/Oytxz5DNjMENQctIVVYj3gvweaZjB2TuB6i0oWN3WMeyV7rTly6mvOmsF5OgI2C
 KLBzmmODHtH89TowGcW0md1zjBtKbt7Ena4hw437RyQW4ROGuYPZMIqvtWs/zCsfV3WSkjGSdOPTq9
 oVLVELSr02/q1majkUjPCM4hquMjQPcZqGa8jH3Vlrj7iYALebBzUvQNwPjYjWhVZEBnbQGMqd4xTp
 KRlyyii8ZrR3lUiFHsdhWMsjPa3ztV9H0wH7w+hU/uiOwY1OasCwZ846nonvd4TBRicUujqnmhv5fV
 1yIBI17Ym5UZ+1VCw5Ko651OZatT0BaUyqnRmI4V7MBuFxSIfMErG6UBEr61WzPNtEmu5jwhmPpeDi
 aGYI/w4FQu2zZdv9fGSWXRcfJXjU0wBOjLyJVHIHHSjfcBKUGCHIPSkKPm7zs+TFGf2++ny5sUJBOy
 ctoKv6aY6WDfGFuyUsbc/a+IEJw4glLxT8E9KKsFR0rJGkQq755kpys4OZ4q+XIUGgFuEUYQ5IiTa2
 YASVc2b8t2la7gu8e0mT8guju5tfQcLtxivv0rv9rr8TdZCtS5uKrbXrfAe/oHoygJETZIyvw630Zq
 xa6yGqDLSA2A7kxbejBdq65I0XZbmW3eqgXjuczYD6jbTl9oZdaHgRBmgFKw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document SM8550 compatible for the True Random Number Generator.

Reviewed-by: Om Prakash Singh <quic_omprsing@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
index 04ddcc0f7165..633993f801c6 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
@@ -18,6 +18,7 @@ properties:
       - items:
           - enum:
               - qcom,sm8450-trng
+              - qcom,sm8550-trng
           - const: qcom,trng
 
   reg:

-- 
2.34.1


