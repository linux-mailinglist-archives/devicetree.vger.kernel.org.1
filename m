Return-Path: <devicetree+bounces-230715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AEAC05292
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:48:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11047426095
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 08:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0520306B12;
	Fri, 24 Oct 2025 08:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dmdrSkcA"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D43D306B00
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 08:36:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761295021; cv=none; b=JpZWr72td6Bu73Prp2VW7zgHKwag+kQQ7+jHeHCIqxjYM5pxScPxp/ueP2fkizbjqyHkfSALKYSA2LSJYtYun+fxPcwXyrQFDhlc0xQMTSb9S1pRkiZs2sO7kDH/X8XvIhHx6bYTmpb3IYfEY1NqsFWN0qNxEFQcU349BW3jb+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761295021; c=relaxed/simple;
	bh=2Chy+VwbCxMqclySUz0ufs6zXs5jzdETPAGPGMs0Wf8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tX2S/nGjzmCnGs53Y++gR7XnYE6etwxNj8VRSP33oWvpi0NFyGmHCSyH+r2j6TFj5T2LVWkMuRu3zegIo9qBqaNdhs4IxAXCqRJHio7REkSvqjW0U+wjH5BgyGM3DjHvUQxPlewhE6zwcnS3pjZz/Y4GNGxAQPicjpfhrRPPpG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dmdrSkcA; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1761295018;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=6IP4CrvhUC+N+aJ86duEZEGJ5HwVmI6olhQdQ4mkTgo=;
	b=dmdrSkcAezicadREPwgM+bFDi/ScMp/Brkuiv3usyXIBK0NIQZT9kjH3gF1kPzDaNWXsAD
	bQHgjYb88Qck76K/eibTn2tl1ES1wxDQB2ENPJ05QPmPMSKwGaRYvBoGx9CudWm5T/O5qC
	+5A8IsZan6aTg0Oi1aiHvzdrRMQEv2E=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-472-jvenFu7kNT6TN1O6oyMpwg-1; Fri, 24 Oct 2025 04:36:56 -0400
X-MC-Unique: jvenFu7kNT6TN1O6oyMpwg-1
X-Mimecast-MFC-AGG-ID: jvenFu7kNT6TN1O6oyMpwg_1761295016
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-426d4f59cbcso1984967f8f.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 01:36:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761295015; x=1761899815;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6IP4CrvhUC+N+aJ86duEZEGJ5HwVmI6olhQdQ4mkTgo=;
        b=jD5jutvXMnxkwQ49Q5TRtpC5cN1j/obZn6pCqou0i12TEXSav1/mmblvbGkhAz3Ila
         61QBq+AgMkO9mb8sX3keU/XpbRYXxcUYs0khV5NZ+GrtQPTZRILPshJn1SPJ0fj+krdL
         A7pSt5IqrR+8klhj0iphwU82fgzSuk3bfuuf0lmnW3C+566ECRN+PCafrmLvYzFkcwP2
         f1iYeT4bYVF69BRbYC5/mjopvf8nX0cKsiMJDxtkD7dyP3YSNBk1xtZSBwPjz0o+08mr
         q6xxwm+MPM5FLYvfERudIGZIlD32DZL2oRT6wL81B3+W4jcnvtc4lqiJR/GEQb57EX+E
         k8dw==
X-Forwarded-Encrypted: i=1; AJvYcCXJ6KpRwb7zAgAFua/r+ymbNOaWzv/Zxbt5Koy8lTEfs5YMsAOxwVskCz3yDwsa5exAFdMIpURshgxM@vger.kernel.org
X-Gm-Message-State: AOJu0YzFyioT2MIQTzCH9LaYHTv6ILplsZb4HlJfO4zB+IYVIKTqh8Ef
	AtMXzFNZmeM0ASqhlyW4fJwAsDV/Ab56Ys9NTWL7JqieF4I5CXpgW6S+v2R+KWRymkdrI+a2ia+
	+PG/iUy8NRAFhKqOq1HzK7+qYZh5qi/b9UGoyVkfNCd0Jh30vUv/JN/3r0MCN6XU=
X-Gm-Gg: ASbGnctKHJT/PcTahuMZCd0Hf6W5WbS/fp4Ud91YD1aIwVJ1HEQFDcWy5kIhSVgPA9i
	IGKDtuzDaImIRV5fjBqqO0E9do90bLnOJuvJm0+HSjGZpKai9n+Q+xg74l/4djMZpOH1PVfyFUK
	2H6luGW8uqLFHnY1jjuJmZtevludutNWQYYy/uZcqE/5FLKDugKUUiEyEwjPJ04uALs6VtcjNm6
	vlkG8f58U3NNF0iChCeWF1015QvIaEFyGF8w+yx3wCniZCclrplwXYaaxddqWP9oBdkcp+SfaUF
	eMlFwKuO+6ybM7wE6BVV/HsDZ8o3plAquYAE4wdkuDexm9dbNXyIwtQ5Z4Ba4JVG4oy1Gz6uQWY
	4MD9wmNQI
X-Received: by 2002:a05:6000:2486:b0:429:8b4a:c3b4 with SMTP id ffacd0b85a97d-4298f50eb44mr1420049f8f.5.1761295015439;
        Fri, 24 Oct 2025 01:36:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEA0nB2sR3hVRzBJN7DXMuBj2PcK0Ip1C+Sl00x3e48btGKdsyMquC1DjN94eGd/K76AwujjA==
X-Received: by 2002:a05:6000:2486:b0:429:8b4a:c3b4 with SMTP id ffacd0b85a97d-4298f50eb44mr1420017f8f.5.1761295015023;
        Fri, 24 Oct 2025 01:36:55 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429897e77dasm8111636f8f.2.2025.10.24.01.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 01:36:54 -0700 (PDT)
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
Subject: [PATCH v6 0/4] Add UltraRISC DP1000 PLIC support
Date: Fri, 24 Oct 2025 09:36:39 +0100
Message-ID: <20251024083647.475239-1-lzampier@redhat.com>
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

Charles Mirabile (3):
  dt-bindings: interrupt-controller: add UltraRISC DP1000 PLIC
  irqchip/plic: enable optimization of interrupt enable state
  irqchip/plic: add support for UltraRISC DP1000 PLIC

Lucas Zampieri (1):
  dt-bindings: vendor-prefixes: add UltraRISC

Changes in v6:
- Split enable_save optimization into separate patch 0003
- 0003: New patch - Optimize interrupt enable state tracking by maintaining enable_save
  during normal operation instead of only during suspend/resume
- 0004: Use existing enable_save[] instead of reading enable registers before workaround
- 0004: Return iso_mask from cp100_isolate_pending_irq to use in restore logic
- 0004: Skip writing enable masks that haven't changed during isolation
- 0004: Skip restoring enable masks that haven't changed after claim
- 0004: Skip checking groups with no enabled interrupts in cp100_isolate_pending_irq
- 0004: Updated commit message to clarify dependency on enable_save optimization

Changes in v5:
- 0004: Added brackets around conditional in cp100_isolate_pending_irq (feedback from Thomas Gleixner)
- 0004: Reordered variables in reverse fir tree order in cp100_get_hwirq (feedback from Thomas Gleixner)
- 0004: Replaced raw_spin_lock/unlock with guard(raw_spinlock) (feedback from Thomas Gleixner)
- 0004: Added newline between variable declaration and code in plic_probe (feedback from Thomas Gleixner)
- 0004: Extended generic_handle_domain_irq call to single line (feedback from Thomas Gleixner)

Changes in v4:
- 0002: Simplified commit message to focus on hardware bug (feedback from Conor Dooley)
- 0002: Added Conor's Acked-by
- 0004: Renamed PLIC_QUIRK_CLAIM_REGISTER to PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM
  to be more specific (feedback from Samuel Holland)
- 0004: Added Samuel's Acked-by

Changes in v3:
- 0002: Updated commit message to clarify that DP1000 is an SoC and CP100
  is a core (feedback from Conor Dooley)
- 0004: Renamed dp1000_* functions to cp100_* and updated commit message to
  clarify the hardware bug is in the UR-CP100 core implementation, not
  specific to the DP1000 SoC
- 0004: Moved quirk check out of hot interrupt path by creating separate
  plic_handle_irq_cp100() function and selecting handler at probe time
- 0004: Use existing handler->enable_save[] array instead of stack allocation
- 0004: Use readl_relaxed()/writel_relaxed() for better performance

Changes in v2:
- 0002: Changed compatible string pattern to SoC+core: ultrarisc,dp1000-plic
  with ultrarisc,cp100-plic fallback (suggested by Krzysztof and Vivian)
- 0004: Driver now matches on ultrarisc,cp100-plic (core) instead of dp1000 (SoC)
- All patches: Added submitter Signed-off-by to complete DCO chain

 .../sifive,plic-1.0.0.yaml                    |   3 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/irqchip/irq-sifive-plic.c             | 126 +++++++++++++++++--
 3 files changed, 118 insertions(+), 10 deletions(-)

--
2.51.0


