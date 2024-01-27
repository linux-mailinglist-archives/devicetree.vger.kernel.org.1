Return-Path: <devicetree+bounces-35818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A259683EE5C
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:20:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 592822848FF
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F3E2C1A2;
	Sat, 27 Jan 2024 16:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="mX9MvjSX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C662E83C
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372328; cv=none; b=nz6JB6UH8Yd8pKmCaQ75WST1VLmRnLhD2+RzEWWdru38vtuERcDklitN9+jcZWnpKl7qxc7/5Ek4EG3ngiFIWkcHk0kA7ZWeKydPIJu9VFGDnCAIKo5WyoHaaiUAQcsJQWLVSEBPbwMsIRjF7n2lmfdu4k3jwNJOs3b3JudRYck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372328; c=relaxed/simple;
	bh=EpRoLRmusa8N7P14ZY094nF/aKvaBFIeIIqe4kFz43o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Az6aSs59AV86SPBZUFn2G+iup7cI04DvwQ7fD/qU+mVCXxZm1rlYw3rUfKrvbUKxfHgO8Uf/iHvn+38tXDu/LWkx1g4H7APgcgOCJDSVYQTkwv9LlqkqR/XpG37Kcwb4Bc3xHNZqQ8bm/08F8xEvNn/JgXJwLKU6lnpvNLvZYG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=mX9MvjSX; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-290fb65531eso840711a91.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372326; x=1706977126; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z3xeY9DtBOR7dOD5/FngRjzfNRbevqnFzh0hE75BcjE=;
        b=mX9MvjSX7JOJtmQ9BcvKIES7vM2TwDCK27QEq1ZeKyggCkH1L3yqZoL8rFTkLyX9/G
         yCQuC8rr8aTsI62aheD5S7EhmdvgGzNZ7hYIJK2jlW1bz5mFrzj0dKFOtKQM40SN04oi
         KIfqwlpY4G9YpQfTkKmbx8N2dqnkVQ/0D5SUrj7veXHEwW00edPzaay24XqsanNLH694
         jHdykWi7hsIw5bijXrmuqF5OrATCyLjgIWQ1PDjWr75Qbi5fWOb59nefqSj82uVhuXIs
         kSmq3AUChufTrVTG+TJz9piP/Up18r7W5UFvbBlat2RXTbvIqTP2kLZ1DKssl3BWtY5s
         ZdXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372326; x=1706977126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z3xeY9DtBOR7dOD5/FngRjzfNRbevqnFzh0hE75BcjE=;
        b=G+XKzoKpe/yCH2MmShq+k1TZ5G0A4cZnqy8n9m+ibFUYjRASOOe7UxxyFz0+lsILsV
         bdKlWDFv47Ee6soIzYk3D0LFKTWvjsdJUH2eXEdghCQ9bGOJgs51XdpGi6DSMc6xosdW
         M49mam+FpnOwtQQvMqyR4vMTEb5UFz8DCa4VhT275XWJkrFfIllTjCCcV0NIjD0fNEFF
         p/PQGrRdJAGNK3D5nAjV5N/1ySEmo4V2U//eSdRdTNqwVMBFmh+Yx8lSz9OI7xZ96UQ1
         4K/MkvQXhlnU3/YmKIzPcnZJ2RX2iGzEB+WtfpQ6zp0WZesWwnXvvcp5ATR8+x5wHgfW
         EuIA==
X-Gm-Message-State: AOJu0Yye5opiorCEBVm82O+O27uBjHvXv4oWfaOFcC4mnY42bJJoUQEi
	qHE+uFBEARM8Ql40QVXorBspXERDPBDapYKfAZQpMaWRCiQ1Rd1meQmezQfiScY=
X-Google-Smtp-Source: AGHT+IGutpguVMvsJCUKZ8ZBCIT0dr4STx4SckknNX3693K2h9fTv8lXTlkdy/hnWpW7ckuoVkWimQ==
X-Received: by 2002:a17:90a:de08:b0:293:95eb:e363 with SMTP id m8-20020a17090ade0800b0029395ebe363mr840055pjv.72.1706372325855;
        Sat, 27 Jan 2024 08:18:45 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:18:45 -0800 (PST)
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
Subject: [PATCH v12 05/25] platform-msi: Prepare for real per device domains
Date: Sat, 27 Jan 2024 21:47:33 +0530
Message-Id: <20240127161753.114685-6-apatel@ventanamicro.com>
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

Provide functions to create and remove per device MSI domains which replace
the platform-MSI domains. The new model is that each of the devices which
utilize platform-MSI gets now its private MSI domain which is "customized"
in size and with a device specific function to write the MSI message into
the device.

This is the same functionality as platform-MSI but it avoids all the down
sides of platform MSI, i.e. the extra ID book keeping, the special data
structure in the msi descriptor. Further the domains are only created when
the devices are really in use, so the burden is on the usage and not on the
infrastructure.

Fill in the domain template and provide two functions to init/allocate and
remove a per device MSI domain.

Until all users and parent domain providers are converted, the init/alloc
function invokes the original platform-MSI code when the irqdomain which is
associated to the device does not provide MSI parent functionality yet.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/base/platform-msi.c | 97 +++++++++++++++++++++++++++++++++++++
 include/linux/msi.h         |  4 ++
 2 files changed, 101 insertions(+)

diff --git a/drivers/base/platform-msi.c b/drivers/base/platform-msi.c
index f37ad34c80ec..dbd19f329354 100644
--- a/drivers/base/platform-msi.c
+++ b/drivers/base/platform-msi.c
@@ -13,6 +13,8 @@
 #include <linux/msi.h>
 #include <linux/slab.h>
 
+/* Begin of removal area. Once everything is converted over. Cleanup the includes too! */
+
 #define DEV_ID_SHIFT	21
 #define MAX_DEV_MSIS	(1 << (32 - DEV_ID_SHIFT))
 
@@ -350,3 +352,98 @@ int platform_msi_device_domain_alloc(struct irq_domain *domain, unsigned int vir
 
 	return msi_domain_populate_irqs(domain->parent, dev, virq, nr_irqs, &data->arg);
 }
+
+/* End of removal area */
+
+/* Real per device domain interfaces */
+
+/*
+ * This indirection can go when platform_device_ims_init_and_alloc_irqs()
+ * is switched to a proper irq_chip::irq_write_msi_msg() callback. Keep it
+ * simple for now.
+ */
+static void platform_msi_write_msi_msg(struct irq_data *d, struct msi_msg *msg)
+{
+	irq_write_msi_msg_t cb = d->chip_data;
+
+	cb(irq_data_get_msi_desc(d), msg);
+}
+
+static void platform_msi_set_desc_byindex(msi_alloc_info_t *arg, struct msi_desc *desc)
+{
+	arg->desc = desc;
+	arg->hwirq = desc->msi_index;
+}
+
+static const struct msi_domain_template platform_msi_template = {
+	.chip = {
+		.name			= "pMSI",
+		.irq_mask		= irq_chip_mask_parent,
+		.irq_unmask		= irq_chip_unmask_parent,
+		.irq_write_msi_msg	= platform_msi_write_msi_msg,
+		/* The rest is filled in by the platform MSI parent */
+	},
+
+	.ops = {
+		.set_desc		= platform_msi_set_desc_byindex,
+	},
+
+	.info = {
+		.bus_token		= DOMAIN_BUS_DEVICE_IMS,
+	},
+};
+
+/**
+ * platform_device_ims_init_and_alloc_irqs - Initialize platform device IMS
+ *					     and allocate interrupts for @dev
+ * @dev:		The device for which to allocate interrupts
+ * @nvec:		The number of interrupts to allocate
+ * @write_msi_msg:	Callback to write an interrupt message for @dev
+ *
+ * Returns:
+ * Zero for success, or an error code in case of failure
+ *
+ * This creates a MSI domain on @dev which has @dev->msi.domain as
+ * parent. The parent domain sets up the new domain. The domain has
+ * a fixed size of @nvec. The domain is managed by devres and will
+ * be removed when the device is removed.
+ *
+ * Note: For migration purposes this falls back to the original platform_msi code
+ *	 up to the point where all platforms have been converted to the MSI
+ *	 parent model.
+ */
+int platform_device_ims_init_and_alloc_irqs(struct device *dev, unsigned int nvec,
+					    irq_write_msi_msg_t write_msi_msg)
+{
+	struct irq_domain *domain = dev->msi.domain;
+
+	if (!domain || !write_msi_msg)
+		return -EINVAL;
+
+	/* Migration support. Will go away once everything is converted */
+	if (!irq_domain_is_msi_parent(domain))
+		return platform_msi_domain_alloc_irqs(dev, nvec, write_msi_msg);
+
+	/*
+	 * @write_msi_msg is stored in the resulting msi_domain_info::data.
+	 * The underlying domain creation mechanism will assign that
+	 * callback to the resulting irq chip.
+	 */
+	if (!msi_create_device_irq_domain(dev, MSI_DEFAULT_DOMAIN,
+					  &platform_msi_template,
+					  nvec, NULL, write_msi_msg))
+		return -ENODEV;
+
+	return msi_domain_alloc_irqs_range(dev, MSI_DEFAULT_DOMAIN, 0, nvec - 1);
+}
+EXPORT_SYMBOL_GPL(platform_device_ims_init_and_alloc_irqs);
+
+/**
+ * platform_device_ims_free_irqs_all - Free all interrupts for @dev
+ * @dev:	The device for which to free interrupts
+ */
+void platform_device_ims_free_irqs_all(struct device *dev)
+{
+	msi_domain_free_irqs_all(dev, MSI_DEFAULT_DOMAIN);
+}
+EXPORT_SYMBOL_GPL(platform_device_ims_free_irqs_all);
diff --git a/include/linux/msi.h b/include/linux/msi.h
index d5d1513ef4d6..9bec9ca19800 100644
--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -664,6 +664,10 @@ int platform_msi_device_domain_alloc(struct irq_domain *domain, unsigned int vir
 void platform_msi_device_domain_free(struct irq_domain *domain, unsigned int virq,
 				     unsigned int nvec);
 void *platform_msi_get_host_data(struct irq_domain *domain);
+/* Per device platform MSI */
+int platform_device_ims_init_and_alloc_irqs(struct device *dev, unsigned int nvec,
+					    irq_write_msi_msg_t write_msi_msg);
+void platform_device_ims_free_irqs_all(struct device *dev);
 
 bool msi_device_has_isolated_msi(struct device *dev);
 #else /* CONFIG_GENERIC_MSI_IRQ */
-- 
2.34.1


