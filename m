Return-Path: <devicetree+bounces-227135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D682FBDF0CE
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 16:31:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 910A74F8ABF
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 14:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D781288C96;
	Wed, 15 Oct 2025 14:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RJj61mCL"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730B92848AD
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760538681; cv=none; b=i7tyTOlMLcnaNR8nsPREkAN2Fis01tUn0YbWQ4z/RjNlPSBz+/jEMygOJaaWEOt6plJhqHIPy9wk8zB1kUoYYBMWoYmRCNGETbHwyy3QJ/YkyUW5l4yi4ZoxEoehZxsvq1Hh+1vHluY+VZcnhi1iC2ZyF43zK42L0uRlDl8M820=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760538681; c=relaxed/simple;
	bh=ZDWsZO0VBNM+JKWzLoQH/nGF8tar0wIZvwPA84ypqx8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=q4m+PvcOAXzMxiqvwdD4ICDfe3n11LklCFvPPSwwEQp2UW2uCcg3TPeH8ji8c4MHnKGKyaEFjIA5mipUKQLAkgrvyotcM+BiSVhCJLpWhcl1CZv+Xi+44oG0Qe4VXfRAvOEbuxAgVY2bXs42CZyoWgs3qMDGblEKXW+wQS8zDrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=RJj61mCL; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760538677;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=J5M2mmh4Ds9HKwtTLyTklITpPz82TYqRilJSnlAqd+M=;
	b=RJj61mCLxT2PT7CNAoquBN0aU3y1H/6t2FkvJ2yXaZmGnmM2OFTLC5iF3LQJLSIWNha/vD
	UOPLl3K0qutYAWgDgsbjTazxEfeqqjOVmYL6MXqU/LmRC38yGs2m0nIKcamanK1RGEXZfu
	Xz2kBE9Hc6+1UPV2OnGNC3R8Ql6gJ/I=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-210-JJbbySdMPoeKH5xmd20-vQ-1; Wed, 15 Oct 2025 10:31:15 -0400
X-MC-Unique: JJbbySdMPoeKH5xmd20-vQ-1
X-Mimecast-MFC-AGG-ID: JJbbySdMPoeKH5xmd20-vQ_1760538675
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-3f924ae2a89so7324568f8f.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 07:31:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760538674; x=1761143474;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J5M2mmh4Ds9HKwtTLyTklITpPz82TYqRilJSnlAqd+M=;
        b=YlZDZX5BYu7gjY/R7i/+tWPzBjXMvyu96cnbr71fjwCyqxkHZRjbfR3ShcR51ov0yi
         S+DfEgpz2B4Q5G9kRypfvn/G74Bh6dyuyw7HSLBvovp0aCyfX1lWq31E4N5S/J2WiM0y
         Q/DUEeHkAiiS9OSPE02JaQ4LHvmQrMp4Qic9soAVpy0kkvHjNywuSQXBDHvwhdvcRhxP
         9PyG5SDY4N8I8FMnzdLlLoICi0IrB44ft8nvD0JK8mfKD+wO5WS7QU84ubPtpsdCwEBA
         cbk5clKJGwA0HFnODynvI0KQeofsbwcGHWFEWUw7OTCltdasUFj1QWgciReGQdWxpMOj
         E1JA==
X-Forwarded-Encrypted: i=1; AJvYcCVxn9CTYgubwxWP+yHGMWY+Ojc/umNEIUc6qOl47yQvF5IwrSnm8WgIBuU4RVYm5w9gfXE/Itt0/kyF@vger.kernel.org
X-Gm-Message-State: AOJu0YxW3Mmxek5cZ2UVFfye3s3I6dJUCKO86VzJXUGFKldC0DhfLNCJ
	7XcD5gQcFMzF4JjS8Ug5TQYTArQrHcZNLWDw2iamlUxRzijJzhkd2JAHsOXqI+60773nuOD8u4g
	FoR23i6pLUJEo+Uea/+XDNAy158idFtAO/+a4xRb1OjdrNutVaVjE8/Q1w5pqpFM=
X-Gm-Gg: ASbGncsUKZxY6c3XiId+0rHxkWHTD5pMrM52xcg7B2j9a2DKeUKK5DxUEMdB1zoZZ99
	CLUVAOV+5lav2oXiFCUTV1bBKKjv2MepFlapr1Y4iYmzkb9RNFveMPtZ4WOAA/jBOJgDVMgL+s4
	qyCVKiJDFRp5Z8oEzaeLcfEInPSbHrqy2I1uql5QdryOYvkX8tVVKuNBduN7+yPivZ26xfENwCs
	yM1kquqbXE93vT5gBDJe7KFOwoGDPGpx+j1M279FzHlqxNiX9EGhchPYiCKwn38r0Maj8k5yqaL
	a3Yd08wQuTh2tBH2TO+QBzcuhbBPQAbrFNNDxzDSjBXg4+8zDgHz3Fg=
X-Received: by 2002:a05:6000:608:b0:3ee:1125:fb6d with SMTP id ffacd0b85a97d-4266e7ced08mr14869591f8f.9.1760538674479;
        Wed, 15 Oct 2025 07:31:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmA242wjCu8aNX4QT+rftauK8lKZ1A4bt1SE1thTeCnke23rZ0LcaSiVmzhHvTvt87sNNPuw==
X-Received: by 2002:a05:6000:608:b0:3ee:1125:fb6d with SMTP id ffacd0b85a97d-4266e7ced08mr14869567f8f.9.1760538674014;
        Wed, 15 Oct 2025 07:31:14 -0700 (PDT)
Received: from holism.lzampier.com ([2a06:5900:814a:ab00:c1c7:2e09:633d:e94e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47101c02377sm32617005e9.6.2025.10.15.07.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 07:31:13 -0700 (PDT)
From: Lucas Zampieri <lzampier@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Lucas Zampieri <lzampier@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Vivian Wang <dramforever@live.com>,
	Charles Mirabile <cmirabil@redhat.com>,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v4 0/3] Add UltraRISC DP1000 PLIC support
Date: Wed, 15 Oct 2025 15:31:04 +0100
Message-ID: <20251015143108.441291-1-lzampier@redhat.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the PLIC implementation in the UltraRISC
DP1000 SoC. The UR-CP100 cores used in the DP1000 have a hardware bug in
their PLIC claim register where reading it while multiple interrupts are
pending can return the wrong interrupt ID. The workaround temporarily
disables all interrupts except the first pending one before reading the
claim register, then restores the previous state.

The driver matches on "ultrarisc,cp100-plic" (CPU core compatible), allowing
the quirk to apply to all SoCs using UR-CP100 cores (currently DP1000,
potentially future SoCs).

Charles Mirabile (2):
  dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
  irqchip/plic: add support for UltraRISC DP1000 PLIC

Lucas Zampieri (1):
  dt-bindings: vendor-prefixes: add UltraRISC

Changes in v4:
- 0002: Simplified commit message to focus on hardware bug (feedback from Conor Dooley)
- 0002: Added Conor's Acked-by
- 0003: Renamed PLIC_QUIRK_CLAIM_REGISTER to PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM
  to be more specific (feedback from Samuel Holland)
- 0003: Added Samuel's Acked-by

Changes in v3:
- 0002: Updated commit message to clarify that DP1000 is an SoC and CP100
  is a core (feedback from Conor Dooley)
- 0003: Renamed dp1000_* functions to cp100_* and updated commit message to
  clarify the hardware bug is in the UR-CP100 core implementation, not
  specific to the DP1000 SoC
- 0003: Moved quirk check out of hot interrupt path by creating separate
  plic_handle_irq_cp100() function and selecting handler at probe time
- 0003: Use existing handler->enable_save[] array instead of stack allocation
- 0003: Use readl_relaxed()/writel_relaxed() for better performance

Changes in v2:
- 0002: Changed compatible string pattern to SoC+core: ultrarisc,dp1000-plic
  with ultrarisc,cp100-plic fallback (suggested by Krzysztof and Vivian)
- 0003: Driver now matches on ultrarisc,cp100-plic (core) instead of dp1000 (SoC)
- All patches: Added submitter Signed-off-by to complete DCO chain

 .../sifive,plic-1.0.0.yaml                    |  3 +
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 drivers/irqchip/irq-sifive-plic.c             | 94 ++++++++++++++++++-
 3 files changed, 98 insertions(+), 1 deletion(-)

-- 
2.51.0


