Return-Path: <devicetree+bounces-135674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A887DA01ACD
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:17:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0037618833E4
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 17:18:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5739156887;
	Sun,  5 Jan 2025 17:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ga6m5Bvr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C08155359
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 17:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736097469; cv=none; b=NAe+Bv0oWyLwcsIaOmWynWsq2co16JJkOyKd2vMCcQAXcZLOlTrVfg0wtg6OJMkRDEcv7irbeWEE+2IsRl3GbfP1cjWL7/RCFHaNG+XfdbotMiJ73uZJNyebVkvhAhPZ/TXheUecNYm+diWfAONX8kMHuYzj10exDKCSej6/XhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736097469; c=relaxed/simple;
	bh=ugPkk0xuE0DOxXifT7SkqrrxnsW/tCcCapkBSno8/CM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HCSIvcPPvdSieEPS4/LYA5jnhmJhFI6y2Wz7dHCbet4PPA2TN8Oi6g/21bz+aWKQCvX4YgqiewNnxLIOurKNetsR2ejFKpTsG6qr7OzE7MrcfprsZyeb9DC+ohru54KM253UG6DWkXDuVmdrBIHb9OEJnVjxzlsgnMdTgMmX6nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ga6m5Bvr; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-385f06d0c8eso6963092f8f.0
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 09:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736097466; x=1736702266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J0GjmDNgFtYMS4CNHIpakXuXjn5IlFWM6hL+vU1HdSU=;
        b=Ga6m5BvrEKb28exxJk19qSdosVcDzbLh14fLb7PyFGglhMGrKbeJcVLzkgqLeJakWm
         1GV9BxvuZ7Nl1lRJj+1Wh3wXsZwlQpF12uQhxR9nRs9zvT180GNalr2VAw7ErLwOb846
         M9l1UYuxHAsQEmmzaJkv/dkgwGtDe5Icx09jk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736097466; x=1736702266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J0GjmDNgFtYMS4CNHIpakXuXjn5IlFWM6hL+vU1HdSU=;
        b=CFC591nnuwh6WkonRqDyEShyNQUPD6PRMoLg3pOfNyCi58heRkeC+4DE9CJlh0qPhl
         qQrAeoq1GemhIERnwNZw51cfyjpMZM8xq+OGpQBRu6FbIf2d86lecfD0RFAeNH1uFYc+
         JQnIWgqJAsQloJVDx0eTSaImsgZXJwCX9J9rf0Bjlz7ZJuFDZFutNGuObeo17zNp5cDf
         gxghpKnA6XescHjZy2To7GZB1lmoNpsECRJvdTQYkeY6wT18iykYO1KSv2NpqEPdGqCq
         a5FAhsbLPdEBsXTXKEKd58n8Ix2HwYrMmfwFIZbdgJXH0rQ3bF5yEeopQ1mv3d7xqaz3
         dGDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKaYYYn/MLSflSfUuorQ1OZ9lhtM8q7CfLbe9KVDQ6rk0dHud476WtwGcwAGtW18UxoSKxlowjNtKX@vger.kernel.org
X-Gm-Message-State: AOJu0YyY2obD9TInTF6XScRINE6XqFFG7Lupd2TgsYKkquluV5Cx25lQ
	ymxG+Em7sVvINUVk4vCi1kQFHx0E1pe7hOgtiPhFimBLMeRsAZGFTbdA6jaMCQ==
X-Gm-Gg: ASbGncvFqr2Z1hm9SofSjCVc1tXRPzpZaavkqnIGZySRYK7xcUBxR+ptowk5LUgH22t
	5RjlVru3WQCj/ijXkapvj+oIDxVRGbJ5VWmdUMWOkzjg3822ninJgmu2Xi5U02tB5PYCmdvsY2p
	C2LMLrt+POtPpDX8r7PYjUwnItWqkf5W0AuObm419bScRu8fUsC4fXPKn7U/MrAaqXp6p95GRXo
	ASKYfO6Ed5ngT8lNQkdOWqCQVYIw7XbBy9r8TELl5xXMwiSy3YWOiuv//rpHAUvkxI2X6+czOXz
	qgDZGQd0EV/DMuqj2FoxW3XkasDcyIivfDI4
X-Google-Smtp-Source: AGHT+IEcXFCNnO/fDAJP7+xy9vBl4+PVAh17+298KO0qXQqMn4ReiFb8r6IoYitgvJxcYVbT9bnTOw==
X-Received: by 2002:a5d:5e09:0:b0:385:e38f:8cc with SMTP id ffacd0b85a97d-38a223ffa1emr45639718f8f.38.1736097466136;
        Sun, 05 Jan 2025 09:17:46 -0800 (PST)
Received: from dmaluka.c.googlers.com.com (19.50.76.34.bc.googleusercontent.com. [34.76.50.19])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436604e9c2csm543987345e9.43.2025.01.05.09.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 09:17:45 -0800 (PST)
From: Dmytro Maluka <dmaluka@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	x86@kernel.org (maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)),
	"H. Peter Anvin" <hpa@zytor.com>,
	Saravana Kannan <saravanak@google.com>,
	Saurabh Sengar <ssengar@linux.microsoft.com>,
	Usama Arif <usamaarif642@gmail.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	linux-kernel@vger.kernel.org (open list:X86 ARCHITECTURE (32-BIT AND 64-BIT)),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE),
	=?UTF-8?q?Pierre-Cl=C3=A9ment=20Tosi?= <ptosi@google.com>,
	Shikha Panwar <shikhapanwar@google.com>,
	Will Deacon <will@kernel.org>,
	Keir Fraser <keirf@google.com>,
	Michal Mazurek <mazurekm@google.com>,
	=?UTF-8?q?Bart=C5=82omiej=20Grzesik?= <bgrzesik@google.com>,
	Tomasz Nowicki <tnowicki@google.com>,
	Grzegorz Jaszczyk <jaszczyk@google.com>,
	Dmytro Maluka <dmaluka@chromium.org>
Subject: [PATCH 1/2] x86/of: Don't use DTB for SMP setup if ACPI is enabled
Date: Sun,  5 Jan 2025 17:16:42 +0000
Message-ID: <20250105171643.3473702-2-dmaluka@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20250105171643.3473702-1-dmaluka@chromium.org>
References: <20250105171643.3473702-1-dmaluka@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are cases when it is useful to use both ACPI and DTB provided by
the bootloader, however in such cases we should make sure to prevent
conflicts between the two. Namely, don't try to use DTB for SMP setup
if ACPI is enabled.

Precisely, this prevents at least:

- incorrectly calling register_lapic_address(APIC_DEFAULT_PHYS_BASE)
  after the LAPIC was already successfully enumerated via ACPI, causing
  noisy kernel warnings and probably potential real issues as well

- failed IOAPIC setup in the case when IOAPIC is enumerated via mptable
  instead of ACPI (e.g. with acpi=noirq), due to
  mpparse_parse_smp_config() overridden by x86_dtb_parse_smp_config()

Signed-off-by: Dmytro Maluka <dmaluka@chromium.org>
---
 arch/x86/kernel/devicetree.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/devicetree.c b/arch/x86/kernel/devicetree.c
index 59d23cdf4ed0..dd8748c45529 100644
--- a/arch/x86/kernel/devicetree.c
+++ b/arch/x86/kernel/devicetree.c
@@ -2,6 +2,7 @@
 /*
  * Architecture specific OF callbacks.
  */
+#include <linux/acpi.h>
 #include <linux/export.h>
 #include <linux/io.h>
 #include <linux/interrupt.h>
@@ -313,6 +314,6 @@ void __init x86_flattree_get_config(void)
 	if (initial_dtb)
 		early_memunmap(dt, map_len);
 #endif
-	if (of_have_populated_dt())
+	if (acpi_disabled && of_have_populated_dt())
 		x86_init.mpparse.parse_smp_cfg = x86_dtb_parse_smp_config;
 }
-- 
2.47.1.613.gc27f4b7a9f-goog


