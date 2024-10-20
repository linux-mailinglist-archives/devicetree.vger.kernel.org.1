Return-Path: <devicetree+bounces-113327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2D69A53F8
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 14:11:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83AED281CA8
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2024 12:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 110E7191F6F;
	Sun, 20 Oct 2024 12:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E6DzwofP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B8B158218;
	Sun, 20 Oct 2024 12:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729426252; cv=none; b=cIAKkbU1x2FZ9f5TnFCRmtOUA5/bd78kSEvjWaS+QbZJt5qlx+o8MKaS1xwVCttckfZiC2TczpSS+vFRBl+BdUII8CJjOI6D1oP+WoOxW9cwnGgP5R84wry6VtpQq73GxOlFjULYQgx76TFiwrltnKwex/AU5g1ksvsmRExL+HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729426252; c=relaxed/simple;
	bh=2ISY0bgnUS3N1ftj+giGSoa8BIu82DGE64DBi4nSmX4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VSvoMnkxzn8AnY7j9yDlr1n8HlApoTRbqvMcwixkmFV7IGP32pojV5zRJzdpBQYgtSpS9AOd+Q7ue0HqK7hmhXpkETNCZxOuCfJf7c+DQN/MVbKx7zWQXKOWSNyTvCgesTXSzc4+bCLc5ONuLFMWt5k9gi9oNqK5x3wNtqCon5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E6DzwofP; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-20cbcd71012so31876815ad.3;
        Sun, 20 Oct 2024 05:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729426249; x=1730031049; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YR6kukrYW3XW5Mmc5j+vJ4606eE7jMLvpy+flni7FiI=;
        b=E6DzwofP8Ef6+xhGGfZ4mPCpTFzwmHlFjIAcMXs8R5xXtScXp49Um0P5enlfjU8H31
         dVRTWv1jLW3H7OH5RpUtpdVSDe46DcAxO3stNoU3aMbxQ8YsScMlbbLFEcHr/1ZykgZg
         9tXT0RZwsvCJwaBL/OiwvIBKV53e82ARxp5u31h62hHfeoI/JaDtPsWpBGmresnR/595
         43HRTKvsH9BHpM6+mvlpxexAlqjtRv0TX521//GSbCQK8lCK7ubMIQMqC+6ud9cdhptg
         3QLgpe8IVvfRTcLNlv2A9jdoYDqA0LsKtaYbYBXSMWX2quaoC2/tWwj/aYD1rbHieYM4
         6fUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729426249; x=1730031049;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YR6kukrYW3XW5Mmc5j+vJ4606eE7jMLvpy+flni7FiI=;
        b=SEBbHMugdvdi0k33O+1SNZBuO1pitxXHteEHeQ3kZYenAFOFBhVvmwrHYb93K/Rrrv
         PtfJxp2c8TzBCA/TGhQMf2ezX6Tj7cKGTU9Hfd27aT7pvIQAQsKk2lH8AjsAlTnFvFg6
         39v7IHyiFVxoy2DBr4FSR5kcnDvU6X0gE6s0lyH3n5Wt2rW4hGlGkPsJL7563TAD5dAw
         8S7rnbMGKlciZ3SuYNLNR1HH7Pye0xMc3MqGcQFOYpYDC09G4q6dhajcKPP1QKhe4x/W
         YVXTdlJRedUcOazld7s7anXBATaV9+jdCdp8/iyqONqwj/RirSwyWi1iwNf8rC6cvKKR
         XQ7g==
X-Forwarded-Encrypted: i=1; AJvYcCV42tHrg2/n9CQ6l+xKeWO2pjHR6/cF/4r88Ts3JZ5hzKJ/4BZY+YgdklhWf/sWU9ErCqoaYKiOQbZvgiY6@vger.kernel.org, AJvYcCXqOMN0fftVlVqNNpmg1ec0gxZi4Tb/JwaoaETQpAaFw6vt8MtRZaoU9fQQ6299Az4Xi49NI1p0pm6G@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn8bTdQtO63SnCVAeF7WCncbPnsmwzVadSWlJ+e763iN7V64bh
	oA0Cg2qCoqiYJK9PVQHV72C+Y3LqM3aSyPTDTUdwfGO+4P5illt3
X-Google-Smtp-Source: AGHT+IHYOv2qQdC+kADm+ERk7EtEWe3brWnELNZHrGus3nuSRFutOBxzEUbqaoMuD0INlSw8WF9BUA==
X-Received: by 2002:a17:902:f54d:b0:20c:aed1:812b with SMTP id d9443c01a7336-20e5a8a40d4mr98543035ad.29.1729426249341;
        Sun, 20 Oct 2024 05:10:49 -0700 (PDT)
Received: from localhost ([121.250.214.124])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7f0f36f3sm9331855ad.263.2024.10.20.05.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Oct 2024 05:10:49 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Chen Wang <unicorn_wang@outlook.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Peter Zijlstra <peterz@infradead.org>,
	Inochi Amaoto <inochiama@outlook.com>,
	Guo Ren <guoren@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Yangyu Chen <cyy@cyyself.name>,
	Hal Feng <hal.feng@starfivetech.com>
Cc: Yixun Lan <dlan@gentoo.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 0/3] riscv: interrupt-controller: Add T-HEAD C900 ACLINT SSWI
Date: Sun, 20 Oct 2024 20:10:27 +0800
Message-ID: <20241020121030.1012572-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.47.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

New version of T-HEAD C920 implement a fully featured ACLINT[1] device
(This core is used by Sophgo SG2044). This ACLINT device provides a
SSWI field to support fast S-mode IPI. This SSWI device is like the
MSWI device in CLINT/ACLINT, but for S-mode. The only thing is different
from the draft is that the T-HEAD version SSWI needs to write 0 on the
SSWI address to clear the IPI.

Add full support for T-HEAD C900 SSWI device.

[1] https://github.com/riscv/riscv-aclint

Changed from v1:
1. patch 2: use computed reg offset to avoid uncessary reg additions
   when setting/clearing irq.
2. patch 2: fix mulitple format issues and improve some comments.
3. patch 2: disable cpu irq when CPU is stopped.

Changed from v2:
1. patch 2: add SXSTATUS.CLINTEE check for T-HEAD cores.
2. patch 2: add select GENERIC_IRQ_IPI_MUX in Kconfig

Inochi Amaoto (3):
  dt-bindings: interrupt-controller: Add Sophgo SG2044 ACLINT SSWI
  irqchip: add T-HEAD C900 ACLINT SSWI driver
  riscv: defconfig: Enable T-HEAD C900 ACLINT SSWI drivers

 .../thead,c900-aclint-sswi.yaml               |  58 ++++++
 arch/riscv/configs/defconfig                  |   1 +
 drivers/irqchip/Kconfig                       |  11 ++
 drivers/irqchip/Makefile                      |   1 +
 drivers/irqchip/irq-thead-c900-aclint-sswi.c  | 176 ++++++++++++++++++
 include/linux/cpuhotplug.h                    |   1 +
 6 files changed, 248 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/thead,c900-aclint-sswi.yaml
 create mode 100644 drivers/irqchip/irq-thead-c900-aclint-sswi.c

--
2.47.0


