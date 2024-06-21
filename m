Return-Path: <devicetree+bounces-78349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE9C9120A8
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 11:32:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F41781F249FA
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 09:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 241701422D5;
	Fri, 21 Jun 2024 09:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="JGvYFIqm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA3578C8D
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 09:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718962357; cv=none; b=Z4oxQGG5YDJAiXMSP7jQp9FKsYAV4AWofKDxpVY9MoWOycAiR5kQD1J8JU5UONH+MzxsfWSZc3F2ajhpksTOnp92ZRzKCR7BtKQxTI1JX47ZMa5vM84ryD/gTIJofX/LVrLwUtx477XyIkHUE8MLoxIonywhU3juqqV73To2BHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718962357; c=relaxed/simple;
	bh=Io7x0Pj5yu6Aay2v1mJmnn2x5+0MezQargV1CWZ0hoE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VMWMAIqrDNQxNFgYEhlUzSaNtQlkvo1uldUcT7/+YllQoesxf8SuhgUhL4CkGV8xeXlIsijXlViujF0PWZCzWBruK1MqXgC2xqJ78+kCxYj5V4Bfy+glMiwt0At9hsROdspemj0DRaslqffgErUKkcpomLgahnKboO7/itS4LbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=JGvYFIqm; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3d22378c59eso1024391b6e.1
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 02:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1718962354; x=1719567154; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3wqIpx/xNWV6IHwMrdSRTckXkxxvetpMu+iSEo5dv+4=;
        b=JGvYFIqmbIHmpV6mQ/LHEgJJDfLdc3ktUr4KZtuFUQzKSQy17TBzsJSsU4qjM6AhbQ
         pxGyKkcFDgkvCw75S7yc/aq6diK4ncJo0mRo4lwOGuHe4e3MMvMbg25X6MimelYEHjJB
         WIUFJsA6pMfkrd7kecZ9X6E5yIPY48WJ9DadkpGK8vn7tjbPFZNl5vXKZEDMLUqGoe4M
         8/O0+zNyY/qyTFfzN8XMnTboY9kFZpDCcUGR09U0uWqrcAEArT3n8ioLLIIR9X2ueqX+
         j137K+aD4SVx3waptGWbuWnYpLGyaYvYBnvwKZ2fh7RKjgjReYzjVVEqgDb88sUt29wH
         WwJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718962354; x=1719567154;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3wqIpx/xNWV6IHwMrdSRTckXkxxvetpMu+iSEo5dv+4=;
        b=GSvCQW1u/RL3U/LlgBeaLE6cyr9AP882usO2K5Ya86MktwC8Puuwp3Ha0DcE66zZUP
         DzsRQfx39pIOdlBZ0gtgctROci8eIVXjzCTK+zeqaYOWku+OLdhC5y5eoene3qECGwKg
         n6S4iYir4RFF0ypL+akHdZx2mB3KqpNLg1xEH3pSQs5enkOEnbvn/pX4TB/e1CYOGf0g
         Qr390gaBl7K5v9RdURNtPoBz0JBCuMgmJU7uqdzKQxVCRIZd4tcaBjODeDFoRLrr+s46
         42pbTcBGkTjFGoLluUzGcb5X5/TlE5GdKpIlB+ka4EbhiWbt2jAuPutgQinh1kdnRdPU
         za2w==
X-Forwarded-Encrypted: i=1; AJvYcCUd5KP97/fHoXcj+8N58p80e6Z0WmHAaqCbHhMzhsw6t2CcPVrkRJOgtxVVwWg4f2P34WkNhu4uUst1zfA41pVF3J04Hv2QNJ5jLQ==
X-Gm-Message-State: AOJu0YzJ2mNHjAkbwifA8HvE5MCptwOYE6u/71Qn/fU8v40D46FShMaX
	6A+D9hFkntNFV20yw7PFom7LjLO+tQIhpNKHwp1FDgsg5JzwmtUtJ5qrABIFp7g=
X-Google-Smtp-Source: AGHT+IEYiPdKpLIiyynObeE7nm0iaBRvcw73rKG2SXQrJii6TwMzCurVIpNbfHgviOCPq4wnb7YnDA==
X-Received: by 2002:a05:6808:16a2:b0:3d5:2bb7:867 with SMTP id 5614622812f47-3d52bb71282mr4012256b6e.17.1718962354114;
        Fri, 21 Jun 2024 02:32:34 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7065124dd26sm968415b3a.127.2024.06.21.02.32.28
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 21 Jun 2024 02:32:33 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	conor.dooley@microchip.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	christoph.muellner@vrull.eu,
	heiko@sntech.de,
	charlie@rivosinc.com,
	David.Laight@aculab.com,
	parri.andrea@gmail.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [RFC v2 0/2] riscv: Idle thread using Zawrs extension
Date: Fri, 21 Jun 2024 17:32:21 +0800
Message-Id: <20240621093223.37893-1-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.3 (Apple Git-146)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is the second version of idle thread based on Zawrs extension. We
rebased our code on Andrew's patch series[1] which provides basic
support for Zawrs as well as optimization for spinlock.

This patch series introduces a new implementation of idle thread using
Zawrs extension.

The Zawrs[0] extension introduces two new instructions named WRS.STO and
WRS.NTO in RISC-V. When software registers a reservation set using LR
instruction, a subsequent WRS.STO or WRS.NTO instruction will cause the
hart to stall in a low-power state until a store happens to the
reservation set or an interrupt becomes pending. The difference between
these two instructions is that WRS.STO will terminate stall after an
implementation-defined timeout while WRS.NTO won't.

This patch series implements idle thread using WRS.NTO instruction.
Besides, we found there is no need to send a real IPI to wake up an idle
CPU. Instead, we write IPI information to the reservation set of an idle
CPU to wake it up and let it handle IPI quickly, without going through
tranditional interrupt handling routine.

[0] https://github.com/riscv/riscv-zawrs/blob/main/zawrs.adoc
[1] https://github.com/jones-drew/linux/commits/riscv/zawrs-v3

Xu Lu (2):
  riscv: process: Introduce idle thread using Zawrs extension
  riscv: Use Zawrs to accelerate IPI to idle cpu

 arch/riscv/Kconfig                 |  10 +++
 arch/riscv/include/asm/cpuidle.h   |  11 +---
 arch/riscv/include/asm/processor.h |  32 +++++++++
 arch/riscv/include/asm/smp.h       |  14 ++++
 arch/riscv/kernel/cpu.c            |   5 ++
 arch/riscv/kernel/process.c        | 102 ++++++++++++++++++++++++++++-
 arch/riscv/kernel/smp.c            |  39 +++++++----
 7 files changed, 190 insertions(+), 23 deletions(-)

-- 
2.20.1


