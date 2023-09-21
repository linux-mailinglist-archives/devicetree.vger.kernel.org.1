Return-Path: <devicetree+bounces-2184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F09667A9B9D
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:02:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D13821C213F4
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E7A69CA5F;
	Thu, 21 Sep 2023 18:44:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD1120303
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:44:29 +0000 (UTC)
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EDC5ECF4D;
	Thu, 21 Sep 2023 11:44:28 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-273e3d8b57aso296377a91.0;
        Thu, 21 Sep 2023 11:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695321868; x=1695926668; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/VCY0QPe02BJazAiQWn34Qew1J3t1PztwawBqHZpK/s=;
        b=Ycl/BDlDl3w8Fkmb+oyBoP441TDz2y+jxln8r2eJLz2PSUEKftfAiuItle0Cyz+PI+
         i9QrnE3C15pCMT66qLtO44Ulmv0cNpo3JRSkfiDKff3gzrQjc+xd1TK7YCrkA57WCD3R
         X/gRk14pg5FqmqoT5aYrfb4CRSqnirYz3fVWiJxOXDyg3xaBjYgmymnKSk0vEU/M4ILI
         hoim8XH+L+VGqCW9ydiyw3xPrEf9I5IyAgahAu806qZ3sLeqjsj2txq43P+PLmXeRRZX
         8f+Kb/E1grhqLmRl2j+0gYcp549gJc6k1ssqJSdPZS+b1oUMYyCniGn6xUKttinvzxdC
         11lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695321868; x=1695926668;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/VCY0QPe02BJazAiQWn34Qew1J3t1PztwawBqHZpK/s=;
        b=H95eoKH58DfLmI9SwCHgkduWWsMWvCaTeYsZ67iKPK+A57EIw0WKT+6gLWFshPzxBZ
         O2mV3VxQ/6WUPvTVgHp7ufS/RoH9o0tJY3QAiaX2yizvwKqVyUi34sUdHkLERFlwPtlJ
         ud2BHvQ1QS4IEs+VGM4isEe0pRuTliU3tBlARhFMmuG3DVIc9G7zNh7N+7xATAlKNaXb
         OiKhrmgc5P++xYsxdur3EI24eTXWyfllJY9gYvD2MXIUJBSz0Uf5LE9VCfnQQa1WGRgf
         M4bjlDOQZcSSx7mIgDbiFM2Q+loNRcuEFXxRdlaJGyaae7Zm2CNW2ZBUF17VCuU8bARG
         XAnQ==
X-Gm-Message-State: AOJu0YzdW1HQQTfNWPrhquww/0qjSEE379CvZf7byeUR1vk2JRktvb1X
	liMdG4JjjN9ioWaNSbKyF9U=
X-Google-Smtp-Source: AGHT+IHfaLm5LLsVw0QZpLicq+/Oqy5BPrWWp55fJIt/cMqSTYenCMib0zdDkQyDB86uJDvPG4+XpA==
X-Received: by 2002:a17:903:2303:b0:1c3:4073:bf80 with SMTP id d3-20020a170903230300b001c34073bf80mr6543072plh.0.1695321867594;
        Thu, 21 Sep 2023 11:44:27 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:3568:5db2:51a5:e134])
        by smtp.gmail.com with ESMTPSA id c8-20020a170903234800b001b8b07bc600sm1852730plh.186.2023.09.21.11.44.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 11:44:26 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: thierry.reding@gmail.com
Cc: u.kleine-koenig@pengutronix.de,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/3] dt-bindings: pwm: mxs: Document fsl,imx28-pwm
Date: Thu, 21 Sep 2023 15:43:46 -0300
Message-Id: <20230921184348.290261-1-festevam@gmail.com>
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

imx28 uses the same PWM block that is found on imx23.

Add an entry for fsl,imx28-pwm.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/pwm/mxs-pwm.yaml | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
index 6ffbed204c25..655f008081d5 100644
--- a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
@@ -15,8 +15,12 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - fsl,imx23-pwm
+    oneOf:
+      - const: fsl,imx23-pwm
+      - items:
+          - enum:
+              - fsl,imx28-pwm
+          - const: fsl,imx23-pwm
 
   reg:
     maxItems: 1
-- 
2.34.1


