Return-Path: <devicetree+bounces-135678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E23AA01AF3
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:28:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 703723A31FD
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 17:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 323F21B3955;
	Sun,  5 Jan 2025 17:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Bw2spqqo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701031917ED
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 17:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736098070; cv=none; b=Bcv3Jw486r7eVJNvTFrF7H3QxvpbuXSzgLsRFjNyvpqdHKUYRH/T4nez5kZyzKxzJfBwjYAClqqWgPEi4ZbxT23MnlY4JPqVAY67Wxv99U6dtaFLbzFmX2LiTGAFcctFvICIR+Q+dP9gqGjpjEQQGmrYrTi+3kasA8TILKeUjnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736098070; c=relaxed/simple;
	bh=ugPkk0xuE0DOxXifT7SkqrrxnsW/tCcCapkBSno8/CM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PqKOM0hDsdb7isRf7on+ymi9yXkVO3Q8hp2ql60cABChsCFW2IsrSkKDIO/6OuWr6xKb7F6gQEys7mXbSYtrLpMBzp/6Os2WTiOFQ+/wDteNXUK9Y2PK3mGiD1j3LapPCmmCHCzG96dydzfd8ao3kAXq+Ef7HdxPmpG9AY/ay3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Bw2spqqo; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-385deda28b3so9137743f8f.0
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 09:27:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736098067; x=1736702867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J0GjmDNgFtYMS4CNHIpakXuXjn5IlFWM6hL+vU1HdSU=;
        b=Bw2spqqoGXqFuHJUBNajM72VMjvpEcNjuvunaRBIGcvVk6v1Fbyi0SVQvEKkhENP/+
         mm/Q3XpcKXApvPFDjKsUC6TrChxTxB07DM6sfdKIu3x1f7A7MvC+o6Dlm1IBPa5cXt+L
         Oome1KAUvw4WqnA/N1I84mT4ylmImiUCrLHdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736098067; x=1736702867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J0GjmDNgFtYMS4CNHIpakXuXjn5IlFWM6hL+vU1HdSU=;
        b=TOHsxRunRgMlt/X4KDVlzizxPxuqF5qSNHxrIsWBG7sIyGurzniZNu/MigT/ZvCfJr
         qFx6b0u43JYT5z78f3Czqrzdedp1QUtQsQ3Hpcei1qi1PfkHzNe9fzUz/44i7qObqkvs
         XJmmQCRCxMdFbAc7REWWnah/1pVBgrrblQUipFYmTOLHglie3N9UCXWapD31hzA07nox
         9ZHjVGBbbexBbeH/NE/kc3vkGzeJFJZvgB7jAiDMb20c8Sh4ZEeakS9toz249+iwXN8C
         N12/vctEkrC0nWLv9km1dBw5dL6R1zQWJkB/qP0bmoxWG5+oDfGxX6nmM8lY7Zid4dfu
         r+hA==
X-Forwarded-Encrypted: i=1; AJvYcCWoWMt8+hKqfhJd/x1zYhKuWKYi34I9FSjJuYDVkvBtrQSyJv2ecuaeYR6uHiTFggYsv2xqEjhsCWSS@vger.kernel.org
X-Gm-Message-State: AOJu0YyDkGDdAX8Ft8KloKs69k65OMyCj5JIMN4QdusWL1EkceQnki3f
	XQvDQFS5tfPMjm0I3Wl3BTmGgXw57Zp1NrdvOB+3bN5mHpoqiFYCMGFLuT1e3g==
X-Gm-Gg: ASbGnct2CrKEBDPTiowcnjbLDRWZkhndfO3TvWWqh2YDJVJm+a6JuwPkpRerCycs0nN
	EGMvQm6Ln2vZqzC0IuWClaC69XKYdnBZ2z5zTbyLUQhq+5/znacAX7v8eSWhYjoNRYUTOj/Aho1
	yKtIM6WrZGwZs0lqgH8e/CKi1FrMcM28z2J4yZw2KQVEjFtVH/WVMU8i5zbbt+YZUoBD3s4t7Ga
	9juZAGbMABzqNZAzbdCntCIzdaQsEATPTA0wOANduvCO4wLTwaIsbgewMVGfsFryI19BkAC/qZj
	C+I8oufhNzGyb76WXnZQyajWeNdGuU1WoA1u
X-Google-Smtp-Source: AGHT+IErDaqq4n8+yQtju94LarucyCOjKMDTL98018Mz40UKjANI6+lIM1YMTHyRQHqF/lsvezZZSg==
X-Received: by 2002:a05:6000:1fae:b0:386:7fe:af8e with SMTP id ffacd0b85a97d-38a221e2086mr43718342f8f.12.1736098066822;
        Sun, 05 Jan 2025 09:27:46 -0800 (PST)
Received: from dmaluka.c.googlers.com.com (19.50.76.34.bc.googleusercontent.com. [34.76.50.19])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b3b207sm575631395e9.32.2025.01.05.09.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 09:27:46 -0800 (PST)
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
Subject: [PATCH v2 1/2] x86/of: Don't use DTB for SMP setup if ACPI is enabled
Date: Sun,  5 Jan 2025 17:27:40 +0000
Message-ID: <20250105172741.3476758-2-dmaluka@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20250105172741.3476758-1-dmaluka@chromium.org>
References: <20250105172741.3476758-1-dmaluka@chromium.org>
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


