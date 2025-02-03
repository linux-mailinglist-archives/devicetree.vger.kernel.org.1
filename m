Return-Path: <devicetree+bounces-142430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E53A254FE
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 09:53:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C053D3A92A3
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 08:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2550C205AC6;
	Mon,  3 Feb 2025 08:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="dUANwQF4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8918A1FCCFB
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 08:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738572774; cv=none; b=ahxLcrVquIOOKy4PPm46wmbP/EZQgp7KPw64QPTA/Gd2ym+aJohqKWXDJ3RX1R/po9tApv2/HBieqbEehVP1tOsoxbqVEmACaBLXk8JxwuNBHwcVuqG3QIV2D62ijj6jZi6w1fy3euQpwkmmixIznaipvVgn88bb3KM2EBZIW+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738572774; c=relaxed/simple;
	bh=22AgTEVKq+xXA4vNaqP0QKEUOoUwv4sTkP/v4MXPynA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jZ0CVzMWpJAh3qKVTAlLs+qKXyrMbNpKk+/VAzVafRORoO0W0q7CZ+Dz6+pV1Rwq6+3e2lIkoiX0oSA8uaChKRvGNTTyDp8dfpBQ76ujt01z2a1Lr7jNcKE54shdLkumuZFW6olxJXV8Rsjrl/Sv+wzeRr+gLxGHrKl2aHOwxkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=dUANwQF4; arc=none smtp.client-ip=209.85.160.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-46b1d40abbdso35460061cf.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 00:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1738572771; x=1739177571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lrS6UZq8voK5d6I6M8hMOQP+PQdCTVat6aZNVhGKd/U=;
        b=dUANwQF4WM1HeceqvS2bUw+eqQiPF5DsiLySq1rPsHRCOEQU59r++p2bF/aSpadXyy
         BPcCpv0fhgAYy+yVwm4zp9fy0YkGbxUkA97jXrPAJs/rptxC8OjqvG8pqvFqi7Ou7LSy
         fa56H/seQ5tnGEdApiTcCo8moYGVEgCMZjIMesiKlbwO167f7oy5Uk+Nf4/heCjIINZY
         RvcmBgZk+h7j2Hxz7WyHZSSkUVk6tPe5tNrF2bg11wOMkwu98/vQ+qmDsV+EN/UKqCJr
         V0KfwKAM95lIwG0gd17xZFxynfYBMM/QOW+JgST/xZeY9CJ5zFk24UAwn39/2a4e6ljG
         Oa2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738572771; x=1739177571;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lrS6UZq8voK5d6I6M8hMOQP+PQdCTVat6aZNVhGKd/U=;
        b=V7O6vVwGsKk7u7/vTSn1Q4hWQr0ZcYs1oKmK/skNqYfpA0JQoefHrFHsFqEGbs1y1j
         rlin1uXdpWuRFiwMSPpoH+v1a6ujMq4F8j76yO+jYbHsnm9vzuk5hvmKrhR0X6IjTBzB
         xzS4MbLH+dbc/qmzRrY4RZ+v0DlCp1xl7sarKGn55L2TS7EwH4k4mdtIgMzMcXKfc43t
         qBvozx8KTTy3gby8Kk/WXzN+rybfDKYBqmCS3TKSwVgDJ0xRdZcXnZCiW5PzS5VhGk3x
         vk/7QO6ph5IfrM/HCD0gEj5bttq6q1plhYl6BZ4R46wiStK5aQAgfTCMbkzGveQrQYRJ
         g18Q==
X-Forwarded-Encrypted: i=1; AJvYcCWRmwVWeOsYuomKNbc2B4G6iRRRO1XbobEVpBhFBnD004Tcpoo2BK3dIvYYfF1KWCprNiti+jaqJTKU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7EnXQRo9H+Z3uv/uRmL+mp0g69hhRmUXs3GLP/7e4ZTyFX6Ao
	q2jQA8r38HKPEN1bFUa9lrjKtWiHLZUnZ+LVORc/B++L4bPG3QjMjujFGjLL+W0=
X-Gm-Gg: ASbGncseNCp0TG6VynU+tGcJj9FRK8iL3rvLjYYJO/7TXkstPuf2obu14V1bAYcXm8f
	Z4HRsObfvEa0BnCBdExeIBaynRmB3O3UWesxf9hQPhQgWaV27KEa6rUd9TVCpR2L0dXkj9Iy7v3
	8QkFxt8EMXqgpAmkxMvpGTVisJMD0kon7h7yER0t68s2l3vtql4zEWL8RP9g/NZm+GoN/7RLh04
	AkjDR44oTmIRw+pZBBasUR7b/O24ln79DMQdaJqQmDk7BKRsdh+YfG8nLdahx7M/xvLo6N6xnXN
	0n/H1R9pUGiozeOu+v7WCZW07eG0/870EtI/QoSf91hAn3wIlVL5yC4=
X-Google-Smtp-Source: AGHT+IHCJxve5T10aPiQPDTrvWu69tjDV21FWaMmTfndSVMbeYY2fptctuonpJUVJro58XKkYYFZeQ==
X-Received: by 2002:ac8:5f8f:0:b0:467:672a:abb6 with SMTP id d75a77b69052e-46fd0acbcebmr285604751cf.23.1738572771412;
        Mon, 03 Feb 2025 00:52:51 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46fdf0e3089sm47657911cf.46.2025.02.03.00.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 00:52:50 -0800 (PST)
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
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [RFC PATCH v2 17/17] RISC-V: Enable GPIO keyboard and event device in RV64 defconfig
Date: Mon,  3 Feb 2025 14:19:06 +0530
Message-ID: <20250203084906.681418-18-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250203084906.681418-1-apatel@ventanamicro.com>
References: <20250203084906.681418-1-apatel@ventanamicro.com>
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
index 0f7dcbe3c45b..06265b6febba 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -142,6 +142,8 @@ CONFIG_MICREL_PHY=y
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


