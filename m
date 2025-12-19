Return-Path: <devicetree+bounces-248194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E855CCFCAB
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:30:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8CC3930C1286
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:26:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4547F32D0DA;
	Fri, 19 Dec 2025 12:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="S18wUPp0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B2C32C30A
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 12:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766146700; cv=none; b=ogaU/SwOo0rLDpsWwZ+outRSSXBs+FxhbuxJnywlQREpGnkJMAywa23s7+kitPwV9IyfWCp9t3yaqUJ9zu8YanDME0/hC8WLzz9UbNUHUA+T07hLHQzylynBsQJWuPcSqgadlAuh/44L/ZUOjEZi3HCcs9ClM6lrl13pg9DrI1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766146700; c=relaxed/simple;
	bh=NqYpGRwNiJZMNHsNDQ6mieRhnvQaiij1LSadtAJlSSc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LIwEf5F4MP/b45+j2dfvRXmru6ukjfyk9ZxkEeSntiKQW/aj466JTLAZ+j2zbu9aXfugtpxSXjnPY1sdwAyDyUi+QD9PY1W7uf6brOOgWqf11CajxDzgbgu7vCPP+vJm0kwnlCvjAPUOd6eHUr33maQZKOWrBbd3YVd6GgJj7ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rasmusvillemoes.dk; spf=pass smtp.mailfrom=rasmusvillemoes.dk; dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b=S18wUPp0; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rasmusvillemoes.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rasmusvillemoes.dk
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5943d20f352so1980959e87.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 04:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1766146696; x=1766751496; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eO7uXcZKUOMnaSXMHDCw019HIcNxVBD6hOyBH7bitFI=;
        b=S18wUPp070C8lolPtp9ZB0YeDqH0jNUMDCGGdZWpB4xsnXdYEKdFsw0/KmTF5GOt3j
         lxD7xUT5aEWFUSbdVE/eBBjNfFLi77hrb1eLsVm7/UVqUVQJPSkG1I+0c8zsDBCikNFT
         cwj0/ivhDF8NQYt8V7nVw3BbhMNaCsriCMXXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766146696; x=1766751496;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eO7uXcZKUOMnaSXMHDCw019HIcNxVBD6hOyBH7bitFI=;
        b=fzB3QJf0fzkgaxyIbtDKCyNmAE9h2vTFT6Nw8+0ddSi4ZkvYLkcKB4VKPDOhkLsZ68
         XVjQR7aearf9MCAviU3KTaM3tv5W2/yt0UWfnrMJhUKvv91J5Y0PufYe6g9vxzY5hnQj
         +szn5zhiDoSIKKumi1/NfRij3lJ8TqjvlM4LLbPL5RYvFsORhhhqOLKP4qYGz8bIVOR6
         9be/m0Kkf9AzuUQz3obOAWDD6TIQxeLE2nZmOw3K8dMgl5UZ115vmHEr1Kba6Sj1qwdq
         CJ8p98AHV28c36FVoETOGEZeLeX2bvtjgx2lG1JBBzLFBP44WctgxrXBBEFKE9IOBdP2
         yfng==
X-Forwarded-Encrypted: i=1; AJvYcCW9jL6ncbh4OJgYcCNiEpqc6ctO0vdbHlo2KpBGR1OCySxe58zLk4imoktSIlwcq22/uj0D9wo9OwQz@vger.kernel.org
X-Gm-Message-State: AOJu0YwQDZy4j7waTdGUCJvgN3egUtI++zlENVUwjWv+LIGM+QIDgPSi
	c3KFF3uP8ootKkFY3IggnW9FU1v3hj/Z2MCxueWgDOvi8FzMkq2Ij7FpnvTckP5tuI8=
X-Gm-Gg: AY/fxX7z2I1yr0+8tRKKfzZsa2QcaUpKXKCNGH8/41N8eFDIpFsJXIcKAr0s6p3d8dg
	OSKZm4rFUBAVAC4BobBRusnByKytSQFWHRtPZlhbATkkwWgIh9i7LxgoQVjsV/yi0djC5hPlkf1
	wL/n4GuVtkKl3q/w+4xIZduR8QlLyzo02MWD6EZ/eCuGRXMk+IyRPW6ei29qSlaBco0FVaPXVpN
	ambnoJWz7tzXjprSymom5vZYC4IqA+KPS3vqd3hx49K5r1zqECwQUJb1GB2ZEUgtchgVJK9udch
	pJUk4M8aMeCRG8VgUfV8UEgVzI+rUj2Q2bZ75AP1bn/2nMO77zENyGRtxret2odd13d5V7FkXMQ
	ZR7kBC4qKd/hsziuKoBUuy/OUXGV9+TD5PItdtvLu3oyQm0CCIyIEV2GReMun1A8ZFOe5aLVDre
	EcPSAFHx7SKYBjWQ==
X-Google-Smtp-Source: AGHT+IHYJtQhTXdrwBQDN1QFHJOMYQGk+5jKQPR0/HQa9wAXumSUO16WYiRWgoxzde8j3zq4sd+e+g==
X-Received: by 2002:a05:6512:3e06:b0:59a:107a:4593 with SMTP id 2adb3069b0e04-59a17d722admr1039997e87.4.1766146695536;
        Fri, 19 Dec 2025 04:18:15 -0800 (PST)
Received: from localhost ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185dd90esm670000e87.31.2025.12.19.04.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 04:18:15 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: [PATCH] of: property: stop creating callback for each pinctrl-N property
Date: Fri, 19 Dec 2025 13:18:11 +0100
Message-ID: <20251219121811.390988-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

While not a lot in the grand scheme of things, this eliminates 8*2
pointless function calls for almost every property present in the
device tree (the exception are the few properties that were already
matched). It also seems to reduce .text by about 1.5K - why gcc
decides to inline parse_prop_cells() in every instantiation I don't know.

Supporting double-digit suffixes would still require tweaking, but it
does match pinctrl-9.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/of/property.c | 32 ++++++++++++++------------------
 1 file changed, 14 insertions(+), 18 deletions(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index c1feb631e383..7c6fe4529d73 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -21,6 +21,7 @@
 
 #define pr_fmt(fmt)	"OF: " fmt
 
+#include <linux/ctype.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
@@ -1358,15 +1359,6 @@ DEFINE_SIMPLE_PROP(extcon, "extcon", NULL)
 DEFINE_SIMPLE_PROP(nvmem_cells, "nvmem-cells", "#nvmem-cell-cells")
 DEFINE_SIMPLE_PROP(phys, "phys", "#phy-cells")
 DEFINE_SIMPLE_PROP(wakeup_parent, "wakeup-parent", NULL)
-DEFINE_SIMPLE_PROP(pinctrl0, "pinctrl-0", NULL)
-DEFINE_SIMPLE_PROP(pinctrl1, "pinctrl-1", NULL)
-DEFINE_SIMPLE_PROP(pinctrl2, "pinctrl-2", NULL)
-DEFINE_SIMPLE_PROP(pinctrl3, "pinctrl-3", NULL)
-DEFINE_SIMPLE_PROP(pinctrl4, "pinctrl-4", NULL)
-DEFINE_SIMPLE_PROP(pinctrl5, "pinctrl-5", NULL)
-DEFINE_SIMPLE_PROP(pinctrl6, "pinctrl-6", NULL)
-DEFINE_SIMPLE_PROP(pinctrl7, "pinctrl-7", NULL)
-DEFINE_SIMPLE_PROP(pinctrl8, "pinctrl-8", NULL)
 DEFINE_SIMPLE_PROP(pwms, "pwms", "#pwm-cells")
 DEFINE_SIMPLE_PROP(resets, "resets", "#reset-cells")
 DEFINE_SIMPLE_PROP(leds, "leds", NULL)
@@ -1380,6 +1372,18 @@ DEFINE_SIMPLE_PROP(power_supplies, "power-supplies", NULL)
 DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
 DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
 
+static struct device_node *parse_pinctrl_n(struct device_node *np,
+					   const char *prop_name, int index)
+{
+	if (!strstarts(prop_name, "pinctrl-"))
+		return NULL;
+
+	if (!isdigit(prop_name[strlen("pinctrl-")]))
+		return NULL;
+
+	return of_parse_phandle(np, prop_name, index);
+}
+
 static struct device_node *parse_gpios(struct device_node *np,
 				       const char *prop_name, int index)
 {
@@ -1503,15 +1507,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 	{ .parse_prop = parse_nvmem_cells, },
 	{ .parse_prop = parse_phys, },
 	{ .parse_prop = parse_wakeup_parent, },
-	{ .parse_prop = parse_pinctrl0, },
-	{ .parse_prop = parse_pinctrl1, },
-	{ .parse_prop = parse_pinctrl2, },
-	{ .parse_prop = parse_pinctrl3, },
-	{ .parse_prop = parse_pinctrl4, },
-	{ .parse_prop = parse_pinctrl5, },
-	{ .parse_prop = parse_pinctrl6, },
-	{ .parse_prop = parse_pinctrl7, },
-	{ .parse_prop = parse_pinctrl8, },
+	{ .parse_prop = parse_pinctrl_n, },
 	{
 		.parse_prop = parse_remote_endpoint,
 		.get_con_dev = of_graph_get_port_parent,
-- 
2.52.0


