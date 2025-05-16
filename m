Return-Path: <devicetree+bounces-177817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E153AB945E
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 05:08:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D93B1896AAE
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 03:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD3BE257427;
	Fri, 16 May 2025 03:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="UjsgheEZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E4C2472A8
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364744; cv=none; b=Ss1xYa+CcChHBCFxsjwHUcYXPm8EWa8ypPvJPiuWL6SUa0Cey0wuGgDv8lU+Nh8A5ccaMMo8CZgvnphKH2iYsaWuQxEPgV1WwIso6qr+S5JjRYoau67EP8yxEllSUTzzt/WNm8XkQ/KVcBrN3I7T+3kZ+92J6mktImIMaysSLBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364744; c=relaxed/simple;
	bh=SJyGNr6paspHqClO15IcSsmeN8j2SgCuQFiwXWo4W3o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=b6mBCxQ0UFTuAQvyX8GTHhBRYlLH6FO7HFKcKjTJbmZTwt7ymH/ZRphcA85Z2mDt7sBzmm3RDdYHIu4BjLR7Et2KSL3vnvHGfP0AitFmqqPI6s11k1LCuGljWGAugIIWBfWCL0xUs/QdT6YG18vB+uaIsvKJc3YkG43gsPWywHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=UjsgheEZ; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-22fac0694aaso12696265ad.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 20:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747364742; x=1747969542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y6ciFGfibwQSe7Dz2z8LF3Oi63gmDdi7aOYsraaH6S0=;
        b=UjsgheEZM0i9jGEo9VB+PNOO4dlSoC7QWvBd4NKNtWQ1+B0Kp/FkCR2QlclX6JpmVh
         a8R9N42XSjGK7Xr5Txh+wUh7cyDwqEgOMwpWaOgd0nzsJzvlPrMaLofi2NCV82XTiyMB
         196dzOZVptAXoh7aYJyRaWzOKcL2DyLGlb5oFEf4Q+lrsQ2j+1mBrkGEj7IFPnyvfB7F
         GyVJ2GBK1vDyTfpZ2Z6iBBi3KzIZCcGBrrnUcI3FPpAi46okBI2e16kOWzEmYVMRCHun
         nemrE6fq9tX+Xu2z6q0S2PI7OLbThx/bFQrs0AAtOEpHdSGI7xRq/4elOzuZPbiJNbI9
         1iSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747364742; x=1747969542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y6ciFGfibwQSe7Dz2z8LF3Oi63gmDdi7aOYsraaH6S0=;
        b=cDvvwpB8FcaGjBu69onFIqAqO9ZL5HyRcICq1CyYfMjf/+gGjdENTf1sHyXmA1TX8B
         p0mF0NLKw1KBwjyU8iVjLk1efU8b/a8ukLl6W/dWzQmMKfBzKG882d066l59KNoc68/r
         jFlV4k+4Y+iL0Wrv87fB4OwnAKIEuAITCdhm2zgFjIrEsq912CPhck2IelQXXqD19A3O
         ixX/fkX6zvbDJ3a0NVt6W6KJKH2zr83cBEysFK4Lo53kRLJ9mkxq4y55Hg69yrzU1Vwa
         2rH5nOBR6L5hCqKgzk09ctKdwbd7+NMjqz4Jqcb0QA+L5se/QPNk1cNvUWJwldJhgKGD
         Xn6g==
X-Forwarded-Encrypted: i=1; AJvYcCVzpk7hmnY3r1Y4P8QnQvIpYec6eXuGjdOIzByBzd+c5if3pC0/opnUUfcLTOY4wSy+4Mx6oEJxVbuR@vger.kernel.org
X-Gm-Message-State: AOJu0YxmzsdjlnOKVF+nDeGao7qbpFQ4LR+9AXCycLAsOePXcE6UOPiG
	LFMnenXXbNx1cfKhD4LY0sl7asLhHe7Y0OfEUr2maqiqyPtpb5mOUa6N5+tvaqobjOw=
X-Gm-Gg: ASbGncsE5/y8SC+PSwXSfmSsF3J8uXkBIE3EbPf+ngQJTcYhRZOTEu9vWjS5oQPYtuG
	fG3FoNlTz7udkL3A6ic0j7KlILLfmB8WFcviatejJ5RE//8t/qpSPlVD/plwiWdLscokhfn3L+Z
	n+CzDSl8zpYbR3R631GYB0F4+U7++l+CZwflBShGWT6Ht955skMNHz/GlLP0sE8+chb/obu8FjG
	nFLHz2fwbp4etpgESx4Gx6oLQa5XacmTjNmqHKxY/GUBZaQpkwD9S4mprH6yQ1p5JrtfwSi41W1
	ZJ93l+oAzyUY4FG3RoQWB+22BBe4eIl8E9Agr5Re8fEnFyMyNYt8ZK7eIf7/rXNCbTROUT9QWAw
	bqx9acwj5nkluFsc8lJjOhQ==
X-Google-Smtp-Source: AGHT+IHHAN9KUlQpyndVpMdv3EmGeRNRqlG+KvGrOQcL5JQgzWEKTPLq/Qbd2zlHxnE/jzbP8gbRYw==
X-Received: by 2002:a17:902:d543:b0:22e:4cae:5965 with SMTP id d9443c01a7336-231de37664bmr12056405ad.29.1747364742397;
        Thu, 15 May 2025 20:05:42 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebb084sm4804405ad.201.2025.05.15.20.05.39
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 15 May 2025 20:05:41 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>
Subject: [PATCH v2 02/12] riscv: Add SiFive xsfvqmaccdod and xsfvqmaccqoq vendor extensions
Date: Fri, 16 May 2025 11:03:00 +0800
Message-Id: <20250516030310.16950-3-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250516030310.16950-1-cyan.yang@sifive.com>
References: <20250516030310.16950-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SiFive vendor extension support to the kernel with the target of
"xsfvqmaccdod" and "xsfvqmaccqoq".

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 arch/riscv/Kconfig.vendor                     | 13 +++++++++++++
 .../include/asm/vendor_extensions/sifive.h    | 14 ++++++++++++++
 arch/riscv/kernel/vendor_extensions.c         | 10 ++++++++++
 arch/riscv/kernel/vendor_extensions/Makefile  |  1 +
 arch/riscv/kernel/vendor_extensions/sifive.c  | 19 +++++++++++++++++++
 5 files changed, 57 insertions(+)
 create mode 100644 arch/riscv/include/asm/vendor_extensions/sifive.h
 create mode 100644 arch/riscv/kernel/vendor_extensions/sifive.c

diff --git a/arch/riscv/Kconfig.vendor b/arch/riscv/Kconfig.vendor
index b096548fe0ff..e14f26368963 100644
--- a/arch/riscv/Kconfig.vendor
+++ b/arch/riscv/Kconfig.vendor
@@ -16,6 +16,19 @@ config RISCV_ISA_VENDOR_EXT_ANDES
 	  If you don't know what to do here, say Y.
 endmenu
 
+menu "SiFive"
+config RISCV_ISA_VENDOR_EXT_SIFIVE
+	bool "SiFive vendor extension support"
+	select RISCV_ISA_VENDOR_EXT
+	default y
+	help
+	  Say N here if you want to disable all SiFive vendor extension
+	  support. This will cause any SiFive vendor extensions that are
+	  requested by hardware probing to be ignored.
+
+	  If you don't know what to do here, say Y.
+endmenu
+
 menu "T-Head"
 config RISCV_ISA_VENDOR_EXT_THEAD
 	bool "T-Head vendor extension support"
diff --git a/arch/riscv/include/asm/vendor_extensions/sifive.h b/arch/riscv/include/asm/vendor_extensions/sifive.h
new file mode 100644
index 000000000000..608004250e2e
--- /dev/null
+++ b/arch/riscv/include/asm/vendor_extensions/sifive.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_RISCV_VENDOR_EXTENSIONS_SIFIVE_H
+#define _ASM_RISCV_VENDOR_EXTENSIONS_SIFIVE_H
+
+#include <asm/vendor_extensions.h>
+
+#include <linux/types.h>
+
+#define RISCV_ISA_VENDOR_EXT_XSFVQMACCDOD		0
+#define RISCV_ISA_VENDOR_EXT_XSFVQMACCQOQ		1
+
+extern struct riscv_isa_vendor_ext_data_list riscv_isa_vendor_ext_list_sifive;
+
+#endif
diff --git a/arch/riscv/kernel/vendor_extensions.c b/arch/riscv/kernel/vendor_extensions.c
index 9feb7f67a0a3..92d8ff81f42c 100644
--- a/arch/riscv/kernel/vendor_extensions.c
+++ b/arch/riscv/kernel/vendor_extensions.c
@@ -6,6 +6,7 @@
 #include <asm/vendorid_list.h>
 #include <asm/vendor_extensions.h>
 #include <asm/vendor_extensions/andes.h>
+#include <asm/vendor_extensions/sifive.h>
 #include <asm/vendor_extensions/thead.h>
 
 #include <linux/array_size.h>
@@ -15,6 +16,9 @@ struct riscv_isa_vendor_ext_data_list *riscv_isa_vendor_ext_list[] = {
 #ifdef CONFIG_RISCV_ISA_VENDOR_EXT_ANDES
 	&riscv_isa_vendor_ext_list_andes,
 #endif
+#ifdef CONFIG_RISCV_ISA_VENDOR_EXT_SIFIVE
+	&riscv_isa_vendor_ext_list_sifive,
+#endif
 #ifdef CONFIG_RISCV_ISA_VENDOR_EXT_THEAD
 	&riscv_isa_vendor_ext_list_thead,
 #endif
@@ -45,6 +49,12 @@ bool __riscv_isa_vendor_extension_available(int cpu, unsigned long vendor, unsig
 		cpu_bmap = riscv_isa_vendor_ext_list_andes.per_hart_isa_bitmap;
 		break;
 	#endif
+	#ifdef CONFIG_RISCV_ISA_VENDOR_EXT_SIFIVE
+	case SIFIVE_VENDOR_ID:
+		bmap = &riscv_isa_vendor_ext_list_sifive.all_harts_isa_bitmap;
+		cpu_bmap = riscv_isa_vendor_ext_list_sifive.per_hart_isa_bitmap;
+		break;
+	#endif
 	#ifdef CONFIG_RISCV_ISA_VENDOR_EXT_THEAD
 	case THEAD_VENDOR_ID:
 		bmap = &riscv_isa_vendor_ext_list_thead.all_harts_isa_bitmap;
diff --git a/arch/riscv/kernel/vendor_extensions/Makefile b/arch/riscv/kernel/vendor_extensions/Makefile
index 866414c81a9f..d5fdde0e863b 100644
--- a/arch/riscv/kernel/vendor_extensions/Makefile
+++ b/arch/riscv/kernel/vendor_extensions/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-$(CONFIG_RISCV_ISA_VENDOR_EXT_ANDES)	+= andes.o
+obj-$(CONFIG_RISCV_ISA_VENDOR_EXT_SIFIVE)	+= sifive.o
 obj-$(CONFIG_RISCV_ISA_VENDOR_EXT_THEAD)	+= thead.o
 obj-$(CONFIG_RISCV_ISA_VENDOR_EXT_THEAD)	+= thead_hwprobe.o
diff --git a/arch/riscv/kernel/vendor_extensions/sifive.c b/arch/riscv/kernel/vendor_extensions/sifive.c
new file mode 100644
index 000000000000..6042cc3021de
--- /dev/null
+++ b/arch/riscv/kernel/vendor_extensions/sifive.c
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <asm/cpufeature.h>
+#include <asm/vendor_extensions.h>
+#include <asm/vendor_extensions/sifive.h>
+
+#include <linux/array_size.h>
+#include <linux/types.h>
+
+/* All SiFive vendor extensions supported in Linux */
+static const struct riscv_isa_ext_data riscv_isa_vendor_ext_sifive[] = {
+	__RISCV_ISA_EXT_DATA(xsfvqmaccdod, RISCV_ISA_VENDOR_EXT_XSFVQMACCDOD),
+	__RISCV_ISA_EXT_DATA(xsfvqmaccqoq, RISCV_ISA_VENDOR_EXT_XSFVQMACCQOQ),
+};
+
+struct riscv_isa_vendor_ext_data_list riscv_isa_vendor_ext_list_sifive = {
+	.ext_data_count = ARRAY_SIZE(riscv_isa_vendor_ext_sifive),
+	.ext_data = riscv_isa_vendor_ext_sifive,
+};
-- 
2.39.5 (Apple Git-154)


