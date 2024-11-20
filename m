Return-Path: <devicetree+bounces-123244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE399D3D98
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 15:31:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74AB4B2CD93
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 14:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 878411BBBE8;
	Wed, 20 Nov 2024 14:09:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="KTDjc7Cy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A421AB521
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 14:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732111788; cv=none; b=C2/lHMKO/iuz3egiI0eNcDk9WhDdZv87qTF1TMHHd/AGlz5EsGV64jwCcZ8NB7/JxUKmza6cmcOPmXTozwBklg6BalmBdxdmhhDtxylMPk18HZbZplJ4Sbwvv6JOygQYa5PNj0SMZcdMuAuq2UVrpI78JLE6S49e9uBynlL7FEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732111788; c=relaxed/simple;
	bh=ju5iaCTTGnlC8cKNSV/WW1suH3P3ww9XIffkT2cxxRo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=fjUTlkq26l9Ysz2FemSCbpCiZ5tubwA3IZVMF/lzf92u9kuxUIHDuYXDG0X+jsi+F3HqtFyi9AOh+qbN4LqazUANGPL8vhs2EDdLGO9v17p3+BNZqWGZqmH4LSX/SB/nKpwh67UWAf7R2sQ1GG9fzSkSxRFA7XOiCFrMVWLmA8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=KTDjc7Cy; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-20cb7139d9dso21975565ad.1
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 06:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1732111786; x=1732716586; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cxrAHqhmG1JlcR3HvdHEoqSUwYkPTE5MTo5NUdeAECY=;
        b=KTDjc7Cyo/GhLyvR8GLDBs5GfSvcMhYCLHM2Foo8AiX1CDyGDAapWfo7jsZxyEQQQP
         nfXfVdiZQ9aoBZCE81dRtNzHjAdI5YUMLx8dPtXeVXAZ61U47bVYyoGvyBOAaVf8hxcl
         DMof6Q935nleTzzkLVUmGng5fPfpg1QtzPh5NjRbrpq6LASOU29VdX2JDwCR2RKlqvZs
         0mrY+BXZCrJ9sDlUHHuvynowpiQQ/oUbTXVDmDpv/dPN/wYrxL8sT14cLXykS46/DBni
         08r3NwI/P4SPjtpeQU3rFhnc2D4h9Jv1LR3rfoB8X9y34hQYCp7AMa9JKQgaprz9eGi0
         pdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732111786; x=1732716586;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cxrAHqhmG1JlcR3HvdHEoqSUwYkPTE5MTo5NUdeAECY=;
        b=oRqKWXrQRuhYcRgDAkjJCITmOmrfKGSL/hXc007mrODAlWmgqBc0ZJLHCBDACEbQvR
         V7ltSOCr0FHUnrCJP6P4ybBkR2c87FciNQrixZSwKk2JZT4fIP7ouwNYaNGLyY80tDz2
         CNMNH0bxTCnZXptSHmf7yhauIQ5jNqbXl4qEDlg780HBmEMv+AfqneM5xfBA5cdZE7dN
         qwJGCjkOdTf2RmxphRvqKuJtoocJ1p9cEkUOi6VFFt4jgiTCvdI/TL1/q5Z4dxu6URa7
         Up+948xVRWvprFrTmADshTReaRXGcDNgoQYwCgOYt2UDFk1syn05e71z1S3W4IYjG/IG
         PjHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsslZMp7NdE3rX5NjnVQ00h4ijF//MzVwgQrsGjw+93NzW8Kz45MfU321v8OuSspuWY4mCQF6A53pM@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9W98/n2VAnJ2VRe+e6qDHFrDjPfDhkhT0x/DKdUw4OKWmykbR
	lI4Wts7pnSfIHr1nsFpzMAUeGSyMhDcJMWjrahXYveYzIhdxk//5fToADwJHVKKneFF7KOs6RF3
	piOco6tKQrag28w/z833eBQGdVutK/8LyxbtXu48oP6iernjETOqC0VvBsEZPc66cihr6OQrvSz
	CpzIU2CtA+ttEZKsQsfXOr9gbs/8P81bUS5Zem/0DxJtw5+Btx
X-Gm-Gg: ASbGncusJTXzcrs7LTcDSRJXGUcZek8OMC6VAwccGH8qvFKOX5vfaQQAETWJsjRA59z
	5blFA8jUee9S7Owrbgc5Bf1SB2tee7OixSuxt/Woq+7jRiwUVJklziUXTpsE95mwnAyzFTKdPKl
	ET0MBN44qmVKkDqNFuhDePbsbvy8nlsvSmqDD64y0I0x1qbpOp/o/03d2NjWNNT9ML1dyg/M5aW
	tS2o77fHCN7JE0KDUrBsOwH2Z+hYl+GkOqexVwDno+Sy810Sqq1x8gI8qfq6vfr3EKZ+KgCRO4F
	ssGMLg==
X-Google-Smtp-Source: AGHT+IGUKS5hjt2wBeHFpNbOFGt9aCFT4yqBOEuCP8j8uWcxGmZ/D/8LQlPLEi80dxUfa7W2k1rhVQ==
X-Received: by 2002:a17:902:e80f:b0:20c:cd23:449d with SMTP id d9443c01a7336-2126a456615mr36184435ad.46.1732111783883;
        Wed, 20 Nov 2024 06:09:43 -0800 (PST)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211d0f474fcsm92502505ad.213.2024.11.20.06.09.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 06:09:43 -0800 (PST)
From: Max Hsu <max.hsu@sifive.com>
Subject: [PATCH RFC v3 0/3] riscv: add Svukte extension
Date: Wed, 20 Nov 2024 22:09:31 +0800
Message-Id: <20241120-dev-maxh-svukte-v3-v3-0-1e533d41ae15@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJztPWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDIxNDQ0NT3ZTUMt3cxIoM3eKy0uySVN0yY93ENBOzFDNTg8RkgyQloMaCotS
 0zAqwodFKQW7OSrG1tQCbJCqIaQAAAA==
X-Change-ID: 20241115-dev-maxh-svukte-v3-af46d650ac0b
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 Max Hsu <max.hsu@sifive.com>, Samuel Holland <samuel.holland@sifive.com>, 
 Deepak Gupta <debug@rivosinc.com>, Alexandre Ghiti <alexghiti@rivosinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2572; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=ju5iaCTTGnlC8cKNSV/WW1suH3P3ww9XIffkT2cxxRo=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBnPe2kHNOLtJ3Nh25+lGk83izF/rgv0VNEkT6pu
 REZcT4K5Y6JAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCZz3tpAAKCRDSA/2dB3lA
 vZfUC/sHvSkPEeYcaLuBEqUc3AcV2qThswESzWxUw4n7HTrnZVEWEif4jcdPYpXLMtrBY5zGlVk
 FO4VpUrnYPxMYbz2NSMEqp5JeIOdWY8rBQqKYcV17s7v4XA3BfCXC9q/hXupXM2dEdLOYUGtpqq
 LWyPTw5fuqFEShidGJktJK740GSqg0Rh8ybvwadf6/aP0bIGEYMflZbMn2JDo9Mc3b925/WaPgH
 vgEPgPWoTC/c9MX6Pb+nPxvK6lE/98LSbKCLLSCJDJuo5Z5l+Li4RqRt/SvL8YeqvwOmlKVbtGk
 cHz0q4XRKXyCSAg68Z/n/2rX410Nw9L8j0FxDjrmINiu6yge0/J/TiS2t5YRIoxmPYye0Yiz9A9
 s2goi0wDboUE1uIlMD1AHbmBSqnfSJsCEmE2TnLsnlarYRY3a3WmBh6mNNqh4vpbUOTCI0tpz1F
 7zC6DVzOqR6FJ4zULNN7B0rlWhzSWStDMay5CJOKM2awK0czHIHoaHuStTJywSon057N8=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD

RISC-V privileged spec will be added with Svukte extension [1]

Svukte introduce senvcfg.UKTE and hstatus.HUKTE bitfield.
which makes user-mode access to supervisor memory raise page faults
in constant time, mitigating attacks that attempt to discover the
supervisor software's address-space layout.

In the Linux kernel, since the hstatus.HU bit is not enabled,
the following patches only enable the use of senvcfg.UKTE.

For Guest environments, because a Guest OS (not limited to Linux)
may hold mappings from GVA to GPA, the Guest OS should decide
whether to enable the protection provided by the Svukte extension.
Therefore, the functions kvm_riscv_vcpu_isa_(enable|disable)_allowed
can use default case (which will return true) in the switch-case.

If the Guest environment wants to change senvcfg.UKTE, KVM already
provides the senvcfg CSR swap support via
kvm_riscv_vcpu_swap_in_(host|guest)_state.
Thus, there is no concern about the Guest OS affecting the Host OS.

The following patches add
- dt-binding of Svukte ISA string
- CSR bit definition, ISA detection, senvcfg.UKTE enablement in kernel
- KVM ISA support for Svukte extension

Changes in v3:
- rebase on riscv/for-next
- fixed typo in the dt-binding for the Svukte ISA string
- updated the commit message for KVM support for the Svukte extension
- Link to v2: https://lore.kernel.org/all/20240927-dev-maxh-svukte-rebase-2-v2-0-9afe57c33aee@sifive.com/

Changes in v2:
- rebase on riscv/for-next (riscv-for-linus-6.12-mw1)
- modify the description of dt-binding on Svukte ISA string
- Link to v1: https://lore.kernel.org/all/20240920-dev-maxh-svukte-rebase-v1-0-7864a88a62bd@sifive.com/

Link: https://github.com/riscv/riscv-isa-manual/pull/1564 [1]

Signed-off-by: Max Hsu <max.hsu@sifive.com>

---
Max Hsu (3):
      dt-bindings: riscv: Add Svukte entry
      riscv: Add Svukte extension support
      riscv: KVM: Add Svukte extension support for Guest/VM

 Documentation/devicetree/bindings/riscv/extensions.yaml | 9 +++++++++
 arch/riscv/include/asm/csr.h                            | 2 ++
 arch/riscv/include/asm/hwcap.h                          | 1 +
 arch/riscv/include/uapi/asm/kvm.h                       | 1 +
 arch/riscv/kernel/cpufeature.c                          | 5 +++++
 arch/riscv/kvm/vcpu_onereg.c                            | 1 +
 6 files changed, 19 insertions(+)
---
base-commit: 0eb512779d642b21ced83778287a0f7a3ca8f2a1
change-id: 20241115-dev-maxh-svukte-v3-af46d650ac0b

Best regards,
-- 
Max Hsu <max.hsu@sifive.com>


