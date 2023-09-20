Return-Path: <devicetree+bounces-1622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 503DB7A7304
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:42:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A286281AF0
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 06:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98463747C;
	Wed, 20 Sep 2023 06:39:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671523D72
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 06:39:48 +0000 (UTC)
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0740AB0;
	Tue, 19 Sep 2023 23:39:47 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6befdb1f545so4507136a34.3;
        Tue, 19 Sep 2023 23:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695191986; x=1695796786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xIS769hMse1vDi7mpkrCqnYIQ3QwZYvHFR8ADh3yuGA=;
        b=lFAudFNhrBA4ZnDgB3a+jeL/HC//SVvy6DWZYhJo3J3bZtvWXDwzpEvTEgF9ue2NlC
         QThz1nLtJNVcumaOQ8ZXkxmuHYdJEAgU3aFySUBoqjvRXQahg9/L8cuPqC/Ys56reYGZ
         Hlm3n0NQ4Mkyc5Gb6Sj5C7yV33uVpS4C5bra3+f0xhcoFZkAa/0WOhFp0SZe6xeghAb3
         60bjZI6peiVj6mduRVHlgtlNDMqVVFdiNph5HTjED2kf72K/XwB/icVm7B9Ri7uXchh7
         Q99l0XwrCuzCMuW4ACZv63U0lb58mXZ6WPmQsdraYyXgb9NDNraG73b94X62uZ4VcFE6
         z6qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695191986; x=1695796786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xIS769hMse1vDi7mpkrCqnYIQ3QwZYvHFR8ADh3yuGA=;
        b=ssB4u/IKNIVlVOGmv6rQM4VWtOzxCuikTwtkUz1wwtHrPtnswHSlsEUfgT0nuFEHvM
         h1KsMZ6J8M6NulKX8s+4NQrHl8CBBIbnkez6PzVZUf6OX1EF3VF3rCpfclS+VYhYEjfy
         kz4ENUw0LV5xRJgOL1J3lS3B70xnK/sSbyxVgcg09Pzhzg1aCdYCK4x10tdQ0qHs+7Qr
         RxHU83mEsD6VUE8dioOxDiKwPx2aYUcvPIf0JrtP8XNfRbu3t0giZlgT8dZI/svsw1NT
         L99VU7Qs7fbaEBFdX4wZdXa0bjmTjXSf2euoVar0TiaD+BfKtrRX11PnNgr1harLZt9Y
         yUkg==
X-Gm-Message-State: AOJu0YwXdI2KZpu/uxTozWowR8ggeF6N1ImeN2xRYaw/HmB3PUssKrIF
	0U6KkUz98ctG8+5l4G2a1Aw=
X-Google-Smtp-Source: AGHT+IGvOZR9TEOpFxR7CU19sAHd0S0o7LQPvKu+dpiaEQBrFkNJITq/KyqRguWGoKOQD5qCXe3qBg==
X-Received: by 2002:a05:6870:c6a5:b0:1d5:4fb0:105 with SMTP id cv37-20020a056870c6a500b001d54fb00105mr1753205oab.20.1695191986216;
        Tue, 19 Sep 2023 23:39:46 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id m10-20020a056870560a00b001c02f12abd0sm6282986oao.38.2023.09.19.23.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 23:39:46 -0700 (PDT)
From: Chen Wang <unicornxw@gmail.com>
X-Google-Original-From: Chen Wang <wangchen20@iscas.ac.cn>
To: aou@eecs.berkeley.edu,
	chao.wei@sophgo.com,
	conor@kernel.org,
	devicetree@vger.kernel.org,
	emil.renner.berthing@canonical.com,
	guoren@kernel.org,
	jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com
Cc: Inochi Amaoto <inochiama@outlook.com>,
	Chen Wang <wangchen20@iscas.ac.cn>
Subject: [PATCH v2 06/11] dt-bindings: timer: Add Sophgo sg2042 clint
Date: Wed, 20 Sep 2023 14:39:39 +0800
Message-Id: <55865e1ce40d2017f047d3a9e1a9ee30043b271f.1695189879.git.wangchen20@iscas.ac.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1695189879.git.wangchen20@iscas.ac.cn>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn>
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

From: Inochi Amaoto <inochiama@outlook.com>

Add two new compatible string formatted like `C9xx-clint-xxx` to identify
the timer and ipi device separately, and do not allow c900-clint as the
fallback to avoid conflict.

Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
---
 Documentation/devicetree/bindings/timer/sifive,clint.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index a0185e15a42f..ae69696c5c75 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -39,6 +39,14 @@ properties:
               - allwinner,sun20i-d1-clint
               - thead,th1520-clint
           - const: thead,c900-clint
+      - items:
+          - enum:
+              - sophgo,sg2042-clint-mtimer
+          - const: thead,c900-clint-mtimer
+      - items:
+          - enum:
+              - sophgo,sg2042-clint-mswi
+          - const: thead,c900-clint-mswi
       - items:
           - const: sifive,clint0
           - const: riscv,clint0
-- 
2.25.1


