Return-Path: <devicetree+bounces-2528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5897AB253
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 14:42:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B18972823BD
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 12:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 689B722EFF;
	Fri, 22 Sep 2023 12:42:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAA9168AA
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 12:42:37 +0000 (UTC)
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 961518F;
	Fri, 22 Sep 2023 05:42:36 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1c4456d595cso3810035ad.1;
        Fri, 22 Sep 2023 05:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695386556; x=1695991356; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dn6fJtVd8sqW+luAwtGOtaJm2JlMFfBy8PF7+y7Vy04=;
        b=PGRTm7GvtdyILJ71kXhYGJHL2iVmyToiLi2XDzdTqs+yEHjYozfx3X2+Fsb1MGnQCs
         Hri57EzMrBp6yUv9GD8yAnODHk5/GBVon/i7nnAMTAEYCFPM18UALyrr4757xESM5gwS
         Sx2mA2s+3xCJC8ziKkvt4K4k74JqjvCpOqCNh8lEytYfJgTvdOsA2grKJVzAQTjDjEGu
         g677fvZR0g+lkE8Q2jo5nEpGyvPVbkRtBK2FgaIaXxOTGnVrwLa9xY6yeoYglXtjbWI4
         GS9tadOXHOZV+JLafwMjHIlRWw+8aQNTyOjKXLbiVx03c8JvsdOxIdPBAm+Vr66MoRhD
         MBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695386556; x=1695991356;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dn6fJtVd8sqW+luAwtGOtaJm2JlMFfBy8PF7+y7Vy04=;
        b=GcMc0Wllb7BSM7khaoE3WZ8Or2gEQobipG/YJR3lKH0FJQIfBgD5C17JaibWqG+3Rz
         FANTm7mfKBed7f165U3cZOUMwvUCNl+vO3kQuJFS5cJXRKnZkofH4J7wKY9FsKtu2Jy1
         VQXOJDWJibJz+Uf5dLVSNw3mD5aW8MtT3zN0CgmAySnLmLcflsrStDledvxWA5sK13CI
         yLJbNRUUBzK/qT/qu7OXUyBAomaiuBsl5pCYVk0wGFO7sFaYSQEw0p4HzuuczzyhmjXv
         CRicQuYHCeUwqP/CgNCP84M5KSevOvY/XNtT+D2qsUbjNq64Gllzp+CWBp2UmtVb2H4Y
         mF7A==
X-Gm-Message-State: AOJu0YwvAkMg2hJJoihuuNAsQUpry+k3pUhh+ljWOWR1UzLpz2j+Zp7R
	Nzggydi3w2vy6PPTB+taGLI=
X-Google-Smtp-Source: AGHT+IFEn6cBvUaI+PEpa3+5B5ZlsbNDSDiBLGhzpnH9Yanxl4aMn5xHka6t1egfHHjwhO1/SxXa5Q==
X-Received: by 2002:a17:902:e744:b0:1c0:bf60:ba82 with SMTP id p4-20020a170902e74400b001c0bf60ba82mr8131178plf.5.1695386555975;
        Fri, 22 Sep 2023 05:42:35 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:2546:6c99:4de0:9123])
        by smtp.gmail.com with ESMTPSA id jg13-20020a17090326cd00b001bba669a7eesm3368170plb.52.2023.09.22.05.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Sep 2023 05:42:35 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: thierry.reding@gmail.com,
	u.kleine-koenig@pengutronix.de,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/3] dt-bindings: pwm: mxs: Document fsl,imx28-pwm
Date: Fri, 22 Sep 2023 09:42:27 -0300
Message-Id: <20230922124229.359543-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Acked-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
Changes since v1:
- None. Only collected Uwe's ack.

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


