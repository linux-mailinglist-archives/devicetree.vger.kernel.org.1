Return-Path: <devicetree+bounces-3720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2D57AFF3E
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:00:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B0BAE281389
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:00:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 845431F5F5;
	Wed, 27 Sep 2023 09:00:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BCF1F5EB
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:00:36 +0000 (UTC)
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DBCE1B3;
	Wed, 27 Sep 2023 02:00:35 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3ae0135c4deso6226966b6e.3;
        Wed, 27 Sep 2023 02:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695805235; x=1696410035; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tiV1ULQG3s0x2nlhHANe2aPzX+bV/lE/JH9vnJWbNSw=;
        b=WZQlqWb6Qze7sgt7+nLKOCihhdk4Hl9jzQBar+niynpsP0Yg+u2MqalCV8hXS/d4Kd
         LbqRZvP/cRNEJAVydacNP7M0Pjh2nuMLDqFlr0NIdVrhw5tHdV9StAqY+22Xtdxvk7FP
         U+h9o16Y0vXOJ1K3pT2P/Sd7zWgRgSM2w2j6b3kzHLoTQh2YDgFFns7FoNO9cS8l870u
         9vq+jo3NWDkho3+tMw/Kf+Ip+VTTYDI4azOxoGuX5oRB+96hluYvu4bvm3RXFhcvFCRG
         untWG534LNq94lgsS7htuSoWyr6m+LPVTfYg4682q9HtTw0BqDe0CMVzng3jjVXoy01f
         SkZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695805235; x=1696410035;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tiV1ULQG3s0x2nlhHANe2aPzX+bV/lE/JH9vnJWbNSw=;
        b=NUdBb4tr7OcgtrobfYFpbQrNXgdQQeVyzYh+21LlzsATGzduvYuWIfiISRZ1Im2SaF
         7fPTdtJlYqH3DUypqUfT5C/emOsIYgb5akucn/K6xTIQEGgrn1iGxoV1XCbVmu/ZmpOy
         If0sqGfCgj2BArQSCvtPY2V/lBROfYyZOJRSOfqijXxAAu9nLfVabS0ZaawuN9062CzZ
         UBDZjNgMgdKyu+Qe8nwHS8C/zTq7kdeTzifdD4Yhds0DklBYif53DSswwmbkwslz/rVW
         y6t9HBGAAhBBzV4kMhyX4i4yAjZLChyCELon8Tkwl7p3zecx5aJ0O7hPr6LVfPB98vi/
         wbHw==
X-Gm-Message-State: AOJu0YwLv4XDvGOTPoPyjt3GKa4G1iwlnSk0oGGiOIqm4lqn7a+H9zP3
	nPYWJWVs6Ln8vlKZnBzNpDg=
X-Google-Smtp-Source: AGHT+IHRLsiqqvilGXV7akKllvlYz9S+uorAcdH6PSFC8vgoeHy/ik7nsmsja3IemwyAGE0aqJ/3KQ==
X-Received: by 2002:a05:6870:819c:b0:1dc:a055:8587 with SMTP id k28-20020a056870819c00b001dca0558587mr1850005oae.6.1695805234798;
        Wed, 27 Sep 2023 02:00:34 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id kr9-20020a0568719ec900b001dd60c202e6sm766131oac.10.2023.09.27.02.00.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 02:00:34 -0700 (PDT)
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
	Conor Dooley <conor.dooley@microchip.com>,
	Chen Wang <wangchen20@iscas.ac.cn>
Subject: [PATCH v3 02/11] dt-bindings: vendor-prefixes: add milkv/sophgo
Date: Wed, 27 Sep 2023 17:00:27 +0800
Message-Id: <df92b2a50cc372098a7a8340e09be4d4cbc664b7.1695804418.git.unicornxw@gmail.com>
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
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add new vendor strings to dt bindings.
These new vendor strings are used by
- SOPHGO's SG2042 SoC [1]
- Milk-V Pioneer board [2], which uses SG2042 chip.

Link: https://en.sophgo.com/product/introduce/sg2042.html [1]
Link: https://milkv.io/pioneer [2]

Reviewed-by: Guo Ren <guoren@kernel.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Chao Wei <chao.wei@sophgo.com>
Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
Signed-off-by: Chen Wang <unicornxw@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..fcca9e070a9a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -863,6 +863,8 @@ patternProperties:
     description: MikroElektronika d.o.o.
   "^mikrotik,.*":
     description: MikroTik
+  "^milkv,.*":
+    description: MilkV Technology Co., Ltd
   "^miniand,.*":
     description: Miniand Tech
   "^minix,.*":
@@ -1273,6 +1275,8 @@ patternProperties:
     description: Solomon Systech Limited
   "^sony,.*":
     description: Sony Corporation
+  "^sophgo,.*":
+    description: Sophgo Technology Inc.
   "^sourceparts,.*":
     description: Source Parts Inc.
   "^spansion,.*":
-- 
2.25.1


