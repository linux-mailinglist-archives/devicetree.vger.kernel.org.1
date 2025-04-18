Return-Path: <devicetree+bounces-168549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A953CA9376B
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:48:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0B3C8A07EE
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 12:48:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CCEE275872;
	Fri, 18 Apr 2025 12:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dYboGRGQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B007274FED
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 12:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744980488; cv=none; b=nHe5jncI0rXXCKh4fW0KMoceTfZIv8sCQJTs3lieMfm98vwdlDXrS99xTUGWppI1LdkMZviXPSPUQ46DD4phXh8tpVkdTLxkc8VIP/d8KdVB/g/46Va/cdkje0ouIyRuOfWWeM1gQPao0mctGBVTQJ0x1E9JeVulmc0l7YsPZXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744980488; c=relaxed/simple;
	bh=pV1rzCsr8FYCVhfWMYFrJeFTmf49atITKo8uKg1wnyg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=I76+cHY58H44ggS32YY8ynDpacquG1hr3Hb5R4xvN3d4Hlzy9hLOqlRmxzzsQ15ks1koB1y/Nw1Vo8DjpLd00v4fvXqZbqG9XNGvmCZX7gYiKRmR74DwflRjyJvBr7EbLYR0wtPIqcAVWkaXcObOy/3JHDEq3s6YBJO3kuVvjrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dYboGRGQ; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac34257295dso359200766b.2
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 05:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1744980485; x=1745585285; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7XNN0Tem4xu6RZArPHYvTvbcnQvUc79+UNyXgXNy6Cc=;
        b=dYboGRGQLK/iphKt7or08i312U/MdrGDeftywb+tVOJQpvcy/mUsyvNaMOBOTJppEO
         3UsCcvCYjQCsbNfWO0txdRxeXTJO1SluqgTWXoANT74n+IKwn2+GX3jRx7JQLelr2m/0
         wzJJHAhVLCYEI066TNZ7Yym3ABAt49RqxsGtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744980485; x=1745585285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7XNN0Tem4xu6RZArPHYvTvbcnQvUc79+UNyXgXNy6Cc=;
        b=K5GfOxlnDRVnQpq8udcXrLxNNzoH/VjDqd4vjco/Csbx6VHPwyOr1IBpGg1UVnDxm0
         5ZupnkfFfzVb80UwYF5qy9K686wI0eVLWfNmGvaEuzAWLcVZyJJa7+jynESw9OCnq0d4
         o4QDKPyETNhl3ZlkduEOEKszYYkgVka0JYZwfG+q3oCK2QWG6pVxTNnlYSWyDsgRs4T7
         0Ah/ZGyMHUubUz/E5eTb3568G8BKu7qzXJwfqlSxl7P35aXX/shg2LSmnGSRLNKEOF1Z
         FkBdP9BqCOORs5MX0Uz51bhMNSkgkeb3qVWn4aB0KqRgKjvJm/pVJYTd8q3jUnIVyuYv
         872w==
X-Forwarded-Encrypted: i=1; AJvYcCUKeppq/IWncAzoKHPNV7f7jzQ1pFM5jkUoNVXfPhN8GgrbZq15jfQCr4yC9Y16T80+T+CCXCL45AfC@vger.kernel.org
X-Gm-Message-State: AOJu0YwIdl0k45TGkWqkUAc8cx6SeN+bunnIUd+c4Yn812AB1+LTQ+Ye
	YZoHhJ64wo6Hqz0DM//38xIqinivxL0Dtax0jWEgcq93x/ijeDgKGtwwR9kzmA==
X-Gm-Gg: ASbGncv+MAj81EgDRnQ04qbRFJH8IO9hohEFJVHo23jqLEsimAadtD8ZYF9bnm99k2U
	3DbIh0sENbwZmqj61/YlQ2AyXswuJg/NYc4giRg1Xe05VU9YcyFhEG5Lwz8z02EFByhWgpJPXWU
	RITGz8zE8HHjkJc5ZPilakkgqpftfNoVFn53n8O0SWyLwZaO7Gr9+Y5JR+rjoi0DLKsF5luIw6+
	7TqA7mu2JAioY5bwTo0QH07odGSIPRomkwqXS1fNxEyTFM9wgYhWq1izn6GWodafVq6uRZSYZPt
	jBRCMFZHYpnVrJYp1Jw59w+eDbP5KrS0xvvISYlD2y9O9ij1nyoS6v4gaOANfphVkG473u1IP/9
	M7Mk8RLnepp0QxuAyj+ToqJkjkLjHSM2j0A==
X-Google-Smtp-Source: AGHT+IG6P9eJLmL9+eikfNPnUZ7wxWv+V7OiUcpJHJFZyEg5TP66XxZUXXNNSx/PygO5dYxQPBqHMg==
X-Received: by 2002:a17:907:3d8a:b0:ac7:150e:8013 with SMTP id a640c23a62f3a-acb74b1ce20mr256181666b.15.1744980484716;
        Fri, 18 Apr 2025 05:48:04 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (8.236.90.34.bc.googleusercontent.com. [34.90.236.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec51601sm117445166b.74.2025.04.18.05.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 05:48:03 -0700 (PDT)
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
Subject: [PATCH v2 2/2] x86/of: add support for reserved memory defined by DT
Date: Fri, 18 Apr 2025 12:47:18 +0000
Message-ID: <20250418124718.1009563-3-jaszczyk@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250418124718.1009563-1-jaszczyk@chromium.org>
References: <20250418124718.1009563-1-jaszczyk@chromium.org>
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
 arch/x86/kernel/devicetree.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/x86/kernel/devicetree.c b/arch/x86/kernel/devicetree.c
index dd8748c45529..9a93eddfcedb 100644
--- a/arch/x86/kernel/devicetree.c
+++ b/arch/x86/kernel/devicetree.c
@@ -18,6 +18,7 @@
 #include <linux/of_pci.h>
 #include <linux/initrd.h>
 
+#include <asm/e820/api.h>
 #include <asm/irqdomain.h>
 #include <asm/hpet.h>
 #include <asm/apic.h>
@@ -289,6 +290,11 @@ static void __init x86_dtb_parse_smp_config(void)
 	dtb_apic_setup();
 }
 
+static bool __init x86_is_region_reserved(phys_addr_t base, phys_addr_t size)
+{
+	return e820__mapped_all(base, base + size, E820_TYPE_RESERVED);
+}
+
 void __init x86_flattree_get_config(void)
 {
 #ifdef CONFIG_OF_EARLY_FLATTREE
@@ -307,6 +313,9 @@ void __init x86_flattree_get_config(void)
 		}
 
 		early_init_dt_verify(dt, __pa(dt));
+
+		early_init_set_rsv_region_verifier(x86_is_region_reserved);
+		early_init_fdt_scan_reserved_mem();
 	}
 
 	unflatten_and_copy_device_tree();
-- 
2.49.0.805.g082f7c87e0-goog


