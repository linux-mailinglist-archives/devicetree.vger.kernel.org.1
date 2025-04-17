Return-Path: <devicetree+bounces-168387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1F2A92D38
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 00:20:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0CEF98E1860
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 22:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 097F621ABCC;
	Thu, 17 Apr 2025 22:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hT66Nxjh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DB8212B1E
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 22:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744928407; cv=none; b=GJeLdsNnmpteOUveaWXPlqEwL6nZSASn6AGReMdy6IxMDgyFhDd44hP68inNs36iBh4nPoLE3eplKwr8XEsOjgJ4d8fY0KvzU8k0sa2MCqOi2NTRafaRycjtPWk7+I0v3Ly/fOO11VxtVaeTOYu7aZqYKJDIjPeG76sqW5DGd+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744928407; c=relaxed/simple;
	bh=kNIEV7w0Jrsu8SijviBsschYErqLmr5QPzJ2rxSKeMI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LO8BCrAQQaoY4q4AvO4odoIJDjM0dQtakXGy3ByrlxSr/KnXmQWbcojQdF/a+hKiu2RLTOCkPWCdSLLyQSh5AOF3J7/fej5OXRxru6ZICky4E/myLpK37hRbX0qulFIjN8Gs1tM3d+6CEdnRszSs5wcrqoblVcgqbUgXxLHcHRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hT66Nxjh; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e677f59438so1837962a12.2
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 15:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744928404; x=1745533204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ocHmrHTnEglicCcfURc0OBBLsngl7+N4WxjTCwBZAnk=;
        b=hT66NxjhCHfKXz+XetYfy1MdyHjwPl4lSYFKzj1FTOVxaP3HIHWUgVsokr9DJtUHd8
         twPcVdjOMMFYjDuTsi/lxRuc5TaikmHkzuUpzqiObejKQTkkOO52HunKeUWX0xhrHLyw
         hai+btZbtWNB84qV++dsKZhZseA/v2ewth9nE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744928404; x=1745533204;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ocHmrHTnEglicCcfURc0OBBLsngl7+N4WxjTCwBZAnk=;
        b=PCrl5r9meLnfF1RKBnFU2tYr60paPasy4scnuuvWx0EI9akEyv9LKy4OHv0hIyp/cm
         AYDq3+h8p2f0MUZWbaFCc94hSo2B6sSNxknmm1wk7uo2rllzUwRs2ETZZaU+esDvcyOL
         nvvZbbcKh0emNgcbjqJIdT8xdC2X/1DL0KqGMEHvTgi4wYo1pJpTohF47ivPm+SEEwSw
         tCMNICuoNM6Qhw+20B0fUvG0aAQcD43wsH4+3B1qvT3QRsT2Hqr8KQ8r1RydK4xEKywA
         NnHYejM6e5qmdLlDhDegIh3XrF+pV7wjI38IydfXDioMz1ZT3q3ESXkAHEwI/uaVDxqb
         ZOWg==
X-Forwarded-Encrypted: i=1; AJvYcCXY+VDcbLgHPHjZJo9IcnbdJoNcuspahLr8mo5YlmzQEIpO2pmE0SigGioU/j2dg+mxmTT0nEf7FzS6@vger.kernel.org
X-Gm-Message-State: AOJu0YyDd+bVIjbGhQEafvlNfDmowpSgnv5Vkno35DJhgWlRPRlFW4Oh
	wmrA1ZBJpYMvLLWddKuvMJv8i7i7ejHHxtaAwxlb6qs6uBIU3+VXgwU5u92/69nVRmK5969rvdp
	DlRYY
X-Gm-Gg: ASbGnct1Mk9ZZ+N40imvnl4+yXri95p6JuSSdrXZgfCjdHhF1eR44jj6MKejfNQlKe5
	pwBG6Qxu+kvd/mqWv36kOtqFUqgTh7IHB4PmaZqP/PdNk5/GjnlpVMUqI7tiouGvILtA+zeGb8a
	zWQ3Xx/zyGuJMd210urCWHzfdhinlfKL+7R0zhZEP5KPGu+k4/vsyxlikX/Jf2Vvpxje4S+t+GC
	Rwl/31n9/PyCBUExvNQakwuUBugAyCz3C0jbt78aM0YMdKL/+HYF1awOPl0pxUNoX5HLk6Y6+hG
	yM7PGn/j/wrfKQTd9spROCkn6qLqh2rM76Bfyu194uIwpxdIa9Iafu21Bj3kuzskU7PuXLwbzqr
	g5WV5eQRCU/DlqYuP7gYiS8o=
X-Google-Smtp-Source: AGHT+IEoyj6sXrhWuqgG5kT0lHjI20HNFjGrtb86BA/kJMJKRg3XJWkjKxjGSHD1vNaLeMyjaImFnQ==
X-Received: by 2002:a17:907:2d0b:b0:ac2:cae8:e153 with SMTP id a640c23a62f3a-acb74aa9af0mr47222266b.4.1744928404512;
        Thu, 17 Apr 2025 15:20:04 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (8.236.90.34.bc.googleusercontent.com. [34.90.236.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec0c068sm45725066b.11.2025.04.17.15.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 15:20:03 -0700 (PDT)
From: Grzegorz Jaszczyk <jaszczyk@chromium.org>
To: tglx@linutronix.de,
	robh@kernel.org
Cc: mingo@redhat.com,
	bp@alien8.de,
	dave.hansen@linux.intel.com,
	x86@kernel.org,
	hpa@zytor.com,
	saravanak@google.com,
	dmaluka@chromium.org,
	bgrzesik@google.com,
	jaszczyk@google.com,
	ilpo.jarvinen@linux.intel.com,
	usamaarif642@gmail.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	tnowicki@google.com,
	mazurekm@google.com,
	vineethrp@google.com
Subject: [PATCH 2/2] x86/of: add support for reserved memory defined by DT
Date: Thu, 17 Apr 2025 22:19:38 +0000
Message-ID: <20250417221938.579452-3-jaszczyk@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250417221938.579452-1-jaszczyk@chromium.org>
References: <20250417221938.579452-1-jaszczyk@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Grzegorz Jaszczyk <jaszczyk@google.com>

The DT reserved-memory nodes can be present in DT as described in
Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml.
Similar to other architecture, which supports DT, there is a need to
create reserved memory regions for such nodes.

Additionally, the x86 architecture builds its memory map based on E820
description passed by bootloader and not on DT. Since x86 already has
some DT support and allows booting with both ACPI and DT at the same
time, let's register an arch specific hook which will validate if a
reserved-memory region passed by DT is valid (covered by E820 reserved
region entry).

Without this check, the reserved memory from DT could be successfully
registered, even though such a region could conflict with e820
description e.g. it could be described as E820_RAM and could be already
used at early x86 boot stage for memblock initialization (which happens
before DT parsing).

Co-developed-by: Bartłomiej Grzesik <bgrzesik@google.com>
Signed-off-by: Bartłomiej Grzesik <bgrzesik@google.com>
Signed-off-by: Grzegorz Jaszczyk <jaszczyk@google.com>
---
 arch/x86/kernel/devicetree.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/x86/kernel/devicetree.c b/arch/x86/kernel/devicetree.c
index dd8748c45529..0c2b95300c6a 100644
--- a/arch/x86/kernel/devicetree.c
+++ b/arch/x86/kernel/devicetree.c
@@ -18,6 +18,7 @@
 #include <linux/of_pci.h>
 #include <linux/initrd.h>
 
+#include <asm/e820/api.h>
 #include <asm/irqdomain.h>
 #include <asm/hpet.h>
 #include <asm/apic.h>
@@ -289,6 +290,14 @@ static void __init x86_dtb_parse_smp_config(void)
 	dtb_apic_setup();
 }
 
+static bool __init x86_is_region_reserved(phys_addr_t base, phys_addr_t size)
+{
+	if (!e820__mapped_all(base, base + size - 1, E820_TYPE_RESERVED))
+		return false;
+
+	return true;
+}
+
 void __init x86_flattree_get_config(void)
 {
 #ifdef CONFIG_OF_EARLY_FLATTREE
@@ -307,6 +316,9 @@ void __init x86_flattree_get_config(void)
 		}
 
 		early_init_dt_verify(dt, __pa(dt));
+
+		early_init_set_rsv_region_verifier(x86_is_region_reserved);
+		early_init_fdt_scan_reserved_mem();
 	}
 
 	unflatten_and_copy_device_tree();
-- 
2.49.0.805.g082f7c87e0-goog


