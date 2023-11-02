Return-Path: <devicetree+bounces-13588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 061557DF1EA
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:02:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 86554B20D3D
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 12:02:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C5515490;
	Thu,  2 Nov 2023 12:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="DLXfjLgq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7014B14AA3
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 12:01:57 +0000 (UTC)
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF3ED197
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 05:01:52 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1cacde97002so6392035ad.2
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 05:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1698926512; x=1699531312; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jtFETPopYL9qQsqV12E64PSYpI6sEe2ykn1CxLszp0g=;
        b=DLXfjLgqWwQ8vYW7sWxECI1BRXzLe8nIJ0Y7zbwjiXysayV1Z7mfWI+QkHSH3Spwbg
         YCq92kvS7UQS8Vwue0Xp+Gl660UiyaOL6u2XrsZpIfNZHTGLpt0S33LSIa1+EjftN5fP
         /h3k2iDz6iJxv7MbQQ0r9k42+FXkpigoyDr8AWu7wRZMdPmWFP2dj5nIM5pC0f4cuZ0J
         O/J3s9dBVYr0m4uog+0wZw5VHB2Ap/j1b+QFh+IfLwZlFtND98iWq81wZ8hl3IQ3wXDb
         jOspcklFNGzLoqrZsS866eujfNBK94G1Um8SdBFSJyjulgDeQKYOCfw6mj0ytRLlJtN5
         mQbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698926512; x=1699531312;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jtFETPopYL9qQsqV12E64PSYpI6sEe2ykn1CxLszp0g=;
        b=Y8/gwnRCEizNqu8It5L9z9VINnJgQQaHSJ8sPibNeE5xm9+l45UMJfCosSAxCKn3iD
         OCpMjZzzZtiREiVuKh397s3/QliYaqLyFYSbgtr9PExUici8qBrJo5Pc/ouqd0EFyKi/
         RD257tnze3Pok1Hfi0YrQyoyE3KMzezRdUHnZ23581UFQQau0iD7O3pfNRanaNabMigP
         2SW8M8NrVEY9GqxPssfQSXGeCTSkn2OU0kQd9Q/G4vh+IdQMUHtlFydAIu7I4jgRDMpi
         RVUQchxHSx9KlK8IjP+Kni9X8NxlPHDu76kpJgXI6/6NGkBvAE3S08GUh21n0fFreUdq
         wbog==
X-Gm-Message-State: AOJu0YzHu/hsyNBJ45Hpwj1cuAWVEGp6Re5Ktt3pnt3cSPFceGw1qCiH
	PrOg/9sVn0oVrh6SurjxlNz7JQ==
X-Google-Smtp-Source: AGHT+IGLAFMFBtszNocU+qASkTznimPTF67YR80XaS1rd2vj4mW97ZI7ftQbfZbaIOnyHp9z4hHfiQ==
X-Received: by 2002:a17:902:e5cf:b0:1cc:3c6c:ce23 with SMTP id u15-20020a170902e5cf00b001cc3c6cce23mr13093008plf.42.1698926512333;
        Thu, 02 Nov 2023 05:01:52 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id l12-20020a170902f68c00b001cc0f6028b8sm2969008plg.106.2023.11.02.05.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 05:01:51 -0700 (PDT)
From: Yong-Xuan Wang <yongxuan.wang@sifive.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org
Cc: greentime.hu@sifive.com,
	vincent.chen@sifive.com,
	tjytimi@163.com,
	alex@ghiti.fr,
	conor.dooley@microchip.com,
	ajones@ventanamicro.com,
	Yong-Xuan Wang <yongxuan.wang@sifive.com>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: riscv: Add Svadu Entry
Date: Thu,  2 Nov 2023 12:01:23 +0000
Message-Id: <20231102120129.11261-3-yongxuan.wang@sifive.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231102120129.11261-1-yongxuan.wang@sifive.com>
References: <20231102120129.11261-1-yongxuan.wang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add an entry for the Svadu extension to the riscv,isa-extensions property.

Signed-off-by: Yong-Xuan Wang <yongxuan.wang@sifive.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index cc1f546fdbdc..b5a0aed0165b 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -147,6 +147,12 @@ properties:
             ratified at commit 3f9ed34 ("Add ability to manually trigger
             workflow. (#2)") of riscv-time-compare.
 
+        - const: svadu
+          description: |
+            The standard Svadu supervisor-level extension for hardware updating
+            of PTE A/D bits as frozen at commit b65e07c ("move to Frozen
+            state") of riscv-svadu.
+
         - const: svinval
           description:
             The standard Svinval supervisor-level extension for fine-grained
-- 
2.17.1


