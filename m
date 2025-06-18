Return-Path: <devicetree+bounces-187313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB26CADF85D
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 23:07:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D3BC3ADE5B
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 21:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF9425F979;
	Wed, 18 Jun 2025 21:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gNt6UfDy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1759221CC7F
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 21:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750280825; cv=none; b=axtxEQknztvN+08ZY0abGNHG/+PsQ6xNjU5nvX6+mN/2cwH0LHE44U0EYDfO4mEoWohGUdruFuCTT2PZP9B/AFQTP+hzJnO0Mz6Yv9m6A40xBj5HlghwONCaoXBeYUmocNvtVfpvGeeycf5YK+A/XQR05qWP/JerTIZMbbEavv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750280825; c=relaxed/simple;
	bh=6vw8S+hRSfHG58xTdYdiW1jdjOvKcunLK33sm0BnbqI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=By9oefoIA2EytX1zqCP49MZd5jcqIbI9od7t8BQkVTiJw5AVpwXoQCYpp13BOIVjJuH6acr5PGGx2sAf1zyoVL7ZiahZ/Rm7Y+bb55D1MTYzrU+kXZIJoP5lWnS7/vhp6ClzMMS5UTvy8sIraO6/C/iAJBwGh7c/Sdw/V9Y1BEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gNt6UfDy; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ad8826c05f2so9025366b.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 14:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1750280822; x=1750885622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dbqg4sQN2SUi0pIFs2tbxpImkFY4E1U4v5hv/pAvM/4=;
        b=gNt6UfDy7NHwtOhOJMdMkgtYbSeu+ZcsDi9k+doxkxmZ2fw5BbO/Agu50zKwH/1EMt
         2vWAITdspoFVdN4nRWv+v59gKBs7k10WXzoD9ShWN8pOHdZA/gskO4V47jHca3PoIo2o
         UVQj2KRXszQ2GEfMYfbDdkDh1SpXiJP3Mtz5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750280822; x=1750885622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dbqg4sQN2SUi0pIFs2tbxpImkFY4E1U4v5hv/pAvM/4=;
        b=ANcKaWVe9M9rwg+9f5AS4Us4BO70pHjpI5RoT8q/mSZAy6xct7WstGcVomrN3d7LE0
         D2Bp8kAlj7/ZsjD+cuEjeZbIp9fM5++J5N6kLd29EQNehg+oFATBlBw6VmWmR4rul0Nn
         X23ns049r0m90H32BX1ZUvikTsq7dDLWWPv2dgbvcPV9kMNcGrCuc9sGPzfWHO6MJBob
         CYj4n+q3jg1R+GUFo65WcHVs26akbDcCztwErm5ciiRyzkh8hn27ImwTIjcPtWG8Qf9C
         IHMC8TSYBSgRikjvhGMKz+oqHCesgDw+5/4QGZ1nsRBP8fStT6dBOC8JBgjAZakppxvQ
         p2rA==
X-Forwarded-Encrypted: i=1; AJvYcCWsTPS6UF/5joxFBqAKKaRO6FneJPCrVOBjA2PwEdD3Rp6WpUfj2lXAC+Nj54+Ivm3nFq5PEN3k+OnI@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+a633eoezdeDcX87gNV7H/K4SiNejBufyPxPgk1r1sejz+5tg
	uTu1qXrdDlq+fLc4nuXL5s8t9oYm+HcPtrq4wlsSFhf95LGz73IsWuv9kCQiK22jvg==
X-Gm-Gg: ASbGncvSAwzFNvBG3/7mr9fKw4eG/in+UDv6kWv4Ty6eYZvhEMUq3gGWDM4MvxZ20si
	0KkzwwAPUoxki4SXSXngI/IU1YA+pWz1zuh4D6BG+iDDAfFen4gtwkYjzLpvoNVaOIjL7cS/pmt
	JVa0/bKIKD9kjfLv9vK+1J55wCGC1CBdOGHarOV6F7wPc8b1T0zMA1MzVj7mmsJCZ1t0f/c2jnf
	NF9OgA0C7ouMQGASE3uc0bRMkhruKB7BI6V4jC2S1pmjegF0h0Niq9cJh8JlA/kWnZFZD0jYwx5
	yGTFMQcnMQpD9EnI+I598dbc+yx5KNEP6czrF7CJYCDQjijcp2jZTjWllovc0k9sZyefz+0y3FI
	zYLMu+x1dckzohVuvNo+cWWgDKfyAbZpSTQ766dUdHCt+L2xWpw==
X-Google-Smtp-Source: AGHT+IFfkvcMfihIJ8Gbe3insvUnNmqpfP+23srMHE3chOr81sZdNldVfzxN25HYJnQdeMhg4V1HZg==
X-Received: by 2002:a17:907:dab:b0:ad8:9428:6a3c with SMTP id a640c23a62f3a-adfad31ccc4mr1816124266b.11.1750280822483;
        Wed, 18 Jun 2025 14:07:02 -0700 (PDT)
Received: from jaz-virt.c.googlers.com.com (104.112.91.34.bc.googleusercontent.com. [34.91.112.104])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec892b216sm1112822266b.135.2025.06.18.14.07.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 14:07:01 -0700 (PDT)
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
	vineethrp@google.com,
	rppt@kernel.org,
	agordeev@linux.ibm.com,
	dyoung@redhat.com,
	myrrhperiwinkle@qtmlabs.xyz,
	guoweikang.kernel@gmail.com,
	kirill.shutemov@linux.intel.com,
	akpm@linux-foundation.org,
	joel.granados@kernel.org,
	sourabhjain@linux.ibm.com
Subject: [PATCH v3 RESEND 1/2] x86/of: add support for reserved memory defined by DT
Date: Wed, 18 Jun 2025 21:06:27 +0000
Message-ID: <20250618210628.2635891-2-jaszczyk@chromium.org>
X-Mailer: git-send-email 2.50.0.rc2.701.gf1e915cc24-goog
In-Reply-To: <20250618210628.2635891-1-jaszczyk@chromium.org>
References: <20250618210628.2635891-1-jaszczyk@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Grzegorz Jaszczyk <jaszczyk@google.com>

The DT reserved-memory nodes can be present in DT as described in
Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml.
Similar to other architecture, which supports DT, there is a need to
create reserved memory regions for such nodes.

Additionally this patch changes the sequence and calls
x86_flattree_get_config earlier during memblock setup, just after e820
memblock setup, so the DT reserved-memory can be properly reflected in
the memblock before it is used for allocation.

Signed-off-by: Grzegorz Jaszczyk <jaszczyk@google.com>
---
 arch/x86/kernel/devicetree.c | 1 +
 arch/x86/kernel/setup.c      | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/x86/kernel/devicetree.c b/arch/x86/kernel/devicetree.c
index dd8748c45529..f7db0e8f9c3e 100644
--- a/arch/x86/kernel/devicetree.c
+++ b/arch/x86/kernel/devicetree.c
@@ -307,6 +307,7 @@ void __init x86_flattree_get_config(void)
 		}
 
 		early_init_dt_verify(dt, __pa(dt));
+		early_init_fdt_scan_reserved_mem();
 	}
 
 	unflatten_and_copy_device_tree();
diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
index fb27be697128..1c6fcb0bc65e 100644
--- a/arch/x86/kernel/setup.c
+++ b/arch/x86/kernel/setup.c
@@ -1069,6 +1069,8 @@ void __init setup_arch(char **cmdline_p)
 
 	e820__memblock_setup();
 
+	x86_flattree_get_config();
+
 	/*
 	 * Needs to run after memblock setup because it needs the physical
 	 * memory size.
@@ -1179,8 +1181,6 @@ void __init setup_arch(char **cmdline_p)
 	early_acpi_boot_init();
 	x86_init.mpparse.early_parse_smp_cfg();
 
-	x86_flattree_get_config();
-
 	initmem_init();
 	dma_contiguous_reserve(max_pfn_mapped << PAGE_SHIFT);
 
-- 
2.50.0.rc2.701.gf1e915cc24-goog


