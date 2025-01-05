Return-Path: <devicetree+bounces-135677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 338EAA01AF1
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:27:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAB5F3A2E2B
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 17:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C79D19066D;
	Sun,  5 Jan 2025 17:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eE5F6SzL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB5518A6AE
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 17:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736098068; cv=none; b=CEGnA4pgGJRYFEk8lOzHykM9kUKcJheOiHtMiQFn8+3VU6nQAu9qnWKcFsvv6j7l4ciaABCrOc70VDcUvuMTmQn87jJzUa8SsKJSkhECu2b6xnOu43IoFhyhNLfNfBL1828kgdA07/m3v+9m6glUH/OMbLypQ9sZW/GfTy4RfyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736098068; c=relaxed/simple;
	bh=5k8ycTRaWzR61UJvHO40HQsKr26i4RCmw6iVaBJ1p5w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ESUmFf0jczUQXH4OylPcz+4UtrnScDmSP3FNz6KpNF6vycK0/L5cXe5sNW9yrjevse73wpLZuH2Lf44BNlYtAV3GY33KFU5zCVyeJheBJ/t9msrOpPqGqsWhb6yGNQHz7qr7k3Z/YjltbmxXRlHn1d+1gPUJZPd/zr/M0P3VmjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=eE5F6SzL; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436281c8a38so97703915e9.3
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 09:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736098065; x=1736702865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=28ukOJT+BC5Hb4IDeNu8OIpCDoYlDgcQuEEIPI9KYoI=;
        b=eE5F6SzLtgqVLlw/nAbXNFq8VTFCOGjBCmUxLClO3TJx0ZvDx7dudSzP5DxuXt2H9z
         +h5uApJRLOqS/02IFR14OdKcPsiC+AuERflBeAyZooSY1z+l4Wgq3VtVHlJBW/T6wjkO
         6Tpqy/2awSA66jhcPnrBn9V76azKfSHmBsWxY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736098065; x=1736702865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=28ukOJT+BC5Hb4IDeNu8OIpCDoYlDgcQuEEIPI9KYoI=;
        b=XQF6taHkdeZhvOcozUxNgdrni5tavsZPYNOua2KMv/aJPouRS1GC7B2gKQPO9TPma4
         pM4LRSx47pvf0Sng8xwYY3Nde2vWPwWvgglubmAW2KVJdExkvepsHjVkoZq3mS8fNXTk
         rekOWxEvWNcCi86eXVFcxEcdKdV0BsUsL3zK0PXDnE4h69CD37S34qOf4qa9TDVhaTBC
         7Urs6usG04sYAb8KxZHprr2k/qaCvF3sXq9zIWlsXE7xZgx5KnT4KVV5fT8Gvb9L8uz1
         nZPwqZoPfqj3+NFLM2gXDXgh3neDzPM7jP7x6IiimWEzM2h2BaTka81ca+aUiPMF0vTF
         7wFQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCQAZrm4kRwGm41TzKOjGhk850U41japIZZ4UwhX7n6qOYlypPdIwbTVQrvYq/Hdt1OWN/oSTJOkq/@vger.kernel.org
X-Gm-Message-State: AOJu0Yys0eBbO4K0gfJnCSQNoZ0sDUm44B8IPjLxHFAI7di0+M59AOQZ
	a62ZhAIdG9TC2+UvACmVgZFBpMuF+7OQSnHEbPs26OcjXfMxmKWC+wygd6btww==
X-Gm-Gg: ASbGncswKeap2iPWnKeppH5ahOUIi33c9BiEuKtW0+7FywbisdRmlJ0whfL2AYXjmT6
	vqOKR4ljIEwT+8LTv6aL/ziYz5iD5Vp37qZMU4gsdDG6ktvX95Xl9Zgj6NtSc/YwWW42PE2Q/Fl
	sXojeR8ZK1YB3I8A78wWXaApCGTWlhyHGptsiPmUdOYlNrTT3lDvRIs0nzdC4Dch1eKwleauSek
	X+VcuIW2zyg5Vlk97CtPJYRXXwZ8M0Y2PRtjGpADAdSU8pmDTCcHA8YpdfCWj2Co/xHd0KCkk9I
	MObWtgdhbl3qMMs5sOuM/bhI1Z08vBJYLapt
X-Google-Smtp-Source: AGHT+IE2Snny2BbJ0hWBP6FRV67+Foy2zoPv+MLjpp2sSg7XDv8+3JPlrLROcWxkyrM0+1ac5Rs/hw==
X-Received: by 2002:a05:600c:470b:b0:434:f609:1afa with SMTP id 5b1f17b1804b1-43668547314mr464650825e9.4.1736098064939;
        Sun, 05 Jan 2025 09:27:44 -0800 (PST)
Received: from dmaluka.c.googlers.com.com (19.50.76.34.bc.googleusercontent.com. [34.76.50.19])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b3b207sm575631395e9.32.2025.01.05.09.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 09:27:44 -0800 (PST)
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
Subject: [PATCH v2 0/2] of, x86: Restore possibility to use both ACPI and FDT from bootloader
Date: Sun,  5 Jan 2025 17:27:39 +0000
Message-ID: <20250105172741.3476758-1-dmaluka@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are cases when the bootloader provides information to the kernel
in both ACPI and DTB, not interchangeably. One such use case is virtual
machines in Android. When running on x86, the Android Virtualization
Framework (AVF) boots VMs with ACPI like it is usually done on x86 (i.e.
the virtual LAPIC, IOAPIC, HPET, PCI MMCONFIG etc are described in ACPI)
but also passes various AVF-specific boot parameters in DTB. This allows
reusing the same implementations of various AVF components on both
arm64 and x86. (Note that on arm64 AVF uses DT only, no ACPI.)

Commit 7b937cc243e5 ("of: Create of_root if no dtb provided by firmware")
removed the possibility to do that, since among other things
it introduced forcing emptying the bootloader-provided DTB if ACPI is
enabled (probably assuming that if ACPI is available, a DTB can only be
useful for applying overlays to it afterwards, for testing purposes).

So restore this possibility. At the same time, since on x86 the
aforementioned recently introduced restriction is actually useful for
preventing conflicts between ACPI and DT for LAPIC/IOAPIC/HPET setup,
don't remove this restriction completely but relax it: unflatten the
bootloader supplied DTB but don't try to use it for SMP setup.

Note that on arm64 currently ACPI and DT are not used together in any
case (setup_arch() enforces that), and this series doesn't change that.

v1 -> v2:
Split the patch into two, to separate the x86 part from the common part.

Dmytro Maluka (2):
  x86/of: Don't use DTB for SMP setup if ACPI is enabled
  of/fdt: Restore possibility to use both ACPI and FDT from bootloader

 arch/x86/kernel/devicetree.c |  3 ++-
 drivers/of/fdt.c             | 10 +---------
 2 files changed, 3 insertions(+), 10 deletions(-)

-- 
2.47.1.613.gc27f4b7a9f-goog


