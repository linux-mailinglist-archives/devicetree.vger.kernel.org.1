Return-Path: <devicetree+bounces-227512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A0ABE2337
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:43:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A943B3A658E
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 08:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3DCB30505F;
	Thu, 16 Oct 2025 08:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZJZiEIST"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97C61E0E08
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760604203; cv=none; b=bcgiZEjcUp9TUxYThFjKqKth45xIDdruFKgpTbb3Lg6sicZrqH/pSQsbPB68T35DpWHtAGApSJuPIl1N0wNyyElqk/uDX2PIZ7aM5PLT0cK9NaOym83PnUNv5de99vLNlTc5qizVREVEINuF1/9ZXC+30kpBrtyEwX3ZktwjWFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760604203; c=relaxed/simple;
	bh=rVZBRMWcaj1ymID4pFIpRGfNMxnSVHQVzgyUa1U29+A=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=srFaIVtFYHOEzRS8yfYcPg6o1FeK2WsVSRi4XtPWGk8MDqyzmOWWbgRSdqLv3BcYO8HdO2ASFOBxH3tWgm4JP/qKbeL2RAn3SfBww3577rVUSHFvwyHNjd33Heiuu+KRNPnsGqU1kkow11YWjAyx9pl7LVD0KvwpHXGdfYKz2Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZJZiEIST; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1760604200;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KyahKcL6o8P6t63WLrfexNsD9TFdcn7bX2OSqJHfXIw=;
	b=ZJZiEISTBYd3D3oDcO8AXoEHRGmFLM/vu3YljMxes1GHZqf+Vo2SP2DB2t8bzq0naX4JdQ
	MfyZEX+peIb+/aF5bCVkffNkS31t382qKadCzdAIwQvWBI1+lBv1VpxgB0Gq2v26CmRdR6
	0Vb5vKXMXyY3xv1a+Eib2QLzjLpv2Ok=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-58-dfWTiyGfOlKgLybxCGOIVQ-1; Thu, 16 Oct 2025 04:43:19 -0400
X-MC-Unique: dfWTiyGfOlKgLybxCGOIVQ-1
X-Mimecast-MFC-AGG-ID: dfWTiyGfOlKgLybxCGOIVQ_1760604198
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-3ee888281c3so1510143f8f.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:43:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760604198; x=1761208998;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KyahKcL6o8P6t63WLrfexNsD9TFdcn7bX2OSqJHfXIw=;
        b=NhAeUPqYBBfZ/ydZybiUeIwMwsZZ9E7YERgzDLmeLZ9vViuk8Rm98AFdfI81Cc5kKM
         Pm2NYVdVE7NA0tjkAIqyHcT7tr3Gvwx1oLSIWDtiDc4VXfVwRWZYCPIvZLfmmEuJOzrh
         /7OF8FiXMEnFtHM+2iAuKCvoMZT9Q2QWEOZW4T8/MXUISx5RzZ9+T3DtUAnhxnlxESd7
         tlUM/qRgxc2Bqd6Yo0uve2z7Uh8EMG+8XZ2rUP7OrYlYdm49fdvpnP9WKUw7pGhM2/bA
         iw4zEj6+e1zll485WxncFQamJGuQY/iJE04GH/lX9AMA1Bf4ixeulL8RcJmgRoHUgJcn
         Nx5A==
X-Forwarded-Encrypted: i=1; AJvYcCXspQ4gj71XbJCZehFlOScbgedNnrZy9sLGiKvdw/1Qkz9wBbw5raWo+tZ3SOr++FXDM9JoZGVqUbyv@vger.kernel.org
X-Gm-Message-State: AOJu0Yymve33h7v8gKTCW4IQHUt4Z27FJdYvACoz7iCTCxdm2sv7oysF
	mStxGCLq2jcFEyACQd4MJYXFOn67kS+XpJL/10LFuJyzPAs4PDa+GQYxdE6evPy8fWxYHdwRdyq
	9cdACvaI5r5JBhAmdrFsSHw4CGBUmqQRh3RL3noQDdIfOkupJwzG47bX+aMyrrTA=
X-Gm-Gg: ASbGncv0OHJJ1pNVrdTfqVrTtwIibpwkHttJzx/N3sBRRM2jlJM3wRUWnXit7xXfdX/
	fuyUeDgBt0EiF2utoGa19HxMpe14qGbEYGuaLBi13IM/cGyIkUMLJ77z6Fey4MlywwQQUGeAQqI
	yDmUUraFIW1jvHgbfiJmS+CwmdiTPQgCeQEHnEI/hzzsBjEy51iRkw0Z0i5ISZj2ggsjb0JkzKd
	HMafuJDw9hv/EOUq1P+xFxq8Dog2gMOQDt6mhjJlLQDXq0SCess0DVYvZZdZPghJNlnTITJEcHX
	0c/TqqBKb2R7MgCGy8l0+UNPQd2w+Pw2duEmkO6pcp97BonvwUPLrfmZwSMJ3to4einsPRPMn8T
	r2OoPnZa/
X-Received: by 2002:a05:6000:258a:b0:3f9:6657:d05 with SMTP id ffacd0b85a97d-42666ab9644mr19953875f8f.12.1760604197830;
        Thu, 16 Oct 2025 01:43:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmUip1A/UhHh5kW3to9yCpKQOreBcpH/mjED2mEB7/ANZ11yhrQVq4qbsxmTXCWdy+ciYqEA==
X-Received: by 2002:a05:6000:258a:b0:3f9:6657:d05 with SMTP id ffacd0b85a97d-42666ab9644mr19953856f8f.12.1760604197410;
        Thu, 16 Oct 2025 01:43:17 -0700 (PDT)
Received: from holism.lzampier.com ([148.252.9.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5e1284sm33047565f8f.45.2025.10.16.01.43.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 01:43:16 -0700 (PDT)
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
Subject: [PATCH v5 0/3] Add UltraRISC DP1000 PLIC support
Date: Thu, 16 Oct 2025 09:42:53 +0100
Message-ID: <20251016084301.27670-1-lzampier@redhat.com>
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

Changes in v5:
- 0003: Added brackets around conditional in cp100_isolate_pending_irq (feedback from Thomas Gleixner)
- 0003: Reordered variables in reverse fir tree order in cp100_get_hwirq (feedback from Thomas Gleixner)
- 0003: Replaced raw_spin_lock/unlock with guard(raw_spinlock) (feedback from Thomas Gleixner)
- 0003: Added newline between variable declaration and code in plic_probe (feedback from Thomas Gleixner)
- 0003: Extended generic_handle_domain_irq call to single line (feedback from Thomas Gleixner)

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


