Return-Path: <devicetree+bounces-181368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A085AAC7394
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 00:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D0913BF044
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 22:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B864223DE2;
	Wed, 28 May 2025 21:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vInDF3eo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E81722371C
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 21:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748469548; cv=none; b=rvY9fC6z7UU36OM8MP2U1kcN6T7akH+1mRcbdrl1U10IvxFzHXx6dHCkQVusd2bBFx10thkcje54Wq4rlQUbn5rO8Q3fbJqgEwAxNhvSyRDtQ7chxxLNVem++tXsScHdl0X2LXBZsYSAfW1CG2MFfF01Xkop+Zn1rLt9NhoCrBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748469548; c=relaxed/simple;
	bh=gzWLmhJuLFB1Ar69s8TsaAQnl/ba30/fxc95H6KJMhI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AoTJqs7AJQUFnZeidK7uQGQV7az5kJE+m8NZ0byYkAwyIS42IPcGtT07rc4WIAeRrw2uEomA/02g1dmXDEl0EOognBd8yXpmyeJVYoDfrE+coX4sxVUrWl8qPHZI5Gh0tN75bv5WQ4BRkzfOxDeMB8xmfRSJPHoVPeU7LuwE0G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vInDF3eo; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-742c9563fafso167929b3a.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 14:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748469545; x=1749074345; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mQrOFsHtLRbdh4NDBUUICdCoV2WKAutQiNFcBpOyHeA=;
        b=vInDF3eoiC7vQd5lnsfQhHv8FRdtwUzJrFHvBDsXLUQ2AVNdmYnmetKNgD1T7ZCsM6
         Y4tZ2ASCuJ+UFlrSMtALA1Tyb/hLhY4Stbzimyu0yx2RaILHMYfcMl2VC8rBy6PIcK7v
         7484srrCXG4M7P2Ldk7TGrwCuqecE6XUHxPtRA6YDb98Pdg/fKOg0XdSU8aso7+Bk+Uq
         m61Uw3Ar4lZwYJr6b3fIDYdqI53QsCSUn62DcsuyT3V+P25CEbBX14DmtOnxiR1pf4aO
         ZmLmrobpnhknxeU3oSXw2F+XCuXjpO4xcH0yPETZLyVT07Ud8oJs/0F03sDcLvR+Te9I
         TdCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748469545; x=1749074345;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mQrOFsHtLRbdh4NDBUUICdCoV2WKAutQiNFcBpOyHeA=;
        b=nKQYpEoz3j4q0aiU+VyT7fcP7kOnlTDhqFIzjL2Umr5Rx2nZbIivklJPD3mBIMHbCg
         PrcXdmPZhtxo36HvM9KKVrNbHJtmmwtN4iUacBczmK02TGJrkzmy1JxAeS8E7m2thTeV
         LwZY81H62rSMAde2tjphWAGtPFr6qt3wS0GnQavV06GJCEImoUQY2wROrgX4YlvGIob8
         4qvOtr4XPgJK6++wQtphbN0Pbo7A8Nii/+ih7H7nxnDUg0+NrHOkX3ByTU44H1u/RBWS
         1vAFI85AYqpVJen90oZ15VKqXczU8X+F/Ph0Eprv3pJI23YhgRgYiUVlfHjyoTszYLVa
         tisg==
X-Forwarded-Encrypted: i=1; AJvYcCUU91alGQsY1n6skR4QZxyYIZANZf+ca4YJa4kKuPZjMfx2zUA8m5IMuOXL9IDTFJtsS3IvKFi7xfEJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxA61UR7D8w/wrF2VYbjUI+QE7t6XKHxDqnLvXFLe1Li82O5hZG
	rvPpBTNvARsDCmu6ULZxGdoZ4wpBRBEw4msyW1W5qunhdmhFg17GOXoN8HrUdUDhrLur21F7To0
	dWlf5AZgdFw==
X-Gm-Gg: ASbGnctQpkQKJImf7EQaRbmauywGDh8vww5v26I5e5Ld7ENMgQZB2R0IKfM7qgTaYAH
	fXv453s4qDMdaF74X5O73cw+v6vQ5why6pdQF/jxvS4jVnWHiMBKxakBUs0WYGqsK/UE+wNpm0O
	iYKav0h5RWfAI/LPahCjpSqPeEzqrtrqJ1TrFY9lLWBcQjJoWGjOv6PLaXyb0KPt/2YW6tdWMLy
	O0yyf5awFtRoK98LnCtjE8ksefhvMQp3A0vlP7DghnUiVyFggT/Rn0KEqUSWOoQPxjcrTO2klpf
	6DfCOc5qQrWJZx8urA5OotloTtLV2mZ2MTk6CObnsYGqDr+69A==
X-Google-Smtp-Source: AGHT+IHBg4RrGwJlNf2gJnu/ZJ3H1DruaZXnsfy7aB2sV1yzQ2S2Up1LiM/kRoyCaMsJH7r9giUA6A==
X-Received: by 2002:a05:6a00:3d4e:b0:736:7270:4d18 with SMTP id d2e1a72fcca58-746b4041c8fmr5373730b3a.14.1748469545150;
        Wed, 28 May 2025 14:59:05 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afe96468sm75394b3a.27.2025.05.28.14.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 May 2025 14:59:04 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
Date: Wed, 28 May 2025 14:58:52 -0700
Subject: [PATCH RFC v2 2/2] pmdomain: core: use DT map to support hierarchy
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-pmdomain-hierarchy-onecell-v2-2-7885ae45e59c@baylibre.com>
References: <20250528-pmdomain-hierarchy-onecell-v2-0-7885ae45e59c@baylibre.com>
In-Reply-To: <20250528-pmdomain-hierarchy-onecell-v2-0-7885ae45e59c@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, arm-scmi@vger.kernel.org
X-Mailer: b4 0.14.3-dev-d7477
X-Developer-Signature: v=1; a=openpgp-sha256; l=7324; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=gzWLmhJuLFB1Ar69s8TsaAQnl/ba30/fxc95H6KJMhI=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBoN4cm2AYE2wJbHBDrB57dgct2NNMJ3jvavEoin
 WbdlSgT2ECJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCaDeHJgAKCRBZNxia0/vG
 ZVbwD/9Ve7gGt+s4kRkVZ38iJYN1bRILml5SNL+qkea8ksbu4ib9fuaMrJHpfDaAlGqVkubDhJW
 mLODpZ3+HeigyPI5rgPyI8wv96J+YNVHeityTv46qmap/KOkVyghslUNaEKF0VUQWvbMQUauFLS
 YYqEp8SyM6ZQjGG2JK+pNBrDrzVZRqhXbTHWd2jTDBgRcjhaHNczGYh/r79VoBEdvBWnIPgQ3Mk
 kBTcJEeGAkK4kHkJPG4QOP9595NYfNCtWLkScRKK68g62nEmvEkJGioA8qYRQvA+Mf7zHeQBJ3F
 +olHgFes4bcaezIRo3UCsXa4mBfvkqhSPKqbTfo7TYn3H7sOuWXdkbdlUQIDl0doe/Q/U8FyoCM
 ZBm1uw9hHvIbFecdWsi9bv1DJKhk6E8gbfTFWgxYS+cpVQaT8O+VWNzQ6CkOh2Rpwv4H3iP3FbI
 IHWq2Ff1JVgj0syByPhWnZFGEcfDcbRVGMl8Sw7K0Sj3sAtHyU6DhiroEDBYqj0JgnI0ggT2Qhq
 CKPAAGd4qgZhKCzmOjEdgCPmxLC9KQgOKPEJrSYqeKmtQ00GUVxC7qlM65iX+zxbFnERi3IVNMB
 ALcmuwLZ23MORFP8KNMTFZYI48643mc4MSXeINLvdq9+eF0OG3pNFRKqmxlcklgnGdEt+CuzMdU
 XcDt5mFCIQ8Dv2Q==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665

Currently, PM domains can only support hierarchy for simple
providers (e.g. ones with #power-domain-cells = 0).

Add support for oncell providers as well by adding support for a nexus
node map, as described in section 2.5.1 of the DT spec.

For example, an SCMI PM domain provider might be a subdomain of
multiple parent domains. In this example, the parent domains are
MAIN_PD and WKUP_PD:

    scmi_pds: protocol@11 {
        reg = <0x11>;
        #power-domain-cells = <1>;
        power-domain-map = <15 &MAIN_PD>,
                           <19 &WKUP_PD>;
    };

With the new map, child domain 15 (scmi_pds 15) becomes a
subdomain of MAIN_PD, and child domain 19 (scmi_pds 19) becomes a
subdomain of WKUP_PD.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
 drivers/pmdomain/core.c | 166 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 166 insertions(+)

diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
index d6c1ddb807b2..b8e505516f3d 100644
--- a/drivers/pmdomain/core.c
+++ b/drivers/pmdomain/core.c
@@ -2441,6 +2441,9 @@ static LIST_HEAD(of_genpd_providers);
 /* Mutex to protect the list above. */
 static DEFINE_MUTEX(of_genpd_mutex);
 
+static int of_genpd_parse_domains_map(struct device_node *np,
+				      struct genpd_onecell_data *data);
+
 /**
  * genpd_xlate_simple() - Xlate function for direct node-domain mapping
  * @genpdspec: OF phandle args to map into a PM domain
@@ -2635,6 +2638,14 @@ int of_genpd_add_provider_onecell(struct device_node *np,
 	if (ret < 0)
 		goto error;
 
+	/* Parse power-domains-map property for Nexus node mapping */
+	ret = of_genpd_parse_domains_map(np, data);
+	if (ret < 0 && ret != -ENOENT) {
+		pr_err("Failed to parse power-domains-map for %pOF: %d\n", np, ret);
+		of_genpd_del_provider(np);
+		goto error;
+	}
+
 	return 0;
 
 error:
@@ -2734,6 +2745,161 @@ static struct generic_pm_domain *genpd_get_from_provider(
 	return genpd;
 }
 
+/**
+ * of_genpd_parse_domains_map() - Parse power-domains-map property for Nexus mapping
+ * @np: Device node pointer associated with the PM domain provider.
+ * @data: Pointer to the onecell data associated with the PM domain provider.
+ *
+ * Parse the power-domains-map property to establish parent-child relationships
+ * for PM domains using Nexus node mapping as defined in the device tree
+ * specification section v2.5.1.
+ *
+ * The power-domains-map property format is:
+ * power-domains-map = <child_specifier target_phandle [target_specifier]>, ...;
+ *
+ * Where:
+ * - child_specifier: The child domain ID that should be mapped
+ * - target_phandle: Phandle to the parent PM domain provider
+ * - target_specifier: Optional arguments for the parent provider (if it has #power-domain-cells > 0)
+ *
+ * Returns 0 on success, -ENOENT if property doesn't exist, or negative error code.
+ */
+static int of_genpd_parse_domains_map(struct device_node *np,
+				      struct genpd_onecell_data *data)
+{
+	struct of_phandle_args parent_args;
+	struct generic_pm_domain *parent_genpd, *child_genpd;
+	u32 *map_entries;
+	int map_len, child_cells, i, ret;
+	u32 child_id;
+
+	/* Check if power-domains-map property exists */
+	map_len = of_property_count_u32_elems(np, "power-domains-map");
+	if (map_len <= 0)
+		return -ENOENT;
+
+	/* Get #power-domain-cells from this node (should be 1 for onecell) */
+	ret = of_property_read_u32(np, "#power-domain-cells", &child_cells);
+	if (ret) {
+		pr_err("Missing #power-domain-cells property for %pOF\n", np);
+		return ret;
+	}
+
+	if (child_cells != 1) {
+		pr_err("power-domains-map only supported for #power-domain-cells = 1, got %u for %pOF\n",
+		       child_cells, np);
+		return -EINVAL;
+	}
+
+	map_entries = kcalloc(map_len, sizeof(*map_entries), GFP_KERNEL);
+	if (!map_entries)
+		return -ENOMEM;
+
+	ret = of_property_read_u32_array(np, "power-domains-map", map_entries, map_len);
+	if (ret) {
+		pr_err("Failed to read power-domains-map for %pOF: %d\n", np, ret);
+		goto out_free;
+	}
+
+	/* Parse the map entries */
+	i = 0;
+	while (i < map_len) {
+		struct device_node *parent_np;
+		u32 parent_cells;
+
+		/* Extract child domain ID */
+		if (i >= map_len) {
+			pr_err("Incomplete power-domains-map entry at index %d for %pOF\n", i, np);
+			ret = -EINVAL;
+			goto out_free;
+		}
+		child_id = map_entries[i++];
+
+		/* Extract parent phandle */
+		if (i >= map_len) {
+			pr_err("Missing parent phandle in power-domains-map at index %d for %pOF\n", i, np);
+			ret = -EINVAL;
+			goto out_free;
+		}
+		parent_np = of_find_node_by_phandle(map_entries[i++]);
+		if (!parent_np) {
+			pr_err("Invalid parent phandle 0x%x in power-domains-map for %pOF\n",
+			       map_entries[i-1], np);
+			ret = -EINVAL;
+			goto out_free;
+		}
+
+		/* Get #power-domain-cells from parent */
+		ret = of_property_read_u32(parent_np, "#power-domain-cells", &parent_cells);
+		if (ret) {
+			pr_err("Missing #power-domain-cells in parent %pOF for %pOF\n", parent_np, np);
+			of_node_put(parent_np);
+			goto out_free;
+		}
+
+		/* Build parent_args structure */
+		parent_args.np = parent_np;
+		parent_args.args_count = parent_cells;
+
+		/* Extract parent specifier arguments if any */
+		if (parent_cells > 0) {
+			if (i + parent_cells > map_len) {
+				pr_err("Insufficient parent specifier args in power-domains-map for %pOF\n", np);
+				of_node_put(parent_np);
+				ret = -EINVAL;
+				goto out_free;
+			}
+			memcpy(parent_args.args, &map_entries[i], parent_cells * sizeof(u32));
+			i += parent_cells;
+		}
+
+		/* Validate child ID is within bounds */
+		if (child_id >= data->num_domains) {
+			pr_err("Child ID %u out of bounds (max %u) in power-domains-map for %pOF\n",
+			       child_id, data->num_domains - 1, np);
+			of_node_put(parent_np);
+			ret = -EINVAL;
+			goto out_free;
+		}
+
+		/* Get the child domain */
+		child_genpd = data->domains[child_id];
+		if (!child_genpd) {
+			pr_err("Child domain %u is NULL in power-domains-map for %pOF\n", child_id, np);
+			of_node_put(parent_np);
+			ret = -EINVAL;
+			goto out_free;
+		}
+
+		/* Get the parent domain */
+		parent_genpd = genpd_get_from_provider(&parent_args);
+		of_node_put(parent_np);
+		if (IS_ERR(parent_genpd)) {
+			pr_err("Failed to get parent domain for child %u in power-domains-map for %pOF: %ld\n",
+			       child_id, np, PTR_ERR(parent_genpd));
+			ret = PTR_ERR(parent_genpd);
+			goto out_free;
+		}
+
+		/* Establish parent-child relationship */
+		ret = genpd_add_subdomain(parent_genpd, child_genpd);
+		if (ret) {
+			pr_err("Failed to add child domain %u to parent in power-domains-map for %pOF: %d\n",
+			       child_id, np, ret);
+			goto out_free;
+		}
+
+		pr_debug("Added child domain %u (%s) to parent %s via power-domains-map for %pOF\n",
+			 child_id, child_genpd->name, parent_genpd->name, np);
+	}
+
+	ret = 0;
+
+out_free:
+	kfree(map_entries);
+	return ret;
+}
+
 /**
  * of_genpd_add_device() - Add a device to an I/O PM domain
  * @genpdspec: OF phandle args to use for look-up PM domain

-- 
2.49.0


