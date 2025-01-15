Return-Path: <devicetree+bounces-138646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81817A119A9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 07:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF2603A45D9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 06:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D466A22F381;
	Wed, 15 Jan 2025 06:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FDiwL5LY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413FA232452;
	Wed, 15 Jan 2025 06:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736922721; cv=none; b=PKyVmMlDD+DYXipvv3mYmnI1GW5xSckOfK0El8kAfdWPILb59Q+LCfmL0Sha5viWh2ccoVV0JUuqUf4rBYfYLOEPrhFj+vkL/jBv0T8n1nCrD1mMn9QZJnJC3oFlWamtYO2ieDyM889olDxaST7iQAeCLSWQ8CPPI53gACAXuYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736922721; c=relaxed/simple;
	bh=yi/TjIGLxypBjj982k3cXgBVvm8NFYlh2j5FNZTDsuA=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=L36du7u2eg9H/DC1bHP2AcjJka3cNP85I9ysGtJxTBE+4NWvmfK+Ej7qMw4b0Uc15ylFivwY0yBkLyJIE4x6Yg8BjwYpTnWWQI3FezTwgeLf1sA4MP+FHMKvtu+jMPzutnfigJNKDfSjNFGozjZcVhK1FABhF/Eah0ozKlavw8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FDiwL5LY; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-2aa17010cbcso2717549fac.3;
        Tue, 14 Jan 2025 22:32:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736922719; x=1737527519; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=pR3mxRiBEftr5sApBSerpd4B3EpU6PJfrpUR5WHbeUo=;
        b=FDiwL5LYzSmEsG1dZcgXwxsqjVIrv0xS1SnAQypp7xXs8Bmu+PqUpuXmvJ7f7Ve9bb
         YoNRIcbpTDNZ9fXsH9+/M01hA9XE7PYg8FZa3/DKjGa2fl3gupz84ieD5M2Xs4FvTG/E
         So85I0uKeXb09aHv4XxV4unHe3vTQ6jPW/alY8xWuuI1cnFGvBh3+UB1EjVVAAYTu+Qg
         DWzZisO2+zIn+OtgcJRU3EScMxt+XGOvz+sEPPEZajPX1grhqbIqMd6xWlhq6xL+uFwF
         lA16wrdlMBMVc/OY0xv90AY/uCm5m6ZI1wapPf5w7oZWF9ZuhO61qbwccigUqedObtlf
         UbRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736922719; x=1737527519;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pR3mxRiBEftr5sApBSerpd4B3EpU6PJfrpUR5WHbeUo=;
        b=VXtmpjSpmfbiyyWUZ2EXNZk2ySvSoUwZlG28MQfE12/Ftr0sAG8tdhCLtKwFCwUJnc
         nXAZEn6aU8wVL0fdxox7mNQazBY8YU49aLeXN3d3Wi0TnpGOp9w1Ih73pxua3MANk1dI
         zsUgZtHSxJwDg6J0f+Q8xNWGMb6kHvHHqvyil6PvosIUuTBXOgqLeuA4gPBkEmDQnCHJ
         /aZIjmzoPAbCys2LbaB0yoG4iq8zjgkF8JyzcKmunTCiQyPLYqJGeroNl41XTholdiZs
         xNbhbVgvZ5bjVwspDhXpE6vJc1TDZ2g4uwfZB/x5+ndtIGlRnU1zQU7mFaNp5qpo7Ouv
         SKlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqd5K+HC8owrOVIHG6SIcQF68HUWxSPfCF5xIqHStNZXWlvRaDu6bkSiaIBqdbiJcrKWiOUqwvGiAY@vger.kernel.org, AJvYcCW6TEo8Cwqbll8mz71T7rnAvOS4b+Llq7iqPl/i8h0PdBKR8eBr5J3UKNHlxyAlx2rSjbs9Rx3MQzqE/aR+@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi9wFHh0xQzz5mhDl769VZCVR5p8gQyaH199TPo1pXhYkOJsv9
	fxmHkXskA4gTMKyJkb8zwUA1ZJRf7/o2nEDCk2gckAmF1zTlyVec
X-Gm-Gg: ASbGncvjdJ3XmrLXKdxHhoUsjnIRRhEDPF71+Xffd7a/3M5Zm/Daqt5WrwZe1/lbqZs
	OKcWL/46nyBe9m5T1zvzA5elNEC4R5IleEbkP8nkLRZkNUMsr5duGuZXrn1M6IHhWE3wv83IGrx
	gBQWa9wO5etXUqUjuRfUPKzNNJCtf7ysjS0zcsgs4GVywm2+m1e4oBlEndoDrEFTNClwVffkMI8
	Q2GfAWQ4F2aEUOc8QlCwDa5UNJiaSOLwfI9Vy7NJQ1MwT1ZuNabnhuLQUdhcf8jIeo=
X-Google-Smtp-Source: AGHT+IHbyh2YSJe1KqvTDUPlBBVKxZ+FlD8cF6ArDNlz7FedkwkHzEwA/Z8QqBJRsLDDzcPlWMuRbA==
X-Received: by 2002:a05:6870:ae94:b0:296:a7c7:6a08 with SMTP id 586e51a60fabf-2aa066c74fcmr14481589fac.15.1736922719130;
        Tue, 14 Jan 2025 22:31:59 -0800 (PST)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ad804af737sm5975440fac.8.2025.01.14.22.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 22:31:57 -0800 (PST)
From: Chen Wang <unicornxw@gmail.com>
To: u.kleine-koenig@baylibre.com,
	aou@eecs.berkeley.edu,
	arnd@arndb.de,
	unicorn_wang@outlook.com,
	conor+dt@kernel.org,
	guoren@kernel.org,
	inochiama@outlook.com,
	krzk+dt@kernel.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh@kernel.org,
	tglx@linutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com,
	fengchun.li@sophgo.com,
	samuel.holland@sifive.com,
	christophe.jaillet@wanadoo.fr
Subject: [PATCH v3 0/3] irqchip: Add Sophgo SG2042 MSI controller
Date: Wed, 15 Jan 2025 14:31:48 +0800
Message-Id: <cover.1736921549.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chen Wang <unicorn_wang@outlook.com>

This controller is on the Sophgo SG2042 SoC to transform interrupts from
PCIe MSI to PLIC interrupts.

Thanks,
Chen

---

Changes in v3:
  The patch series is based on v6.13-rc7.

  Fixed following issues as per comments from Krzysztof Kozlowski, Samuel Holland,
  Christophe JAILLET, Inochi Amaoto, thanks.

  - bindings: use reg for doorbell, fixed wrong usage of additionalProperties
    and misc. 
  - Improve driver code:
    - Fixed potentional memory leak issues.
    - Fixed some build warnings reported by test robot.
    - Optimize and simplify the code when allocating hwirq.
    - Use DECLARE_BITMAP instead of kzalloc.
    - Some other coding style improvements.

Changes in v2:
  The patch series is based on v6.13-rc2. You can simply review or test the
  patches at the link [2].

  Fixed following issues as per comments from Rob Herring, Thomas Gleixner, thanks.

  - Improve driver binding description, use msi-ranges instread.
  - Improve driver code:
    - Improve coding style.
    - Fixed bug that possible memory leak of bitmap when sg2042_msi_init_domains returns error.
    - Use guard(mutex).
    - Use the MSI parent model.

Changes in v1:
  The patch series is based on v6.12-rc7. You can simply review or test the
  patches at the link [1].

Link: https://lore.kernel.org/linux-riscv/cover.1731296803.git.unicorn_wang@outlook.com/ [1]
Link: https://lore.kernel.org/linux-riscv/cover.1733726057.git.unicorn_wang@outlook.com/ [2]
---

Chen Wang (3):
  dt-bindings: interrupt-controller: Add Sophgo SG2042 MSI
  irqchip: Add the Sophgo SG2042 MSI interrupt controller
  riscv: sophgo: dts: add msi controller for SG2042

 .../sophgo,sg2042-msi.yaml                    |  58 ++++
 arch/riscv/boot/dts/sophgo/sg2042.dtsi        |  10 +
 drivers/irqchip/Kconfig                       |  12 +
 drivers/irqchip/Makefile                      |   1 +
 drivers/irqchip/irq-sg2042-msi.c              | 268 ++++++++++++++++++
 5 files changed, 349 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/sophgo,sg2042-msi.yaml
 create mode 100644 drivers/irqchip/irq-sg2042-msi.c


base-commit: 5bc55a333a2f7316b58edc7573e8e893f7acb532
-- 
2.34.1


