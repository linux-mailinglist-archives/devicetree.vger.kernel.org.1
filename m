Return-Path: <devicetree+bounces-35824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 869C883EE68
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:21:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13FCC284A21
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9685745BE1;
	Sat, 27 Jan 2024 16:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="XBvviF9v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13ABE1E493
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372363; cv=none; b=KVcXnFW9Z6BsUCfPjxTCAgwGrRFkH3QkVi9v/quHT1tUIWB01M9kz/EWSgKuBt37Rt87aZfKjswN2Qh2CCFkPxfj/0KOhM8lJfuMMLotBX3FCX9sE+9RwxcUunNtHH646aJh+OJsVYTTxvtsJFCS7xyE+9+N8Z/G+Z7QzNcMeMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372363; c=relaxed/simple;
	bh=Z0bsXyy/eyFNkb57963VO9376500pOd5o0/Yx1fXsWY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SKO/eTw5VRcsfpz8WG0j7kxT13fpr+fVvIbGN32rGhayWpKCAk7gnv0/Xufl4scZ6a+qnmoVJsxQqd0oCPLy78ZOlXz7Cbcaj8zeCXBX8lxdO/KiCH6QZmSAM3RxSXLz/Qh8aatyMZ5vqTVhWlpp/mU8bJ3jkx6vcCa85sUAWXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=XBvviF9v; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-5ce942efda5so1091340a12.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372361; x=1706977161; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LEJHdx6IO6bkVVTImbulpm/taR3P8DZhF8xpLu8rn5g=;
        b=XBvviF9vR8CDy+tyYmsv6RACy2gCSNoCBOoie0NgDOqClzp2DSu7zuppiODXIucUuf
         MdWkismK3jtupDved9obhsBkUJd5oN4PEPDnhQkTLuQDZohfynpqNr/J0gXxcBmrYo2Z
         7Rr69WFk25Xsp4BwG+JNRLuFYBFloG7t6YQ9kNf3wfysEB14BovhN18XvH3BfEH4Xik2
         kUG+/kZRjEyvfSpg0VYpCnU7/A3tUbaM6Sl35M6NK5HIa5VD00XopiFiMmUsWI7wupPk
         1Lt4sdpxLgcZAqZJi2UlnIE3J5cI43s7fT+4ia8zlH5m4YttLdz4/5yK9RNMUJMKycrv
         WGKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372361; x=1706977161;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LEJHdx6IO6bkVVTImbulpm/taR3P8DZhF8xpLu8rn5g=;
        b=t1BwUNBx64hb2H0KcR3kq7rIdoRXWEezVoV0+yoT5aYNU6VMweTpi5kHS9/rB24LAk
         ega0TYeKJBNoX1WcnV2dryW9rRZ8kMkXhU4Nr1/W8wG9HKx/yTf016Cc+/XwOCu7ld4H
         oyhMb23pfEFgy1lzGuC1Fh6W5FqXIiyMTfVY9OWW13tvqEKoNFxF4ciqIoVd629mMPGD
         BCoS4a96MVscbYu4RhvUdMcjubARd0danzlJuQzTqavDIAattDa7ixm/dG/kXyB5cGoV
         sPwUB8Z62MHrRkSilnNIJoWVvncJgxQBcKwbFMYmA3gq0DhFovP6hyCJwwEXNOeU+YvB
         1rwg==
X-Gm-Message-State: AOJu0Yxd1Xg9ev/HEVMLC8L0nqeuITbZUD0IMgbWra/ODjN7gMU0Xukw
	uFJhAQIq5Tw9aiYL8m5sT/RJCZxn9CQqEPoVm0r6EeetgYGO45PjH+26HkAP/Js=
X-Google-Smtp-Source: AGHT+IHIUpc0CrfHqSQkzgTdflfoO24IxiwZWgRJHvY8gpPilqZuNaET7dJ7J6HgrcXpdxUGvM2U8Q==
X-Received: by 2002:a17:90a:780f:b0:293:d89e:349b with SMTP id w15-20020a17090a780f00b00293d89e349bmr1219751pjk.57.1706372360712;
        Sat, 27 Jan 2024 08:19:20 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.19.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:19:20 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v12 11/25] genirq/msi: Provide allocation/free functions for "wired" MSI interrupts
Date: Sat, 27 Jan 2024 21:47:39 +0530
Message-Id: <20240127161753.114685-12-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127161753.114685-1-apatel@ventanamicro.com>
References: <20240127161753.114685-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thomas Gleixner <tglx@linutronix.de>

To support wire to MSI bridges proper in the MSI core infrastructure it is
required to have separate allocation/free interfaces which can be invoked
from the regular irqdomain allocaton/free functions.

The mechanism for allocation is:
  - Allocate the next free MSI descriptor index in the domain
  - Store the hardware interrupt number and the trigger type
    which was extracted by the irqdomain core from the firmware spec
    in the MSI descriptor device cookie so it can be retrieved by
    the underlying interrupt domain and interrupt chip
  - Use the regular MSI allocation mechanism for the newly allocated
    index which returns a fully initialized Linux interrupt on succes

This works because:
  - the domains have a fixed size
  - each hardware interrupt is only allocated once
  - the underlying domain does not care about the MSI index it only cares
    about the hardware interrupt number and the trigger type

The free function looks up the MSI index in the MSI descriptor of the
provided Linux interrupt number and uses the regular index based free
functions of the MSI core.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 include/linux/irqdomain.h | 17 ++++++++++
 kernel/irq/msi.c          | 68 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 85 insertions(+)

diff --git a/include/linux/irqdomain.h b/include/linux/irqdomain.h
index ee0a82c60508..21ecf582a0fe 100644
--- a/include/linux/irqdomain.h
+++ b/include/linux/irqdomain.h
@@ -619,6 +619,23 @@ static inline bool irq_domain_is_msi_device(struct irq_domain *domain)
 
 #endif	/* CONFIG_IRQ_DOMAIN_HIERARCHY */
 
+#ifdef CONFIG_GENERIC_MSI_IRQ
+int msi_device_domain_alloc_wired(struct irq_domain *domain, unsigned int hwirq,
+				  unsigned int type);
+void msi_device_domain_free_wired(struct irq_domain *domain, unsigned int virq);
+#else
+static inline int msi_device_domain_alloc_wired(struct irq_domain *domain, unsigned int hwirq,
+						unsigned int type)
+{
+	WARN_ON_ONCE(1);
+	return -EINVAL;
+}
+static inline void msi_device_domain_free_wired(struct irq_domain *domain, unsigned int virq)
+{
+	WARN_ON_ONCE(1);
+}
+#endif
+
 #else /* CONFIG_IRQ_DOMAIN */
 static inline void irq_dispose_mapping(unsigned int virq) { }
 static inline struct irq_domain *irq_find_matching_fwnode(
diff --git a/kernel/irq/msi.c b/kernel/irq/msi.c
index 5289fc2c7630..07e9daaf0657 100644
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -1540,6 +1540,50 @@ struct msi_map msi_domain_alloc_irq_at(struct device *dev, unsigned int domid, u
 	return map;
 }
 
+/**
+ * msi_device_domain_alloc_wired - Allocate a "wired" interrupt on @domain
+ * @domain:	The domain to allocate on
+ * @hwirq:	The hardware interrupt number to allocate for
+ * @type:	The interrupt type
+ *
+ * This weirdness supports wire to MSI controllers like MBIGEN.
+ *
+ * @hwirq is the hardware interrupt number which is handed in from
+ * irq_create_fwspec_mapping(). As the wire to MSI domain is sparse, but
+ * sized in firmware, the hardware interrupt number cannot be used as MSI
+ * index. For the underlying irq chip the MSI index is irrelevant and
+ * all it needs is the hardware interrupt number.
+ *
+ * To handle this the MSI index is allocated with MSI_ANY_INDEX and the
+ * hardware interrupt number is stored along with the type information in
+ * msi_desc::cookie so the underlying interrupt chip and domain code can
+ * retrieve it.
+ *
+ * Return: The Linux interrupt number (> 0) or an error code
+ */
+int msi_device_domain_alloc_wired(struct irq_domain *domain, unsigned int hwirq,
+				  unsigned int type)
+{
+	unsigned int domid = MSI_DEFAULT_DOMAIN;
+	union msi_instance_cookie icookie = { };
+	struct device *dev = domain->dev;
+	struct msi_map map = { };
+
+	if (WARN_ON_ONCE(!dev || domain->bus_token != DOMAIN_BUS_WIRED_TO_MSI))
+		return -EINVAL;
+
+	icookie.value = ((u64)type << 32) | hwirq;
+
+	msi_lock_descs(dev);
+	if (WARN_ON_ONCE(msi_get_device_domain(dev, domid) != domain))
+		map.index = -EINVAL;
+	else
+		map = __msi_domain_alloc_irq_at(dev, domid, MSI_ANY_INDEX, NULL, &icookie);
+	msi_unlock_descs(dev);
+
+	return map.index >= 0 ? map.virq : map.index;
+}
+
 static void __msi_domain_free_irqs(struct device *dev, struct irq_domain *domain,
 				   struct msi_ctrl *ctrl)
 {
@@ -1665,6 +1709,30 @@ void msi_domain_free_irqs_all(struct device *dev, unsigned int domid)
 	msi_unlock_descs(dev);
 }
 
+/**
+ * msi_device_domain_free_wired - Free a wired interrupt in @domain
+ * @domain:	The domain to free the interrupt on
+ * @virq:	The Linux interrupt number to free
+ *
+ * This is the counterpart of msi_device_domain_alloc_wired() for the
+ * weird wired to MSI converting domains.
+ */
+void msi_device_domain_free_wired(struct irq_domain *domain, unsigned int virq)
+{
+	struct msi_desc *desc = irq_get_msi_desc(virq);
+	struct device *dev = domain->dev;
+
+	if (WARN_ON_ONCE(!dev || !desc || domain->bus_token != DOMAIN_BUS_WIRED_TO_MSI))
+		return;
+
+	msi_lock_descs(dev);
+	if (!WARN_ON_ONCE(msi_get_device_domain(dev, MSI_DEFAULT_DOMAIN) != domain)) {
+		msi_domain_free_irqs_range_locked(dev, MSI_DEFAULT_DOMAIN, desc->msi_index,
+						  desc->msi_index);
+	}
+	msi_unlock_descs(dev);
+}
+
 /**
  * msi_get_domain_info - Get the MSI interrupt domain info for @domain
  * @domain:	The interrupt domain to retrieve data from
-- 
2.34.1


