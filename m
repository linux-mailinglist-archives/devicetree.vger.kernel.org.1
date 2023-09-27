Return-Path: <devicetree+bounces-3721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B64627AFF43
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:00:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 9F0281C208B5
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D5491F5F5;
	Wed, 27 Sep 2023 09:00:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6531C684
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:00:53 +0000 (UTC)
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C1D1E4;
	Wed, 27 Sep 2023 02:00:51 -0700 (PDT)
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-57b67c84999so5802527eaf.3;
        Wed, 27 Sep 2023 02:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695805250; x=1696410050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7XISMEEuxEHPo83QIpIC+HgJvoMzURdyaENZ58w85qI=;
        b=CGR+lIq5OSV9XYx14v6wjV/eKN2YfOm6WfMbHNp6of8dCG6vyhAAppv9G5L4WgyHWm
         5sfv8W9tWTUQi+Kr0jVMRF8aDs4/wyOtUOO7V6f/vRs9SVJg0QpVhfBb0aM4IrE0bBOL
         8hM57H2GUOplNCHcHpVrytVZTtMozalx53mD6bAd3aU+iJqCx+opNzcAh3uoIeaoEFal
         ieoIDXpBwyC0FweU0C73Ccds1WgYjIgWlKlRrSTG3Hl0DcQ5r4u+lxvH2bLoYZfjsErY
         x5VR/Nt0pevaaog3ab62b922yxT6y8im5F6xpfINkwSnmo33WDwx5r4d6dXZ1A/z/d7q
         mxFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695805250; x=1696410050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7XISMEEuxEHPo83QIpIC+HgJvoMzURdyaENZ58w85qI=;
        b=alyGRxWsmQivBhQ7ivOTVZtvjB6jyzysXw3zAmlEzL0PGBtFl45wKCbUQXO5g1OhJS
         CIwdZjYcEiDyJ099rCgkiGC80jz+F8Ef1c/yquB1c9Yk8Ucnb0e5SUgFru1FHBfT0L+n
         BgQErZui3ARPwBw0dIazBapUTpf9L8UMsvoCtqpcFrjfjCoxjVBftJWyX4yHnAt/LwuC
         mpuKDTfDEW1EmuvzcAHtvh5uSxe+zCJGqUFFA8BbwgoQYDYwmjgd+9mvbd3mnfl9fYJ6
         7EA7jpzHBuOT0H3C8iTnMORUELdgY0ZzMjNQs/pf0WRPMaqesUhDYcaUR4mKhR9NHQuE
         emww==
X-Gm-Message-State: AOJu0YxKdJ8PKlWut7z2FSKC23denJd6DSX0+5jmM4y+eeDBe22K9jgL
	rosr0MkVxhU/2RL16BvvpHU=
X-Google-Smtp-Source: AGHT+IFUyHthVzniBAXCYOq3vUTRDSWKmjX+zEks2b8BgJUOzB+OHdp/JRDiqWdgmgmIiIaljSSsbw==
X-Received: by 2002:a4a:6c58:0:b0:57b:6ab1:87c9 with SMTP id u24-20020a4a6c58000000b0057b6ab187c9mr1523375oof.0.1695805250702;
        Wed, 27 Sep 2023 02:00:50 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm1373103oob.33.2023.09.27.02.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 02:00:50 -0700 (PDT)
From: Chen Wang <unicornxw@gmail.com>
To: aou@eecs.berkeley.edu,
	chao.wei@sophgo.com,
	conor@kernel.org,
	devicetree@vger.kernel.org,
	guoren@kernel.org,
	jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com,
	apatel@ventanamicro.com
Cc: Chen Wang <unicornxw@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Chen Wang <wangchen20@iscas.ac.cn>
Subject: [PATCH v3 03/11] dt-bindings: riscv: add sophgo sg2042 bindings
Date: Wed, 27 Sep 2023 17:00:42 +0800
Message-Id: <97c14be89af91d47e4d7b2313d7348ca12f393fd.1695804418.git.unicornxw@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1695804418.git.unicornxw@gmail.com>
References: <cover.1695804418.git.unicornxw@gmail.com>
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

Add DT binding documentation for the SOPHGO's SG2042 Soc [1] and the
Milk-V Pioneer board [2].

Link: https://en.sophgo.com/product/introduce/sg2042.html [1]
Link: https://milkv.io/pioneer [2]

Acked-by: Chao Wei <chao.wei@sophgo.com>
Reviewed-by: Guo Ren <guoren@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
Signed-off-by: Chen Wang <unicornxw@gmail.com>
---
 .../devicetree/bindings/riscv/sophgo.yaml     | 28 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++++
 2 files changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/sophgo.yaml

diff --git a/Documentation/devicetree/bindings/riscv/sophgo.yaml b/Documentation/devicetree/bindings/riscv/sophgo.yaml
new file mode 100644
index 000000000000..4e8fd3c6a6ff
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/sophgo.yaml
@@ -0,0 +1,28 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/riscv/sophgo.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo SoC-based boards
+
+maintainers:
+  - Chao Wei <chao.wei@sophgo.com>
+  - Chen Wang <unicornxw@gmail.com>
+
+description:
+  Sophgo SoC-based boards
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - milkv,pioneer
+          - const: sophgo,sg2042
+
+additionalProperties: true
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 90f13281d297..9114a14ce991 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20063,6 +20063,12 @@ F:	drivers/char/sonypi.c
 F:	drivers/platform/x86/sony-laptop.c
 F:	include/linux/sony-laptop.h
 
+SOPHGO DEVICETREES
+M:	Chao Wei <chao.wei@sophgo.com>
+M:	Chen Wang <unicornxw@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/riscv/sophgo.yaml
+
 SOUND
 M:	Jaroslav Kysela <perex@perex.cz>
 M:	Takashi Iwai <tiwai@suse.com>
-- 
2.25.1


