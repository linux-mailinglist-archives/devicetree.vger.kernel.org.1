Return-Path: <devicetree+bounces-44706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2181785F4D7
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 10:45:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B63FC1F216CA
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D693F8FD;
	Thu, 22 Feb 2024 09:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="kgJ6hDRb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747C8482C6
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 09:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708594953; cv=none; b=Q3oxOx//Yl+3dje6kHbqNg3wax3Z95oJE/t0QcbvUyZxcDjW6kFPNtrEkd+2yJayyEHD7Agz9jG9RDT7uEsQxs+IlipfCAYlncJggAHVv9nXbgxnbr+OJwgtuUVHfORFxBygexXg6AzMWq5roR0QHerL34nhhU3FUi1zUNzfuJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708594953; c=relaxed/simple;
	bh=hb7lwuFLB9UuIJTL//kIhghW1ugqaGYSY/RdRY1h8Zc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IM0BeZskMn81FcDWVapdk+2squouF+3TTahXJBrIB+g6/TNMpJGbjbE2TfgSyxz0O97inUBo68sn7tz03DfTbvy5/8qSrxMxwdLKYuz3j2m3W3ZX4+qYogOuH668TkAdojwGnawT6doJH1f4AaJkGJmrxE0gl5qFfFvVyz5JHrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=kgJ6hDRb; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3c132695f1bso5792681b6e.2
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 01:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708594951; x=1709199751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=71v8gbBOdtXGvo9g+2jtAQQQGBX8E4yEXl9JiWYqu5c=;
        b=kgJ6hDRb6OcGKbzqGzLUi2T+JkeVtvLxvJkZytzdJiyJvL2inJ4vC/vd5qq6ry7UbU
         hu6EDLUQVp+/FbkFSdrRfZJvVsET4euMVlM58oXr9h1KiTvGerpnF8SwvLJgLv/yW1LO
         8t9GivG3FtS8if2pJCEFVuyvY1P6r6ybLSsPAKKwm6Oh6vE0nGVPvv9M9No6CcuDYqB1
         OH6qpAkShqH3TUb/v9AIjEKkUQv8VEKix0Q/ZCBa3xeezPBf2xixee4q+iHA/U+5KIRo
         UHpJG78pDWqXo8NJw1hrkpA1B7+HbvS6c0M4uOSsw7rvyTKh9pZTGZVXMI74JdgA8yyk
         rQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708594951; x=1709199751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=71v8gbBOdtXGvo9g+2jtAQQQGBX8E4yEXl9JiWYqu5c=;
        b=bOrpbBBwGTcNbo4LZ+beYTLzV8OAL2AP+P1EFjvwqjS7NJHMwuGRa9dS2dsPe32lAO
         wob5L8gXYfITlMeZQsjFpil521tp9k0JD4pGLLh2ZEfVu8OR/s5a8IZQYjXK6efDVzDI
         ibMSmAhAmIMbI4v9wcaeVoZb3bexEYPZyzEEScecidpLLFI7eX0qLDTga7+jUvuZA2Lf
         4G6LNETMVJ944qH6ipiuBoe1/PjBQTeA5EgyufhFxqqfefj7vps+BK0TGW1iqzSidtBf
         bzdvcU2UGnOff3c/yx/UegIcUtEwrj0KCWtEm525cFwvgdjQRdalJOlRUHAYbRU48MF8
         5ejg==
X-Forwarded-Encrypted: i=1; AJvYcCUE4fDHfkDBpDnjLZU46krZ76Xs9vef0MCVM5QAPa4D9woj+We7ko/c/wUr4R/ucWgw+mQNuC4DJ+Py+Ek0iLpXVurkmOmdsvpUWw==
X-Gm-Message-State: AOJu0YzAJi2P3VXxI83suxnCU+YCbgQOc7gOt9YXUPCxZL4Qt6a2YhuS
	uclPc5seVc52DrSTCT4M7bcnNH2X9I9oj+ZlGQpEZyPoh8cTDa6nYXqsvANjMy0=
X-Google-Smtp-Source: AGHT+IF0y2dY34ltcK7epyszLwVDXzQXA+TqKHzDIczRSHobiYjOfHtewc2vswxjV5CnvZL2ARs9rQ==
X-Received: by 2002:a05:6808:3011:b0:3c0:32ad:7422 with SMTP id ay17-20020a056808301100b003c032ad7422mr28344533oib.5.1708594951517;
        Thu, 22 Feb 2024 01:42:31 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n15-20020a05680803af00b003c17c2b8d09sm130699oie.31.2024.02.22.01.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 01:42:31 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v14 17/18] RISC-V: Select APLIC and IMSIC drivers
Date: Thu, 22 Feb 2024 15:10:05 +0530
Message-Id: <20240222094006.1030709-18-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240222094006.1030709-1-apatel@ventanamicro.com>
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The QEMU virt machine supports AIA emulation and quite a few RISC-V
platforms with AIA support are under development so select APLIC and
IMSIC drivers for all RISC-V platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index bffbd869a068..569f2b6fd60a 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -162,6 +162,8 @@ config RISCV
 	select PCI_DOMAINS_GENERIC if PCI
 	select PCI_MSI if PCI
 	select RISCV_ALTERNATIVE if !XIP_KERNEL
+	select RISCV_APLIC
+	select RISCV_IMSIC
 	select RISCV_INTC
 	select RISCV_TIMER if RISCV_SBI
 	select SIFIVE_PLIC
-- 
2.34.1


