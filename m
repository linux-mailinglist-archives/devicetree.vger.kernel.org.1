Return-Path: <devicetree+bounces-24948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF58811BE3
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 19:05:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32B961C210F1
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 18:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54E0A5C06C;
	Wed, 13 Dec 2023 18:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="K3uuzmd2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com [IPv6:2607:f8b0:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91B36EB
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:01:38 -0800 (PST)
Received: by mail-il1-x12b.google.com with SMTP id e9e14a558f8ab-35da85e543eso26618795ab.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 10:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702490498; x=1703095298; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/W+jCmhtVUK3Oan20pcyAoaX1l8QrXEMpfoAzq+htTI=;
        b=K3uuzmd2WbSz2A8XCRYtvEjPlaG28elxyT2ZLFTIIkr/wVGwhpPttmE4sc45Yul2l1
         Mu09fcLdOaHgpRyCeFEW0nInQYk8IhvmCIUrmlzehtkTpv9e8DgAca8nShBj6BRarEZm
         1qyT5jSkVXLDbTm9jcz9q9IogBPwKcLYoQ2Fo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702490498; x=1703095298;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/W+jCmhtVUK3Oan20pcyAoaX1l8QrXEMpfoAzq+htTI=;
        b=Ej8rjMDCiP3yufDLGOSE8rBEOXRLcBs5nHDUZCT0yFnVko4lTbiNTnnWKkphWen9fR
         Zx04tA9aDqKtaYuUX/tmuE5O3zYlPCUt4u/grPFX3k9muEEJC2in+7GsIRporcR9hbkQ
         LNXDPVDaPGB7vN56YlxDPYTFkML1EBxARoJ8bJCOm1aLhJpxh34DPe2gACSFmpDZ+mLd
         TSRA1iTbE9Dkl6bSjHLeluNQRfxwRefud6SomEuLQwOD7BFeYKlakskjm67DsQOYyca7
         1UoFLEQ9/BrjU48qFKTpze+z8b2Es+bVqkQTdAF81rxTPLeMvvrUbsnSS9MwTuJ9QA5C
         YUtA==
X-Gm-Message-State: AOJu0Yypvdkp167vri4gKep1P83GNZW/QLWq01LIwhIZc6fv3B5XcP1k
	7QY/Y4A80kql3bbc5F/WU+mkmQ==
X-Google-Smtp-Source: AGHT+IELI/uKSCSYhwonacNwShqkQmhJaxoyNT51dJ3J3dNXC38tVsj6RuB0i9ZNNb0xs8/VHJAoXg==
X-Received: by 2002:a92:d948:0:b0:35d:59a2:92ab with SMTP id l8-20020a92d948000000b0035d59a292abmr7913891ilq.63.1702490497991;
        Wed, 13 Dec 2023 10:01:37 -0800 (PST)
Received: from markhas1.corp.google.com ([100.107.108.224])
        by smtp.gmail.com with ESMTPSA id o28-20020a02cc3c000000b0046671f9717csm3161206jap.109.2023.12.13.10.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 10:01:37 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Raul Rangel <rrangel@chromium.org>,
	Mark Hasemeyer <markhas@chromium.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v1 4/6] of: irq: Add default implementation for of_irq_to_resource()
Date: Wed, 13 Dec 2023 11:00:22 -0700
Message-ID: <20231213110009.v1.4.I31d4dd6a7e5a3e5eee05c87b358e63cd1aa0e467@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
References: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Similar to of_irq_to_resource_table(), add a default implementation of
of_irq_to_resource() for systems that don't have CONFIG_OF_IRQ defined.

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

 include/linux/of_irq.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/linux/of_irq.h b/include/linux/of_irq.h
index d6d3eae2f1452..817c7510082cb 100644
--- a/include/linux/of_irq.h
+++ b/include/linux/of_irq.h
@@ -34,8 +34,6 @@ static inline int of_irq_parse_oldworld(const struct device_node *device, int in
 
 extern int of_irq_parse_raw(const __be32 *addr, struct of_phandle_args *out_irq);
 extern unsigned int irq_create_of_mapping(struct of_phandle_args *irq_data);
-extern int of_irq_to_resource(struct device_node *dev, int index,
-			      struct resource *r);
 
 #ifdef CONFIG_OF_IRQ
 extern void of_irq_init(const struct of_device_id *matches);
@@ -44,6 +42,8 @@ extern int of_irq_parse_one(struct device_node *device, int index,
 extern int of_irq_count(struct device_node *dev);
 extern int of_irq_get(struct device_node *dev, int index);
 extern int of_irq_get_byname(struct device_node *dev, const char *name);
+extern int of_irq_to_resource(struct device_node *dev, int index,
+			      struct resource *r);
 extern int of_irq_to_resource_table(struct device_node *dev,
 		struct resource *res, int nr_irqs);
 extern struct device_node *of_irq_find_parent(struct device_node *child);
@@ -76,6 +76,11 @@ static inline int of_irq_get_byname(struct device_node *dev, const char *name)
 {
 	return 0;
 }
+static inline int of_irq_to_resource(struct device_node *dev, int index,
+			      struct resource *r)
+{
+	return 0;
+}
 static inline int of_irq_to_resource_table(struct device_node *dev,
 					   struct resource *res, int nr_irqs)
 {
-- 
2.43.0.472.g3155946c3a-goog


