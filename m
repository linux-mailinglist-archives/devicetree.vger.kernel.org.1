Return-Path: <devicetree+bounces-135673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE48A01ACB
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 18:17:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD8B93A2FB8
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 17:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12B68156257;
	Sun,  5 Jan 2025 17:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fvRCFaMm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2171015250F
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 17:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736097463; cv=none; b=HVvHgajoMLfyQde5h2h9RLJayKo58ARGEqLoM6wwzilQq/tNEj03FqNZ8yo8/2xpfVzuSSqdJAWnHBgcQUxBMFeShzBMwLcDE88HtCPtPueFXv/SxxiVx1190DW2EiCHxS8vRquc1+yJBLsNeZ0Y4NWnch0XRV3sOgxeg3v1sYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736097463; c=relaxed/simple;
	bh=5k8ycTRaWzR61UJvHO40HQsKr26i4RCmw6iVaBJ1p5w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=k+4heqoJEuE0foDrt5qXqoUZ2z7WKzSycLTAPTbrjEuD55MnbXc8EXzqTgJxe1Jsx9ZlY48N0J9lP4dKhm01i57SERnEpqVw3k7OqF/nSCDCCg2/euQ9UUgrcsVIUv9pNtKccKoGuXzctNTfSs5P2RJrBSlAD/N6G/rgLibE2c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fvRCFaMm; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-436281c8a38so97652535e9.3
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 09:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736097459; x=1736702259; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=28ukOJT+BC5Hb4IDeNu8OIpCDoYlDgcQuEEIPI9KYoI=;
        b=fvRCFaMm3iSp6k3o6ah86JkBAa7qoaqeJ8kI0dUvpBoOoqDNDa28kiY7tiusIcw7ek
         XgCQppccELMRdVWo7Aqedqhg154+1l++LwjH7bqOcB7q1yPobMPX0gE31bW0RiOSn/Y8
         W/w51YXg4lkYZRvC8UY4W0tKdOTKY92LrYKH8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736097459; x=1736702259;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=28ukOJT+BC5Hb4IDeNu8OIpCDoYlDgcQuEEIPI9KYoI=;
        b=Oe5nMb9hARj0msIN7e8lrgK0uW/9QrxQFRou0qpgPyiXKiC3dTEkxst+vk2yyTin4k
         r7EUhhFKhTMne+1iOZdAex+YC22Mk5vL5Vf6Ot6pi+m0A2if+7n3Qqne2ExZcCcLPgxp
         3qddmWYllXQKWwns7lY1Rh4Uj9/qOvQwfZQA6D8Omx/Ax6uEpydnXt+ujVFoool/RpH0
         Aa1B5hUTNQ5sAqgUEjvuSGNk+jG9EWWS5NhlwLVcp3bvbz08KuNWHN55dU2UNBYn2yMK
         LaMeXqKPiI8CzPIBa3nAjHvnTkuV6CMbgyWXdNOBzU9LsytPgNNFUA2YAwQq3XwaQ4EX
         g/3A==
X-Forwarded-Encrypted: i=1; AJvYcCXrXkWRN4zRNRhs6Y7W+G4OeohU2FLwM/cYAyk/qdD+t4iik05N5ncUe2/UVYCwT/DH/bLeK6Z0Jd/Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy6iPLYhdn/fwwyau9wG5ZSCK+FESlV7bsd4oljaSkyNucUp8b
	GXT7Z98TOsGhjjylKYnCykuVxL82wmIs5ehe3Byqe2wp/NNb5iXSzDkniz3VWQ==
X-Gm-Gg: ASbGncs2lFRr/noOH3mikUm93CH3Qz/NeU9chCAZIx7dNaAn9qRH1u45CFUI0gj3HVa
	3ZutiU7o41A56gOqXUu1QwqkTZJguARsHpSJYK9HvihGMcByIMOViJpmyPvFWr6RMzLflDkhse0
	0g4Pa6XWrEpjBTRPCatmPkBX6KyHvd43p58rMajgN4ttgnKC99xCLP6NRAFAwOe1Z+aH3tpt6F0
	f53SJVJvUWddjyvHcpZKAjZXU/uIrHG+dUrhWvQPG1Y3fGibb3acSKNIfP14LNOUSj9Hxh7SGGF
	04nfzgZsUiNpc11ZR9pImNee1L+jcPrh/Zm5
X-Google-Smtp-Source: AGHT+IFuJF16gyCsGs4Et67YtR7rCbdYRxOtCkpAuEKYuEZF3nGCOZgmij9h5QndKxy+u1vp6J6uFQ==
X-Received: by 2002:a05:600c:4688:b0:435:b064:7dce with SMTP id 5b1f17b1804b1-4366864618emr504125065e9.18.1736097459372;
        Sun, 05 Jan 2025 09:17:39 -0800 (PST)
Received: from dmaluka.c.googlers.com.com (19.50.76.34.bc.googleusercontent.com. [34.76.50.19])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436604e9c2csm543987345e9.43.2025.01.05.09.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 09:17:38 -0800 (PST)
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
Subject: [PATCH 0/2] of, x86: Restore possibility to use both ACPI and FDT from bootloader
Date: Sun,  5 Jan 2025 17:16:41 +0000
Message-ID: <20250105171643.3473702-1-dmaluka@chromium.org>
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


