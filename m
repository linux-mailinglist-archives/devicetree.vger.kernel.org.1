Return-Path: <devicetree+bounces-205582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB832B297ED
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 06:14:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C6B1196667E
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 04:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F15526AAB6;
	Mon, 18 Aug 2025 04:12:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Ga+12Ceg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9C526A1A8
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 04:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490333; cv=none; b=HHykdH6coD/7/ATwz9m7c8lGMOvzubqJs9uTtDTz7Jh+KW37hean99ohhODgdwED/i7ybB2hP2vHVucSMSTcB8+a0LVuUbgRtWB+fOluvfluV8alselgt/gWvXZY/cG2HSPIXxAe21pXoKZjxTQB8F22IfkzZGosHLdFqTQpP0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490333; c=relaxed/simple;
	bh=gyloqI7MRNxMKJRKLrjy7BLm1ahzB5ZyG0rUCvET9Kc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r+i4HaddGnKuByHJ0E8SkMPs+3XAHq99BU0IIf8aUaUrXhlq2b+Irj4jlKphemyUXb4WCrSq/ZG+21zCvVOz1pXPULHiHZP5sx1b9WwLlVVVEo1yXGjs8v6fnw7WAP5tI12p0sPCXZkMZWIAVoUz/n6TobNLbTJDePLawi82fag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Ga+12Ceg; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-32326e2f0b3so2578066a91.2
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 21:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1755490331; x=1756095131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=euEEBnJ10Ul0dBSAcTDiXwaw0u7DfxF4JtogRsP9Xlg=;
        b=Ga+12CegOv981tW7PqQbRZsm0KJysI16DSQXVpv2HnKMmPXLajzwZADCx47GBJifqf
         O0QMnH1kTt3eF/DIm2zdq8h7lYRHOL8PEQwGles8RnDAACWXMfmRfuXWOTHEcI+fWsk8
         tfaKX5KKQY7WYofJnBqzA+S+14Lve3sBnLTe2QWqVOmRx3R917exPXFH2+2G8mlA9zfR
         D6s1WFXw9XHcMXLd2e9w+hKy+SOIjl4f3NZzuLe1nEOpXp/iq7tcrcZXpIr4GUXZCNEV
         ZvnWH1mZBD0vqVwFdR/VyliJ52IjNvxfUUu1BJJs9uGUKqpS2LD3vHBZFzSm4lg85tLz
         cGEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490331; x=1756095131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=euEEBnJ10Ul0dBSAcTDiXwaw0u7DfxF4JtogRsP9Xlg=;
        b=eQzLyKrJ7AD/ilNM3FLBFRT62hif+U8zoEtVtM0THx8SmDZi1D5vNs2E2iFcaOs3jB
         IGU0sa7YNggY1P7RsT/SkrJpvw0iEqE1bTjZfq+pfN8uWDesbCQY35OIsJDj+3J7BVLm
         jtAUjLXjUQYCKvo/NvE8ez7mk8eynxqcmdFvhfkBlEkft584F17vU4uk2bK987t7gfqF
         bMWDUbMfQSMyHocQCgaEJxf5CcU0uUUTG6RlR03Y685gdB3SyYJaRPDVL6zv6WPFTnHT
         wJ1Deaho/NYjdnQlQMoYZh39yacq4YxAXH7RCi0EPOW9UQtdd/yuiBqSqjUEAYOcKB9p
         T+5A==
X-Forwarded-Encrypted: i=1; AJvYcCVzFZFJ8dVh0izYpR5jMFW2HXsy+/LFj9OaNQRcBF5gxMCX9Kl7kvdsRQeG+wlLzjaz0wjT+WPgoNu4@vger.kernel.org
X-Gm-Message-State: AOJu0YyMG79lNR5zx7FHus9O9ltG+ned+tH3UK0MRNqMUEJ3ZPRxXpFW
	xVAr3rDVTGG4V34q1Wr6bNs5JBaNuNrUWJsBhV6b00FJFpbqh6oJ6Ee6ts9Sd87ld8w=
X-Gm-Gg: ASbGnctJIH4rUST2YFLC4cE5rfwcQz1YElLIeTxtJE/qrzWolI74B/a4K5aa2AgLQvJ
	SfSqKIDcS4V3BghE6PitBVZ5T1ZGDadX3Qon4kbya6Z7kIkldIQJ7Y0BpuPq09kLSykKPrkDXNy
	/kIrOQFjRJFF25NKb2KqyfVJ4XGjcf62VoJxHU5vdVsXU4a4UErIXlTVAwsb+51bQy+FPzlLUTd
	U8nYZulV/2pBcqpNR4/NMEIRq8va7ErWgTE0HEUKSYPuZHx+EGU4c44by/OCDVBl29Uo/7nmhK8
	Ak3snOhteH8rgTTt28Txtj5Z/h3/8gIaG/IEZIdyhYXUARXWJaB41LeytJIAX2Tp/p0jmjuN55p
	LpglllTfKqrMZcxC/AZchSXHmwqeVRQwuJVFs3FlUrBePVgmiRmptU5GPtRXybuDh
X-Google-Smtp-Source: AGHT+IEbCDpwORPaaFZ1NYP5UlV84IBgHfNrd/o9UzgQMcIg0DT5gPsfDu8wRZ7EeXNlc9EJa4PqPg==
X-Received: by 2002:a17:90b:5343:b0:2fa:157e:c790 with SMTP id 98e67ed59e1d1-32341ea8b2fmr14321856a91.5.1755490330522;
        Sun, 17 Aug 2025 21:12:10 -0700 (PDT)
Received: from localhost.localdomain ([122.171.17.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343c70356sm6560972a91.25.2025.08.17.21.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 21:12:10 -0700 (PDT)
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
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v10 15/24] ACPI: Add support for nargs_prop in acpi_fwnode_get_reference_args()
Date: Mon, 18 Aug 2025 09:39:11 +0530
Message-ID: <20250818040920.272664-16-apatel@ventanamicro.com>
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

From: Sunil V L <sunilvl@ventanamicro.com>

Currently, ACPI does not support the use of a nargs_prop (e.g.,
associated with a reference in fwnode_property_get_reference_args().
Instead, ACPI expects the number of arguments (nargs) to be explicitly
passed or known.

This behavior diverges from Open Firmware (OF), which allows the use of
a #*-cells property in the referenced node to determine the number of
arguments. Since fwnode_property_get_reference_args() is a common
interface used across both OF and ACPI firmware paradigms, it is
desirable to have a unified calling convention that works seamlessly for
both.

Add the support for ACPI to parse a nargs_prop from the referenced
fwnode, aligning its behavior with the OF backend. This allows drivers
and subsystems using fwnode_property_get_reference_args() to work in a
firmware-agnostic way without having to hardcode or special-case
argument counts for ACPI.

Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 drivers/acpi/property.c | 29 +++++++++++++++++++++++++----
 drivers/base/property.c |  2 +-
 2 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/acpi/property.c b/drivers/acpi/property.c
index d4863746fb11..e92402deee77 100644
--- a/drivers/acpi/property.c
+++ b/drivers/acpi/property.c
@@ -804,13 +804,35 @@ acpi_fwnode_get_named_child_node(const struct fwnode_handle *fwnode,
 	return NULL;
 }
 
+static unsigned int acpi_fwnode_get_args_count(struct fwnode_handle *fwnode,
+					       const char *nargs_prop)
+{
+	const struct acpi_device_data *data;
+	const union acpi_object *obj;
+	int ret;
+
+	data = acpi_device_data_of_node(fwnode);
+	if (!data)
+		return 0;
+
+	ret = acpi_data_get_property(data, nargs_prop, ACPI_TYPE_INTEGER, &obj);
+	if (ret)
+		return 0;
+
+	return obj->integer.value;
+}
+
 static int acpi_get_ref_args(struct fwnode_reference_args *args,
 			     struct fwnode_handle *ref_fwnode,
+			     const char *nargs_prop,
 			     const union acpi_object **element,
 			     const union acpi_object *end, size_t num_args)
 {
 	u32 nargs = 0, i;
 
+	if (nargs_prop)
+		num_args = acpi_fwnode_get_args_count(ref_fwnode, nargs_prop);
+
 	/*
 	 * Assume the following integer elements are all args. Stop counting on
 	 * the first reference (possibly represented as a string) or end of the
@@ -961,10 +983,10 @@ static int acpi_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
 				return -EINVAL;
 
 			element++;
-
 			ret = acpi_get_ref_args(idx == index ? args : NULL,
 						acpi_fwnode_handle(device),
-						&element, end, args_count);
+						nargs_prop, &element, end,
+						args_count);
 			if (ret < 0)
 				return ret;
 
@@ -979,9 +1001,8 @@ static int acpi_fwnode_get_reference_args(const struct fwnode_handle *fwnode,
 				return -EINVAL;
 
 			element++;
-
 			ret = acpi_get_ref_args(idx == index ? args : NULL,
-						ref_fwnode, &element, end,
+						ref_fwnode, nargs_prop, &element, end,
 						args_count);
 			if (ret < 0)
 				return ret;
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


