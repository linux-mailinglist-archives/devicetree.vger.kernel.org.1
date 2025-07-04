Return-Path: <devicetree+bounces-192928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F3782AF88BD
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 09:09:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B639A7BA0BF
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 07:08:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B42CB2749F9;
	Fri,  4 Jul 2025 07:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Xpycg0q/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D5327511E
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 07:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751612831; cv=none; b=nMaGOV9WskHs5jHIlEhI3lEnsf6xCXObP7p8imYjZC4Rsi3QE6w9dJcuZpf8D6RiZgQZydzDRWBnUdFRcqUUghU+ko3HvFrpUGWpM6ZzO0Ini+8zaJipmvMO8GmhcyrakWF67FvJkvpZ8nMXtGl2L197BP77+F+qDTmkIYfl3M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751612831; c=relaxed/simple;
	bh=169PDjupJ8pNp0wACYdaBOi2G5j5ACOyZXywYUb0nJM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FtX2khtoF8plP4P97Yx/+bGfMNYqxaX1hct005GhubZztXF3bwZYx4JYhY544szALLjC/2d3UNNc+oep8jVvpzHCXCUrT/BRLUefZqAXbL1QzwyaS3tu4KgAohckHnmtDQbTDmN5YE/AYRfhFDIPEUdbK9nCHCjPmyAtNibn8Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Xpycg0q/; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-315c1b0623cso907782a91.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 00:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751612829; x=1752217629; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qNcclU2G18Bdovh3QAsek7AK/q114CkADd+BrTGwXao=;
        b=Xpycg0q/HWdHHvv6tbsoU/uiBy2tEVhatOJsw2uoaL537pgNT6y/0lQTeJ8jx03irM
         J8AVhXk9X7foqKcXvc+TOjkTgztEX1JVr9ykZ/Ug+jf8+yswhgGgW5GtFd5e4UdPt8Sf
         fUQOerbOqr4cUz3Q70fK06TPZhB/u5V955dm72PdR5sBWuqEn0JwAr+puO5STOgTRrRE
         rkjvdBF1zAAEO+bbvr1UnYMGcfeKBAafUI3cZwmK0MfJVCISeCtW5yWxUPOJApH5riZh
         itctuYTqXaOFnV95nfzH1CAgtveSbbWS9CHLQG4gIVzsNUUN///KRPnpTCopQrnCnuf3
         o3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751612829; x=1752217629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qNcclU2G18Bdovh3QAsek7AK/q114CkADd+BrTGwXao=;
        b=ZWbN3Kz1CThp/V0uWyehu0BiOTmzHNPbKybpnO38MNdLuHm5osLjNesPqrpH4bEOy+
         WOiM0b1wU6GfldZSrLfnaQV2uz7kZ5hbg1F0fFVSXD3zOHQ3gTL86F91EnyICxte8NbT
         KRLIm2s8ik8pO4ryrOjkfrmcrSOTo5FvdpIJJJGCFDRgpE5v3ZeraNDvzuEQKWNSb2Fh
         WAxfI6QbSzgKCJJDA5Cify1wrI6e8m0UpKE/lfYmnKGmGWIi1FvMKo9ro/5eUDvkSYM9
         EpE9qnAWjda5R1a6gEEwJlXDypBcPF+wPXeUaAjhGfAqpQCWfnceNvO21TFYcqbs++31
         ANBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVD7uDbl5pBQ7qLtrd2e1baaewQW0LzI6TmL/K9Z2iAzKeBmuMKmLnKVqRU7k3CepEftQWyqkmpwJOw@vger.kernel.org
X-Gm-Message-State: AOJu0YxNjCmD+Z/WXWiDL9jLU+YBB17kNCragqSn7hUlUUigUdaEDSMW
	CxSW2llUqNlqmNRsgJnjVNEfZkJIQ4JIKkPbmFqFBV9ZanoOKEQsHavbyXMhK0nsWMo=
X-Gm-Gg: ASbGnctYw5GVuqFSRuv+43oh8saArnMwrMME2aBv5ja++zxIxtcCu94Fmn4t4lN63u1
	hq0o2wZ+U6INEqhAr+f1fFZN9UN2PeAzN9hylBPLIupsvyOpaVh7+HZxThEwaXY8WoqAbodlJvS
	wevEW5xy7gb7dJB6BLucdnInnYyMxW/kwqFaoMMjRboeIyEX/sxyEHkBhRcPy5DacycLFCpkjKf
	HfNzQKBY/qfxBBDo50ZtFnJaMZWtojl8NkyVzUx22T0VrhQIhBBNQoUyRRtmGXS3n3m+6EzWX4v
	D04rPpWn8ax6hRYCQD6gGY8LdCA02ObRd73SyB1rYVbAjv2Qc7NUvxTskeF3HqONaZBAdW83Gso
	eGwk3/G0f+GlQyZO9VwgNzv8zaw==
X-Google-Smtp-Source: AGHT+IGrP/l0dKEOOpvLsvS4JGiMBKWICRCAtYJOylbaG7ycll8dUnb8u46RulbU17ZZf/1gB5ixPQ==
X-Received: by 2002:a17:90b:33d1:b0:312:639:a064 with SMTP id 98e67ed59e1d1-31aaddb4ac6mr1562105a91.28.1751612829169;
        Fri, 04 Jul 2025 00:07:09 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.166.196])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31aaae59a93sm1358697a91.12.2025.07.04.00.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 00:07:08 -0700 (PDT)
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
Subject: [PATCH v8 15/24] ACPI: Add support for nargs_prop in acpi_fwnode_get_reference_args()
Date: Fri,  4 Jul 2025 12:33:47 +0530
Message-ID: <20250704070356.1683992-16-apatel@ventanamicro.com>
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


