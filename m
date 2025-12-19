Return-Path: <devicetree+bounces-248141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D248CCF17F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 10:16:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5617B3012569
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:16:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7ADE2D0C7F;
	Fri, 19 Dec 2025 09:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JOGk/6nv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6032713D539
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766135803; cv=none; b=Kfqr/PKqj0eoKkio2jR7WSdGVJZGvB9BBsmq6eqKPwBP0f1ZH6agU7bezbv+qCZlekJQyCW3jSa592+BI91tknA/NhG384xzSeIfeIEaFhH71nc+VXecr9mXEK0Rjazpb2oIPm+Iw/pd8n1m9oESrB04BalU/h1wO9txs9r8+iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766135803; c=relaxed/simple;
	bh=6uz2evx8d2FnR7KDwcgh50wHr1HjrKcn47GR70yF3vQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VQyHPDydZoDfjTGyRjoxw1N1fpFY7xbOcIaD9ujznG8IrinjVvBGL4TMfaYRolQp6ixrcvO/zEmJunMnvqN0PHlvpysLRJBHWjNuM/F3T/YZYLHBBsz7HJncAjmNaZBGqbyBTGE/gtUcWq5H0kF+m+b+ErNcRS9FS6hqD+cuMrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JOGk/6nv; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a0bb2f093aso15971445ad.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 01:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766135802; x=1766740602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s0wq56S49D0XiqE0opAn2H72dXHptd985ZPMxAa7P8A=;
        b=JOGk/6nvSb8URbMPEp/hgFLw/4pG8LdABjyYhrOWgeEGuXkkSSvuNtzw4TMwdgRGhs
         /sw/T+7bAlmoXN7jP2Ifzk53j/cOP9NWPd/aCrmex0ZSzzBZXCDF56z1zqBf4ksTrCPD
         0q/ct430+XZwmdYP9z/0GnXovNd9W72HBZNBRZDcpwjnLKuUydt2IBrx/XS6OAqSNvpd
         rVfgEm7KXlcmPzXxuvFW4tXHkUQkv5nCdIjdDZhaamd4w1XwtEbWFn4ooKN5VcmQg7BS
         YW2OX9SuhYMilEfxksU6nywn+F3w0eBJeX39ZhQxiOJ8p+tKaeJdrgWY/uh6IrwsajNk
         EStg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766135802; x=1766740602;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s0wq56S49D0XiqE0opAn2H72dXHptd985ZPMxAa7P8A=;
        b=XYVthF9RhDFsLnxWC8kjOtAW+WL9t8m9G6m6u5ODLx0hoD8orLLigzR5z8WkZtp2I9
         /rhn5+IY1a1BEOLYOmV9wXi/RQHLS9eVdXu0vfAhE8ATB2qoVw/0EnZDH/E/6SglO578
         qpazb2G2P8Fem5AbFednBbAGTGIQhJbZaCki61Qz50XTOcBl5hGOttBOqhYoCyy33Tud
         4L7C2fkckq+BRVBMEfmLb5bUA6tYDPccvDfrPndt1XZlzpx+CrPFMdR+VcCQd7QO6nR5
         diJ0ZPf1kSJKzo8gKD8PJKeS13i6LkQsk6/JqYacxhUyRyb2rtwYzlAEJdyX3hGLoddL
         s97A==
X-Gm-Message-State: AOJu0YzqTuOZ4aF3FFcVTmC/UTi4nOkNbnQCPcv7cyWs03BgQR9vMDzb
	mlPBWNN5On81OWYD+0E8b0vXKCTPaX2AKGbAmT5M48YpvqMd206Laleb
X-Gm-Gg: AY/fxX665y8pB+kHXQ6jFR86t6EsmITcsnFMzoW8LkVjf8KCBDQxlU36itRSdBmkB8a
	4QsJLy6EdBIvDOKDHD2Et97gkQiUwPM8TetKINeQQ8Z4zFt49y1TB0BTdsfBetpZLBJ4kCBlV4C
	OKxH+pvR0B8fttp6YsyVM83TrsX/iP5oAIf4wvxxdPEDlxC8ijgvlZBrSd1yrH37yujNkYJlEWt
	HQq+rhUQHVxVxKMOhs3YuFQ3lwaLiXjvJaRTGImr0CBDclSN9F6tdzi4WQMylmvbjxECHky2iF5
	BLuixPctSG777MXh9r8uYSvcCnhd2J8RpwcgHiUfuCSdvIwl0uYZsuzEDaa+htDBER7xMOicyXJ
	L/attL84MhfqnsBVueR+m/X0L1C9nUPsXdEWcAwFy5dd89fgNjb3gy+yoV7GeVNy2taV9FPHQVn
	XOdg==
X-Google-Smtp-Source: AGHT+IExGez/SwIBFURSmY3cs4pQ+FOVzxgn0uQq48pg35PAUqNFrGyru+1LszkjcLfX0eBztZo4og==
X-Received: by 2002:a17:903:4b30:b0:2a0:9fc8:a98b with SMTP id d9443c01a7336-2a2f28375dfmr22211505ad.40.1766135801575;
        Fri, 19 Dec 2025 01:16:41 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cbb7sm16831515ad.59.2025.12.19.01.16.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 01:16:40 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	peter.shen@amd.com,
	colin.huang2@amd.com,
	Peter Shen <sjg168@gmail.com>
Subject: [PATCH v9 0/2] ARM: dts: aspeed: Add Facebook Anacapa platform
Date: Fri, 19 Dec 2025 17:16:30 +0800
Message-Id: <20251219091632.1598603-1-sjg168@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Meta Anacapa BMC is the DC-SCM (Data Center Secure Control
Module) controller for the Meta OCP Open Rack Wide (ORW) compute tray.
This platform is a key component of the AMD Helios AI rack reference
design system, designed for next-generation AI workloads.

The BMC utilizes the Aspeed AST2600 SoC to manage the compute tray, which
contains up to 4 AMD Instinct MI450 Series GPUs (connected via a Broadcom
OCP NIC) and host CPUs. Its primary role is to provide essential system
control, power sequencing, and telemetry reporting for the compute complex
via the OpenBMC software stack.

For more detail on the AMD Helios reference design:
https://www.amd.com/en/blogs/2025/amd-helios-ai-rack-built-on-metas-2025-ocp-design.html

Changes in v9:
  - Describe platform and hardware architecture (Andrew Jeffery).
  - Remove "Device Tree" from patch subjects (Andrew Jeffery).
  - Reconfigured aliases to be sequential (Andrew Jeffery).
  - Alphabetized all DTS label references (Andrew Jeffery).

Changes in v8:
  - Dropped unused 'pcc_memory' reserved memory (Andrew Jeffery).
  - Grouped 'spi-gpio' properties together (Andrew Jeffery).
  - Moved 'pinctrl_ncsi3_default' to aspeed-g6.dtsi (Andrew Jeffery).
  - Revised 'gpio-line-names' to match schematics (Andrew Jeffery).
  - Improved 'sgpio-line-names' formatting.
  - Removed unused 'led-2' definition.
  - Added ADC128D818 sensor support.

Peter Shen (2):
  dt-bindings: arm: aspeed: Add compatible for Facebook Anacapa BMC
  ARM: dts: aspeed: Add Facebook Anacapa platform

 .../bindings/arm/aspeed/aspeed.yaml           |    1 +
 arch/arm/boot/dts/aspeed/Makefile             |    1 +
 .../aspeed/aspeed-bmc-facebook-anacapa.dts    | 1045 +++++++++++++++++
 3 files changed, 1047 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts

-- 
2.34.1

