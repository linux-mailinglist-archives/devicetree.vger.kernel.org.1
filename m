Return-Path: <devicetree+bounces-104041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F1197D1D4
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 09:39:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE510285779
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 07:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 309DF4D8D0;
	Fri, 20 Sep 2024 07:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="k18hRdlP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971E8487AE
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 07:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726817963; cv=none; b=kqAL/wvzxwqpnCJuzlndYhQU3G+p/4TpDs5QcTzB3LUdpAqBFUgaRsTcJoEJJoaKTKGj2/RKeEEavhgsKnT3sSdCtyVNan+jfAN/ODdvFvt05aw3/1jXSVvI1+5DS6y5/y+aAHWnZzd9sJ5NSQcjVDyhdDfth35o5VtL7XREYDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726817963; c=relaxed/simple;
	bh=wS0y3XnmRUgkhuicGsT5+NS3O6xPNm1UKgT3dPtkY3g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=l23p+0HYBjBXZ4GXiklqCNqydSrrJqLHQyVgjX6XLFS4BuFXxgpa0G4lwWof/P4yoP5v1NBzV6f9gMmj1gEvF9k6RiRUD0pKDbouK5+TxswjUm/zVvCPLc+dbl6YRgcBTbbAZnQhzJtKJdkgMaNnFUIwqsQodDMcLN8SVZvZulI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=k18hRdlP; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2068acc8a4fso17841825ad.1
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 00:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1726817961; x=1727422761; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Nf3ped5+15OxXfhvvUNIJcQRjiOx4BGk5AuoceNg+i4=;
        b=k18hRdlPYDew8u46eD53ZGCsQB0oOqN8ldaiXHKHVOPbhwCOeLXrb95i8t4Fpvf9Hr
         UGbujcQ5J3A+c+rZwKW8D7KWPDyHU8sG4N6RAXWZ5vTlUwyVZgMBvvGiw6U2/He0jrCY
         3kvQiDclsUPnRbppqTTVNRwOYBCmjENY4nrYan0qX8Tzcrp97dhGkN4JWxtfv6fsqtyn
         7O0NdGp/G5hx+q/RR16aQYVMbOhz2G3YVPFhSOq6UKT2WEY1Bx/V/GFm4XC6ZNM6+bch
         DsuGn1xBUJozIwFXPvcwLFnVs8nvG/sANwKLzdDRxrnM510BwaOJzvuVz0os2wB7lq8p
         rxGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726817961; x=1727422761;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nf3ped5+15OxXfhvvUNIJcQRjiOx4BGk5AuoceNg+i4=;
        b=xATkocl2F912Y0ruRoRPyUcsN7uqJi4SNzwEJyvgMZpmtIeXvmChDH2mTjl4Ojud00
         t3WcZYwZTyWU9eyWEL84SqA9pl4oxUAAf/ec0nH8pzCFoaBjviMu4UoWWsihCLNVq3G/
         jQBjFTzNbQ2oJWJueheGomL9nk3gpPVjOZ1ac6UZ4qt31RBTMJMgho6Xda/1+vb8GEMi
         p7LBFAjXSdUisIvWpfYxLrHvhRH77ug4QixxoXk5qixPyB8mXIoz9ajai/gAfdjlJ3Kd
         AfTKTWyhrsUjeQDSJhtYfEmazZEDV1vkz1wVeDy+hEKLQrq5UX2OU5smhlAXtO+ySRNk
         Cx9w==
X-Forwarded-Encrypted: i=1; AJvYcCVANXbaIR20kaC383IiA/6PSuESK3fEErsTlcMx6PP9TvB0NA75w+eO4iPTh0rTy1bIgcz9hQds+jII@vger.kernel.org
X-Gm-Message-State: AOJu0YwC7dihwoytzr79+NQJ3hGmyNX8aHOo5b/gQrpv1wZ74lWnPvsc
	lfZXyhO34qu/cVw8PpDZ9ZovfMIVg3shcFe2XbI+ctyvz/LNpUgOO/ZsTW144LM=
X-Google-Smtp-Source: AGHT+IGji56j1DV/J1I9lAcA6e9jkM58L8PolAkDBK4wsHtukfvFBHCha1GFixMZFOiVijx3Nngwww==
X-Received: by 2002:a17:903:11c4:b0:206:c5ec:1444 with SMTP id d9443c01a7336-208d837462fmr36316815ad.16.1726817960890;
        Fri, 20 Sep 2024 00:39:20 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-207946fcaa4sm89645805ad.212.2024.09.20.00.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 00:39:20 -0700 (PDT)
From: Max Hsu <max.hsu@sifive.com>
Subject: [PATCH RFC 0/3] riscv: add Svukte extension
Date: Fri, 20 Sep 2024 15:39:02 +0800
Message-Id: <20240920-dev-maxh-svukte-rebase-v1-0-7864a88a62bd@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJYm7WYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDSyMD3ZTUMt3cxIoM3eKy0uySVN2i1KTE4lTd5FRLs5SkREtjYwtDJaD
 mgqLUtMwKsMHRSkFuzkqxtbUARSxKLG0AAAA=
X-Change-ID: 20240920-dev-maxh-svukte-rebase-ce96dba93381
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 Max Hsu <max.hsu@sifive.com>, Samuel Holland <samuel.holland@sifive.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1407; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=wS0y3XnmRUgkhuicGsT5+NS3O6xPNm1UKgT3dPtkY3g=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBm7SalrbPVcOyg6Y+vrkFjoAudGNjFqNsRSXPO+
 jnEQWPDgFOJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCZu0mpQAKCRDSA/2dB3lA
 vbSwDACoWoQWKUmsoCUtXySuCDJr4EmIadcA2PF5Gfb05zGyIyYvaamuPRF78Hs9yg5wxMS28pH
 uUGXmVHrnBkbdfS7Tv98hZ5z2M3oliNBA7U2ftPWttl3RadTUTx/6FepAh/ORpls2BawbfFgFS9
 Rr9hm99cmywhbgpZUyAz5qKeY3eH92XFaVQk2WxaNypAQemjT5sgLm5h6rgNzHI8K92oDp449h2
 v+4/xTDrtGTL9LCyVcAJBRnq9AiRzFW1V7f9dbUZpwEpNX4UMTKZY/N/EwgCYoPUAN98B/LYS5F
 ClA0u20GecZsZbsRHVI9lyKjnC5R7Ge20io4EzxXCYit3twSQ7h2msP4EXBYqL9K84xQv/OZb9C
 2S3dkyfhhnJdkOFPgmDEwTZKHlwPe7cTp5l09WIokK8TwOHP64CwubKuo4z5049KMYYXpn0IVn2
 B70xbla3aEDyFfRLMHtJHZ8GgS144ICtRNsLs62i5Pw6kZQahjfIwbYJFhU9bzS/LcYKA=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD

RISC-V privileged spec will be added with Svukte extension [1]

Svukte introduce senvcfg.UKTE and hstatus.HUKTE bitfield.
which makes user-mode access to supervisor memory raise page faults
in constant time, mitigating attacks that attempt to discover the
supervisor software's address-space layout.

The following patches add
- dt-binding of Svukte ISA string
- CSR bit definition, ISA detection, senvcfg.UKTE enablement in kernel
- KVM ONE_REG support for Svukte extension

This patch series is based on v6.11

Link: https://github.com/riscv/riscv-isa-manual/pull/1564 [1]

Signed-off-by: Max Hsu <max.hsu@sifive.com>

---
Max Hsu (3):
      dt-bindings: riscv: Add Svukte entry
      riscv: Add Svukte extension support
      riscv: KVM: Add Svukte extension support for Guest/VM

 Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
 arch/riscv/include/asm/csr.h                            | 2 ++
 arch/riscv/include/asm/hwcap.h                          | 1 +
 arch/riscv/include/uapi/asm/kvm.h                       | 1 +
 arch/riscv/kernel/cpufeature.c                          | 4 ++++
 arch/riscv/kvm/vcpu_onereg.c                            | 1 +
 6 files changed, 16 insertions(+)
---
base-commit: 186617d883560848f801732bfecefa0c2f702a0f
change-id: 20240920-dev-maxh-svukte-rebase-ce96dba93381

Best regards,
-- 
Max Hsu <max.hsu@sifive.com>


