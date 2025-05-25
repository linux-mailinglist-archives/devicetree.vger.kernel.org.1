Return-Path: <devicetree+bounces-180303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1D4AC332A
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A26273BA898
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 996BC1E7C10;
	Sun, 25 May 2025 08:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="fGoPA0fm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E6E1EBA19
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748162970; cv=none; b=Kc0amwYy89/RPGDJpPedfeOakjoCwafqJ3X85QJg84aqgRV7s9Z06fNpi8asKLeZltIEkPHrag99Zza95I6xDIMI16cMJbo1IVEilZplPlcN6p4aawqGHT+7VY16tCWuKF+jfCrh0WJTqPnuMSdu6oIBGP3a6ZS7DsfcWOZKHtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748162970; c=relaxed/simple;
	bh=MuJyfj0pHWnRkEcbvrQA/wJDke7vM4uboKRNMUCLA5c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GwFkMHuvO7GA6i9ovx8EqKs9He0x/M4rKcGQjIcxEMyhCFEa3a1815vqdLYXeHBbX1bRusfNUdOwp5vjRjI3r4NYaJRtR9qTAOfVYw5dQbV3tZBT4VoF5mwNnAcu3nLBuYam9U7+UaL4e9BzzKfa1xDKeRmanESmvkJS7YDyVv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=fGoPA0fm; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-742c9563fd9so783537b3a.3
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748162968; x=1748767768; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Te183q+oK/UUiJXJqywViKcAzUsX+o6NlP4bjtzs3DM=;
        b=fGoPA0fmjjwK+E+9bNeSEzJcs32jRrsqdD5lLmYpQCBFV5VmpbxIYaCxzldiyT2Ks2
         7vOzyWi3DGvKplEBfGZtiCqJqZGlMNFtWxB4p4E8WdWRK9WWumNSn+1uOqhejx3giTUl
         KvB4d99JXwEUQ00Mi055W18WOT09P3/Ko+qV1N/gsOiS+oQ9xOwXcQbmtT5ofxMjmnyV
         HcgAvSpyleQ2tbqOyeyGAiQ6m2h/xLJv6DuS8Z0Ev1fR+BZrlp2Qjax1eA9kHGvLaIPG
         5WXJck0keVQuq/5OPcGlfPmt5fFMkQH79MfkHHo1m1FU4WkG0f8UhEtvid2tVveTP1yd
         /8fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748162968; x=1748767768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Te183q+oK/UUiJXJqywViKcAzUsX+o6NlP4bjtzs3DM=;
        b=IXZFiVkAIrSmkkRKip13++Le7Q9EYp90tq9PJnW5+U1k4y2glMbj4I8sELASaoWJAd
         ONkRG9uD/VdBRMDLQ14ZZzcUnJ/t4igTVZVwlr0WaQ/nKSQrNDLHIcva/nHUWVlP+dlu
         vLQG9TWdwuc5ivdimgIDz3k31If7n9E20A2Z3tAKE6ahcUauC6VKDMOmzuYtnWzGlqf9
         gXquC4EzyCCFR2kddRKs4R7NH/OVVPWk1XlUgM8WtKoYtZyrzB80SzZ+U/UkZyChtSjd
         9NBQnZ1wOejuO3XqTUnCzG+UWP8SUTd/cLR60KLdXt1XNoHMLxriOuAglrXDkvFGx1Yw
         +Y3A==
X-Forwarded-Encrypted: i=1; AJvYcCUTaKStE2k6m1o0I4PXrYpfs/ZY0zqcm4yP2I2dNsmHot3x7kaRmwO1PTw+/82AhbhZTimz5I+hZhcn@vger.kernel.org
X-Gm-Message-State: AOJu0YwY4mGNsFlYGQsxIL0wzCrs1+qQAErKiWicIixFi0MN1kct1WRn
	ClabLvuB2o9fC7gV+p1P9fr34JEi08FsL2fXMziB7uNxcmdGMlELxRJBf44GsQS4QMo=
X-Gm-Gg: ASbGncu0IzAETJnbesws5AfRWTRjrxHt15gsLTRmAXLtL+u+dO2YFip+2HGZWJ7yWOE
	1fM7zqATCKyKfMIWBYJM0k5Fc48EHuRRf84sFWUIUPwMQ/Ntqq7GYgg9VL0ccAMIPY+xDD1woW3
	EG6F0Z1BBphAH3X6a7Np3IV+1Gs6ip1M4sN5ub96xyArWQbd1COeT+4NRC9VV0VRDhDCdAe4POd
	Iv2Oj8v2Fha65/mQVBwEN/lgLBITxwoROm+SlhqJv2kz3P/Ot6jNuByiK5PlGZypWO8yabNBEBC
	WX5fdZzTx8M/Trk85wa3sGhjeTZ+oR97XmogQ0Y/rS7zGMN8azt6Tv1KExtlOIPQ81BLjZFNIkU
	VoCw4wCHn
X-Google-Smtp-Source: AGHT+IHvodyfLDw8dU8rN0uEdUKyajUEF59LEZ7NqCCr7saQPd/1HfpNeU3hAKm+Asik2TwpoaM2Sg==
X-Received: by 2002:a05:6a21:3399:b0:216:185c:af0b with SMTP id adf61e73a8af0-2188c3b494amr8573479637.39.1748162968385;
        Sun, 25 May 2025 01:49:28 -0700 (PDT)
Received: from localhost.localdomain ([122.171.22.180])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6dd83sm15250627a12.18.2025.05.25.01.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:49:27 -0700 (PDT)
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
Subject: [PATCH v4 15/23] ACPI: property: Add support for cells property
Date: Sun, 25 May 2025 14:17:02 +0530
Message-ID: <20250525084710.1665648-16-apatel@ventanamicro.com>
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

Currently, ACPI doesn't support cells property when
fwnode_property_get_reference_args() is called. ACPI always expects
the number of arguments to be passed. However, the above mentioned
call being a common interface for OF and ACPI, it is better to have
single calling convention which works for both. Hence, add support
for cells property on the reference device to get the number of
arguments dynamically.

Signed-off-by: Sunil V L <sunilvl@ventanamicro.com>
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
index c1392743df9c..172dfb950328 100644
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


