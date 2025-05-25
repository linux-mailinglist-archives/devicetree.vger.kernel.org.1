Return-Path: <devicetree+bounces-180302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D38AC3325
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 460C53B9168
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E59DE1EB5DB;
	Sun, 25 May 2025 08:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="gOPP3hwx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF111D88AC
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748162962; cv=none; b=J/DCfM2jXE3+BTP777K7v+Av3fjdj+7eoP60aFt83oFx7xybv20MLGh+ZVsO+aAB16s0FVdiT0nnpwHsuojxoQpXvIXHZaSYpINt3gGG6n/BKUfsSG6iuMn16mGJu0lNJEls2Z9g5FxPe4uBqf557eydoA9ELpqwZnSh+uY2lu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748162962; c=relaxed/simple;
	bh=GHGvIRMABFHZz8Rip9kEWuDjGkE4igVxIjdR6SESrL0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qgdA9qn2gXMZKd1v2PFKwExMuIkqMQOyYPkpK4CzLfVrhc6ePpgeoUs6xhPDqzeYioYVc1D1ed/w9XZ9uV9fqsxsyZovnpErr0RVcD9tOhjRJYXz7lud+KIIRvxS2F8sXCYZu8F1AW6Owb680qXVVX0nkF54+cwdTgPmfqS8eC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=gOPP3hwx; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-742c27df0daso894643b3a.1
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748162960; x=1748767760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9FunaAXszvTG8F9NxLwtJcRl/JdpmfQ2Wvu5HorrkT0=;
        b=gOPP3hwxGyimoV29gUujyL43MqTpNNaRRP77u1KLu3AsDUFmiLFlNaraw8JdvFehpd
         FZjiLxwtayxwpcMt3NDF6sXUpZqpODcS2t6p+0112f0x9xVxKkjrDhtYk8iU+MNO/rYr
         6r33vvq5nZYIp+YSelWFJA4JqkX/YQZ+S139pkgdNGBfhWGvoYpNwiNEXhkK5wXFhb/x
         QF99FSsM5o1lRmkIFA5rx18mocSLXD8fF7iBsCfUM26URtmSm2Nu0epbc2f9d85Y3P23
         TenHxbot77ziK7SkYf1gKgDa3x67zKOwEDi89urtwzqb0nE85Hac2uOy4l6LXtDF0FMH
         Gc8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748162960; x=1748767760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9FunaAXszvTG8F9NxLwtJcRl/JdpmfQ2Wvu5HorrkT0=;
        b=sNFh4mJzg5L/MrcEpqrwl6aGDsnpVX0hSbRIcNjLjT08nAZO1wvEs2K0C/fu5HhXyq
         wMTiFweUHn7J9RPtTT3l1YhY3h0TwnV0n7qKiOnuCZG+j7G9YyKATjVsXcnWHtqeGK48
         jYcI+m/QIiwElM3iyCFqvc6VqnDwlXI3giGmvNDviWKEdyiZb6MxCizNP6AIg1yc3wcn
         rYXfwPO2SiDmuFh6Frs2Jhn6lwYQpXpYKbK+yX1W3Cz9OAXTgbnK2DhLWAN5Kho+hEKQ
         l/Qaz0mP9jt+LeNpt7D0iYW6oeJbFm212uxhlLeGQT1Uu4ZyGoO5aclxDLbNDE9R9lq6
         Lo4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXsw0da4RI1FWAhxJMgfhdRoMgQwXk1qEisqPlLc9FPhOwqbqK/aW7NHzQr5Q0pCkS0gaBf9EdXP19C@vger.kernel.org
X-Gm-Message-State: AOJu0YxD6hg6gbLSJoOE7Mrxu0t/kJmsb7zOVh1GlcJIHAhKNhtKrSWB
	PLT6/m+Dlr/kTNUonUP2dcrqAshy1VM3CiuYDris8nhbwj9vE4bboR7D4/bLzJ5LvnM=
X-Gm-Gg: ASbGnct/fFAlkO0rUjEvkMJpkRSBWW0kOjtBaFrl//hCahzsCwJq7Me3TuH9GbesQW2
	EPaHd0Uxr0u5argrKDvosPSk+Zki+S11/TtfNr616cOMGQ8iEPMvRQ3A95aga8hQnusYzeJGRFc
	s9zdsJ+i/Yk5cRA84OtvNLPK+e0k1ORnEUWMEYxaUmuHC3v5/5Zw4OdaNa9rVA0T+Ob3Z0jutbh
	8QJzWkrazuOTvc1UZx6wo+J2Q0Kpn/vSQIm4GDw+1iAPEkghT6RUTIYomjxx5/SXTs6FHEFhrBh
	Zyw9YYStmqr4xkClazzYhDD58qhsUZhnhNEiRO378/uWeq1/B3UiS4RTV5pBJtYEZVN2EgldWPH
	q4PdbKBFv
X-Google-Smtp-Source: AGHT+IFfQ4GlwBOm5aqf9abJJ6GzdowEpxdV3jxJWk+baMuesDsuJ4xVL+L2MQeiT0KLZQBJG7FJ6Q==
X-Received: by 2002:a05:6a21:100f:b0:218:75de:d924 with SMTP id adf61e73a8af0-2188c22eb79mr8067987637.19.1748162960471;
        Sun, 25 May 2025 01:49:20 -0700 (PDT)
Received: from localhost.localdomain ([122.171.22.180])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6dd83sm15250627a12.18.2025.05.25.01.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:49:20 -0700 (PDT)
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
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 14/23] ACPI: property: Refactor acpi_fwnode_get_reference_args()
Date: Sun, 25 May 2025 14:17:01 +0530
Message-ID: <20250525084710.1665648-15-apatel@ventanamicro.com>
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

From: Sunil V L <sunilvl@ventanamicro.com>

Currently acpi_fwnode_get_reference_args() calls the public function
__acpi_node_get_property_reference() which ignores the nargs_prop
parameter. To fix this, make __acpi_node_get_property_reference() to
call the static acpi_fwnode_get_reference() so that callers of
fwnode_get_reference_args() can still pass a valid property name to
fetch the number of arguments.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
---
 drivers/acpi/property.c | 101 ++++++++++++++++++++--------------------
 1 file changed, 50 insertions(+), 51 deletions(-)

diff --git a/drivers/acpi/property.c b/drivers/acpi/property.c
index 436019d96027..d4863746fb11 100644
--- a/drivers/acpi/property.c
+++ b/drivers/acpi/property.c
@@ -882,45 +882,10 @@ static struct fwnode_handle *acpi_parse_string_ref(const struct fwnode_handle *f
 	return &dn->fwnode;
 }
 
-/**
- * __acpi_node_get_property_reference - returns handle to the referenced object
- * @fwnode: Firmware node to get the property from
- * @propname: Name of the property
- * @index: Index of the reference to return
- * @num_args: Maximum number of arguments after each reference
- * @args: Location to store the returned reference with optional arguments
- *	  (may be NULL)
- *
- * Find property with @name, verifify that it is a package containing at least
- * one object reference and if so, store the ACPI device object pointer to the
- * target object in @args->adev.  If the reference includes arguments, store
- * them in the @args->args[] array.
- *
- * If there's more than one reference in the property value package, @index is
- * used to select the one to return.
- *
- * It is possible to leave holes in the property value set like in the
- * example below:
- *
- * Package () {
- *     "cs-gpios",
- *     Package () {
- *        ^GPIO, 19, 0, 0,
- *        ^GPIO, 20, 0, 0,
- *        0,
- *        ^GPIO, 21, 0, 0,
- *     }
- * }
- *
- * Calling this function with index %2 or index %3 return %-ENOENT. If the
- * property does not contain any more values %-ENOENT is returned. The NULL
- * entry must be single integer and preferably contain value %0.
- *
- * Return: %0 on success, negative error code on failure.
- */
-int __acpi_node_get_property_reference(const struct fwnode_handle *fwnode,
-	const char *propname, size_t index, size_t num_args,
-	struct fwnode_reference_args *args)
+static int acpi_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
+					  const char *propname, const char *nargs_prop,
+					  unsigned int args_count, unsigned int index,
+					  struct fwnode_reference_args *args)
 {
 	const union acpi_object *element, *end;
 	const union acpi_object *obj;
@@ -999,7 +964,7 @@ int __acpi_node_get_property_reference(const struct fwnode_handle *fwnode,
 
 			ret = acpi_get_ref_args(idx == index ? args : NULL,
 						acpi_fwnode_handle(device),
-						&element, end, num_args);
+						&element, end, args_count);
 			if (ret < 0)
 				return ret;
 
@@ -1017,7 +982,7 @@ int __acpi_node_get_property_reference(const struct fwnode_handle *fwnode,
 
 			ret = acpi_get_ref_args(idx == index ? args : NULL,
 						ref_fwnode, &element, end,
-						num_args);
+						args_count);
 			if (ret < 0)
 				return ret;
 
@@ -1039,6 +1004,50 @@ int __acpi_node_get_property_reference(const struct fwnode_handle *fwnode,
 
 	return -ENOENT;
 }
+
+/**
+ * __acpi_node_get_property_reference - returns handle to the referenced object
+ * @fwnode: Firmware node to get the property from
+ * @propname: Name of the property
+ * @index: Index of the reference to return
+ * @num_args: Maximum number of arguments after each reference
+ * @args: Location to store the returned reference with optional arguments
+ *	  (may be NULL)
+ *
+ * Find property with @name, verifify that it is a package containing at least
+ * one object reference and if so, store the ACPI device object pointer to the
+ * target object in @args->adev.  If the reference includes arguments, store
+ * them in the @args->args[] array.
+ *
+ * If there's more than one reference in the property value package, @index is
+ * used to select the one to return.
+ *
+ * It is possible to leave holes in the property value set like in the
+ * example below:
+ *
+ * Package () {
+ *     "cs-gpios",
+ *     Package () {
+ *        ^GPIO, 19, 0, 0,
+ *        ^GPIO, 20, 0, 0,
+ *        0,
+ *        ^GPIO, 21, 0, 0,
+ *     }
+ * }
+ *
+ * Calling this function with index %2 or index %3 return %-ENOENT. If the
+ * property does not contain any more values %-ENOENT is returned. The NULL
+ * entry must be single integer and preferably contain value %0.
+ *
+ * Return: %0 on success, negative error code on failure.
+ */
+int __acpi_node_get_property_reference(const struct fwnode_handle *fwnode,
+				       const char *propname, size_t index,
+				       size_t num_args,
+				       struct fwnode_reference_args *args)
+{
+	return acpi_fwnode_get_reference_args(fwnode, propname, NULL, index, num_args, args);
+}
 EXPORT_SYMBOL_GPL(__acpi_node_get_property_reference);
 
 static int acpi_data_prop_read_single(const struct acpi_device_data *data,
@@ -1558,16 +1567,6 @@ acpi_fwnode_property_read_string_array(const struct fwnode_handle *fwnode,
 				   val, nval);
 }
 
-static int
-acpi_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
-			       const char *prop, const char *nargs_prop,
-			       unsigned int args_count, unsigned int index,
-			       struct fwnode_reference_args *args)
-{
-	return __acpi_node_get_property_reference(fwnode, prop, index,
-						  args_count, args);
-}
-
 static const char *acpi_fwnode_get_name(const struct fwnode_handle *fwnode)
 {
 	const struct acpi_device *adev;
-- 
2.43.0


