Return-Path: <devicetree+bounces-27546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE7D81AB78
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 01:00:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C5971C23EF1
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B59F24FF7B;
	Wed, 20 Dec 2023 23:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YsCoH7/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9394FF74
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-7b35d476d61so9610439f.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116525; x=1703721325; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/4vyd1tF7LY6LenXuoft53vwvHTu14aLUC8wddaElsk=;
        b=YsCoH7/ZbO+dsTFo1Nao4y3nEV+9+WrVNB+fkuNvqRrbjSylGI032V+UsAi2cdEJQw
         UVoxKCISQfLg7+tk0Qn9pb9oCKrImqgPzxdNjSi+ARpivTBNAYT1rx777OR5LaGAaFgD
         h6dtebRO0A199MwX/xATjW3l63rVBO2B/0lDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116525; x=1703721325;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/4vyd1tF7LY6LenXuoft53vwvHTu14aLUC8wddaElsk=;
        b=djcjlBI10X/8zjo5FygT6oK63JX4qGqoGdtmZNrrh4ncnHJuA1l4HQRdYGglBrWLk+
         N1gPcTMUIz7AgdU9nYocDcZgknQHT7MtoX7IOiOCaW7X1FEvqlJxjumK8o/hax2N6MQE
         t02iKVSkPwCqALB9mVu0tRiaN52M0ooQIEw7x8y66mAc0WJ+AgyA1n/LGzqoglmZcRFP
         PcHrFZjfVSU7J2EWSl1tCMt+5aAno5KsxYMU6BzkwwP9xnEBYzB8madjQnof88Ybt5Vw
         0b2GTi7bP8QQE9opgubb2V0NicU+aM7QkCYefDywUj/2c7t4rrMsyTi1gw/M3G8QJi6F
         19Og==
X-Gm-Message-State: AOJu0Yw4w5+k8sC5KpJ2lwEcxxs2DkE25e5diOT91iu+e78YVLiTfc5q
	wknwcaf/xdaAG4qUyaeMlEw1Qw==
X-Google-Smtp-Source: AGHT+IHDc+2/0o2kjedLVyZTxa7KHwUSnk/oDj2qevKyIsfHt2NivDO6L0c2iwsIy058pulYZ3DjuQ==
X-Received: by 2002:a05:6e02:1a66:b0:35f:87ac:10d4 with SMTP id w6-20020a056e021a6600b0035f87ac10d4mr12175155ilv.5.1703116525358;
        Wed, 20 Dec 2023 15:55:25 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:24 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Raul Rangel <rrangel@chromium.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Mark Hasemeyer <markhas@chromium.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 19/22] of: irq: Remove extern from function declarations
Date: Wed, 20 Dec 2023 16:54:33 -0700
Message-ID: <20231220165423.v2.19.I319e781c11e6352eb5b6c408dc20bd54a720edbf@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231220235459.2965548-1-markhas@chromium.org>
References: <20231220235459.2965548-1-markhas@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The extern keyword is implicit for function declarations.
Remove it where possible and adjust the line wrapping accordingly.

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

Changes in v2:
-New patch

 include/linux/of_irq.h | 35 +++++++++++++++++------------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/include/linux/of_irq.h b/include/linux/of_irq.h
index 0d73b2ca92d31..a130dcbc4bb45 100644
--- a/include/linux/of_irq.h
+++ b/include/linux/of_irq.h
@@ -32,27 +32,26 @@ static inline int of_irq_parse_oldworld(const struct device_node *device, int in
 }
 #endif /* CONFIG_PPC32 && CONFIG_PPC_PMAC */
 
-extern int of_irq_parse_raw(const __be32 *addr, struct of_phandle_args *out_irq);
-extern unsigned int irq_create_of_mapping(struct of_phandle_args *irq_data);
+int of_irq_parse_raw(const __be32 *addr, struct of_phandle_args *out_irq);
+unsigned int irq_create_of_mapping(struct of_phandle_args *irq_data);
 
 #ifdef CONFIG_OF_IRQ
-extern void of_irq_init(const struct of_device_id *matches);
-extern int of_irq_parse_one(struct device_node *device, int index,
-			  struct of_phandle_args *out_irq);
-extern int of_irq_count(struct device_node *dev);
-extern int of_irq_get(struct device_node *dev, int index);
-extern int of_irq_get_byname(struct device_node *dev, const char *name);
-extern int of_irq_to_resource(struct device_node *dev, int index, struct resource *r);
-extern int of_irq_to_resource_table(struct device_node *dev,
-		struct resource *res, int nr_irqs);
-extern struct device_node *of_irq_find_parent(struct device_node *child);
-extern struct irq_domain *of_msi_get_domain(struct device *dev,
+void of_irq_init(const struct of_device_id *matches);
+int of_irq_parse_one(struct device_node *device, int index,
+		    struct of_phandle_args *out_irq);
+int of_irq_count(struct device_node *dev);
+int of_irq_get(struct device_node *dev, int index);
+int of_irq_get_byname(struct device_node *dev, const char *name);
+int of_irq_to_resource(struct device_node *dev, int index, struct resource *r);
+int of_irq_to_resource_table(struct device_node *dev, struct resource *res,
+			    int nr_irqs);
+struct device_node *of_irq_find_parent(struct device_node *child);
+struct irq_domain *of_msi_get_domain(struct device *dev,
 					    struct device_node *np,
 					    enum irq_domain_bus_token token);
-extern struct irq_domain *of_msi_map_get_device_domain(struct device *dev,
-							u32 id,
-							u32 bus_token);
-extern void of_msi_configure(struct device *dev, struct device_node *np);
+struct irq_domain *of_msi_map_get_device_domain(struct device *dev, u32 id,
+					       u32 bus_token);
+void of_msi_configure(struct device *dev, struct device_node *np);
 u32 of_msi_map_id(struct device *dev, struct device_node *msi_np, u32 id_in);
 #else
 static inline void of_irq_init(const struct of_device_id *matches)
@@ -117,7 +116,7 @@ static inline u32 of_msi_map_id(struct device *dev,
  * implements it differently.  However, the prototype is the same for all,
  * so declare it here regardless of the CONFIG_OF_IRQ setting.
  */
-extern unsigned int irq_of_parse_and_map(struct device_node *node, int index);
+unsigned int irq_of_parse_and_map(struct device_node *node, int index);
 
 #else /* !CONFIG_OF && !CONFIG_SPARC */
 static inline unsigned int irq_of_parse_and_map(struct device_node *dev,
-- 
2.43.0.472.g3155946c3a-goog


