Return-Path: <devicetree+bounces-3175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC7E7AD947
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:39:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DFC6B2814EB
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 543A51BDC8;
	Mon, 25 Sep 2023 13:39:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D757F125D8
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:39:22 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D677EE8
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:39:21 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1c0ecb9a075so42154625ad.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695649161; x=1696253961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CsJSyEFV+awfjzqWEQrKDCJAKL6BoM6HZkqImf1ste0=;
        b=m9RKglTm9ThCLxCO6QpyfZX+xezakDScSzhxxCsFI2lcoF1CdQ2n2+6QirVUvUM6cz
         8ufWJLRbXuynmoYSnlJWMyah5Tk+hmQQTWhajOdEIwobybVnPXOvrDXZVxcSMyknMJNY
         DrcAdTeaa5F+XOQc+N/2DT9aO70g9tkGfXqY4Y7dL3V71b722/nkrxyQll8PZ5hrS/RZ
         q4izsoLjRn+QectI65Ncw1/r9i6fciqPf7eQoB4Dt1PGE5aCmlMNu6GMcr+8Zl31A9hI
         1Zj/FPCi4MTY4XU5OpQDu5Dyv4/JYb++1ryf6qbIW5x3YWEyc7u2sKr3Empqil/3qkmF
         xe3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695649161; x=1696253961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CsJSyEFV+awfjzqWEQrKDCJAKL6BoM6HZkqImf1ste0=;
        b=OYHbijvqbCM53hka12Y919UTj6Mmf69vLhFS1LkJptuDtwXXCYl5CVVtuAB1m6beEE
         nqIazuqiDQN/21bPLD5rJkwyakYCW6u1qhW11u2cny3zwjOF67Pq/mZvZnD9bxhARlxx
         rHZWrVBipL2C229+ih7fvZzZQvESfrFjxWVWjlUgzHoHUsjk+nv9Zni1+E8yzqF+g6xt
         514Z+wys9p0PdexNUy8NuX0KDAjlzqGf+7h8VzXsFroB1eiv+9Wld28woLvfVTmcgm+z
         X/xsRO4U2RtRhuHW2oWGtn9XFq+Z1BqmkMxHIItowVsF4FDvdUSs9EMhv2RHiGTDoc4G
         zwdQ==
X-Gm-Message-State: AOJu0Ywfo95lbDVg478r2ru1x6Kee2pB+1kA7SZ7dun84ozvUBik8UBM
	jQ8HnQNjKuUUdV3cpPbQ73TDTA==
X-Google-Smtp-Source: AGHT+IGqj9n3VQj53FXQlpdMHVR+4bQF5JgIjkaYGnLOH0hemDoUwEedX5Qz4D6VU5amsUQF9Mm5Cg==
X-Received: by 2002:a17:903:32cf:b0:1c6:1ac5:144c with SMTP id i15-20020a17090332cf00b001c61ac5144cmr2569000plr.40.1695649161179;
        Mon, 25 Sep 2023 06:39:21 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id p11-20020a170902eacb00b001c625d6ffccsm969433pld.129.2023.09.25.06.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 06:39:20 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
	Atish Patra <atishp@atishpatra.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shuah Khan <shuah@kernel.org>
Cc: Andrew Jones <ajones@ventanamicro.com>,
	Mayuresh Chitale <mchitale@ventanamicro.com>,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v2 1/9] dt-bindings: riscv: Add XVentanaCondOps extension entry
Date: Mon, 25 Sep 2023 19:08:51 +0530
Message-Id: <20230925133859.1735879-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230925133859.1735879-1-apatel@ventanamicro.com>
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add an entry for the XVentanaCondOps extension to the
riscv,isa-extensions property.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 36ff6749fbba..cad8ef68eca7 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -171,6 +171,13 @@ properties:
             memory types as ratified in the 20191213 version of the privileged
             ISA specification.
 
+        - const: xventanacondops
+          description: |
+            The Ventana specific XVentanaCondOps extension for conditional
+            arithmetic and conditional-select/move operations defined by the
+            Ventana custom extensions specification v1.0.1 (or higher) at
+            https://github.com/ventanamicro/ventana-custom-extensions/releases.
+
         - const: zba
           description: |
             The standard Zba bit-manipulation extension for address generation
-- 
2.34.1


