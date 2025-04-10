Return-Path: <devicetree+bounces-165440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 655A8A845AB
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:07:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C7F07A98E1
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FD3828D82C;
	Thu, 10 Apr 2025 14:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="abKBPXLs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E062728CF66
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 14:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744294010; cv=none; b=tgli0mITIbse9F4NAvcqDqL0XbUBqNn26sMsMOX3tlVu0keR487DyKRef3G8bmnotEjhGNj04psjersX+IJqc+enKGK6SmO6WEybtqN0cJN9WwUlRNg98lPIme9qaVYHGPPvKHKd4DvHEyOd1/SqUfI43vajPJG+H6hRrW2UI0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744294010; c=relaxed/simple;
	bh=pWFpVdbwCTzhA08rGL1STEsgBjt2lrh4a9scll/Q9gs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aqhf5SyFFs0nZ7bPNbOp7W6LsJL2u5Jo2ZevFVZLbHr3sRmEztG36HGL4lZRh2BvThT1SJ0Lq7u2Xk6zudMvkE3YWmiicwk8JG+3YeooNa02RnNwhXcqRtpI1qiaygJ6p7ePqLrY/kdNqYg4isS66eQuRwM1nxV/nooMSkVyOk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=abKBPXLs; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so9530745e9.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 07:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744294006; x=1744898806; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hefkpI4o93qT0INfI+0c8fXSr3uhfw4SA6zezG4NCFE=;
        b=abKBPXLs7Nmgsdk90CQM0jHcmcU225eCByZb5C+RfleIbQzByPlG37KiGM+vw7O9MC
         dKudNWtgs6f2wsslhbtD2/K8h5lFVJIblkjpEJIZbJhMiuylWzslAIuGpCyKg5iqvlA0
         rTc5R+R5sJHDO5bKT4kAxei/R8m+JCY/6jcWAibOFtjXiWXmDHfO6QvG1Q9DrYHk4P1W
         +vTyNGGfjpK+tpPRiaxL+yY/vtJc4dfYGLtvXU7RQFMilvyzIHRMUOT54WDA7cfozi+o
         0QFr5+7o2TfPVxmE0zUssPPy2msrZIynMVkrXlPFiKrNbthCfNjWd9I1qO7B01xLzjg3
         Wlog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744294006; x=1744898806;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hefkpI4o93qT0INfI+0c8fXSr3uhfw4SA6zezG4NCFE=;
        b=oKY91lZVIbm9K0D5BKTAWo54gIw4Z96U9K5SLdvqiIoI7GqBxmiX87xfjLw+vL0tp3
         E6RCVpgQTfetvqp/D3hnqQhlMs1M6+EI4G6uVMdLzfKDtKIP+9wKdjJthfviiYdl8CTp
         tWBlhXGjrMs4SNLNTVLGhwe2yPgM3EO925+NtqBasKiCZTbgPlj2Hcyai+2nmcRzkVR6
         HOGMx0crwiAmKSRfXO4R8SXrWoHFGGgtgPeQDLzqXBLU5iChmKjmOsOkOjDY+/Lb11q4
         zgKhliFyysuWN6N+e/8JzjHXy1BdPvvczxW97U+5f3qfnZU/5YU+Hmm3EWsHaTZnq7vE
         m0RQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+hobvh+sIBNB7zxHCDF1YDvLpTwn1JCEhPouSyTndFnZQyQehd5W1+YRtsfaBI9fjByJ1b7Fq/LUR@vger.kernel.org
X-Gm-Message-State: AOJu0YzEJiPRuVZlNJMSlMwrVnvb64y8cxZKaANiM81gWYuLOkkjNKuX
	OpZMPe8PvVtDxzbkTBAKZABVkG+s5ioRlXNX0RR+CvV2c+jHNInjL+M9yxIu0/E=
X-Gm-Gg: ASbGnct699ig79h/3xpKqXYiMS5QlPrKc+pTAQsxqp1dnPhrBbhBG21K7R7sqPyzicF
	mi1fyYwJLBWIgIRrP5+paVkmTlyB6K+Ps8XMYZp04yOzAYeESSDExJYtnjqm+vtGjXlx5VA2YuD
	oc0k1KHnKbmCs4LIuirRpnrcEBaOKisJDqG5XhGt+fxgd1PLgSUIkD5tn+f79sI5EQqSHor9coi
	a+sYqNf4/HfEIv8Uguj+xwdeXrr/+RkSBqXe177Vbu7ZCJOo7cHidQqkfwBNUwJs6qAKpk6yI6/
	A0Q/+feFR5MZHswAeTQqQ1lcYq5CJOxIh1+0L+V+o4hv8zPGREnLSEv2HeAVZ5ZKFRK0qA==
X-Google-Smtp-Source: AGHT+IHLo1j0tDX02D7qZq5lJot6HyVSDv7OZ2qwT+SnsOwSltrWo4Y/SvrxJG3geViLyt4xI5n0cg==
X-Received: by 2002:a05:6000:4310:b0:39c:1ef5:ff8b with SMTP id ffacd0b85a97d-39d8fda7343mr2183764f8f.48.1744294005970;
        Thu, 10 Apr 2025 07:06:45 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39d8937f0d8sm4806913f8f.40.2025.04.10.07.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 07:06:45 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	magnus.damm@gmail.com
Cc: claudiu.beznea@tuxon.dev,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 5/7] clk: renesas: rzg2l-cpg: Drop MSTOP based power domain support
Date: Thu, 10 Apr 2025 17:06:26 +0300
Message-ID: <20250410140628.4124896-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250410140628.4124896-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Since the configuration order between the individual MSTOP and CLKON bits
cannot be preserved with the power domain abstraction, drop the power
domain core code.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 drivers/clk/renesas/rzg2l-cpg.c | 208 +++-----------------------------
 drivers/clk/renesas/rzg2l-cpg.h |  51 --------
 2 files changed, 17 insertions(+), 242 deletions(-)

diff --git a/drivers/clk/renesas/rzg2l-cpg.c b/drivers/clk/renesas/rzg2l-cpg.c
index b2252df6dba3..bc5d8ba31de7 100644
--- a/drivers/clk/renesas/rzg2l-cpg.c
+++ b/drivers/clk/renesas/rzg2l-cpg.c
@@ -144,6 +144,7 @@ struct rzg2l_pll5_mux_dsi_div_param {
  * @num_resets: Number of Module Resets in info->resets[]
  * @last_dt_core_clk: ID of the last Core Clock exported to DT
  * @info: Pointer to platform data
+ * @genpd: PM domain
  * @mux_dsi_div_params: pll5 mux and dsi div parameters
  */
 struct rzg2l_cpg_priv {
@@ -160,6 +161,8 @@ struct rzg2l_cpg_priv {
 
 	const struct rzg2l_cpg_info *info;
 
+	struct generic_pm_domain genpd;
+
 	struct rzg2l_pll5_mux_dsi_div_param mux_dsi_div_params;
 };
 
@@ -1797,39 +1800,14 @@ static int rzg2l_cpg_reset_controller_register(struct rzg2l_cpg_priv *priv)
 	return devm_reset_controller_register(priv->dev, &priv->rcdev);
 }
 
-/**
- * struct rzg2l_cpg_pm_domains - RZ/G2L PM domains data structure
- * @onecell_data: cell data
- * @domains: generic PM domains
- */
-struct rzg2l_cpg_pm_domains {
-	struct genpd_onecell_data onecell_data;
-	struct generic_pm_domain *domains[];
-};
-
-/**
- * struct rzg2l_cpg_pd - RZ/G2L power domain data structure
- * @genpd: generic PM domain
- * @priv: pointer to CPG private data structure
- * @conf: CPG PM domain configuration info
- * @id: RZ/G2L power domain ID
- */
-struct rzg2l_cpg_pd {
-	struct generic_pm_domain genpd;
-	struct rzg2l_cpg_priv *priv;
-	struct rzg2l_cpg_pm_domain_conf conf;
-	u16 id;
-};
-
-static bool rzg2l_cpg_is_pm_clk(struct rzg2l_cpg_pd *pd,
+static bool rzg2l_cpg_is_pm_clk(struct rzg2l_cpg_priv *priv,
 				const struct of_phandle_args *clkspec)
 {
-	if (clkspec->np != pd->genpd.dev.of_node || clkspec->args_count != 2)
+	if (clkspec->np != priv->genpd.dev.of_node || clkspec->args_count != 2)
 		return false;
 
 	switch (clkspec->args[0]) {
 	case CPG_MOD: {
-		struct rzg2l_cpg_priv *priv = pd->priv;
 		const struct rzg2l_cpg_info *info = priv->info;
 		unsigned int id = clkspec->args[1];
 
@@ -1854,7 +1832,7 @@ static bool rzg2l_cpg_is_pm_clk(struct rzg2l_cpg_pd *pd,
 
 static int rzg2l_cpg_attach_dev(struct generic_pm_domain *domain, struct device *dev)
 {
-	struct rzg2l_cpg_pd *pd = container_of(domain, struct rzg2l_cpg_pd, genpd);
+	struct rzg2l_cpg_priv *priv = container_of(domain, struct rzg2l_cpg_priv, genpd);
 	struct device_node *np = dev->of_node;
 	struct of_phandle_args clkspec;
 	bool once = true;
@@ -1863,7 +1841,7 @@ static int rzg2l_cpg_attach_dev(struct generic_pm_domain *domain, struct device
 	int error;
 
 	for (i = 0; !of_parse_phandle_with_args(np, "clocks", "#clock-cells", i, &clkspec); i++) {
-		if (!rzg2l_cpg_is_pm_clk(pd, &clkspec)) {
+		if (!rzg2l_cpg_is_pm_clk(priv, &clkspec)) {
 			of_node_put(clkspec.np);
 			continue;
 		}
@@ -1908,183 +1886,31 @@ static void rzg2l_cpg_detach_dev(struct generic_pm_domain *unused, struct device
 }
 
 static void rzg2l_cpg_genpd_remove(void *data)
-{
-	struct genpd_onecell_data *celldata = data;
-
-	for (unsigned int i = 0; i < celldata->num_domains; i++)
-		pm_genpd_remove(celldata->domains[i]);
-}
-
-static void rzg2l_cpg_genpd_remove_simple(void *data)
 {
 	pm_genpd_remove(data);
 }
 
-static int rzg2l_cpg_power_on(struct generic_pm_domain *domain)
-{
-	struct rzg2l_cpg_pd *pd = container_of(domain, struct rzg2l_cpg_pd, genpd);
-	struct rzg2l_cpg_reg_conf mstop = pd->conf.mstop;
-	struct rzg2l_cpg_priv *priv = pd->priv;
-
-	/* Set MSTOP. */
-	if (mstop.mask)
-		writel(mstop.mask << 16, priv->base + mstop.off);
-
-	return 0;
-}
-
-static int rzg2l_cpg_power_off(struct generic_pm_domain *domain)
-{
-	struct rzg2l_cpg_pd *pd = container_of(domain, struct rzg2l_cpg_pd, genpd);
-	struct rzg2l_cpg_reg_conf mstop = pd->conf.mstop;
-	struct rzg2l_cpg_priv *priv = pd->priv;
-
-	/* Set MSTOP. */
-	if (mstop.mask)
-		writel(mstop.mask | (mstop.mask << 16), priv->base + mstop.off);
-
-	return 0;
-}
-
-static int __init rzg2l_cpg_pd_setup(struct rzg2l_cpg_pd *pd)
-{
-	bool always_on = !!(pd->genpd.flags & GENPD_FLAG_ALWAYS_ON);
-	struct dev_power_governor *governor;
-	int ret;
-
-	if (always_on)
-		governor = &pm_domain_always_on_gov;
-	else
-		governor = &simple_qos_governor;
-
-	pd->genpd.flags |= GENPD_FLAG_PM_CLK | GENPD_FLAG_ACTIVE_WAKEUP;
-	pd->genpd.attach_dev = rzg2l_cpg_attach_dev;
-	pd->genpd.detach_dev = rzg2l_cpg_detach_dev;
-	pd->genpd.power_on = rzg2l_cpg_power_on;
-	pd->genpd.power_off = rzg2l_cpg_power_off;
-
-	ret = pm_genpd_init(&pd->genpd, governor, !always_on);
-	if (ret)
-		return ret;
-
-	if (always_on)
-		ret = rzg2l_cpg_power_on(&pd->genpd);
-
-	return ret;
-}
-
 static int __init rzg2l_cpg_add_clk_domain(struct rzg2l_cpg_priv *priv)
 {
 	struct device *dev = priv->dev;
 	struct device_node *np = dev->of_node;
-	struct rzg2l_cpg_pd *pd;
+	struct generic_pm_domain *genpd = &priv->genpd;
 	int ret;
 
-	pd = devm_kzalloc(dev, sizeof(*pd), GFP_KERNEL);
-	if (!pd)
-		return -ENOMEM;
-
-	pd->genpd.name = np->name;
-	pd->genpd.flags = GENPD_FLAG_ALWAYS_ON;
-	pd->priv = priv;
-	ret = rzg2l_cpg_pd_setup(pd);
+	genpd->name = np->name;
+	genpd->flags = GENPD_FLAG_PM_CLK | GENPD_FLAG_ALWAYS_ON |
+		       GENPD_FLAG_ACTIVE_WAKEUP;
+	genpd->attach_dev = rzg2l_cpg_attach_dev;
+	genpd->detach_dev = rzg2l_cpg_detach_dev;
+	ret = pm_genpd_init(genpd, &pm_domain_always_on_gov, false);
 	if (ret)
 		return ret;
 
-	ret = devm_add_action_or_reset(dev, rzg2l_cpg_genpd_remove_simple, &pd->genpd);
+	ret = devm_add_action_or_reset(dev, rzg2l_cpg_genpd_remove, genpd);
 	if (ret)
 		return ret;
 
-	return of_genpd_add_provider_simple(np, &pd->genpd);
-}
-
-static struct generic_pm_domain *
-rzg2l_cpg_pm_domain_xlate(const struct of_phandle_args *spec, void *data)
-{
-	struct generic_pm_domain *domain = ERR_PTR(-ENOENT);
-	struct genpd_onecell_data *genpd = data;
-
-	if (spec->args_count != 1)
-		return ERR_PTR(-EINVAL);
-
-	for (unsigned int i = 0; i < genpd->num_domains; i++) {
-		struct rzg2l_cpg_pd *pd = container_of(genpd->domains[i], struct rzg2l_cpg_pd,
-						       genpd);
-
-		if (pd->id == spec->args[0]) {
-			domain = &pd->genpd;
-			break;
-		}
-	}
-
-	return domain;
-}
-
-static int __init rzg2l_cpg_add_pm_domains(struct rzg2l_cpg_priv *priv)
-{
-	const struct rzg2l_cpg_info *info = priv->info;
-	struct device *dev = priv->dev;
-	struct device_node *np = dev->of_node;
-	struct rzg2l_cpg_pm_domains *domains;
-	struct generic_pm_domain *parent;
-	u32 ncells;
-	int ret;
-
-	ret = of_property_read_u32(np, "#power-domain-cells", &ncells);
-	if (ret)
-		return ret;
-
-	/* For backward compatibility. */
-	if (!ncells)
-		return rzg2l_cpg_add_clk_domain(priv);
-
-	domains = devm_kzalloc(dev, struct_size(domains, domains, info->num_pm_domains),
-			       GFP_KERNEL);
-	if (!domains)
-		return -ENOMEM;
-
-	domains->onecell_data.domains = domains->domains;
-	domains->onecell_data.num_domains = info->num_pm_domains;
-	domains->onecell_data.xlate = rzg2l_cpg_pm_domain_xlate;
-
-	ret = devm_add_action_or_reset(dev, rzg2l_cpg_genpd_remove, &domains->onecell_data);
-	if (ret)
-		return ret;
-
-	for (unsigned int i = 0; i < info->num_pm_domains; i++) {
-		struct rzg2l_cpg_pd *pd;
-
-		pd = devm_kzalloc(dev, sizeof(*pd), GFP_KERNEL);
-		if (!pd)
-			return -ENOMEM;
-
-		pd->genpd.name = info->pm_domains[i].name;
-		pd->genpd.flags = info->pm_domains[i].genpd_flags;
-		pd->conf = info->pm_domains[i].conf;
-		pd->id = info->pm_domains[i].id;
-		pd->priv = priv;
-
-		ret = rzg2l_cpg_pd_setup(pd);
-		if (ret)
-			return ret;
-
-		domains->domains[i] = &pd->genpd;
-		/* Parent should be on the very first entry of info->pm_domains[]. */
-		if (!i) {
-			parent = &pd->genpd;
-			continue;
-		}
-
-		ret = pm_genpd_add_subdomain(parent, &pd->genpd);
-		if (ret)
-			return ret;
-	}
-
-	ret = of_genpd_add_provider_onecell(np, &domains->onecell_data);
-	if (ret)
-		return ret;
-
-	return 0;
+	return of_genpd_add_provider_simple(np, genpd);
 }
 
 static int __init rzg2l_cpg_probe(struct platform_device *pdev)
@@ -2147,7 +1973,7 @@ static int __init rzg2l_cpg_probe(struct platform_device *pdev)
 	if (error)
 		return error;
 
-	error = rzg2l_cpg_add_pm_domains(priv);
+	error = rzg2l_cpg_add_clk_domain(priv);
 	if (error)
 		return error;
 
diff --git a/drivers/clk/renesas/rzg2l-cpg.h b/drivers/clk/renesas/rzg2l-cpg.h
index 503a60ba7ff3..350a484a56b5 100644
--- a/drivers/clk/renesas/rzg2l-cpg.h
+++ b/drivers/clk/renesas/rzg2l-cpg.h
@@ -259,51 +259,6 @@ struct rzg2l_reset {
 #define DEF_RST(_id, _off, _bit)	\
 	DEF_RST_MON(_id, _off, _bit, -1)
 
-/**
- * struct rzg2l_cpg_reg_conf - RZ/G2L register configuration data structure
- * @off: register offset
- * @mask: register mask
- */
-struct rzg2l_cpg_reg_conf {
-	u16 off;
-	u16 mask;
-};
-
-#define DEF_REG_CONF(_off, _mask) ((struct rzg2l_cpg_reg_conf) { .off = (_off), .mask = (_mask) })
-
-/**
- * struct rzg2l_cpg_pm_domain_conf - PM domain configuration data structure
- * @mstop: MSTOP register configuration
- */
-struct rzg2l_cpg_pm_domain_conf {
-	struct rzg2l_cpg_reg_conf mstop;
-};
-
-/**
- * struct rzg2l_cpg_pm_domain_init_data - PM domain init data
- * @name: PM domain name
- * @conf: PM domain configuration
- * @genpd_flags: genpd flags (see GENPD_FLAG_*)
- * @id: PM domain ID (similar to the ones defined in
- *      include/dt-bindings/clock/<soc-id>-cpg.h)
- */
-struct rzg2l_cpg_pm_domain_init_data {
-	const char * const name;
-	struct rzg2l_cpg_pm_domain_conf conf;
-	u32 genpd_flags;
-	u16 id;
-};
-
-#define DEF_PD(_name, _id, _mstop_conf, _flags) \
-	{ \
-		.name = (_name), \
-		.id = (_id), \
-		.conf = { \
-			.mstop = (_mstop_conf), \
-		}, \
-		.genpd_flags = (_flags), \
-	}
-
 /**
  * struct rzg2l_cpg_info - SoC-specific CPG Description
  *
@@ -322,8 +277,6 @@ struct rzg2l_cpg_pm_domain_init_data {
  * @crit_mod_clks: Array with Module Clock IDs of critical clocks that
  *                 should not be disabled without a knowledgeable driver
  * @num_crit_mod_clks: Number of entries in crit_mod_clks[]
- * @pm_domains: PM domains init data array
- * @num_pm_domains: Number of PM domains
  * @has_clk_mon_regs: Flag indicating whether the SoC has CLK_MON registers
  */
 struct rzg2l_cpg_info {
@@ -350,10 +303,6 @@ struct rzg2l_cpg_info {
 	const unsigned int *crit_mod_clks;
 	unsigned int num_crit_mod_clks;
 
-	/* Power domain. */
-	const struct rzg2l_cpg_pm_domain_init_data *pm_domains;
-	unsigned int num_pm_domains;
-
 	bool has_clk_mon_regs;
 };
 
-- 
2.43.0


