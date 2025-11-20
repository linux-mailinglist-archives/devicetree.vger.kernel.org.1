Return-Path: <devicetree+bounces-240476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 03625C71A16
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 01:59:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4F9C1348623
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 00:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D87672367CE;
	Thu, 20 Nov 2025 00:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EK+3bGQF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8391DFE12
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 00:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763600337; cv=none; b=oG52qITX4e2EjcqJN8kapG5jbCkskOtKr8LqHdXyBGGtzzFazgZC7CIsibydWSJFoevLc0kLTg9L46c97P7r9uE9D1rVIGv1tcGTWDg6KNpRimYvc0jK+kFu6lWhagXU6WzVZEfxgs/HBaEg6QveTpe/xuS+OJOUyiWg9ZvnL8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763600337; c=relaxed/simple;
	bh=3PQNMqTCo6Bv83OlDl6XL1WlulxhVHi7Y6T58c9reAw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=S215JUup137Kxfa2gPxAlx79scWSl744743Hntg8LkLLVD5dF5iN+HpkWSU5ZNMHod3EMsInMIicO90ANMzYyYD5159BvMTiBfVPEtxyQOEn9xc1rkJO4tpWomjYcsOKsrNe+mMbHHg/WDdW/wTvniVeXHpOCC+lSi4TDh6fdoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=EK+3bGQF; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-295548467c7so3766805ad.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 16:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763600331; x=1764205131; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1HOSz7Nhg2hib5+MsGrf5GnNEZi36IgMHP2XG3P5bRc=;
        b=EK+3bGQFc8T6MO3B01/CZDoA+Cf4y3MwFl2CXhdIPU7MG6XFn7kDW/EY7jeoo18qVz
         Ntytv/qZktbsQIxD9c7p1cpOrYyYKRKLZqB9Qdj1AK+XcAuyBgDrMQB0NFxjn4fsziCV
         G2HQPmd/deeGedRLKtVUQ7A2j23xQFYSS29X8TX1+WgGeZUGFILc6vfJ2Ksu6RwH6p6x
         vjkvSI0Q+WmUyU3KQfP7fkj0rwCmyiDeYa2ZjkrAfKki0LL6AUzSXo3RhRieJVuzX+Wn
         d7IsUEFR+d54LrpHK9mRDmqlKyjn3uKDmmLvwzONDqtWd3VhD1vNtwQ0CYu6smYvxBLi
         1djA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763600331; x=1764205131;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1HOSz7Nhg2hib5+MsGrf5GnNEZi36IgMHP2XG3P5bRc=;
        b=fofqfCBTINoYqSV/f4aRFizQql2y01n5xqCN0uXfLed9M/4PMrT4GpIo9zZRgBoeTm
         KXGxNEUkLkSCIKU6dF0X3fUqkAmnoX9JdllLF45as8RJDlv5h1kQ63rZBSTZlmvx+W1z
         HTp5f0oMJp10UceuUo19vbQuQAjBtGZi5AXzXktDxKm+LFdsc2+gHk1H+UmJI+89sCut
         O3K7buh0YN8szzlb3Z+/ASJ45nGS+EbQDcSbsG673oathYTDxM6W4UEDkaDIKMBKHv9C
         mjzwCNjm07oVCeOhfMgMBh+S3URYleRDb3QojCf/zIu/BBqX858F+TCDfIYfc1WscfHY
         SVtQ==
X-Gm-Message-State: AOJu0Yw6b6WEEoOqYT6EuAf2ktIrYbRWWU+c9FGsqxM62E/e6WnQeGwm
	eSDH5c8BFpu/Q9RKbtlJo93T95QRY1Gw1A3rQCOXcnVB6j8wqhfXJZKhMXuORzPbkvg=
X-Gm-Gg: ASbGnctlkNVTif+7sis9NcbzqnFjs3pGUtzG+WKjOS+qh/IWQo5YorISs/yZ8KLkSqb
	fL7HktHcT5f7HsjgyRmd+64U1y/W11cZsd1BuhH+obCkzEGOY5mZnzoOXBGJI+E/r6aBfbSHTUu
	bXv9cRc4az8G69KmQ2VDA+uIMtU50YSXYx9K8lz846TDO1M82uJvGjazb3xpwroNVoQOXoGaeLY
	SWX8AQzO/MJOpdzw1aglClERJA0CLnHXXnnILmkMffzkqgx/zocrnLA0/dWI/Oh9XTrsIsxYZPt
	2EOHXSBW4ZM7QGZCFuR5iyxqR5+QOACmx0LfsmMtl3PFzqZJWQpyrgFdr8ggT4LhPIcTPCCow2z
	MNBtuGOX19HQoWxI1wzrzgVp+M1VQFrbCaHRFDhPcRH0slCTg5gclpJA/l+UD4Qc0x5yEeFV+vD
	RsHxWjuFZMjO75VmSR8mw=
X-Google-Smtp-Source: AGHT+IGD8JdJMishvWvxBHf6mqJE4p6Nm5YoA9CtyR2X0OJOuWziT1uwkLIUjDaxoq/Z9fy9tkbsKg==
X-Received: by 2002:a17:903:3ba5:b0:295:8db9:305f with SMTP id d9443c01a7336-29b5ec563b5mr3561975ad.34.1763600330925;
        Wed, 19 Nov 2025 16:58:50 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd75eaa7321sm645682a12.16.2025.11.19.16.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 16:58:50 -0800 (PST)
From: "Kevin Hilman (TI.com)" <khilman@baylibre.com>
Date: Wed, 19 Nov 2025 16:58:45 -0800
Subject: [PATCH RFC v4 1/2] pmdomain: core: support domain hierarchy via
 power-domain-map
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-pmdomain-hierarchy-onecell-v4-1-f25a1d5022f8@baylibre.com>
References: <20251119-pmdomain-hierarchy-onecell-v4-0-f25a1d5022f8@baylibre.com>
In-Reply-To: <20251119-pmdomain-hierarchy-onecell-v4-0-f25a1d5022f8@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 arm-scmi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Kevin Hilman <khilman@baylibre.com>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4733; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=3PQNMqTCo6Bv83OlDl6XL1WlulxhVHi7Y6T58c9reAw=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBpHmfIa2IFvtI2PnsxyQOm7O73lR8Im9v5vR7Ix
 30WnBZuDpSJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCaR5nyAAKCRBZNxia0/vG
 ZSBPEACbUD50ZyWHnPuNIfYT7C7jV9kTyjkgQGYRDoc6cEV1rlVLHeyk9sve1x7rmgzZON9vHAY
 5LRmJraD1cWuGx+qUHueYPZXrucfT8l+HeahjgqYTlhtDwoek1sTkC7Kb+6UA4LThpK/J9ZhBxN
 nJjizxVrQuTQZsuKd3kGRYt2wmIiPlK4q08I6vXgPTqYJPTAQaY4hBXXreVA+vfTHBtPU7JhK8Z
 +nqA92GDXp4AqicKT3dgD7Da/vM/PO9mv4iDO3UzVcVX/kqUt7FfBPoPvumXQWa3MQ3/X+o0MLO
 ru+e04qCGfwXgFbw381+kMqT01amCkujyrZQI3vY1KtcWbsv/+qI9EuQ6NE0ymQ0Lygg15fNFia
 2kPDDSL3laMgsb7krL6WF/bHe24Bm5MGOVmWApgsbzC/7zj6sRj7fZgbCYWawm2OVf62QXZ1FUA
 oVnBs6myn4cPUFnoXVKTgVhJrbHFE8G36QWz52IQuhsrB3PNnj3j++H2bPPEiM4I6JDOt3eLtla
 KlXIcwOVONmq3VUQsf+upmdkCFGvLXd3mhAeA05w4/3t/3B+ZEZiCWBniWkDF+DgkpBXzxRL/GC
 aj70bFlwIjHmV6k+YiCTVrt6jo02QxsEQSKzHWd3nMgtF5js2yvMX56A6WX9HFYkHYEDDjtxELz
 XTV41DnNtmmY4Eg==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665

Add of_genpd_add_subdomain_map() helper function to support
hierarchical PM domains defined by using power-domains-map
property (c.f. nexus node maps in DT spec, section 2.5.1).

This enables PM domain providers with #power-domain-cells > 0 to
establish subdomain relationships via the power-domain-map property,
which was not previously possible.

This new helper function
- uses an OF helper to iterate to over entries in power-domain-map
- For each mapped entry: extracts child specifier, resolves parent phandle,
  extracts parent specifier args, and establishes subdomain relationship
- Uses genpd_add_subdomain() with proper gpd_list_lock mutex protection

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

Signed-off-by: Kevin Hilman (TI.com) <khilman@baylibre.com>
---
 drivers/pmdomain/core.c   | 64 ++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_domain.h |  9 +++++++
 2 files changed, 73 insertions(+)

diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
index 61c2277c9ce3..592e9126896c 100644
--- a/drivers/pmdomain/core.c
+++ b/drivers/pmdomain/core.c
@@ -3483,6 +3483,70 @@ int of_genpd_parse_idle_states(struct device_node *dn,
 }
 EXPORT_SYMBOL_GPL(of_genpd_parse_idle_states);
 
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
+			break;
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
+		/* Get parent power domain from provider and establish subdomain relationship */
+		mutex_lock(&gpd_list_lock);
+
+		parent_genpd = genpd_get_from_provider(&parent_args);
+		if (IS_ERR(parent_genpd)) {
+			mutex_unlock(&gpd_list_lock);
+			of_node_put(parent_args.np);
+			ret = PTR_ERR(parent_genpd);
+			dev_err(&genpd->dev, "failed to get parent domain: %d\n", ret);
+			break;
+		}
+
+		ret = genpd_add_subdomain(parent_genpd, genpd);
+		mutex_unlock(&gpd_list_lock);
+		of_node_put(parent_args.np);
+
+		if (ret) {
+			dev_err(&genpd->dev, "failed to add as subdomain of %s: %d\n",
+				parent_genpd->name, ret);
+			break;
+		}
+
+		dev_info(&genpd->dev, "added as subdomain of %s\n",
+			parent_genpd->name);
+	}
+
+	return ret;
+}
+
 /**
  * of_genpd_sync_state() - A common sync_state function for genpd providers
  * @np: The device node the genpd provider is associated with.
diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
index f67a2cb7d781..3585acb89b83 100644
--- a/include/linux/pm_domain.h
+++ b/include/linux/pm_domain.h
@@ -462,6 +462,8 @@ int of_genpd_add_subdomain(const struct of_phandle_args *parent_spec,
 int of_genpd_remove_subdomain(const struct of_phandle_args *parent_spec,
 			      const struct of_phandle_args *subdomain_spec);
 struct generic_pm_domain *of_genpd_remove_last(struct device_node *np);
+int of_genpd_add_subdomain_map(struct device_node *np,
+			       struct genpd_onecell_data *data);
 int of_genpd_parse_idle_states(struct device_node *dn,
 			       struct genpd_power_state **states, int *n);
 void of_genpd_sync_state(struct device_node *np);
@@ -504,6 +506,13 @@ static inline int of_genpd_remove_subdomain(const struct of_phandle_args *parent
 	return -ENODEV;
 }
 
+static int of_genpd_add_subdomain_map(struct device_node *np,
+				      struct generic_pm_domain *genpd,
+				      int index)
+{
+	return -ENODEV;
+}
+
 static inline int of_genpd_parse_idle_states(struct device_node *dn,
 			struct genpd_power_state **states, int *n)
 {

-- 
2.51.0


