Return-Path: <devicetree+bounces-187119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C236DADEBF3
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:25:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79F2E16B509
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:21:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E6822E9EAD;
	Wed, 18 Jun 2025 12:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="l7S/PAeH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246AD2E9EA5
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750249049; cv=none; b=Sxksd8zoQmSy2F9q4gFICIrlK9W/aynJCOARVUGP2s0NQ2+NqD5wyND/TvENlOfOvSmAUwnXYqH8liGY8/0aB+p77HRjFvYAILUL32ga4VDsVNI1Z261IDiOIinPB+n36gpOq2umMI8qpjy8MPedH0HlYnOwkY461obkDFSHhhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750249049; c=relaxed/simple;
	bh=do4xgD3FIKiBFCXHybdwqmJMFTQfLzd5+SYEVnCmQ8U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LVI1j/YIR51jgHnWTsxiMp8OgqYzUJrhiXfs6es6Ey5F7xJxKnCnf7+xAnHqRQNKM7qU4sdJea6JBb1WltoZ2xqdAih16TONLZfePUdwqOX9v1msYhiEIulj2sqsvi+XGoMPmngF9Vjxlc7wqI4SPrPSFLM1HgBajw92OrOw/DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=l7S/PAeH; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b2c4476d381so548816a12.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1750249045; x=1750853845; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nCKZPLGMv6q3Gia2CuwihlvGGifXlgSwREijf4CMFzo=;
        b=l7S/PAeHYHMucSpbkSegg3IzRoCHIq2UoKiez1NxkMKuJpwRvYIjNxNOQWCqA+Ra0V
         8sYc41WnZF7oKv2iqAxPkTWf8U5P9IafGqse64Llq+Ew7d1JBvB+IkApT/UPeSzKZ73M
         3oBCHI7NF/fmLZEVH3nF+nFAfxUKgIn9V/di3drK0mtsBQitNOAgOk9RyEGh6ulrahLr
         mQpdjGWAUrk+WuMy7oUeqjmNCLPrAONSMNVY4UySHh2qu5NkbtnxKrtKp2emNrsCfqj8
         7tbxvwVb/lUjzpzd+EIVpwnNBknwVbb+T0Y3JLleRovqLh8VXMvahu6tJIK8dsaEip0b
         ELBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750249045; x=1750853845;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nCKZPLGMv6q3Gia2CuwihlvGGifXlgSwREijf4CMFzo=;
        b=B8ynww65J2lp0EN17IK3MOT55uqqIIRWyvZw/vwfTt5ZZ/z1/ZmIL2bgl61NRymFar
         IiN8m+C4OeT7DLwewOWo83X4+w386MsY8DrnWS3lk9bqE9pX41y436i74BauK2QSfJ3z
         t3RKJYlavVHX2xW8uCMN2wC89H7k63ZRk+ufZ9hv3L5GmmUEbgfOSG1HsXqD9BwiT8Kf
         rZ2P6RYt/Ar/8vmWfmyYwdSWg7ZzsjEID85nMU4zTWlyogYm1ZdhnOqm+uw/aOINiDU6
         6Wrew7jBjl9yX1OB60maVhLmQVGHf70Yzjbs2H1O0Vm1IQPhSUSXFW03HITqdkauejZS
         56Hw==
X-Forwarded-Encrypted: i=1; AJvYcCUp309kmxgnQdS4nqcE8ligmpwP1ZE87lXRasHE9hIIu1pI4V4wQ4qrNDXmgqeRa2+m4R0hQhtkASZ4@vger.kernel.org
X-Gm-Message-State: AOJu0YxgoAWtZCxs5Ak51OFwlV3NEhcF2sA/zPLncgj6r2XCuG6tMkjb
	g8AoXGT2kjH1vSuELIz1zGr5x7t+St5k2Ow3+PEqwpv6MsOJHha3Fw52rLDj5eBLf+8=
X-Gm-Gg: ASbGncug0CGvq6Um86zC2BZqtmf0yvDt33a00V+Js58RCOUG6f0QOyYFp+IC/8nzC4N
	njfhXpfVG/RwucfeBD6Ncu0LttsyCG8Y9T1dLeamptKEnaenNT0GELYREh4esRE8RqZ52wQgHmb
	BV72Py2XfWMphWjn5Pky0CuM0q9ZlK2IZ9GkJDZTVmolaxkAgwPD9RVpb8Oim52//adWyvgi8Ot
	hfSe21kjKkxHA5gEk98nZCBUZEPdwMCyTT3Gm36YP+kLzSgOTjzpEF3cFsau4ORUtvvmq4RL/qd
	RcYSYU5wPpY+tkmUUuvRQoqb3sSwqPe8pML6RLTKgELmj65QEmg5szwAXXf72iCkCHUR4R4NO/d
	ndBwPjxMtAdzniC0S4A==
X-Google-Smtp-Source: AGHT+IH1xfeewtqn0zTX7kLVKrq4fVYOZXne0D7IDvJs8omDNN2bsZJTXVlzhVc2KfRNGR1IHYBc+A==
X-Received: by 2002:a05:6a21:3942:b0:21a:de8e:5c53 with SMTP id adf61e73a8af0-22003759d05mr4132869637.12.1750249045295;
        Wed, 18 Jun 2025 05:17:25 -0700 (PDT)
Received: from localhost.localdomain ([122.171.23.44])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900d7e0asm11201177b3a.174.2025.06.18.05.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 05:17:24 -0700 (PDT)
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
Subject: [PATCH v6 22/23] RISC-V: Enable GPIO keyboard and event device in RV64 defconfig
Date: Wed, 18 Jun 2025 17:43:57 +0530
Message-ID: <20250618121358.503781-23-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250618121358.503781-1-apatel@ventanamicro.com>
References: <20250618121358.503781-1-apatel@ventanamicro.com>
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


