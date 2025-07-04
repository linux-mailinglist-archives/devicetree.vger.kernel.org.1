Return-Path: <devicetree+bounces-192936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4AAAF88D8
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:12:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8CD4586DF0
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D21927AC2D;
	Fri,  4 Jul 2025 07:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="leeSwZB0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2198327A929
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612922; cv=none; b=YZWcq4KawWOXBUMlZn0qY/0qz+FKCMp5TwHo5nAZpZOwMfcn8ofHyPGox0yTn/3D7km7iPOZtXrI6EhljWgPR3SMSLZMCCEAmqM7Ft779NUiDZLnxg24Fe2H6c7f6gGGTW3JZ1U1xXRJMS1OAJMBZNaSlugWviiFRKiQK6dEwM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612922; c=relaxed/simple;
	bh=do4xgD3FIKiBFCXHybdwqmJMFTQfLzd5+SYEVnCmQ8U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lXsABdKEHJjX8CYr0YxZqy4y9/q6tlmI1Bi2/OodjI7iLHswbh0VVcqyymIxHN5lxNQigOrMbJtE2unpJsIsZ7WsIgrhjtL+qG4W89sX1+Gmll/gW60zIrSeBwOMG+yla0PDoIiusrMphxdeGCONfuPqjD9x42GB2XQ4fCr56B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=leeSwZB0; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b2fd091f826so564021a12.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751612920; x=1752217720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nCKZPLGMv6q3Gia2CuwihlvGGifXlgSwREijf4CMFzo=;
        b=leeSwZB0tcLjAc0hlhie7/tfRVd5MDp80ECeGAy45sS3lTuuqBefCzyaHoUnGl7bnb
         lsmRDIK/gS4gC3SnVUJg5o/DV1nQ02EBMBlmE+clVadwOxv1sBGQdGS42ohZsHTxDi0p
         1aYc5i3VZqjdBXFrD6AGRj7viGgUUzOVi8wgIC2hw2ZoSYjx/2Ik9YqnUY7IImuxLUQb
         7/esrPfT72ZHt3z8GuHbCVNUswyGf/pTPP59/5a8yJF9af8sXvfA5SD0i3Pa6W5u0eUG
         Ld6FLPKxT/R3qzZqYtDZ1w/E+WZcRefXzKuQ3FEW3hSifdvO6gBPguuxDoVBH34lwevs
         tsNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751612920; x=1752217720;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nCKZPLGMv6q3Gia2CuwihlvGGifXlgSwREijf4CMFzo=;
        b=Te4rFf/yLLyze9fNqDCmN3yqzaOIgGaMt9IeURG3P/oe4TprlGYGLkPlmPmC3MV0tV
         srNdFbcGufmt31Ln2wzm3970IC2rWGvhA+19xwax+QLejagbU3cipCMbY++27gBEZjTQ
         bFC5ppnEBn2Fg/atf21mAN/3FRUc1EZde2YDDLOT8za0txQ8ulv4MP4noNsMaGhO5l+7
         ZGNs1/5zfPWUbqamT3iBrRWS45RoftLW6rMk8p1VjNcC4Z8WrYIHOZJRwnDKy29R2hUS
         IY+99jTYQPHPfMP4dPnUPwzmT+EkeObeYUuFRoq6oRNNQTQGhWmvPey5ewGZeAFGQhUX
         1uhA==
X-Forwarded-Encrypted: i=1; AJvYcCWXokRkYg2nnkij3vB18b+0RP6TzkE8a+TaU1QF7uUmHEBzMxvRx0g6BmmRymnQtv/aAXiv6s+bGd9x@vger.kernel.org
X-Gm-Message-State: AOJu0YycmxZ6rJO0EN6DgwPBl2PGpX7yvcMzprykukh1x/vd0fFAjFGq
	FWVgWeVreTfGPPWc19aTLeUdpbHEarvCyVs9sFcWDc8Asfxixe8b/z1w/JBQGV/fycM=
X-Gm-Gg: ASbGnctwRSqh7Rh3B5/tpXgaEO3dt2qbbjfEJ8OWB+oUEoF9rfWGFOI4mt0ucQGeQ/6
	SJIDJrI67wMPrJ8xemomcuqehJ7ldOgKvrv7gkRljtAoQeKCBt9m5b3hKIHfbnJZuyRTp8AsVwS
	BWWXBzc4yn57R2IR/xxnXXYHk6zL7tHk4SBk0C3BvUgE6Aa3ETDVmhPbPCkja37j7LI42IUj+IN
	zXKyJ3g4LmJy/zmeMtEusI9ZsXiGmvv9IDi8KRpcbl01UCK+SNq49d2wioy6/fjz3+j23O9D6xR
	EvHch1OwJvC4PhD5f/Ix5k1rcCRPuP1zm6E2z9LzKEEj5blg/pK2Vr7M4qoh58BYcP/1Rr/PZ6U
	IP2gun99d4cOW1kfHi4LUOuOz9w==
X-Google-Smtp-Source: AGHT+IFZBNddecKSRV25p51oDjtdR2ftq1DYNinGTFvu7tPEIDtFUw6AiYcQq2JjuNxEVU+rdRoXSg==
X-Received: by 2002:a17:90b:3a05:b0:311:b5ac:6f7d with SMTP id 98e67ed59e1d1-31aab854e04mr2651722a91.6.1751612919264;
        Fri, 04 Jul 2025 00:08:39 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae59a93sm1358697a91.12.2025.07.04.00.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:08:38 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v8 23/24] RISC-V: Enable GPIO keyboard and event device in RV64 defconfig
Date: Fri,  4 Jul 2025 12:33:55 +0530
Message-ID: <20250704070356.1683992-24-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250704070356.1683992-1-apatel@ventanamicro.com>
References: <20250704070356.1683992-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The GPIO keyboard and event device can be used to receive graceful
shutdown or reboot input keys so let us enable it by default for
RV64 (just like ARM64).

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index fe8bd8afb418..bd5f97e1d1a0 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -138,6 +138,8 @@ CONFIG_MICREL_PHY=y
 CONFIG_MICROSEMI_PHY=y
 CONFIG_MOTORCOMM_PHY=y
 CONFIG_INPUT_MOUSEDEV=y
+CONFIG_INPUT_EVDEV=y
+CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_SUN4I_LRADC=m
 CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
-- 
2.43.0


