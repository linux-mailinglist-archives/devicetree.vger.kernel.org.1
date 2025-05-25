Return-Path: <devicetree+bounces-180310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CEEAC3337
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE4F01897F27
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 707AC1F4621;
	Sun, 25 May 2025 08:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Wfsk5Mvy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057251F4604
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748163027; cv=none; b=gGErhtYEVJMc80TSf3Us3oblgaVG1GZr6mjFOEDYMbROJu49CxALvJ8loY91SrFW+wy7yY4Y9t3fNL5xQJgv39uc0q8n93Cu0cO1NTIt9qwXaDwpZ5/g966jfHSUQifuUx0IGgtnAT5iaMVtKl7XvRn6MZFuiPmb+xN97sZQbhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748163027; c=relaxed/simple;
	bh=2bVgrzW+Bo6LaJ/rBpXJ3OijmNJcUVwPRKA5+vz2aAY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aC1DjtnFLkrQYXJXd3lrW4OvuXInHz2nceBsQacBp4qeMwGj2E351TTlYR/rYtsCt96ATX53uwbCHLZzMGShMfooHuSfoQYrSWTM2KsO/5llrir4ufl1mHm6kBdiW45c6sPduGMKaS66Ol3az1++c7JvveX7nIqPgbJtXkkIlhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Wfsk5Mvy; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-742c9563fd9so783722b3a.3
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748163025; x=1748767825; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+UQe3Qzwvf0SHdVaaWPmVtAnPTdnpZyqkw1bgNcAoZM=;
        b=Wfsk5MvyvtNwFy/fNBBqLxrSuSizGBR5Ggz2H8vv7byNkjKOdzUb+5aBnxgXRW0yqA
         6SuT8SqmQE3ZWNHq75iA3alSpB9jbiJkgeqEBaQlrWgm+xRc6rmRtXukguGpDB5RFl57
         b85TA6PzWI9ho85ccHmw5s97IKCIxyaRCWLtZv+TNTyverQFPKiih/svo+mqbIVFpH1J
         ibHNA3ff3XA85B3IJgqKqWXfzuSVL68bdkCXN8wPsrnyFycjtAW6MBimB1jPrLsBKBE6
         H3IwsSm3iWc9yseFdyB/RQHDj0Cyp8387gw/Jyoc6kuwUoMJ+1xsI0zcNdiR/RiW4moj
         pM4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748163025; x=1748767825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+UQe3Qzwvf0SHdVaaWPmVtAnPTdnpZyqkw1bgNcAoZM=;
        b=UV7ZJ5L7gVw9xUB72tPby8vHAhquH5jXU2ba9E85PpzCltCIjzvHQydNMO4HU1Xb+O
         LBGuoro6vk4dhT2pVZxnhsDsYCZU9tskgXT6supRWagez0NMlP0HCxRVydYYlJww7ZHH
         kbfT+/INlDT6N5wgzsUuN9kQDJr/00U4lh2EgnAspsjNGmoQJ7Kal18yHOyCBdNRIorU
         9UC7/2mzubYtB1rSTAWXgNYP8GTtZyRT7ggUFgDsaVXjfGV5jFqvy6l0y8bOLinIewWu
         0fF53NXnDktzxiDbqE2PgA4P3+040iOjoe+vqPbMULppuvzujDCGoQo8ARUBY4iNBTVS
         aqAw==
X-Forwarded-Encrypted: i=1; AJvYcCXpmL3f2jMfNwHHzaUEVb7+Hg2GxtyREK5lqvKOFfqUjvUhUw+ZcRAc/fd0kTtDXF4Me0DhXsK993Wq@vger.kernel.org
X-Gm-Message-State: AOJu0YxMzgSbe7Pb5sZt2xFKbiMz9uCMwnfjktL3kIex8/WyGmttNvcV
	2c7WhGfboKZo12wfyg68M0eHVvZYAVVPNSGs+wYgFhXV3kMvGZ0K9EqI91kmHGIwkZc=
X-Gm-Gg: ASbGncuYizMyN2nR1dhvkfu43m1wyF5EWjR35A1KxVFH5JeIF3yj8PIQ2JOCgbj36vH
	dYSzhIxPALUlTQELoTJpHY3USppKZSw7arNqm4Ie3v/kYRiRB4SNesfT2qE7vTJDRQ0bp9bqXLu
	tO/DkCb/3+QeJKBs/VtULXIxOxOwojcaIfwSCh9enaxF+FqcybWCxQqfabPvPtfngKM7QJbD+W/
	abMVYzKVKFi41z7hkeQ6cS3RsYMsG2ycs3b0uYH3VIzM3S92JyKRJfKbYsdkX+Rm39mAQVa7gyg
	eOLYApkbWyxm6jwDe7cFpCoO6Sbp7SquFnzlk0ha2XWVKdQTO+nv5jIaRtcYeteria0rN7HPkk5
	YBeVtejAO
X-Google-Smtp-Source: AGHT+IFV8zP7Teq2vsm512nvDsFUymwEFpC0Lvaxr4DA6qwGTvoxd+WhM0Vc6uQMO7LrAvHUtRMGMg==
X-Received: by 2002:a05:6a20:cf8a:b0:1fd:f4df:9a89 with SMTP id adf61e73a8af0-2188c299354mr8476555637.25.1748163025062;
        Sun, 25 May 2025 01:50:25 -0700 (PDT)
Received: from localhost.localdomain ([122.171.22.180])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6dd83sm15250627a12.18.2025.05.25.01.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:50:24 -0700 (PDT)
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
Subject: [PATCH v4 22/23] RISC-V: Enable GPIO keyboard and event device in RV64 defconfig
Date: Sun, 25 May 2025 14:17:09 +0530
Message-ID: <20250525084710.1665648-23-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250525084710.1665648-1-apatel@ventanamicro.com>
References: <20250525084710.1665648-1-apatel@ventanamicro.com>
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
index 3c8e16d71e17..6aa330f4b67f 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -141,6 +141,8 @@ CONFIG_MICREL_PHY=y
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


