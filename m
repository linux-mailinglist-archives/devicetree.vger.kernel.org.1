Return-Path: <devicetree+bounces-184593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 37035AD4B95
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C4C07A93FA
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 06:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C95B923370C;
	Wed, 11 Jun 2025 06:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="pUVeUBdB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF8622DA13
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:24:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749623099; cv=none; b=nZ6OAoesKbiHu5gFpHvLcsexjDYHP1gRDPl2hSUOhHGAg/iK2Eg11dhxmuvDUDI8NPiaqq7NXNlBnOnbQmFUeM27x5DiuA2uakLzVrOkhcnGBjGItslALMyzHM0XW+wrPbdycWRO52kOeKrryYDljjS+YLF2ottAaaMp5SJcpXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749623099; c=relaxed/simple;
	bh=uYspFdcUP7K03KSkIbLSgQUq1PmFh7JvyJFUbmFVifk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u5jZ6UD+FKiH9/NId5HgNowCtVEpYhpwJAnLSrJBIP6j56Y8nYXHJfzsKjf9wVDBSVY0Tngv46iAcegySm8xrvshJsEzE2C6BQ9QrWo93L0VyXmPWgVMPtQq6ZoW8UUP5wX8WI2sMOoDCHWXYfC6oxHwG6opkf6QWo6bPID4Ce0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=pUVeUBdB; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b26f5f47ba1so4350009a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749623097; x=1750227897; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iK7PqVF4zZIJUvApimJUz6BsykWi/7ZoxPUCnW7EQA0=;
        b=pUVeUBdBcFwfkVBe4KtaY0TllD5VW6Fb1o/2qSlUUmihhOku8MVKCSzULMdxPtchBV
         zO72EqA2uBQI6xEY7Ke8L1oKsmWfgM2fj5uTRHUGGgml2+551UKn95d1FlSrgyW/wM0D
         6Obp5U7YsZkXRhUrfW8MeZtpO/l2YhCum2nKGk4QdtoD5vBF+S2DMB2eJfH97hNLe6RX
         HOmd8kL6F+FMUVHbcoRzlsPvCe7xvAk+3MIEQhMnny19MTceXZJtYDa8Kh10D/i+8X5q
         2jskAO/Jcj6HDhZQ/+eulkE/3Al/5eWNkJI013qbB7gnh0B+RiLy56/zOVo2IiWayP3O
         Tpgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749623097; x=1750227897;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iK7PqVF4zZIJUvApimJUz6BsykWi/7ZoxPUCnW7EQA0=;
        b=Oaey+K6TrAZ3Y4uQsgxXmR3bUj8h0W3CLkaENtkmGB7/VofNPP/6JA3CuMkUBYTePk
         v0dN5cB2BmKjqka9CDUL2ImoPQkQfOxP//Q2vNfHNPFKvbZ5aKZoPFffZRGtLd8mO3Vg
         qR9OICAEBY8nKPKKobbRFDTpro05bIUbIri93jqqNnegFMQn8rEAxw3Cr3BUQryD965u
         uUjOYCRIVzlG180BZQeJWIdJ17K6IQ4GsQ1i8sJAx1weBNuFx7uOEFHu50aGjvgZF7/T
         fNsGvnyF/48d0tK0imQY2RrdzS7qnlcTXJuOG8V3FJSB66jCdU5XxPJr9B4+4SjormSo
         cMhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzDrOD/zfEa5oiWgIZJ3hxEKTPJGThRhhaNyn6BbCHChxrRh32un0KpU73n7tVDyEq1Xmb1PrjMwpw@vger.kernel.org
X-Gm-Message-State: AOJu0YzpivejvS5xl6jvomVj/9eyxRt6lWiDkap2L2SkTds0DJbfW1TP
	oYk8iBMzEeAOn/Ft3gZz5eTQ049PFxcXAeqUKYS8GxPaol6zDldVz06XLkQFwyvYQNq7xJiwG+S
	dPPHEnKU=
X-Gm-Gg: ASbGncu1SjJJuv0P892dD2cailoKVrktWzVdqfe74WxynRzwt7KXRfOx9LZmp3UV0Bf
	OqXpo9mjSLd5BPBB+GbOATRzp4GMGJQSM8gBFfv7TWDViDAzmftXXnSpX91+dvBN2WoDYX4dyCc
	qfK/ZiFDs0lg9z0ALYrlKZRxzoQoa050yWpnB1XoWb7etdt9zP6zg81hQF4XR/aDYgFuHwmBhd4
	Q8uZlXva25u9uttfbspaMVGvb8jvQ9arBrho3w7eeBi63m+H8uEMt4y61/ZRt9B319B22qyY85P
	6kPxEFsuxEyBM2DqEMdNZWxLzpnpsFADohVZnuibA6HsD5G+jGC0Ud4GwPtzRUDpR84juuaEuUw
	OpdldpHrEubpKIuNyQmJU+MET7cTH8b1zI6c6
X-Google-Smtp-Source: AGHT+IFO98j1k8g1ruMfGzMTu/XxzcdDJxwpWrw5N+bAJb9t2eF6IOtYLbrNxbahMkEVQkOEVuOivQ==
X-Received: by 2002:a17:90b:3c11:b0:311:fde5:c4be with SMTP id 98e67ed59e1d1-313b20072e3mr2122681a91.35.1749623097312;
        Tue, 10 Jun 2025 23:24:57 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603092677sm79976295ad.64.2025.06.10.23.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 23:24:56 -0700 (PDT)
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
Subject: [PATCH v5 14/23] ACPI: property: Add support for cells property
Date: Wed, 11 Jun 2025 11:52:29 +0530
Message-ID: <20250611062238.636753-15-apatel@ventanamicro.com>
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

From: Sunil V L <sunilvl@ventanamicro.com>

Currently, ACPI doesn't support cells property when
fwnode_property_get_reference_args() is called. ACPI always expects
the number of arguments to be passed. However, the above mentioned
call being a common interface for OF and ACPI, it is better to have
single calling convention which works for both. Hence, add support
for cells property on the reference device to get the number of
arguments dynamically.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/acpi/property.c | 22 ++++++++++++++++++++++
 drivers/base/property.c |  2 +-
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/acpi/property.c b/drivers/acpi/property.c
index d4863746fb11..c9c3d6920326 100644
--- a/drivers/acpi/property.c
+++ b/drivers/acpi/property.c
@@ -882,6 +882,20 @@ static struct fwnode_handle *acpi_parse_string_ref(const struct fwnode_handle *f
 	return &dn->fwnode;
 }
 
+static unsigned int acpi_fwnode_get_args_count(const struct acpi_device *device,
+					       const char *nargs_prop)
+{
+	const union acpi_object *obj;
+
+	if (!nargs_prop)
+		return 0;
+
+	if (acpi_dev_get_property(device, nargs_prop, ACPI_TYPE_INTEGER, &obj))
+		return 0;
+
+	return obj->integer.value;
+}
+
 static int acpi_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
 					  const char *propname, const char *nargs_prop,
 					  unsigned int args_count, unsigned int index,
@@ -960,6 +974,9 @@ static int acpi_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
 			if (!device)
 				return -EINVAL;
 
+			if (nargs_prop)
+				args_count = acpi_fwnode_get_args_count(device, nargs_prop);
+
 			element++;
 
 			ret = acpi_get_ref_args(idx == index ? args : NULL,
@@ -978,6 +995,11 @@ static int acpi_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
 			if (!ref_fwnode)
 				return -EINVAL;
 
+			if (nargs_prop) {
+				device = to_acpi_device_node(ref_fwnode);
+				args_count = acpi_fwnode_get_args_count(device, nargs_prop);
+			}
+
 			element++;
 
 			ret = acpi_get_ref_args(idx == index ? args : NULL,
diff --git a/drivers/base/property.c b/drivers/base/property.c
index f626d5bbe806..6a63860579dd 100644
--- a/drivers/base/property.c
+++ b/drivers/base/property.c
@@ -578,7 +578,7 @@ EXPORT_SYMBOL_GPL(fwnode_property_match_property_string);
  * @prop:	The name of the property
  * @nargs_prop:	The name of the property telling the number of
  *		arguments in the referred node. NULL if @nargs is known,
- *		otherwise @nargs is ignored. Only relevant on OF.
+ *		otherwise @nargs is ignored.
  * @nargs:	Number of arguments. Ignored if @nargs_prop is non-NULL.
  * @index:	Index of the reference, from zero onwards.
  * @args:	Result structure with reference and integer arguments.
-- 
2.43.0


