Return-Path: <devicetree+bounces-2871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC3F7ACC9C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:31:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E0994281315
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 22:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E17EFC10;
	Sun, 24 Sep 2023 22:31:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6E0DF54
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 22:31:23 +0000 (UTC)
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B470A83;
	Sun, 24 Sep 2023 15:31:22 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1c5cc63ce27so7183835ad.0;
        Sun, 24 Sep 2023 15:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695594682; x=1696199482; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PgK9pPf+w9TBlTyL5dT/ncKHFfeZVhuT1tpxlfIaF4Q=;
        b=asRgZhjKPjem+G+OybUi8qsBOLqk3oy0fV7drorXiuPiwR+ZpNOmTD7Cs5mvvCt9Fw
         HfHYrBSik7QJ5/kkvLoS/tFWQe41huCB/10ZJicB/mRdfD72N5M+mnsbW3xHe1l+Ki+0
         XEYUfy9Emz8FGj1gTZq2WPwYbhU+bnaJIvt2DfSisthcy0zqPj8HTYuMEY1r+45Lv+4r
         extgQ6Gkjr0g/rPM7YOpkcNHaVSMjfRi37JnrStjNLTAUXkc5TNffz+hwjB78m9O67XU
         5lXGeP7SGYckUfIQyNHvLpKtHs7Kq/B8wWzDoHdCiZbeKtHwRc/WcXyDt7Pz2djSGOCy
         z3BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695594682; x=1696199482;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PgK9pPf+w9TBlTyL5dT/ncKHFfeZVhuT1tpxlfIaF4Q=;
        b=SgOQMlCFTcGV/4rq62ga1NwGafPY2K0/UllJjOkIkxoqqkSqh+XX1zcqNbZTV4YKHD
         mvjIVMT7gR4qcV34MGe25dGEjWpoMesym6skZKoBq7vbAnEHVLLKXV8t6jz2WBn+DQef
         50aXq0Il387dIw0o79xJ2mricw37Pc3tOBZCgf9bOeDOh1W56BkHiwzPqL6CbCAWyeGo
         l2nWYi5//w9tMydHo2HIOxSWgPkZDi1cCic5iF0BxDJeE7dNeeEHgunhbzbqRO5AK/7w
         4T4+KVmBy8FciDvJPUW93r6N2VnZeGc/lxQpbBA1huGnfei/pv0dk5o59gaQbxX/wpKy
         HIhg==
X-Gm-Message-State: AOJu0YzoXXilAnQj+oona80wEZS9wEHeXSajN5lclwAgVLwMeuFfJQ5g
	S7nT1lFrzmUYgFNbmxaCKMV6ie5KrdE=
X-Google-Smtp-Source: AGHT+IH6lPgoqQ2mT7pg5G7KQ2ol8crKjrlQWKhW1bILgcKzlaTpEKWipB/7A4n1vrQ0HsZSwtRqRw==
X-Received: by 2002:a17:902:da91:b0:1c3:6d97:e897 with SMTP id j17-20020a170902da9100b001c36d97e897mr6387029plx.5.1695594682068;
        Sun, 24 Sep 2023 15:31:22 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:ce8e:216e:1d92:cabc])
        by smtp.gmail.com with ESMTPSA id 5-20020a17090a1a4500b00274e610dbdasm9315258pjl.8.2023.09.24.15.31.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Sep 2023 15:31:21 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: herbert@gondor.apana.org.au
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/4] dt-bindings: crypto: fsl-imx-sahara: Document the clocks
Date: Sun, 24 Sep 2023 19:31:03 -0300
Message-Id: <20230924223104.862169-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230924223104.862169-1-festevam@gmail.com>
References: <20230924223104.862169-1-festevam@gmail.com>
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

The Sahara block needs to clocks (ipg and ahb) to operate.

Describe them.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../bindings/crypto/fsl-imx-sahara.yaml         | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml b/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml
index bad82491cd6a..9dbfc15510a8 100644
--- a/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml
+++ b/Documentation/devicetree/bindings/crypto/fsl-imx-sahara.yaml
@@ -21,17 +21,34 @@ properties:
   interrupts:
     maxItems: 1
 
+  clocks:
+    items:
+      - description: Sahara IPG clock
+      - description: Sahara AHB clock
+
+  clock-names:
+    items:
+      - const: ipg
+      - const: ahb
+
 required:
   - compatible
   - reg
   - interrupts
+  - clocks
+  - clock-names
 
 additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/imx27-clock.h>
+
     crypto@10025000 {
         compatible = "fsl,imx27-sahara";
         reg = <0x10025000 0x800>;
         interrupts = <75>;
+        clocks = <&clks IMX27_CLK_SAHARA_IPG_GATE>,
+                 <&clks IMX27_CLK_SAHARA_AHB_GATE>;
+        clock-names = "ipg", "ahb";
     };
-- 
2.34.1


