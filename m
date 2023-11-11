Return-Path: <devicetree+bounces-15145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DCD7E8B26
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 15:20:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FC261F20F91
	for <lists+devicetree@lfdr.de>; Sat, 11 Nov 2023 14:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1689168C9;
	Sat, 11 Nov 2023 14:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B0qdyuO/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C736814F79
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 14:20:00 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BD7D3A9E
	for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 06:19:59 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-53e3b8f906fso4620936a12.2
        for <devicetree@vger.kernel.org>; Sat, 11 Nov 2023 06:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699712397; x=1700317197; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ptbiafykJ7pRIMqCQZ06p889hMKKC590ILuJm+wGBD4=;
        b=B0qdyuO/jUCpcDtPvNLuwdV38f5yqma60rauBCnaq2ysK7eOpMku3EGkNSnUbzTFfM
         37MKFNqPHx7yzdet44hHrdMaSuoY08KOzuaZnaZSIb8eUS56dL8vvEpc7lk2Bx3dRC6a
         prt4r+VI2V7hs3HgMgbNKX+NGB8+HViayYM+S/QARLnxwh8KKe6fpYGmxqXJnq3uNWS9
         ZV33sFTOJY2N+rcXN5ly2Ts4H1or0+JwkLDcaaOFlKyWy6ue+LDqD/dbuxHgj/XwLZEP
         xVN+dLKXFecjODi+PyRwPRcmIYZSvN7tPXP3Bg1dPg/TqF3NRX4wnAyVktE7KAexPPEI
         NuvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699712397; x=1700317197;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ptbiafykJ7pRIMqCQZ06p889hMKKC590ILuJm+wGBD4=;
        b=opVaAPuVXo4LJV8BNnXHxhyFMh1ztXv0vFIXSx0fg2VQT92DET8oiYPP8d/JlzGo9M
         IITa8vMnV3FoJEQ949RZqRVZsbkOSKocNwhuiy0iloX+7StCdRJHtm0FOxE47lqBkYJ5
         +35jJ0DUj/xnUILi2YfgZXSZj6uNtRJZ6fDEOFFJC6w2I7LEJmCQsl9r/cZd0OKNpZz/
         4amJK6igV1aj3LYPdGv4hQ3am0z2YjQZtEWPx+Q7tBBqeXkkt1q79VnXsUXnBO7oyMGT
         3ViP0m5PyyXEgB+TluSKoD3LdDRRCSI+YvFulMuaMpT6XYo/JdU+oFqfx5s7mGB+5YhY
         qwIg==
X-Gm-Message-State: AOJu0YylgNONHZXQ5C3bwG9F86sS15MLxbFQohCuzuFx9RLHUTpLTxIz
	A8DCdtF/+zw2goAvDnl8QnVrvA==
X-Google-Smtp-Source: AGHT+IF6WuaSFh+2WoYZFrNj5cszOB/hqZsoJg0oXGWaqi+IL9O7EVOR6XOKlu/R5PzGbWOpD3GPlQ==
X-Received: by 2002:aa7:dd56:0:b0:53e:7781:2279 with SMTP id o22-20020aa7dd56000000b0053e77812279mr1490668edw.36.1699712397566;
        Sat, 11 Nov 2023 06:19:57 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id dm20-20020a05640222d400b00537666d307csm1035408edb.32.2023.11.11.06.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Nov 2023 06:19:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: usb: qcom,dwc3: adjust number of interrupts on SM6125
Date: Sat, 11 Nov 2023 15:19:53 +0100
Message-Id: <20231111141953.51841-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm SM6125 DWC3 USB controller comes with two interrupts (verified
with downstream/vendor code of Trinket DTSI from Xiaomi Laurel device).
Move the qcom,sm6125-dwc3 to appropriate place in allOf:if:then blocks
constraining interrupts.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 64043b91ffb9..3f41362b2a91 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -375,7 +375,6 @@ allOf:
               - qcom,sdx65-dwc3
               - qcom,sdx75-dwc3
               - qcom,sm4250-dwc3
-              - qcom,sm6125-dwc3
               - qcom,sm6350-dwc3
               - qcom,sm8150-dwc3
               - qcom,sm8250-dwc3
@@ -408,6 +407,7 @@ allOf:
               - qcom,msm8996-dwc3
               - qcom,msm8998-dwc3
               - qcom,sm6115-dwc3
+              - qcom,sm6125-dwc3
     then:
       properties:
         interrupts:
-- 
2.34.1


