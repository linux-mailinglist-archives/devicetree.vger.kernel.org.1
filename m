Return-Path: <devicetree+bounces-258653-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MPbPDnnLcmlgpgAAu9opvQ
	(envelope-from <devicetree+bounces-258653-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:14:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8646EF0A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C9F93018D76
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 01:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C912B365A18;
	Fri, 23 Jan 2026 01:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vHDbNJbE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1C72BE034
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 01:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769130856; cv=none; b=sgjcVYBogGuoC+rJgg/VX836X073xDvohSswCU6z4Z0xBnVcVLDDjvWpaMM8y1KpLKcDDgTBxYNZZVfvwicWwr+5fOB9zdQI0OioUI/0xxNENdMENW5b0XsnRcZqmvYk59KCMWIU1o9+HyUtIudTWij92Z+5DSIlbNz+VA+YZMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769130856; c=relaxed/simple;
	bh=lzR3NEhB2g7iCRM+bJ588/XYQ1irfnPbijYHHqE2mb0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SlPfFBzL8suYqYE8GNm7SheyP8BBkEhuE4lCBGVaI+Tp6VbZcd3PisQyuxY0Ui0vwM7jhISXkI2aruBClIHHetfMiUuLcgPGdQyFk/X7bnTs6ExNN4N/krFLK8ukia/9Bnjk28ZALi37GR+NulH9dUPsRq2foazsgzfUfE1dKHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vHDbNJbE; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-81ed3e6b8e3so821876b3a.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 17:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769130849; x=1769735649; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aHt+mmH4C5nxGUCfgNrBDFG/vUcO3dbURh+yi1mxNm8=;
        b=vHDbNJbEttm8JfjkPQvBQCP9WxQ2R5luoLRm16EJt3yMUoaK6HShDsXKdtDplPwGn8
         +CHO4Pt/XoplG8z+KUtN8rqXgXQhezUehRR06ex5SNxxSsDbfIwl91AgJgoiaIS/HGj7
         fWXJ9ZDKnroFt3XBRnA01uJ+So86ZgU0JlE6MuiVVSg5OTpV94CKQ8Wd1OCrwRrAh7oc
         AU+2AVOmK61kAfwQfw1dgUXKUoUN3GCJdj3lKPFFmDZcs76kWLIbu5TBub6cSadatrqQ
         1PSHeT0W3V5CYhSk29jhpgfwNTcns56C8RgLhyKzz+ZZn3H0XHZDgfkU4W8R4Kz+VQXz
         6w/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769130849; x=1769735649;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aHt+mmH4C5nxGUCfgNrBDFG/vUcO3dbURh+yi1mxNm8=;
        b=UyOhC6mYhkVgJKWbKkOwscvmkjYQ1HCoxj+Z4YfuPXwemhx/S0+v8XZL9ZmzY1PmO/
         4heT7+kveudJUjvLF/eRHNxV/wqcMQgFpZEHYZY8SJJYpmk6RGJcqjMi8u1zr5kEAxAT
         MToO0NpcgwpwKnOoxdNJL4e3wDDo1Y/hPHqKAOvkyNHWxqwZ3O3o5kCHT4PLgWfjT3t1
         2zkE+xu+vU0a6e/DHhuhcY7r131M95/W+X/pWZRWAc20ToCySKV/EHCtB+8NO+Zk0l48
         s3pP6aDo8WSSQTbUr8wClTNDzey1fQDaIl0hyTnKXEA53kDZGgId2V3uEEUYxDLnnXg0
         u6NQ==
X-Gm-Message-State: AOJu0YyMY9I3psA9kEBBckNVXj5Up8pPhs1WtWFdEdI9gcYgmS88xmjd
	5/zK7fELm+XNX0qlciNk44aEgnhwQ7sO9/X2l6Ie055MQxCMoZ82M4rg/B5C8lw6X1c=
X-Gm-Gg: AZuq6aJE15bH5QQp7r1AV6VVgvGxlN//ut9xdXSpUG34x/4UsBbbGUHbi02z5X27HuW
	ZhusMZZ5TKMB8mmLo75FQhz+7erw5NXl/e4H3rZtHDcnA4ALONKr8OsdtMqL8SO05/MK07bnRUO
	VQOsNgftET73B/UKWMzz2IyKbYqHo3vLzqXL3HPXkdYtHz5KWTnDUGZPF2E3nNjjOg1UY1RvwuP
	B/iN2kJUk5ziDWCoGIazyV+4IFAqubCppZAXve+oVIRbnJFiBcPlFt6R8BSEhkWxxEjIDho/9c3
	ZB1cgI9/3sN6joXNlPMElWz45bn01EfJF6NPO6+paDvUSdvrECFtvinnlwQkLz/MoZVVmQdGLh7
	k+E8FPdJELHYXSoUUKlCqL+SgdzeI3a2iSnpJNzwB6R/9irNPvamLnNeEmQY2RFASVhBdlS6Fcz
	bje7bT+6+C
X-Received: by 2002:a05:6a00:228a:b0:823:ad3:4ff4 with SMTP id d2e1a72fcca58-82317e1f2fbmr995725b3a.37.1769130848424;
        Thu, 22 Jan 2026 17:14:08 -0800 (PST)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8231876e5d0sm495195b3a.61.2026.01.22.17.14.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 17:14:07 -0800 (PST)
From: "Kevin Hilman (TI)" <khilman@baylibre.com>
Date: Thu, 22 Jan 2026 17:14:00 -0800
Subject: [PATCH RFC v5 1/2] pmdomain: core: support domain hierarchy via
 power-domain-map
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260122-pmdomain-hierarchy-onecell-v5-1-76855ec856bd@baylibre.com>
References: <20260122-pmdomain-hierarchy-onecell-v5-0-76855ec856bd@baylibre.com>
In-Reply-To: <20260122-pmdomain-hierarchy-onecell-v5-0-76855ec856bd@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Sudeep Holla <sudeep.holla@arm.com>, 
 Cristian Marussi <cristian.marussi@arm.com>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 arm-scmi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=8104; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=lzR3NEhB2g7iCRM+bJ588/XYQ1irfnPbijYHHqE2mb0=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBpcstegivFzLujdyy/XYyCoOTFhTKHJRAJ8NSZt
 PKtjt8GNvKJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCaXLLXgAKCRBZNxia0/vG
 ZYTyEACh3s27sFpbfZ/ydsd8FMkRCxosg8QXT/a2xgDoeAuFNT+1jyG2LMV6Cjudi5xBIfK5o5+
 K3rCkRFQItyaH0a2LcgHP1ysn+3J+w2O9jUPpq9M/bPVLnvG0wrPPggT5UyVG7/tuHVDuXbEUym
 E3YJRv9CholjJhRnXmP/Kr3ZBnbGrol0MS9vaP5sCLYbKRZR5dysNMLxbv4Tgq3N/AKfgBfw6b3
 Q74xOX/xuxPeFQD2H2MRdkrxmo9B62WkZkuMRYVMVERQxnn2oYBHTtl0X4e8IHnR1TtQBrhFAaa
 T6YDp5ROfuR0IFTYO1JkOYl2SkaCB5FvyM+nJx6GbuWKGzcUo/QsyzdiWSSiCfe6nGkwcuvnGa3
 2wje3dW4WqQfamM80nMSj1P6vznxc55kdLF/KxoRZRw/4pZwuoHt+Xuryy6vuV40VRntvMRE10D
 OxizOhFu6oqR26Yneomed1EZP0UaI66OIqdyQVj9Rqm8ZrTeVfJ35Y3hEjpHPr1HsRFZ/Ir4kCB
 LI59eoPpfLf+zMyBvm2ycc9gabfPz64DoKuvsnoGOgbxbSb0E8AIPP1XJ1mNJoelQmFGh8L1jhO
 /txN/VKIOHIm+hyiJleWlDYBJ2VOc8zeFSqePAamWNlzSi8bg91+VSFiBVONnrg409+suH1Gu2r
 kx4s+ReBZ01uOpg==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-258653-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.11:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:mid,baylibre.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,parent_args.np:url]
X-Rspamd-Queue-Id: 9C8646EF0A
X-Rspamd-Action: no action

Add of_genpd_[add|remove]_subdomain_map() helper functions to support
hierarchical PM domains defined by using power-domains-map
property (c.f. nexus node maps in DT spec, section 2.5.1).

This enables PM domain providers with #power-domain-cells > 0 to
establish subdomain relationships via the power-domain-map property,
which was not previously possible.

These new helper functions:
- uses an OF helper to iterate to over entries in power-domain-map
- For each mapped entry: extracts child specifier, resolves parent phandle,
  extracts parent specifier args, and establishes subdomain relationship
- Calls genpd_[add|remove]_subdomain() with proper gpd_list_lock mutex protection

Example from k3-am62l.dtsi:

  scmi_pds: protocol@11 {
      #power-domain-cells = <1>;
      power-domain-map = <15 &MAIN_PD>,  /* TIMER0 */
                         <19 &WKUP_PD>;  /* WKUP_TIMER0 */
  };

  MAIN_PD: power-controller-main {
      #power-domain-cells = <0>;
  };

  WKUP_PD: power-controller-main {
      #power-domain-cells = <0>;
  };

This allows SCMI power domain 15 to become a subdomain of MAIN_PD, and
domain 19 to become a subdomain of WKUP_PD.

Signed-off-by: Kevin Hilman (TI) <khilman@baylibre.com>
---
 drivers/pmdomain/core.c   | 160 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_domain.h |  16 ++++++++++++++++
 2 files changed, 176 insertions(+)

diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
index bf82775f6a67..cee7fbbda829 100644
--- a/drivers/pmdomain/core.c
+++ b/drivers/pmdomain/core.c
@@ -3556,6 +3556,166 @@ static struct device_driver genpd_provider_drv = {
 	.suppress_bind_attrs = true,
 };
 
+/**
+ * of_genpd_remove_subdomain_map - Remove subdomain relationships from map
+ *
+ * @np: pointer to parent node containing map property
+ * @data: pointer to PM domain onecell data
+ *
+ * Iterate over entries in a power-domain-map, and remove the subdomain
+ * relationships that were previously established by of_genpd_add_subdomain_map().
+ * This allows cleanup during driver removal or error handling.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int of_genpd_remove_subdomain_map(struct device_node *np,
+				  struct genpd_onecell_data *data)
+{
+	struct generic_pm_domain *genpd, *parent_genpd;
+	struct of_phandle_args child_args, parent_args;
+	int index = 0;
+	int ret = 0;
+	u32 child_index;
+
+	if (!np || !data)
+		return -EINVAL;
+
+	/* Iterate through power-domain-map entries using the OF helper */
+	while (!of_parse_map_iter(np, "power-domain", &index,
+				   &child_args, &parent_args)) {
+		/* Extract the child domain index from the child specifier */
+		if (child_args.args_count < 1) {
+			of_node_put(parent_args.np);
+			continue;
+		}
+		child_index = child_args.args[0];
+
+		/* Validate child domain index */
+		if (child_index >= data->num_domains) {
+			of_node_put(parent_args.np);
+			continue;
+		}
+
+		genpd = data->domains[child_index];
+		if (!genpd) {
+			of_node_put(parent_args.np);
+			continue;
+		}
+
+		/* Get parent power domain from provider */
+		mutex_lock(&gpd_list_lock);
+
+		parent_genpd = genpd_get_from_provider(&parent_args);
+		if (IS_ERR(parent_genpd)) {
+			mutex_unlock(&gpd_list_lock);
+			of_node_put(parent_args.np);
+			dev_warn(&genpd->dev, "failed to get parent domain for removal\n");
+			continue;
+		}
+
+		/* Remove subdomain relationship */
+		ret = pm_genpd_remove_subdomain(parent_genpd, genpd);
+		mutex_unlock(&gpd_list_lock);
+		of_node_put(parent_args.np);
+
+		if (ret)
+			dev_warn(&genpd->dev, "failed to remove as subdomain of %s: %d\n",
+				 parent_genpd->name, ret);
+		else
+			dev_dbg(&genpd->dev, "removed as subdomain of %s\n",
+				parent_genpd->name);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_genpd_remove_subdomain_map);
+
+/**
+ * of_genpd_add_subdomain_map - Parse and map child PM domains
+ *
+ * @np: pointer to parent node containing map property
+ * @data: pointer to PM domain onecell data
+ *
+ * Iterate over entries in a power-domain-map, and add them as
+ * children of the parent domain. If any child fails to be added,
+ * all previously added children are removed to maintain atomicity.
+ *
+ * Return: 0 on success, negative error code on failure
+ */
+int of_genpd_add_subdomain_map(struct device_node *np,
+			       struct genpd_onecell_data *data)
+{
+	struct generic_pm_domain *genpd, *parent_genpd;
+	struct of_phandle_args child_args, parent_args;
+	int index = 0;
+	int ret = 0;
+	u32 child_index;
+
+	if (!np || !data)
+		return -EINVAL;
+
+	/* Iterate through power-domain-map entries using the OF helper */
+	while (!of_parse_map_iter(np, "power-domain", &index,
+				   &child_args, &parent_args)) {
+		/* Extract the child domain index from the child specifier */
+		if (child_args.args_count < 1) {
+			of_node_put(parent_args.np);
+			ret = -EINVAL;
+			goto cleanup;
+		}
+		child_index = child_args.args[0];
+
+		/* Validate child domain index */
+		if (child_index >= data->num_domains) {
+			of_node_put(parent_args.np);
+			pr_debug("map's child index (%u) > number of domains (%u).  Skipping.\n",
+				 child_index, data->num_domains);
+			ret = -EINVAL;
+			goto cleanup;
+		}
+
+		genpd = data->domains[child_index];
+		if (!genpd) {
+			of_node_put(parent_args.np);
+			continue;
+		}
+
+		/* Get parent power domain from provider and establish subdomain relationship */
+		mutex_lock(&gpd_list_lock);
+
+		parent_genpd = genpd_get_from_provider(&parent_args);
+		if (IS_ERR(parent_genpd)) {
+			mutex_unlock(&gpd_list_lock);
+			of_node_put(parent_args.np);
+			ret = PTR_ERR(parent_genpd);
+			dev_err(&genpd->dev, "failed to get parent domain: %d\n", ret);
+			goto cleanup;
+		}
+
+		ret = genpd_add_subdomain(parent_genpd, genpd);
+		mutex_unlock(&gpd_list_lock);
+		of_node_put(parent_args.np);
+
+		if (ret) {
+			dev_err(&genpd->dev, "failed to add as subdomain of %s: %d\n",
+				parent_genpd->name, ret);
+			goto cleanup;
+		}
+
+		dev_dbg(&genpd->dev, "added as subdomain of %s\n",
+			parent_genpd->name);
+	}
+
+	return 0;
+
+cleanup:
+	/* Remove all successfully added subdomains using the removal function */
+	pr_err("rolling back child map additions due to error: %d\n", ret);
+	of_genpd_remove_subdomain_map(np, data);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(of_genpd_add_subdomain_map);
+
 static int __init genpd_bus_init(void)
 {
 	int ret;
diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
index 93ba0143ca47..3baf224e4f24 100644
--- a/include/linux/pm_domain.h
+++ b/include/linux/pm_domain.h
@@ -463,6 +463,10 @@ int of_genpd_add_subdomain(const struct of_phandle_args *parent_spec,
 int of_genpd_remove_subdomain(const struct of_phandle_args *parent_spec,
 			      const struct of_phandle_args *subdomain_spec);
 struct generic_pm_domain *of_genpd_remove_last(struct device_node *np);
+int of_genpd_add_subdomain_map(struct device_node *np,
+			       struct genpd_onecell_data *data);
+int of_genpd_remove_subdomain_map(struct device_node *np,
+				  struct genpd_onecell_data *data);
 int of_genpd_parse_idle_states(struct device_node *dn,
 			       struct genpd_power_state **states, int *n);
 void of_genpd_sync_state(struct device_node *np);
@@ -505,6 +509,18 @@ static inline int of_genpd_remove_subdomain(const struct of_phandle_args *parent
 	return -ENODEV;
 }
 
+static inline int of_genpd_add_subdomain_map(struct device_node *np,
+					     struct genpd_onecell_data *data)
+{
+	return -ENODEV;
+}
+
+static inline int of_genpd_remove_subdomain_map(struct device_node *np,
+						struct genpd_onecell_data *data)
+{
+	return -ENODEV;
+}
+
 static inline int of_genpd_parse_idle_states(struct device_node *dn,
 			struct genpd_power_state **states, int *n)
 {

-- 
2.51.0


