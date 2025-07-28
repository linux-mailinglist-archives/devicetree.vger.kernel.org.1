Return-Path: <devicetree+bounces-200137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3336AB137CD
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:43:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F33517B120
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 09:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2F86257430;
	Mon, 28 Jul 2025 09:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="pdGxB5gR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D0F42571A1
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 09:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753695718; cv=none; b=Y0dcZb41Rpv7e9FKJAMoHgHI5uQ4MuT/nkD/JIfisk4ed6jM2QFW8UksFzdGDR4RMbCQGdt5z7KQYO3H+oVBmA9XwBlsrlG8qhLrF8p8oDmKa+X7OuQSLKtEbZdBLXyplMEFe4WIMglYqwYVz1mO0xdFcAl36cs4rf0pfiVzyTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753695718; c=relaxed/simple;
	bh=UBn+LBjax9N4GZfXPTV/0yYRe68OpjEpS5e1cFYqyMc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cuhUKagVJP9aRxkxcsLNLWKw1qzfafzT8kmYzrn0ECTDYQn6Ey1teqd1kzrTjpSsTQxKfVY0aXYxmw7UXxpZqh4byQLDJe6WWeKNxD/s65gzD2gOj69CCJt4FArYOPDdWsHUFBMUmXvTD9m0YWRWfr4KrAwV28+DpolfcQdsObQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=pdGxB5gR; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-31ecd1f0e71so1119192a91.3
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 02:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1753695717; x=1754300517; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bl+ki3sYBLOuIZdWtmik+PFOlIYEBNco4Pu8AxHtczE=;
        b=pdGxB5gRGieuRvZWCt29dPB1O0Jf+tlDaCev7xheqXIIQ4I5aA5bxaJJYiTksK0n93
         tYUMJLKbr5vzHSfvv0gFaaWC9SYDijzHPLMRUfx2vs1IV4h7FmneolltaXCFke9UKOq+
         wm2ukSmrfup/7Kixt1nu8JL/MhGkMKOLJCME7PYfXFlcDPj+9uwgM+bXJyp8G1IiOxVf
         qDhQl0sWZ29rmwB34oOAwPj8XJtJIpJTLSJk++q3EElKh08XUSI1DNesPuG0FUFoL1kS
         9u96avgYv2i1vrzpCwP7zMEi5CvipdmAYWsHSTYvS4hd5g52mIxuCVi0DQhS+3yOkr+A
         615g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753695717; x=1754300517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bl+ki3sYBLOuIZdWtmik+PFOlIYEBNco4Pu8AxHtczE=;
        b=AOxkm59x1NlVdruP4Fn+CF1KCNyaILiEGZivprND5lioEzqztS0O9top55Zpo9e1Fc
         7ynyLVpVH/5I8nBL08f+87uvBRoA2w0ZhPLPDCh6WB17XGjOmlfwDgF5QAbPr6/EF+OI
         M0FRElgTrPvaMWvNu3bEexY3/NIIWDHGbsyoc9/X0Z7/exMR3S8a5p1YFkUOsmQCqmHT
         nbDg7j2EAGR9NNN9DTJ8LwCET4oSBb2jp6bjU+Tzr3sjHUhS5Jzz7+lBKxpkjbujTcBP
         sw/fHC26WxxOs4w49Tjwno+28gvcYemhCS1/D3D7Re1aLeYeJbETAz0yTLJwJ+qggEPn
         G+rQ==
X-Forwarded-Encrypted: i=1; AJvYcCWI0LHrPqDsm6GHUBVgsiJWzQrIZt80li45ieRSsgzzUBHcc18Qlm5ZyWk1MSDFlXNSY6nKnZzVpfZc@vger.kernel.org
X-Gm-Message-State: AOJu0YwQJLDLf9f1OIYiJoRXKmu+ylioIiFkqyYXiJPO5oVLFH0tHVZy
	+kwsViJ3195HqYjED7wRKEvfhh+7/82zeQG+7N9omdIK3jAWWlAUEPBDz4tNTSMiu8I=
X-Gm-Gg: ASbGncuQBcQvHD+44yi5vnY1gBsWd8s6M/fjbeWAlgr/rivO2naS0iG7LPlJK4VUktk
	6tAM2T06GW1dysydcIQdA8U1baVVNyftJU+ozYJx6rQqI9HUr+oWMHrvLrW3eAAmlceGPstOoYi
	qBoc4DPzye3CpaRah/I0eIUhpnXwu8BWUdg11WbYWMHhM2oGaBKLLPlMWMHhu0HwABHSsPPb9w0
	WCdsOCNrJcHFDjn8tM4zH/U7sTOioNiQ9oHS/iGxyLNQdyjth54qIFqn6Rbn1+fBTOup/IQ+M27
	g1VA5LiishzpslIV/Ytn28TpongxQQ7F2N/JdmwmVGLAy7XizwQdQAB8ocd3wtDN6AoS9sQhHNU
	fPp3RUCeB7i/i/SFq6pgew+8xpo3XKg/nYKHRLAX0XqaVvUFiQo+UxJK6ipVP
X-Google-Smtp-Source: AGHT+IFhFTqPuSSTK3+8jxndNiXraAgvrolPYd24EgLuqZVd3xcphyV7/2XKTMQF8DKsWkxQNVZhAQ==
X-Received: by 2002:a17:90b:4f43:b0:31f:7b7:4070 with SMTP id 98e67ed59e1d1-31f07b7416amr1816333a91.25.1753695716661;
        Mon, 28 Jul 2025 02:41:56 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([122.171.19.28])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e832fbf99sm5396230a91.1.2025.07.28.02.41.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 02:41:56 -0700 (PDT)
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
Subject: [PATCH v9 06/24] byteorder: Add memcpy_to_le32() and memcpy_from_le32()
Date: Mon, 28 Jul 2025 15:10:14 +0530
Message-ID: <20250728094032.63545-7-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250728094032.63545-1-apatel@ventanamicro.com>
References: <20250728094032.63545-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add common memcpy APIs for copying u32 array to/from __le32 array.

Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 include/linux/byteorder/generic.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/linux/byteorder/generic.h b/include/linux/byteorder/generic.h
index c9a4c96c9943..b3705e8bbe2b 100644
--- a/include/linux/byteorder/generic.h
+++ b/include/linux/byteorder/generic.h
@@ -173,6 +173,22 @@ static inline void cpu_to_le32_array(u32 *buf, unsigned int words)
 	}
 }
 
+static inline void memcpy_from_le32(u32 *dst, const __le32 *src, size_t words)
+{
+	size_t i;
+
+	for (i = 0; i < words; i++)
+		dst[i] = le32_to_cpu(src[i]);
+}
+
+static inline void memcpy_to_le32(__le32 *dst, const u32 *src, size_t words)
+{
+	size_t i;
+
+	for (i = 0; i < words; i++)
+		dst[i] = cpu_to_le32(src[i]);
+}
+
 static inline void be16_add_cpu(__be16 *var, u16 val)
 {
 	*var = cpu_to_be16(be16_to_cpu(*var) + val);
-- 
2.43.0


