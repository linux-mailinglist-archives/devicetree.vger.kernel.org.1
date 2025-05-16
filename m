Return-Path: <devicetree+bounces-177819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4BAAB9473
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 05:10:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC020A2268C
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 03:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 067E325C712;
	Fri, 16 May 2025 03:05:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="X7gjPZxy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4420025A340
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364750; cv=none; b=bDU6CookJZ2BR9cICmFOxt7C8ZpZW3tmywsprxDHSEE7MUUO0cH/0NjqmqsMqI7n4PIhtHSIEFq0fwzJe1CWXJ2QBt26PFVgjLRdSt7CmQF18y7TG6He+JcbJjP2qIqN5ln+LyHtPBEp8LWTj0CmoT7r8shtZcXLiJ3qSJthPDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364750; c=relaxed/simple;
	bh=h+vHAUoPGBj9ueEF40vasfKWJtbIhR4WDJYtsgSQiqY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=c9eK1+p2LCQyNAD0TRoxcu8ZVRxC1Zpw1bFjkkSLpT36PL1fOZt3/6NoRpWPnXy7OXpymLVoXZvcrexlbLtGcX14E2mx/+I3sx/E35t1NfYqFZRWBB/5X6p88ttuiSAOpo4x4jSUq1oj/btiUJ4+kdd+i/4nXBhkEr3hjNzD43g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=X7gjPZxy; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-22e661313a3so19179215ad.3
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 20:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747364748; x=1747969548; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Vt4avVN1JMW1dLLTypBf6HyDWimdmGBTky31Gipgqs=;
        b=X7gjPZxyyCQ+yRA5oqIBW3ZPquHs70u2sNboe6ZEY8wR+zRA0KPjVVGPsGXSThQDdf
         csh18ypslWjUNxZT0x3RaHYgIzIDTLEZEfXqbgXpWDfB2EiA1IHR081S7EqK5Ek2fCH6
         GP1UW7mdrFErlYhRvkffVL7hMcs/YXXR6nyg/PSLEiU+XHMZKWWwzsjfXvwBXf4RTNCQ
         Rt71KERftFCX8SoaaAOCyzMfXp3OCoEA7XhhlU/ld7Sc2vHzz2SpXyj3uipSfgfAzqMj
         LElmNPmroYct7RXMTpNU2OR0P2MbZ/Va3dmK4Vwhm07oW2SRAxtZS6BaLRfYQbKzMVCS
         XoaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747364748; x=1747969548;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Vt4avVN1JMW1dLLTypBf6HyDWimdmGBTky31Gipgqs=;
        b=WVYh3Vag6ZKVVWFdEONgc+hAAMbS92V9cRWrUAJ9OdGBN22OHZYja9ui2Ka1kp49tO
         Ww5+ISAYyrLyKezMegWbUdB54wQe/RxO35Twrr9SNY3zmYA4hIB5nCFsVVK/LfGoLzqq
         4ceXmPSSnHgGuKE/w1Gu4Z/SATuRc+lIPhNu9SPnxbh6kN5DaQ+IQ1x6wsN9dbhjLuZz
         ZGSi06AVR1iim0YTF0EUCpyxwlntq82QUBbb8A/jJyRAJxp3fxrrYasEs6u7QdtO1umY
         KOcIb6o2S/kktQ4AuETzcI9uRYE1ermFihHt7aS8Gk5yjx7b/d7dr/ewvwz+mFdyFGB+
         GhiA==
X-Forwarded-Encrypted: i=1; AJvYcCUrp6iE5N11iLHi/Gie/5quxtmhh3Do4gDKMwoXFWsX/pdlFH1+ggcJlo4pmDJN0e7rjyE4DmYbz8rU@vger.kernel.org
X-Gm-Message-State: AOJu0YzJStVmSjYUB24xPLT3/wPIsTinOmP7gJjD/rF7gjTPFkiwXNE+
	rWqxpuwxr9o7qYTqyu4iw5xRfvIp0S6/DMZEr0b7w3CKq65PliaQ05fTtrroWbUNx1M=
X-Gm-Gg: ASbGncuU3DHf7+/23qwwY4cdHTyjRx1D/uZEsqASdHRhpeGOAkh5LZXCtLS3gLP8qAL
	q2I++TbOtqkUXs9gZJlVikEuP7RkZ2jt6akZ71/kp/QuyuC6kq2S96ImDEpdzI6G83XI21HbvoF
	qDBFODXhFPPrneWnKGjzoNlVeiyxw+KMNWdU+FTfKv2wDPNNmJ6tNV7S6LOk4wWQRXRcsQmTwIY
	ePUXhH/c0ZwcWnnM9Z+Rmysaa6Gbcjz2IfLfh3GIcCt4OxwD+32QV5w7QWLpy8XxI0CRkcX80Fm
	LYnaSeygs4c6W2HU4oKnr/KjwIWlhxkJzL90qqikNO2ySgOMuxcmKaxv16ogx1y/NJV3XkL+ctj
	Uyfh6aBQu//mCM4uFHayf0A==
X-Google-Smtp-Source: AGHT+IFrDHDI6jFyMdlNAcCJx/pSir2AtLkYuzD7zLd9+Mx8cd+OY5EwjsAwoSuuGlRkVPdDwKz98Q==
X-Received: by 2002:a17:903:32ce:b0:21f:6fb9:9299 with SMTP id d9443c01a7336-231de375e8cmr9043405ad.27.1747364748415;
        Thu, 15 May 2025 20:05:48 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebb084sm4804405ad.201.2025.05.15.20.05.45
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 15 May 2025 20:05:47 -0700 (PDT)
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
Subject: [PATCH v2 04/12] riscv: hwprobe: Add SiFive vendor extension support and probe for xsfqmaccdod and xsfqmaccqoq
Date: Fri, 16 May 2025 11:03:02 +0800
Message-Id: <20250516030310.16950-5-cyan.yang@sifive.com>
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

Add a new hwprobe key "RISCV_HWPROBE_KEY_VENDOR_EXT_SIFIVE_0" which allows
userspace to probe for the new vendor extensions from SiFive. Also, add
new hwprobe for SiFive "xsfvqmaccdod" and "xsfvqmaccqoq" vendor
extensions.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
---
 arch/riscv/include/asm/hwprobe.h              |  1 +
 .../asm/vendor_extensions/sifive_hwprobe.h    | 19 ++++++++++++++++++
 arch/riscv/include/uapi/asm/vendor/sifive.h   |  4 ++++
 arch/riscv/kernel/sys_hwprobe.c               |  5 +++++
 arch/riscv/kernel/vendor_extensions/Makefile  |  1 +
 .../kernel/vendor_extensions/sifive_hwprobe.c | 20 +++++++++++++++++++
 6 files changed, 50 insertions(+)
 create mode 100644 arch/riscv/include/asm/vendor_extensions/sifive_hwprobe.h
 create mode 100644 arch/riscv/include/uapi/asm/vendor/sifive.h
 create mode 100644 arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c

diff --git a/arch/riscv/include/asm/hwprobe.h b/arch/riscv/include/asm/hwprobe.h
index 1c6977305776..7fe0a379474a 100644
--- a/arch/riscv/include/asm/hwprobe.h
+++ b/arch/riscv/include/asm/hwprobe.h
@@ -22,6 +22,7 @@ static inline bool hwprobe_key_is_bitmask(__s64 key)
 	case RISCV_HWPROBE_KEY_IMA_EXT_0:
 	case RISCV_HWPROBE_KEY_CPUPERF_0:
 	case RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0:
+	case RISCV_HWPROBE_KEY_VENDOR_EXT_SIFIVE_0:
 		return true;
 	}
 
diff --git a/arch/riscv/include/asm/vendor_extensions/sifive_hwprobe.h b/arch/riscv/include/asm/vendor_extensions/sifive_hwprobe.h
new file mode 100644
index 000000000000..90a61abd033c
--- /dev/null
+++ b/arch/riscv/include/asm/vendor_extensions/sifive_hwprobe.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_RISCV_VENDOR_EXTENSIONS_SIFIVE_HWPROBE_H
+#define _ASM_RISCV_VENDOR_EXTENSIONS_SIFIVE_HWPROBE_H
+
+#include <linux/cpumask.h>
+
+#include <uapi/asm/hwprobe.h>
+
+#ifdef CONFIG_RISCV_ISA_VENDOR_EXT_SIFIVE
+void hwprobe_isa_vendor_ext_sifive_0(struct riscv_hwprobe *pair, const struct cpumask *cpus);
+#else
+static inline void hwprobe_isa_vendor_ext_sifive_0(struct riscv_hwprobe *pair,
+						   const struct cpumask *cpus)
+{
+	pair->value = 0;
+}
+#endif
+
+#endif
diff --git a/arch/riscv/include/uapi/asm/vendor/sifive.h b/arch/riscv/include/uapi/asm/vendor/sifive.h
new file mode 100644
index 000000000000..f25d8cf110d1
--- /dev/null
+++ b/arch/riscv/include/uapi/asm/vendor/sifive.h
@@ -0,0 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+
+#define	RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCDOD		(1 << 0)
+#define	RISCV_HWPROBE_VENDOR_EXT_XSFVQMACCQOQ		(1 << 1)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 249aec8594a9..138e74f05de7 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -15,6 +15,7 @@
 #include <asm/uaccess.h>
 #include <asm/unistd.h>
 #include <asm/vector.h>
+#include <asm/vendor_extensions/sifive_hwprobe.h>
 #include <asm/vendor_extensions/thead_hwprobe.h>
 #include <vdso/vsyscall.h>
 
@@ -300,6 +301,10 @@ static void hwprobe_one_pair(struct riscv_hwprobe *pair,
 		pair->value = riscv_timebase;
 		break;
 
+	case RISCV_HWPROBE_KEY_VENDOR_EXT_SIFIVE_0:
+		hwprobe_isa_vendor_ext_sifive_0(pair, cpus);
+		break;
+
 	case RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0:
 		hwprobe_isa_vendor_ext_thead_0(pair, cpus);
 		break;
diff --git a/arch/riscv/kernel/vendor_extensions/Makefile b/arch/riscv/kernel/vendor_extensions/Makefile
index d5fdde0e863b..a4eca96d1c8a 100644
--- a/arch/riscv/kernel/vendor_extensions/Makefile
+++ b/arch/riscv/kernel/vendor_extensions/Makefile
@@ -2,5 +2,6 @@
 
 obj-$(CONFIG_RISCV_ISA_VENDOR_EXT_ANDES)	+= andes.o
 obj-$(CONFIG_RISCV_ISA_VENDOR_EXT_SIFIVE)	+= sifive.o
+obj-$(CONFIG_RISCV_ISA_VENDOR_EXT_SIFIVE)	+= sifive_hwprobe.o
 obj-$(CONFIG_RISCV_ISA_VENDOR_EXT_THEAD)	+= thead.o
 obj-$(CONFIG_RISCV_ISA_VENDOR_EXT_THEAD)	+= thead_hwprobe.o
diff --git a/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c b/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c
new file mode 100644
index 000000000000..461ce0f305ce
--- /dev/null
+++ b/arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <asm/vendor_extensions/sifive.h>
+#include <asm/vendor_extensions/sifive_hwprobe.h>
+#include <asm/vendor_extensions/vendor_hwprobe.h>
+
+#include <linux/cpumask.h>
+#include <linux/types.h>
+
+#include <uapi/asm/hwprobe.h>
+#include <uapi/asm/vendor/sifive.h>
+
+void hwprobe_isa_vendor_ext_sifive_0(struct riscv_hwprobe *pair, const struct cpumask *cpus)
+{
+	VENDOR_EXTENSION_SUPPORTED(pair, cpus,
+				   riscv_isa_vendor_ext_list_sifive.per_hart_isa_bitmap, {
+		VENDOR_EXT_KEY(XSFVQMACCDOD);
+		VENDOR_EXT_KEY(XSFVQMACCQOQ);
+	});
+}
-- 
2.39.5 (Apple Git-154)


