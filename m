Return-Path: <devicetree+bounces-24060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7387680DBD1
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 21:41:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2873F1F215A5
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 20:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1DA153E34;
	Mon, 11 Dec 2023 20:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fplViqkB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A702D9F
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 12:41:49 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1d03f90b0cbso8925825ad.1
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 12:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702327309; x=1702932109; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JrUH18u+0NaS8PYtvwYrNxG3qzQVThi1TGXG5Isavng=;
        b=fplViqkBHxzHpE/efUy+lzAdM1u5/ehf1/SxMpOchl+LDS7RHgZ6O4dwvMjC89wsSm
         RXxj6KoWhq3G9NcAjppNmBEXTYcUgERyFT7NIgv2MtdDPEMDflFBHbtO8sUqX1FiK7R+
         +p4M5O0W3flIvYLY/v4+dTIx/gArvTnLu8wFSaWH4j+N6lv1055/sIFrKqvjIL5IgSOm
         odIY7qxhCNGlT3S77oEXYEgjSjJe2kaJN7FSTHVXDupJqf0i+c/DWfqN3zyhycJBMM3+
         8tSHW/OLF8g5JojF9CWjLRIFFoeh4r0aeDENu/i32iTqiAXEO9cdLl8oI6ByG3RtJuxT
         eSgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702327309; x=1702932109;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JrUH18u+0NaS8PYtvwYrNxG3qzQVThi1TGXG5Isavng=;
        b=pT7gLQY0EYUOjZksF8OBQrQNyNZsSV9Yl5HpUQJ15sZ3IQh70/gHeV3axmgS8Eo44Q
         EMBo1L2Li5RGUbnFgqtBpzAK7ALlHlMi584rO8xyVzseW9wq7nn/++brM/Mx7e8TG5Xo
         /G+axP7a5JUAR1jtDYDPg5B7HaQvNp4oPu8AUQF3JHJmN9fCITn7sWJRkGJdYNq3AJ5j
         ZiWJszKFDVi8BLqfjfbJ97/GPtJXoS+wa9+UR9QdPhx7g6uiG3SdW5wH8iag+qGw0mCD
         2dhSsply4NvQgIoAF2vQExYqydLtRPPzPUlWwvdhTyD2/PmfoAWK1mg2AyN7F5lndyEN
         BpXA==
X-Gm-Message-State: AOJu0YyFOSZc7w2G7VPMg0o0noR0YPHWibvC8f2frShBoY/JsqbP6l/q
	LHRLcOFUYOfugTxBIKWKLUs=
X-Google-Smtp-Source: AGHT+IF4n1Se4Q/P/CasQTIGLsXUtFG6qJtTwWy2VJlrPfq1GEn4zZD7I79/h57u8EqYPk05TaF82w==
X-Received: by 2002:a17:902:d4c3:b0:1d0:45b2:d8b0 with SMTP id o3-20020a170902d4c300b001d045b2d8b0mr9145441plg.5.1702327309084;
        Mon, 11 Dec 2023 12:41:49 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:1d51:eaf7:9aaa:d7c])
        by smtp.gmail.com with ESMTPSA id w14-20020a1709027b8e00b001cfc4d8ede5sm7124809pll.301.2023.12.11.12.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 12:41:48 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: marex@denx.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	martink@posteo.de,
	kernel@puri.sm,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/3] dt-bindings: lcdif: Decouple imx8mq from imx6sx
Date: Mon, 11 Dec 2023 17:41:37 -0300
Message-Id: <20231211204138.553141-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211204138.553141-1-festevam@gmail.com>
References: <20231211204138.553141-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

On i.MX6SX, the LCDIF has an associated power domain.

i.MX8MQ does not have an LCDIF power domain, so allow passing only
"fsl,imx8mq-lcdif" as compatible string to fix the following
dt-schema warning:

imx8mq-evk.dtb: lcd-controller@30320000: 'power-domains' is a required property
	from schema $id: http://devicetree.org/schemas/display/fsl,lcdif.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 1c2be8d6f633..8969e56d4c98 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -20,6 +20,7 @@ properties:
           - fsl,imx23-lcdif
           - fsl,imx28-lcdif
           - fsl,imx6sx-lcdif
+          - fsl,imx8mq-lcdif
           - fsl,imx8mp-lcdif
           - fsl,imx93-lcdif
       - items:
@@ -77,7 +78,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: fsl,imx6sx-lcdif
+            enum:
+              - fsl,imx6sx-lcdif
+              - fsl,imx8mq-lcdif
     then:
       properties:
         clocks:
@@ -113,6 +116,7 @@ allOf:
               enum:
                 - fsl,imx6sx-lcdif
                 - fsl,imx8mp-lcdif
+                - fsl,imx8mq-lcdif
                 - fsl,imx93-lcdif
     then:
       properties:
-- 
2.34.1


