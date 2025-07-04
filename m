Return-Path: <devicetree+bounces-192927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CE1AF88B9
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:09:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56EE6189C330
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:09:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3E3127AC5A;
	Fri,  4 Jul 2025 07:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Nk1KOswr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC515277CBE
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612820; cv=none; b=LH/CVhbNlF66FxWcQaKgPoRAWBNCroTaRRfppHTOLLX3vVpCAt3HGe2Pp1M/BKrkBt03nHqPAWuWm4hWZxv738cyYH7sFp3C6XVshEXg5/cskk6woP4w0rKZwza9VjDOGneuP9vXEHELaiYgvDJFDDTpvwEmPF8mSrGhWeOH3mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612820; c=relaxed/simple;
	bh=D4KRKH9P0sO3K13Q0py2YWsE/1WdVlOApdKoV5bY2mM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hXG+q8hExIJrRx7TgJD804pb84AhZ0OxngKBgkoZFber2oYk7fOgkf3EkjIHAneMol1GhgK7PB/H9oUGe9gv3i48xVvrZszs1tFs1fzBnd2zH0p+EU1LIAmtiQtFklCRnF4Hatk+468E7JLHhUJhsmnDi9UIiPRhF9Z1Lm8zLyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Nk1KOswr; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2350b1b9129so5555215ad.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751612818; x=1752217618; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ObbyW0OuMQm4eB8vpRAI3PGtL6LDEvFC+dNo0dBAW4Y=;
        b=Nk1KOswrgpgexnI8ku076KFzY+fQqOY4fPAWN2RXTbECSVFr7E0PlRGCTJ3YmDTBmN
         riY6z7G0TLYApD3QQtt4TsTzqxd20z+fO2ef3R3Zzpoo0nshKi4lADiqi7L6ea7rlEDz
         mMAskKQwjHhDBJ+qXuPg4SW9wRftIcFzHB/XT2KixP64Wrb2MS/FMW0mtdDULQJIghER
         8xR8d4JXqcEPvX5cv8BgasVMsVvxfZaFv7LLsjLq4XkJY7L+tR4DAjfR15ivdUlNnOFi
         mQTYotJvs24FQdahShDqtZS7/pKbHF+vI679WxbR9L0jHcae4zX8n5Ltoo4kHPw1303E
         lHJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751612818; x=1752217618;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ObbyW0OuMQm4eB8vpRAI3PGtL6LDEvFC+dNo0dBAW4Y=;
        b=pSPIhv9li374QsOclArqxRpSnLm7FFWfDxaosegVVzLQUzISiJA83e1ZgrhqZ8HTZl
         8yDHjUSfi/PaNTwFOx9xHq9WUY2AZGWXSf4pN6i5v7mIsShRV7a4ARaj77Gruon593jS
         qh6oAgjAi4WEz2JMSJILhV6m/qk7hcKL6N4cypQ7R13ds6NG785FAq+zsd1WLhJlWMuD
         RFK1Dc9rB3l1n9M3IvX1iSB8GfQ1DgiV9Vua8sNAFaWg9kF/my4tcZgJ+dO71eCqO7tt
         ZVArRzg/XICP35ohRtxJ2X7nDgMtRg9IIsAP4vnxfHq/5DyQVDHp/SSba/Ggv9/Aiond
         Fy7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWmcgS8sfFMJmGGrGRcGNfkKD026FAWfRNNAXLhbDzn7H5wJcUo9qBHTvyBwK29f0MMuOilOW87KaCy@vger.kernel.org
X-Gm-Message-State: AOJu0YzDzm/hGNkXGlkOJZCw18SxV4u0YNbvJfbitFVC8fRhThI9LmV0
	8I6ciWxHcLeOwwAw4n+CQB5RFJ11jV5DZTAz60qVJctTDv1a5XJLuxE7OPrmRGVrQSY=
X-Gm-Gg: ASbGncuys4+Z3yL2zkCuPK/iBWxfYoIaMxTcJAO26Je1hY922iEcUR83D6wGsnC48or
	rvKCqKxz0J3TIIF10UIPJ3pAGIeau9vulDx2x4NGyxoHHIrvc2tnvHY4/PgEw7Wkeen36+AoXxq
	IbdXhn98bA7fZjIik8QxWAYYQy/BHaVXAYNGPWe12rmAJZLDhW1OemHkViReST0wmk5LXbL6kg2
	2qgQJWWu7EzHLBhNCqquZ7LPD40lZ5Wt3pWOQJDopY0HrOJKGzyAe47SSPX/IP5mkPrlbOp6iz/
	FapA93eyg2HVy32NwzD0jbVVemeGRbCIe2u0+2eb/xjQ+eiNd6yJJwwxNbaZQHnSIgtdu8pc7CJ
	AOiONE3j22TwaCuX9xH1yVfnXZg==
X-Google-Smtp-Source: AGHT+IHBAOQFhJ/Dr0zUTWSqWq0gW8xgB9ku+vJx3I6DITXH2EWKdkHCZXKrN0Vn0sKHROjxmMUN7g==
X-Received: by 2002:a17:90b:4fcd:b0:315:9ac2:8700 with SMTP id 98e67ed59e1d1-31aac4dfd02mr2612265a91.24.1751612818031;
        Fri, 04 Jul 2025 00:06:58 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae59a93sm1358697a91.12.2025.07.04.00.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:06:57 -0700 (PDT)
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
Subject: [PATCH v8 14/24] ACPI: property: Refactor acpi_fwnode_get_reference_args() to support nargs_prop
Date: Fri,  4 Jul 2025 12:33:46 +0530
Message-ID: <20250704070356.1683992-15-apatel@ventanamicro.com>
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

From: Sunil V L <sunilvl@ventanamicro.com>

Currently, acpi_fwnode_get_reference_args() delegates to the internal
function __acpi_node_get_property_reference() to retrieve property
references. However, this function does not handle the nargs_prop (cells
property) parameter, and instead expects the number of arguments (nargs)
to be known or hardcoded.

As a result, when fwnode_property_get_reference_args() is used with a
valid nargs_prop, the ACPI backend ignores it, whereas the Device Tree
(DT) backend uses the #*-cells property from the reference node to
determine the number of arguments dynamically.

To support the nargs_prop in ACPI, refactor the code as follows:

- Move the implementation from __acpi_node_get_property_reference()
  into acpi_fwnode_get_reference_args().

- Update __acpi_node_get_property_reference() to call the (now updated)
  acpi_fwnode_get_reference_args() passing NULL as nargs_prop to keep
  the behavior of __acpi_node_get_property_reference() intact.

Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
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


