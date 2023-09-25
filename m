Return-Path: <devicetree+bounces-3160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAE77AD833
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:44:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 58AD0281809
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:44:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4071F1429D;
	Mon, 25 Sep 2023 12:44:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B9E13AE7
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 12:44:26 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35DB7C0;
	Mon, 25 Sep 2023 05:44:22 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1c5faa2af60so5986285ad.0;
        Mon, 25 Sep 2023 05:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695645862; x=1696250662; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XklYb7b/fLQgyz+S2t23QEReui9hdouB34jEJfTniU0=;
        b=QbVzMu/ly343z1PvfMK0kJcaO9yczZezvy7ueWXqgVgHK9nIlHNCmdIrNzqgTwmnm2
         QQ1iAFrGngOMvm199DfAbFyeiW022J3IzNtFBVCjDJiq1a8JayEIeqNkLPP26c1ytzu1
         nQr+rJCZkaN/e9/AoIwi+UsQfNeQhSrUWjiCtXEK3WboG0+wMJSdqiV+2p9CJLjewBdK
         w7mLWEqLsITIL+ASk1lWl2yzZ8m5+S8U64221KwIn4Xv+jBZ435kZqP/v5jFLOlzpHVn
         lIOcrMbcqMF8EUHJJ0AdBo1R745koOuD5WpqYyx9g5OtsP25JBPruplxqRyclTAUzH/5
         iuuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695645862; x=1696250662;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XklYb7b/fLQgyz+S2t23QEReui9hdouB34jEJfTniU0=;
        b=JwTvlSTDmWttPb6npBhYmRPRSqY6sq9U4RWWjC9xEeeDkKX4H7+9hlvorwUix2FvZB
         Zmd+IPM3zqh+nKY1ihmiUE/gUBvJRtf3E94MbQWTexrE0BhEOfKL4x9eglVoRo+pcW6E
         JpUMMMkaOScwlAoGILcyHLLHr3TeTDg46luiM060czpz8tWK/7iYaY1lGdcIKOUTQ3Xs
         1mcM11nEOB88WywcQLlbH05H+R4nOwdHzhsa1IZ6CyumbCS/cM0oRIKRClcn9bBaXMDt
         3iqksX6Z6nQzLTcucWinED2QgCpVbljFpgjg6Ti0DLzccF+83ISrsZoMU+NOFGRmZ/DB
         414Q==
X-Gm-Message-State: AOJu0Yx8HEeyEZl+VmBtCHE9fYofnCrQ71VGLpCUhE8qmSoPvAS73WDc
	8r3ckJ0fAUKTxv/pv7U9MyjJd55yWCU=
X-Google-Smtp-Source: AGHT+IEsrd7RGAyPg8fa6eFSJDr3viGzrEuyU2t+5fNy5ncqm9c8K7crVD5JXS2IRP64YNiscFyyoQ==
X-Received: by 2002:a17:903:110d:b0:1c5:cd01:d846 with SMTP id n13-20020a170903110d00b001c5cd01d846mr8624351plh.3.1695645861535;
        Mon, 25 Sep 2023 05:44:21 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:fbad:220b:bad3:838c])
        by smtp.gmail.com with ESMTPSA id iw15-20020a170903044f00b001c5d09e9437sm8816539plb.25.2023.09.25.05.44.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 05:44:21 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: linus.walleij@linaro.org
Cc: brgl@bgdev.pl,
	andy@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3] dt-bindings: gpio: fsl-imx-gpio: Document imx25 and imx27
Date: Mon, 25 Sep 2023 09:44:02 -0300
Message-Id: <20230925124402.937649-1-festevam@gmail.com>
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
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

fsl,imx25-gpio and fsl,imx27-gpio are not documented, causing schema
warnings.

fsl,imx25-gpio is compatible with fsl,imx35-gpio and fsl,imx27-gpio
is compatible with fsl,imx21-gpio.

Document them accordingly.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes since v2:
- Place the 'fsl,imx21-gpio' fallback prior to 'fsl,imx31-gpio'. (Krzysztof)

Changes since v1:
- Sorted by fallback compatible. (Krzysztof)

 Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml b/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
index d0ca2af89f1e..918776d16ef3 100644
--- a/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
+++ b/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
@@ -18,9 +18,17 @@ properties:
           - fsl,imx31-gpio
           - fsl,imx35-gpio
           - fsl,imx7d-gpio
+      - items:
+          - enum:
+              - fsl,imx27-gpio
+          - const: fsl,imx21-gpio
       - items:
           - const: fsl,imx35-gpio
           - const: fsl,imx31-gpio
+      - items:
+          - enum:
+              - fsl,imx25-gpio
+          - const: fsl,imx35-gpio
       - items:
           - enum:
               - fsl,imx50-gpio
-- 
2.34.1


