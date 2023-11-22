Return-Path: <devicetree+bounces-17821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 853887F43D6
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 11:28:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B72611C2091D
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 10:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454F9584F0;
	Wed, 22 Nov 2023 10:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vZlPKGei"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6BF5110
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 02:28:29 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-548ce28fd23so4018147a12.3
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 02:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700648908; x=1701253708; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yT3SRC7g0WcZYpUlZzUhhdSFSVdcOgnIRd9ofgqTgO4=;
        b=vZlPKGeiK4tOm/AOzropggrcX3qFB6/9kbTWmAd9NC5HiJjiyVqTYDE9Z/aeq/8i4L
         aFRQlLplaeI0iNfCgwqDaifl4WW6Ci13s/lIaB1sBNYlus9qZRPQDKkCnvsZ9XLMKme1
         ZC02CgA3Ux+5zTQbvtvhO9QT1T1ALM2JQdAYe23qRlH1VwWrXKz95xgrrsijilvID2oJ
         E4xoBgUDvj+uqF4Sq8tCZbg8zpAikFA1RZZW1SUi+1NnK4Quo9IGSXSOs6sYQr3Lxzul
         z8yRYjLWZ6HWIF4r274pjpWsylnz2Il7zn+PoLLjITCrvW4Xld4WJ/dCADe/PfB3drb4
         QGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648908; x=1701253708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yT3SRC7g0WcZYpUlZzUhhdSFSVdcOgnIRd9ofgqTgO4=;
        b=nHMP/JZD26kusJIgRHKC1o0Ql8cCq0mSWyP7UC7j8byrPvu48v83wH9FcM5BeOBPS/
         qTsJzAydCMmEpo6DYQBNbQx0575BQhjFIwkKv0KF2lJQl239e1kcO5WNyPcM8scyamY6
         bbD1rASYOFTBSPLZdfzROSoue+UtedZ4d2ntPYekMqCg81x3SJOlX8tiRCVxXwfXxpvH
         LJeNwSvrq6k9txOIvWu+Q7OTe8jqZeAq9YwRord4G+HGLbyaWtjbhNsZTjqNrwOnli2R
         bFiAVPRNZaO7M9vOPzIQEDUrvDmKeoyv+F3pJIwt0lB/gwXi9WKPr6ss5sJIF2B7DyCd
         AdIg==
X-Gm-Message-State: AOJu0Yx1y0u4mS8ShbY2tVtgZj+1u1T1Fh/iDofQVz6/PFLl9QZYA1LT
	zN25TxQ2oli3dM8BHesb9XTZM+iLjb5tBQOirtA=
X-Google-Smtp-Source: AGHT+IH4SHXq9mLdJwRDXoIJrNJUO5jXfmhoDNQ04drsrbcIGKENJlqOxtY8YoZElmIN+W6ReMJdhQ==
X-Received: by 2002:a05:6402:31fc:b0:548:5272:db61 with SMTP id dy28-20020a05640231fc00b005485272db61mr1534067edb.15.1700648908068;
        Wed, 22 Nov 2023 02:28:28 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id e1-20020a50fb81000000b005488a15b25asm4325139edq.70.2023.11.22.02.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:28:27 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:28:08 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom: snps-eusb2: Document the
 X1E80100 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231122-phy-qualcomm-eusb2-x1e80100-v1-1-ce0991161847@linaro.org>
References: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=804; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=RjZWUAyEQH5jFz7bbSGKTtE999rrt7usdRU8o7GC+Og=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdfHL+hyf1BeyziIAVgHIH/EWgwBzsYhPvxyd
 mJCdGU5wXGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3XxwAKCRAbX0TJAJUV
 VvUiD/9Lozo7g4i3DLoFJIaW2U7tZZJZBp8AvtfEH6IQdCphksxxyrI2t0yXqKOj/hwR/Rijt5I
 G+cJEQB379AvQFoTXcAaE5b7/39aAKCINV8ikvK8B/9iZjtJwkWD+JwieH2b4zKi82h8BCwpBsX
 dN+m+OpD4NYRq5yogBf2MrP2gP2VfA3D2zJd6tPHDlZKknzeiborAk3gA9tOdQdbtfKn7jrNgeO
 uoMc3naEkYG66uo2CVf4pQEkUNvc7e98/B38WZdUmiDK8ejGRDEicgdm//e7OZ+aXxTbDkKXF9X
 wIQUSwMXnp0fqpNLjWfTw/BJcpLqmmQe2pwgLF0ncFlj431y2qdPlszp5qujyyqgw3MgwulVPyI
 gFnYSu0Nmt28gnaquujig/ufAED0w7+MFmpAHFfWEXCqJxTgCtQtwTxf0lnHuk/D0u1opas5Uk/
 Uoz2GDadqzbw9NWiMAXWZrkAAdjymkwZbV+fWUVuO/IT/wuQbaewDxn/zqG1sOnZkN0gGELI/7U
 1rZ7LApfJEQMxgZJ4qiah7dMxdmrluozrjUKiwKNrAoV2ypMLWljY7vEymAMJSm2GHlM79NaEeR
 TtQ4UP3ZdITaIvJbh+rriWAgGhxQiGSrzsAVvpIM221R7M1wiVFTlC2LubgN6mmKylSabR8Szip
 CYsvDf2mvr7H2Gg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add the X1E80100 compatible to the list of supported PHYs.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 8f5d7362046c..ea1809efbf56 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -21,6 +21,7 @@ properties:
               - qcom,sm8650-snps-eusb2-phy
           - const: qcom,sm8550-snps-eusb2-phy
       - const: qcom,sm8550-snps-eusb2-phy
+      - const: qcom,x1e80100-snps-eusb2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


