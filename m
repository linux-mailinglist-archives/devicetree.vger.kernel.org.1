Return-Path: <devicetree+bounces-211249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE1FB3E193
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 13:30:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27AD516CFA5
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 11:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258C82253F9;
	Mon,  1 Sep 2025 11:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="NUMNtYoN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8E833F9
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756726236; cv=none; b=m1qPHh2+q5Yto2KYu9aE0DIC8Ft8mcWCSKOyY4Fui0YB5FS8lgcEpaz/KwswT3TYFdLmDr8mCgICF9z2uTwjXa8ahkcLTc5ZOQp/q1z5OCPCMZN1tNntMD0a5Hfps/Qol+V2dZDrmGGIn8EPkYNSAbhsWg0MxT919m1DHKsCLto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756726236; c=relaxed/simple;
	bh=xQBZuKZbB14BnMFNO14btTVtg0rspb0g8MDjAzEUhu4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=ROM6xzceJvw2wo3RvE/FnAxUniviO8wl730VyvjE9H0JIZGA3f65iOXk9EWK4mzEaUQACEh5C4NxfuLaeWLQ0hmXz4WTuVax7Z+6gj/1rYQXkQuOR8avlyTNeRu8bz59a774m7KLBSmTGTHqbAvECJ/vWWq+ArS/bWYX6iIED5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=NUMNtYoN; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7724cacc32bso922930b3a.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 04:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1756726234; x=1757331034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OVH3gE/tU2NrwTFLWPs2VeMd5NnIXGOgVMzKZ0VvHYk=;
        b=NUMNtYoNMfmuR5HtntZUZeIwygWlfc19PnIMS63wm/mF3rWsHC6zdE0aO3m+LKkbJP
         jxeIaCmHeKdbajksvmrK5D7AYPPIlKC/E6wGc1oIap/48HTC8JehRAs1GUBY1denJG1g
         Hm8vqivaPkfedxRU9svzsJ5aBml/iGtJFwWKrtARVlC7AorztWu8w2gPPiUPUPafbjmD
         sZeL3NBa9+KPVmL2kWxfiJphWKrJXsjfTflLQrTZ5Bvzf3oYk38DAfmcENpeHwhHyd+m
         RjSx2I61tPx1zCTbQeoTX1mEzyqd5CQAr6Uz+r80c6Ch1YYPIXmJ/SUbLjJtD1VOqlnY
         OHTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756726234; x=1757331034;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OVH3gE/tU2NrwTFLWPs2VeMd5NnIXGOgVMzKZ0VvHYk=;
        b=ozsKFercnVjnLgMlyf7RE48pzhN0CBVu02+NBelbEOsI4kcMuoJBf2kPw6mnobrGRJ
         SLDs5pMvxMwoN4pHLczPBTDC2Iefal3F6F+1ZBT6cuFz8CexqPlHh8SqBmWq0PpFa1De
         Cu5oBJvuZb5XLWV8CafbFCrG39001hBkS4BvCytfnMtMxVb3BBU8x4ncZTX2oPHg4AuB
         RmOiYfK6Or2qSVnOAB2Q/p5rUfsE40nf3L+eEe1k/VeP8uicQiFlqMGgd07xFRVca8AJ
         n+wG6EMsghdV+zWHwI6iJj5sVVkIoeIARsH1dPOonGAhdszYXtjJuOE4OdfTKQoszv4K
         Kshg==
X-Gm-Message-State: AOJu0YyNjIJxZSqEruXPFDu4PGO7/H0vH2DWZMsPystVDs0X7u0Bxuwu
	/mUJSHCV89HbjXjZ3duP8Rr7IgmuiAhZwd1rtqCj8AhZ2LO4qITHw3K3PsaI+uRKeoE=
X-Gm-Gg: ASbGnctSNmePkNlPgnEh/FzGhAadWQpkfhzh8OBBbUFcrE2YI80NMETMQl1f3WEt9VX
	51Zlwc7r4HYEJ6xvOxXptWC5yhpwIf66S6WH1gk0FBqEQzaQ4ThVcTxgSztZ0IiOMxA2WC4x5zV
	xEOVOYFfTb+mMoVLfNJgjmZQ/vk5benvEPegC6pv3ewoGdc//u1lsSqoGt/j4gYTLhOzcRKDvbH
	5HI3wxn8GZWJDVufLZyt6FgN/doKSy0aunnSyUPaikG/roTWJ/c/jJ53+9pb04492TpB4RIGSY2
	J4YtjpRt+kQMr6McsiLd2S8sU2JjZzrnWLWMtt5R8VdU+p0UMnOFMY9ZPzOu6lMt/nczDG08Fx5
	ux4hQ1Kos8+gnf/kbzMkP1XV/eB1CK9tlXtEW98/JVKhvNX0kC+ga3ePXDG+oMrzi3UVVo9Aqnv
	iz2VMq25w5xzm8JqQi/bQfz9TgU+LxDVzXYXtR6SPOW+Q=
X-Google-Smtp-Source: AGHT+IELNeEmeLv/bVJbqXS2DLw/rssPuwVvgWByQkWQ+Dl4Z0Oyw27w9LOsidVAsxPp2930j5ZwRg==
X-Received: by 2002:a05:6a00:1748:b0:76e:7aee:35f1 with SMTP id d2e1a72fcca58-7723e3fcb56mr9285395b3a.29.1756726233690;
        Mon, 01 Sep 2025 04:30:33 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.55])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7725ad1e9afsm2911441b3a.11.2025.09.01.04.30.27
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 01 Sep 2025 04:30:33 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	ajones@ventanamicro.com,
	brs@rivosinc.com
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH 0/4] riscv: Add Zalasr ISA exntesion support
Date: Mon,  1 Sep 2025 19:30:18 +0800
Message-Id: <20250901113022.3812-1-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch adds support for the Zalasr ISA extension, which supplies the
real load acquire/store release instructions.

The specification can be found here:
https://github.com/riscv/riscv-zalasr/blob/main/chapter2.adoc

This patch seires has been tested with ltp on Qemu with Brensan's zalasr
support patch[1].

Some false positive spacing error happens during patch checking. Thus I
CCed maintainers of checkpatch.pl as well.

[1] https://lore.kernel.org/all/CAGPSXwJEdtqW=nx71oufZp64nK6tK=0rytVEcz4F-gfvCOXk2w@mail.gmail.com/

Xu Lu (4):
  riscv: add ISA extension parsing for Zalasr
  dt-bindings: riscv: Add Zalasr ISA extension description
  riscv: Instroduce Zalasr instructions
  riscv: Use Zalasr for smp_load_acquire/smp_store_release

 .../devicetree/bindings/riscv/extensions.yaml |  5 ++
 arch/riscv/include/asm/barrier.h              | 79 ++++++++++++++++---
 arch/riscv/include/asm/hwcap.h                |  1 +
 arch/riscv/include/asm/insn-def.h             | 79 +++++++++++++++++++
 arch/riscv/kernel/cpufeature.c                |  1 +
 5 files changed, 154 insertions(+), 11 deletions(-)

-- 
2.20.1


