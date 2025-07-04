Return-Path: <devicetree+bounces-192919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A113AF8883
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:06:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 203667B7E52
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF59B274FD8;
	Fri,  4 Jul 2025 07:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="WZzBcgBu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCFD274B42
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612726; cv=none; b=TjY0ZTPEQHOWR8CMMa1VXZBTVYH2zPX+1bMAoFQFj1OH3/FjCtYxZP/oJzv0Rqk3AdZVNftqn3vlsLNum0YMx/ExouxjKPJYJtKp8q7PhC76k+97hWg23cHe/8dOxOJFzVacn0J5Cz5hNB/RnWB0O87aSmjZKyIt8Y859joaC48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612726; c=relaxed/simple;
	bh=UBn+LBjax9N4GZfXPTV/0yYRe68OpjEpS5e1cFYqyMc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dCz2Q65x3WelanxeE9VSJQCJz5HtfJXT5WcYJrESgtt7tGtkP8kEEj/GkfMWNDh370NPVOd9xXmYY0SEWHxiT4dB1uqx3Hf2yuGkAbG8lk+CxfDY/zmNnp8fm/EJtFjVhLsgr0iR8Xa3iJ1td9yDCsy24hsOgHVtmYPkilNSiTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=WZzBcgBu; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-311e2cc157bso598923a91.2
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751612725; x=1752217525; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bl+ki3sYBLOuIZdWtmik+PFOlIYEBNco4Pu8AxHtczE=;
        b=WZzBcgBu3ZD0HXOm8MishoZ5Db2MopL/9n7SiiP3YxcOCcl+zii4Me+DJ9yW2CqbWM
         7GBQr03Ibg+IDrIEk1xMhrT6xC4KL9Mr51XUTCzrPR68Xz9+e2UQbF43VANMOUJcaebg
         k2zq/6lSHNOAEim/Jjyk419KPtjG9voJCItwKCGPiwgWmbKhb7/xR42SvhSvvqBD/pBV
         UFM9rmUtGQ/ZzaiJxMHR3Y9OmUB0FIECgepVVAdJg8oSV9gMAWjEOLnSuE38TLu8q2ZI
         bG6EZ0dT+ckdeMHUCObhWE8PEbJsz02T4w2cj/AdYr+mPrklXKtnblgJOAZc2gxf2A/P
         q30w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751612725; x=1752217525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bl+ki3sYBLOuIZdWtmik+PFOlIYEBNco4Pu8AxHtczE=;
        b=khnfBY8SwUW/1EhEVpyl0p5Enhb7B33ufgrbpXww5QTw1oj9l4HeJmNIIncGh7d/Wo
         4UF5VEmF5F2Gng0wDeWqcWITuEXU+eIE3EuVnW+aDEj1MK7/39dUzX2+XBMNGfrwm035
         l5jyiomaXLeT7Uor0ehgcHAv9OJ5Wg3nj+5sFxrja1kgAGV5hEIpCL2D8yOQONqyF7kC
         vzX4nwJgdhCagPa2GvoAci0+kSmM86Z7yjVWYXeGa+dF9eHcCfsWhiAWMwLl1TQH4Wyx
         w1ad68ZS89CSDviHewarvdGgrw99aKvRblOsuEBHos1BIO1qjKZnvmc0yf+SvnHKRrNu
         0q1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWcE22XUGnFcc0BI5AdLSgXMaO3cy5UN+thSRnj+2oedmdg9cTvTMwboJCDSzs8GTEshLiW2dHAiiWx@vger.kernel.org
X-Gm-Message-State: AOJu0YySP8ILhkBFRXbePBBEGdVRq8u44yLiWelGZaNyRam248uotMl7
	GjYI6hHCWOIVAJSJ0uwqP4qysVwZnyVJpaya3vBQf7azGMyHGbqK8gkAYiZp1xoWlbw=
X-Gm-Gg: ASbGncvOl1vyv7fknqhIsdkbm52hmsgtBQ1JRthaLeWEF+MshPWz0S0jQb50u57fd7e
	9oFWP50y/VXIPC5RdvtwJrzm9ETmNilfHvq0pYT3cIBu71WCR2jkkuCjasv0ZJkDInab3rPpprN
	r0Pe+4j8qOZjgBg8vRUxL6Z9/etmL6Jqi0h0iwCEDDtbXluPigpkMvAuwnMe7fU9cUCUdiTJm5/
	utNYACSt9nyc5WehMiMrZf/ovlq99HC8GCjJQXd5r4NHXqSRvy4nGW0rKyGTTrOer3DYeBMm7Y1
	PFDVlwJol0aC5pZgQ+gizDyABnIvSQrQJfs6GcGLQsCLVRBAtX5L8XAlQbcnOjFo+s0tno/Tvo6
	bUtElZ2khXQvPIi/ihnJPPlFO3g==
X-Google-Smtp-Source: AGHT+IG2Wztw0stW3yOl6KCgbq0+m25wabHOLxe0e4i/arpNNnZE0epPwB2VK7aaXsKsyXh0wihgNQ==
X-Received: by 2002:a17:90b:2f0d:b0:313:20d2:c99b with SMTP id 98e67ed59e1d1-31aac44b34emr2635726a91.9.1751612724260;
        Fri, 04 Jul 2025 00:05:24 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae59a93sm1358697a91.12.2025.07.04.00.05.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:05:23 -0700 (PDT)
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
Subject: [PATCH v8 06/24] byteorder: Add memcpy_to_le32() and memcpy_from_le32()
Date: Fri,  4 Jul 2025 12:33:38 +0530
Message-ID: <20250704070356.1683992-7-apatel@ventanamicro.com>
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


