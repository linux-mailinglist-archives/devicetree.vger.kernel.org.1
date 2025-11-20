Return-Path: <devicetree+bounces-240473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B10C71943
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 01:42:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AE2054E3DD6
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 00:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A4CF1DDA24;
	Thu, 20 Nov 2025 00:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EqFnDsby"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6388F1891A9
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 00:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763599285; cv=none; b=VDdFz1MLG9J6c9V4oakWQL6p3xvLovUV7ChHaecRl2EJdHhgUantvOabNMLYlNRKcn4R/uqzqE9zDpkodt3wIJHCf+h5atr4BnmfonHjzp5/RqmSK+F7IRl/I32zl2DxMgVnhtmBOi/2ldept2QbIsYz5q682Lmt+xdELeEV2eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763599285; c=relaxed/simple;
	bh=cbxLhEu1L4Kb81XXH31TPTxLcK20qAwRmZjrdrLLan0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=qKcJrW0wFu/yvmktyf8Pmy852V/t1ruV19xZ9ukJIHIypU/vzR3dp3VKS6oq2yxQZt4gKjdWG6qqLRRzjkBpO5eS/PfhYpiSEkDoemxVXzNkX106KB9L62rKN4cYen+Inu+3Cqj+dWsqjOVm1ccrF3h7UtgBUWgKfVqo9oYg5/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EqFnDsby; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-297dd95ffe4so2822765ad.3
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 16:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763599283; x=1764204083; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5RlDJuQZd0htln5phgfffcajqnUqhntFkkh1llCg7yY=;
        b=EqFnDsbyBRzwqoYFPTkhcuvfm6iI2NeorDCnnUdGOjiIxEEl95nEZQXICIP+wd1M0O
         l68BoIveoi5+Qb9LeBFWFWryhl6aJK0fUiUYSCoxVi0+ymoBc1f2afCYtSjEXs5zjeH9
         9LiJ6NNzKJTPqHbAHVW57bgZEu8p+1CcFA2+tI6HUJKObAQ4zl2U3kckhL4RmRXCmG7t
         eWxCiZDWZprZQPNpkeJE0S2YjeUMWzwTRNAakifWgYRWY4/SjnpFL0BGTbyCynE1hPlv
         pTfIwKGnEBdYr9VWdyfqlg5Gf0wXK0swsdvkcIhimmGQyGtIbG73x21E4e0jPrv6n52b
         DPPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763599283; x=1764204083;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5RlDJuQZd0htln5phgfffcajqnUqhntFkkh1llCg7yY=;
        b=RTH11hQKSnXf6Cdqcj3ip7P0SF97uAkphrk1LwZw4VWya5vpIQFUfkEal3/byY5F/S
         fK5lWjrYWti1OCFNfeU/j1ZxROXKi96mrciR6DlujiMqTEnSJCsClX2cWxJ2x7ZN9NAR
         xsgl8tAQY+7MDJYqgKSx8OxxuG0L2z3K+MglkqgIwHpDXwAXEj8jEXn9KZPalc4XruoQ
         XDtmjv5Q3DLFL6PLkaYJcOgTITg1Q2Z9rGCpIgj6FVtXJuHede8R3san9y3jz7Vqv6+J
         KzeqzH/aTmxV1x1KyxmlnTvE6IfGs819AQTWNtsyEnCEoSp99hrbiPzM7uO7ZMb+swuT
         wqHg==
X-Gm-Message-State: AOJu0YzfgQENumAJNN68x8hhgdExHkpAfQahWIRXTtAT5q0nRQLyKzNh
	SUjCUGT9EM9eaU9AQoqojmmA9uW5pmj160w7SeKoozD9Q3i6AbrJnkVpzVJA03xotUA=
X-Gm-Gg: ASbGncuB1u3iCpn+Av21H8OYgOBKnY+Y/PaeRqcox3yl0VdX50kzgFWAEigESmi2X/5
	Vxk9FmTf4tiggzW1zFmRTSFDOPNXBWNhReAA+YTT+arsZl3w4hJpWR4qOAaN/HUSV3Vcwl8dZCP
	/gzQaet0pBJ/yPBrHmAfOK1A3/J5/k4JYY7XifluDtbP+0vhn0rBg3TmEvTJAonZyuXEwvVJa8T
	zjjvMa7QDLH+jdOb0YqSmkob9qeaXhjNb1H7WO0dZ6i3C99m/97Z66Kc30U/bnINUdewQUHfrI2
	lHlx5Nh2TfK6ZSESzbI5DN46WjSSwln0P7k+Wjhqs11h/uVVIKIVsEsmks5UfhQ/UbLChSlEeJS
	DeAWBosVJDpME2/EQu+2wh/1VjddD2E3S8Hrg64X6Ml6O9QLbg6spM0XT1mq82sDQJZvwDdGDAF
	Hwulejni9C
X-Google-Smtp-Source: AGHT+IEpm/8NtbsUYzJgPetyOChIIrYY2ppow/LPXleN+nBLnvVuN5z3sf8IX+Vk/KabuyPrsWcW8Q==
X-Received: by 2002:a17:903:1b05:b0:297:e575:cc5d with SMTP id d9443c01a7336-29b5b0d5d22mr15249425ad.35.1763599282597;
        Wed, 19 Nov 2025 16:41:22 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b2a7ad6sm6252645ad.87.2025.11.19.16.41.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 16:41:22 -0800 (PST)
From: "Kevin Hilman (TI.com)" <khilman@baylibre.com>
Date: Wed, 19 Nov 2025 16:41:07 -0800
Subject: [PATCH RFC] of: Add of_parse_map_iter() helper for nexus node map
 iteration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-topic-lpm-of-map-iterator-v6-18-v1-1-1f0075d771a3@baylibre.com>
X-B4-Tracking: v=1; b=H4sIAKJjHmkC/x3NPQrDMAxA4asEzRVUrpv+rIEeoGvIIBylFTSxk
 U0ohNy9puO3vLdBFlPJcG82MFk1a1wq6NBAePPyEtSxGtzRnYnohiUmDfhJM8YJZ06oRYxLNFx
 bpCtyS95fvDvxGKBWksmk3/+hh+ejg2Hffzkfx992AAAA
X-Change-ID: 20251119-topic-lpm-of-map-iterator-v6-18-a61447423adc
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 arm-scmi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 "Kevin Hilman (TI.com)" <khilman@baylibre.com>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=8588; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=cbxLhEu1L4Kb81XXH31TPTxLcK20qAwRmZjrdrLLan0=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBpHmOx/aOxo/I0ZUbmjbJ/adMveX3iGQ/4/28/Y
 xnYNDy7hlaJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCaR5jsQAKCRBZNxia0/vG
 ZU3iD/9pILnfJNIMRZZzU54QAQpXl5pW5xHZk4kgKkVRHRXTVCYCOhdWwak5zxBzLp5RMl5EBV0
 oJXEq2jF7jdXkU1LPYfkK7PoiWk4Gyb8Ol1Wd54DaCXdAUWDz5fPZMq8Vlrz+dohPkhpKhUDZCi
 R5PxCyY3M7QLJwpFZBdIWUWHoXe6xcWLnfScMO/HrlNIv0PqS0euXZ2rxTs5ZpMmYMyLsmtnOyK
 lECRVcWnY0I0UrqhdjJmupZarcaJV8lca/XlReCgjh9X80V0mvYtwxKiCbC9xGIJV4bigHVvnv5
 scemgoDCptyYgsK69cXwoaRw3FmIlIvGwLKfOUbuGDc5zMfMJgoxHi9/1oLSSgwrH9Td67T+BH0
 gzNBrm8xLViRgevbtHzt0l2Ewuxxgeb2z2gvOQfi78Gw/iyi4VeQ7gw/CUsw5IB5cnrtRXQz/H4
 MbYvjRgWSH3mUB2NBqQv5dyOpYpMyGO/f/BWVUzH9Dx7TlRe48mq9OFqc/bxnq/jBfLXbOUp3Wx
 Nf0DQid7xHefE0CtA13VuT05nCXae3DEkbvPcsRQ3J0//fgM+ViyYs4AyAm452vhVvY7RjGvPN6
 6Bw8+La6lRnbB/VZuL/bfnyWzzZNYdYnOFmteVd0WtZeLtKVLvR7b4sqQXh3kkbMw+WFaqcyX9C
 7h/2WVLEUtnJw6w==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665

Add a new helper function of_parse_map_iter() to iterate over nexus
node maps (c.f. DT spec, section 2.5.1.)

This function provides an iterator interface for traversing map
entries, handling the complexity of variable-sized entries based on
<stem>-cells properties, as well as handling the <stem>-skip and
<stem>-pass-thru properties.

RFC: There's a lot of overlap between this function and
of_parse_phandle_with_args_map().  However the key differences are:

  - of_parse_phandle_with_args_map() does matching
    it searches for an entry that matches specific child args
  - of_parse_map_iter() does iteration
    it simply walks through all entries sequentially

There are likely ways to extract some shared code between these two
functions into some shared helpers, but I'm hoping someone more
familiar with this OF code can help here.

However, before refactoring the shared code, it would be good to have
some feedback on this approach.

Signed-off-by: Kevin Hilman (TI.com) <khilman@baylibre.com>
---
 drivers/of/base.c  | 167 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/of.h |  13 ++++
 2 files changed, 180 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 7043acd971a0..bdb4fde1bfa9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1594,6 +1594,173 @@ int of_parse_phandle_with_args_map(const struct device_node *np,
 }
 EXPORT_SYMBOL(of_parse_phandle_with_args_map);
 
+/**
+ * of_parse_map_iter() - Iterate through entries in a nexus node map
+ * @np:			pointer to a device tree node containing the map
+ * @stem_name:		stem of property names (e.g., "power-domain" for "power-domain-map")
+ * @index:		pointer to iteration index (set to 0 for first call)
+ * @child_args:		pointer to structure to fill with child specifier (can be NULL)
+ * @parent_args:	pointer to structure to fill with parent phandle and specifier
+ *
+ * This function iterates through a nexus node map property as defined in DT spec 2.5.1.
+ * Each map entry has the format: <child_specifier phandle parent_specifier>
+ *
+ * On each call, it extracts one map entry and fills child_args (if provided) with the
+ * child specifier and parent_args with the parent phandle and specifier.
+ * The index pointer is updated to point to the next entry for the following call.
+ *
+ * Example usage::
+ *
+ *  int index = 0;
+ *  struct of_phandle_args child_args, parent_args;
+ *
+ *  while (!of_parse_map_iter(np, "power-domain", &index, &child_args, &parent_args)) {
+ *      // Process child_args and parent_args
+ *      of_node_put(parent_args.np);
+ *  }
+ *
+ * Caller is responsible for calling of_node_put() on parent_args.np.
+ *
+ * Return: 0 on success, -ENOENT when iteration is complete, or negative error code on failure.
+ */
+int of_parse_map_iter(const struct device_node *np,
+		       const char *stem_name,
+		       int *index,
+		       struct of_phandle_args *child_args,
+		       struct of_phandle_args *parent_args)
+{
+	char *cells_name __free(kfree) = kasprintf(GFP_KERNEL, "#%s-cells", stem_name);
+	char *map_name __free(kfree) = kasprintf(GFP_KERNEL, "%s-map", stem_name);
+	char *mask_name __free(kfree) = kasprintf(GFP_KERNEL, "%s-map-mask", stem_name);
+	char *pass_name __free(kfree) = kasprintf(GFP_KERNEL, "%s-map-pass-thru", stem_name);
+	static const __be32 dummy_mask[] = { [0 ... MAX_PHANDLE_ARGS] = cpu_to_be32(~0) };
+	static const __be32 dummy_pass[] = { [0 ... MAX_PHANDLE_ARGS] = cpu_to_be32(0) };
+	const __be32 *map, *mask, *pass;
+	__be32 child_spec[MAX_PHANDLE_ARGS];
+	u32 child_cells, parent_cells;
+	int map_len, i, entry_idx;
+
+	if (!np || !stem_name || !index || !parent_args)
+		return -EINVAL;
+
+	if (!cells_name || !map_name || !mask_name || !pass_name)
+		return -ENOMEM;
+
+	/* Get the map property */
+	map = of_get_property(np, map_name, &map_len);
+	if (!map)
+		return -ENOENT;
+
+	map_len /= sizeof(u32);
+
+	/* Get child #cells */
+	if (of_property_read_u32(np, cells_name, &child_cells))
+		return -EINVAL;
+
+	/* Get the mask property (optional) */
+	mask = of_get_property(np, mask_name, NULL);
+	if (!mask)
+		mask = dummy_mask;
+
+	/* Get the pass-thru property (optional) */
+	pass = of_get_property(np, pass_name, NULL);
+	if (!pass)
+		pass = dummy_pass;
+
+	/* Iterate through map to find the entry at the requested index */
+	entry_idx = 0;
+	while (map_len > child_cells + 1) {
+		/* If this is the entry we're looking for, extract it */
+		if (entry_idx == *index) {
+			/* Save masked child specifier for pass-thru processing */
+			for (i = 0; i < child_cells && i < MAX_PHANDLE_ARGS; i++)
+				child_spec[i] = map[i] & mask[i];
+
+			/* Extract child specifier if requested */
+			if (child_args) {
+				child_args->np = (struct device_node *)np;
+				child_args->args_count = child_cells;
+				for (i = 0; i < child_cells && i < MAX_PHANDLE_ARGS; i++)
+					child_args->args[i] = be32_to_cpu(map[i]);
+			}
+
+			/* Move past child specifier */
+			map += child_cells;
+			map_len -= child_cells;
+
+			/* Extract parent phandle */
+			parent_args->np = of_find_node_by_phandle(be32_to_cpup(map));
+			map++;
+			map_len--;
+
+			if (!parent_args->np)
+				return -EINVAL;
+
+			/* Get parent #cells */
+			if (of_property_read_u32(parent_args->np, cells_name, &parent_cells))
+				parent_cells = 0;
+
+			/* Check for malformed properties */
+			if (WARN_ON(parent_cells > MAX_PHANDLE_ARGS) ||
+			    map_len < parent_cells) {
+				of_node_put(parent_args->np);
+				return -EINVAL;
+			}
+
+			/*
+			 * Copy parent specifier into the out_args structure, keeping
+			 * the bits specified in <stem>-map-pass-thru per DT spec 2.5.1
+			 */
+			parent_args->args_count = parent_cells;
+			for (i = 0; i < parent_cells; i++) {
+				__be32 val = map[i];
+
+				if (i < child_cells) {
+					val &= ~pass[i];
+					val |= child_spec[i] & pass[i];
+				}
+
+				parent_args->args[i] = be32_to_cpu(val);
+			}
+
+			/* Advance index for next iteration */
+			(*index)++;
+			return 0;
+		}
+
+		/* Skip this entry: child_cells + phandle + parent_cells */
+		map += child_cells;
+		map_len -= child_cells;
+
+		/* Get parent node to determine parent_cells */
+		parent_args->np = of_find_node_by_phandle(be32_to_cpup(map));
+		map++;
+		map_len--;
+
+		if (!parent_args->np)
+			return -EINVAL;
+
+		if (of_property_read_u32(parent_args->np, cells_name, &parent_cells))
+			parent_cells = 0;
+
+		of_node_put(parent_args->np);
+
+		/* Check for malformed properties */
+		if (map_len < parent_cells)
+			return -EINVAL;
+
+		/* Move forward by parent node's #<stem>-cells amount */
+		map += parent_cells;
+		map_len -= parent_cells;
+
+		entry_idx++;
+	}
+
+	/* Reached end of map without finding the requested index */
+	return -ENOENT;
+}
+EXPORT_SYMBOL(of_parse_map_iter);
+
 /**
  * of_count_phandle_with_args() - Find the number of phandles references in a property
  * @np:		pointer to a device tree node containing a list
diff --git a/include/linux/of.h b/include/linux/of.h
index 121a288ca92d..79470218089c 100644
--- a/include/linux/of.h
+++ b/include/linux/of.h
@@ -384,6 +384,10 @@ extern int __of_parse_phandle_with_args(const struct device_node *np,
 extern int of_parse_phandle_with_args_map(const struct device_node *np,
 	const char *list_name, const char *stem_name, int index,
 	struct of_phandle_args *out_args);
+extern int of_parse_map_iter(const struct device_node *np,
+	const char *stem_name, int *index,
+	struct of_phandle_args *child_args,
+	struct of_phandle_args *parent_args);
 extern int of_count_phandle_with_args(const struct device_node *np,
 	const char *list_name, const char *cells_name);
 
@@ -786,6 +790,15 @@ static inline int of_parse_phandle_with_args_map(const struct device_node *np,
 	return -ENOSYS;
 }
 
+static inline int of_parse_map_iter(const struct device_node *np,
+				     const char *stem_name,
+				     int *index,
+				     struct of_phandle_args *child_args,
+				     struct of_phandle_args *parent_args)
+{
+	return -ENOSYS;
+}
+
 static inline int of_count_phandle_with_args(const struct device_node *np,
 					     const char *list_name,
 					     const char *cells_name)

---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20251119-topic-lpm-of-map-iterator-v6-18-a61447423adc

Best regards,
--  
Kevin Hilman (TI.com) <khilman@baylibre.com>


