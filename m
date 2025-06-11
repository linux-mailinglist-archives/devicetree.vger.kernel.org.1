Return-Path: <devicetree+bounces-184601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E41AD4BAE
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:27:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F41AD3A6402
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 06:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2BD422D7A7;
	Wed, 11 Jun 2025 06:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="P7e2A5/R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3C522CBC8
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749623170; cv=none; b=sCSjZcNwbJaeVMOikG0S/UEHhDgap4cd9mdF6YpYp/1XoY7W18ltzsj+33rU1458EGFq3fzlZhvK/e/Y5fIeBsCIvrLXjILqaUQMeWeE4w+wGXj/gqw5tYUkfnpAsiT2Ubb/HIYFJFLjPNlNeSDTpDABHmaPuOsDqusKYrolWOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749623170; c=relaxed/simple;
	bh=do4xgD3FIKiBFCXHybdwqmJMFTQfLzd5+SYEVnCmQ8U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dwWZzckSFYCBWVgyM4lToqLEw48UW/Bm2CMNCDtDgGAzXlx68EHYomftxYQF4zrmLVkzruGhTc3/AYjbVTY3eNXoYKD0jikaFLmUoi7U3JkQPSTlSEyYz9jYIczRnVuFjMteFvwNWwXDOjTY7tSwySpDSnagTkdx7x8a8u+Mgho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=P7e2A5/R; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-23636167b30so17453585ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749623169; x=1750227969; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nCKZPLGMv6q3Gia2CuwihlvGGifXlgSwREijf4CMFzo=;
        b=P7e2A5/RMbpKWV4USYgEX54JkYswpao4dAxpHRwOtDaJg2iIbqpr5n5xCDDwJT1YsG
         RWmezbfWNp15lLMJ0zQuQDlTPyr+GNtPH8Ql14sHNNjNgdUEiveHXin4q3ULUXJBHRry
         5mPp7o8+0JQbZI4Pg7biiiX1+PQRKES6GYhJEW7Y52PGD0QnXVkEucY/LegXYvoPOa7V
         X+YfH4JfgedMbkGbRn4fEmuWac60kIoUEF3YbbL698Im/BZR43juROuTTOuoPJs78v7e
         beQc7WnzNKTCIY2eDlidnXtLwnp8PRnK8IdDtc12XQaPsE8ZZqneW3uQhJjUEsyWIz7+
         89sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749623169; x=1750227969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nCKZPLGMv6q3Gia2CuwihlvGGifXlgSwREijf4CMFzo=;
        b=u2Dik3PzvbN4/5lhf67dPdmifHqOsGx8KS0okcsPrHl5tNYvewNDhgIAP0hSK8g2lp
         7LthXbNXKQIz1SaRcLitPpwJ/wsnpR2DnJSBnxCThdLVJyPRq29Sv1VLO7xRBe2xgVV+
         IEZazWPfFbrrFzzyc5LY5hFobBudSp8zlLWfuKAN7TBCCg93ys8jxW8LV74jBgVEknDA
         fuS8CEWS93bTJ7anZ372GprUU5nzZLb2nDTp2kw9lAfg/85SAxpfmbltEnJ0pkbBgqIL
         e9WJJ6kykWIJoZb4OEcPUolrJ6M68UCFHuwDUAKBUeag3FC3qJKYfEkY7DFYjk5/AVIo
         Okxg==
X-Forwarded-Encrypted: i=1; AJvYcCVPgwRKDMWSiX3Cv4EGzS1WlalSjzxpepq0qXT6x0v3U6ZEgOsqmtbljoYKQCH8c02jHoPfBvY5rZw2@vger.kernel.org
X-Gm-Message-State: AOJu0YyGYjRI0oOygO5uaUf+9Rh4aOq7py1/Pf52mzvQmoLvINxXjQ/E
	i/9xK/YNQoh/25iB9vcaGGzfOCgSiv1DnxV8oScNuKwd8dg8igxQk2r0U+Mj7u4mwxM=
X-Gm-Gg: ASbGncv1e6+Qd6xHiTArU9uMwl+Htn9qLg+RDGKEkfSVc6i9kRcY/DxKDSXNC7wPbif
	keqbtumyubRBPXJeBgbhGrNaYis6er7+GGQVYKmNPXaF9pwo8nY1Cy7BZwK8HsD+nGRcvtfHfi8
	Q6p1MzdfJf0a9f33cF4ifONUUd5eU/wYbd6+yS2gj83KRehi6eV9m8eU+rsHSmXaN84M/n4YHKp
	azKsF8UFabGhgo2feqp8MnV3r5KgM24+DvPgLEULoaI4T8LWSRq1w/QkQ+RQJCpDjbsaTjEuinG
	eKul7rysHYO6sZXTUzBz/rIkUk7Rpla8Xi5pCTnyPowtx1xBMfkf9NzZPzzlEZixl1YsOvrNXjb
	OL/VR456dP0kptdBlQck56TT449h1YfByqodg
X-Google-Smtp-Source: AGHT+IHxgzd+8XFQeH6I+CnI3pJzaPr1EGnWCnVsqBSz05ercFVxc937r04XmAc5WZ/WtZq89w951A==
X-Received: by 2002:a17:902:ebc4:b0:235:2403:77c7 with SMTP id d9443c01a7336-236426a80b7mr21936585ad.37.1749623168893;
        Tue, 10 Jun 2025 23:26:08 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092677sm79976295ad.64.2025.06.10.23.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 23:26:08 -0700 (PDT)
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
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v5 22/23] RISC-V: Enable GPIO keyboard and event device in RV64 defconfig
Date: Wed, 11 Jun 2025 11:52:37 +0530
Message-ID: <20250611062238.636753-23-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611062238.636753-1-apatel@ventanamicro.com>
References: <20250611062238.636753-1-apatel@ventanamicro.com>
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


