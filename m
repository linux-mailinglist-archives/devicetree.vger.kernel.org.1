Return-Path: <devicetree+bounces-205590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA1BB297F5
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:15:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D1B37ADD4C
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1C39263F36;
	Mon, 18 Aug 2025 04:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JTV2ukB+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7EC26A08F
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490396; cv=none; b=tYDAGg9/ks9n6+7ad3sYGGHyAuZvIkFJZj768P0OzN6AhYdJAz322Oe+n6So381We7Sp1vHN/fIyNCmEL3mU7qovbGrUDfBEvFpk5Tl65rmwXBeikamYNCQSmRc8gYXCO8wxSxdAE+QY5yYpLGfjRr6MUnNDUzBbDFUgcKfpqgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490396; c=relaxed/simple;
	bh=65T8ACHblxo2D9Y5oErp1bIX7U/Lm0LLwEyN5VeFGBE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MQWtaNeseFDTV3ssmg259CfK3pGLtjC9nLaX/ON/rdpRixr+nGl2dqQ16FbDSS9WMSJEFLjK3/93A5rEVYSsX96jKCKPIafQU2OBUeSgFGnws8RD6VzR3Zf10S+Zfm3F2p15uLWfqPYkxPdOpHBsDiUA4TSSU13EK0Q2c05Uq3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=JTV2ukB+; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b4743621044so424970a12.0
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 21:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1755490394; x=1756095194; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJN6/jwOx6PvAx5UtYwiYDtqnVqwfwWox4DCK7OERJ8=;
        b=JTV2ukB+HnMME23zz9zmZujFainKvLGXSITX3L4GsXOftxayOBovaEsna10U55yfd4
         A9f0LrY1jO94hpaK5f+Uo3Zo9ORurfxnasIxF0Od9YCa/zmRctmUZxJxZFelETEJLmWu
         oSLsw5SetXNpM3LPY/acclXBxvFBjuqvMOd7ZbdnSz7qQMm9ziI3QcxcUQFcEZ0cip4k
         LxiQ1yPWsqCNNkUMdu2z0ezFGSQezNsD1BldnLmav9rEuyXtE6JqxSytgDJKwoAOWDXF
         3lLf2gS3upMaPK1+gX0yu+Bt1rq1/tjRxxunuCG5WMme8vXQxKuAmWxzpMYSp+kz9jhT
         AQPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490394; x=1756095194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tJN6/jwOx6PvAx5UtYwiYDtqnVqwfwWox4DCK7OERJ8=;
        b=Ep9wzRHyFwp/cJHR9WU4XrCAmiWUrTrBjgpKdFHxEEio+29zvhzvW6W9gMG5brfu6i
         Cnbne8K7FBnALWyD2QqE0ICWMdIL8F53tiPFygcptLas8WfXSyvSJRBNe6AHK3jhaYmb
         dkGjyjjhNikQSx3tb6E8mHytkIWJ82RPrLc8gnKHUefNlxr4SnXbKH/JbgQeoL/KloUI
         3fBwEZuZiCOsYQYrcAlCw9hTCg4RsKiUsW2y83Ysd9EwPhuhFgjAbKJ2ppHEapOTd2B7
         HXe5mCz1aUGR48p/l+Jez1TofDBCrFdD06HyN4i5uKAapaFzNFEFEgfhpP6uKe5yLsJn
         4sYg==
X-Forwarded-Encrypted: i=1; AJvYcCWO7b8rWc1YSLEBgBpi3Q5jxfe3iuRlAqt5bINTZH4umJSYUAKnzJdgX6vwl8prxk6omAw/FT4dUmwn@vger.kernel.org
X-Gm-Message-State: AOJu0YwL3lZNjc7cg6C9YD+3PKFQcuitg7M8cvJmhyxUfNg03PODzg/A
	CXQ+lTYiTrJWsEtRnexJZOEgyW7ma/ZuNTmGAwYv9PZ4dfCx9/Tw3RFaAQvO6J3C4c8=
X-Gm-Gg: ASbGncud4O3qyYbHccQGwfW/63yStySNmK6Coo8WKng2/XsR0hMBmZjMshl8i/FCBs5
	D+Z3qSnsx+h9+1izt3JUvArz/5kIg4WTmZBGeAiX6ap66/HNQAjhnxLNImQ5O+JwPv9ze63uJYN
	6AySeMobVHXCzp5iztCUR0FifTo1I68uZNKps5Volq0i0OfxL2KpA9tXBkjyagHm+OxtGn8yqXC
	kN6iowvAERVyCehtX1f+tvAU2EHjmMX3Gt2qATU1An/z86OGULUVYphTc6i45rLdRNIqUYJERVs
	016dpP2hIaTuh1jeIVgH4LWU5aqrSA4MGe7i1HhnIARJhZyjwmRfZ+JmEx4oOxVhU9lIr6MhQyQ
	lMe+W9V1fJQOW9lF+MbYGMk8aiXG3W3rGkYSRlv0fO30yzVlbAurAcR4bgDec5apY
X-Google-Smtp-Source: AGHT+IGHAghuq2SQgJxlaChRoet/Tx7S9hCYmLUP2wntlwdg9I81uVIMsAQNgL7M5sl0qBnBN4yH/A==
X-Received: by 2002:a17:902:e948:b0:242:3855:c77a with SMTP id d9443c01a7336-2446d8c6388mr161787285ad.34.1755490394370;
        Sun, 17 Aug 2025 21:13:14 -0700 (PDT)
Received: from localhost.localdomain ([122.171.17.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c70356sm6560972a91.25.2025.08.17.21.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:13:13 -0700 (PDT)
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
Subject: [PATCH v10 23/24] RISC-V: Enable GPIO keyboard and event device in RV64 defconfig
Date: Mon, 18 Aug 2025 09:39:19 +0530
Message-ID: <20250818040920.272664-24-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250818040920.272664-1-apatel@ventanamicro.com>
References: <20250818040920.272664-1-apatel@ventanamicro.com>
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
index 7b5eed17611a..021baecb253a 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -139,6 +139,8 @@ CONFIG_MICREL_PHY=y
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


