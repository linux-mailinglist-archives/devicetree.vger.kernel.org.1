Return-Path: <devicetree+bounces-5926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 483717B88F1
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 20:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id CC9682815CC
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 18:21:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECAF01D6A1;
	Wed,  4 Oct 2023 18:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K8us2Mhl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A785E1D68D
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 18:21:06 +0000 (UTC)
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04016A7
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 11:21:02 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-27730028198so13367a91.1
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 11:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696443661; x=1697048461; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xNktNHJu0QjD0BkyX34jEUdptlmtFvn/WAMHoM1gwjg=;
        b=K8us2Mhl8H7O5A2INv29R0g8t77E/MKNCAvkX/MJhzTTKrVbs03bgPbfvCazNoJ3RH
         DAg4j8rH7LADsMy3PrQ9977+qnnCVJyOd5arLaMl/vDJ87p1QVDSaxgIzAOEO1lCZs2m
         cH1mcBCR4kic76xrgmzt5wMxHySVbYNo2slazglR87S5W2PsDwyUtoGSBXkLRBCfwaMO
         toFFwHMvBWOFtOqAXroXmEzuomZtt4Kgz5o/6gjfhdXZ1trwoXSxNMoDjQXoDOJGO+V+
         so6S/Siu0LJdyuDKCfNI6RN7aynSssRANhdb+2cHCOIrmxdUb8B8cQ8MQI3TNsHZQVvN
         gVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696443661; x=1697048461;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xNktNHJu0QjD0BkyX34jEUdptlmtFvn/WAMHoM1gwjg=;
        b=ic4u0ARQnhslpNh+Kpj0J+x8Zr6vzIHayUheT3b6nTksKNQTR7zUlWXc2Zcl2pm5gz
         0c95SfFAKlQWM6rjQxOmQwdy9sgMeQioqKVhsR1/d422YmiEp8Sy89OGkF/EJmhFZM+X
         ea+blgmLBz+z2OLqDA4RY+B0yDcnlmWhmVDwEiMr+BNn9AafqBHfUvXOey2nMuXdG9Jw
         Y6A8FHcInXFdI8lHWUBPc+CN62jqwneCpd37ixk9wGQ9z7FP/VKMw/5ozFl3yGx0q1CZ
         egao5aJt4AwFE0viTeCGzkdahs29E5yTnXfnUDWOP9knVdC3LUTa6DiMMKDC/TjJeXmS
         XtTw==
X-Gm-Message-State: AOJu0YzDoQO4ZomCyNtEofEfAvIm07v0j4YaQU9ZGOYjOt2Uw7v64PS7
	uuW82IGcwEG1bfCIoxSFmlQ=
X-Google-Smtp-Source: AGHT+IHNw5YYqllXwgc899wVWMCWx62QnXG3TBEhf3kw7nBIrjJDqn129vlkceYj3tXaDUqaLOR47g==
X-Received: by 2002:a17:90a:43c2:b0:278:f656:ca0e with SMTP id r60-20020a17090a43c200b00278f656ca0emr2894122pjg.0.1696443661394;
        Wed, 04 Oct 2023 11:21:01 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:cb87:d6f:eb43:afca])
        by smtp.gmail.com with ESMTPSA id m20-20020a17090a7f9400b00262ca945cecsm1859794pjl.54.2023.10.04.11.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 11:21:00 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2] dt-bindings: watchdog: fsl,scu-wdt: Document imx8dl
Date: Wed,  4 Oct 2023 15:20:43 -0300
Message-Id: <20231004182043.2309790-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

imx8dxl also contains the SCU watchdog block.

Add an entry for 'fsl,imx8dxl-sc-wdt'.

Cc: Wim Van Sebroeck <wim@linux-watchdog.org>
Cc: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v1:
- Sent it as a standalone patch to the DT folks.
- Collected Conor's ack.

 Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml
index 47701248cd8d..8b7aa922249b 100644
--- a/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml
@@ -18,7 +18,9 @@ allOf:
 properties:
   compatible:
     items:
-      - const: fsl,imx8qxp-sc-wdt
+      - enum:
+          - fsl,imx8dxl-sc-wdt
+          - fsl,imx8qxp-sc-wdt
       - const: fsl,imx-sc-wdt
 
 required:
-- 
2.34.1


