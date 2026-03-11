Return-Path: <devicetree+bounces-273770-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCftCTq1sGlvmQIAu9opvQ
	(envelope-from <devicetree+bounces-273770-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:20:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA12F259AC7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 01:20:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E06A0302F701
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 00:20:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21F9F31E836;
	Wed, 11 Mar 2026 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nUMjab5q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B5B31960A
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 00:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773188393; cv=none; b=GNxApIY93+A7DD6ej1r8Lultz6XGkSVOhtGM18Ue+r3vfIXGtQU2TSsUVpj2SmdAxDOvO/EUQrkDhJHxsoUjHKJMiWT8l2TWypIdB5l3uP6M3KbKXD+n+0hNfty5uy7BWXI9DVMwxQzyEvmTkjbMCUw8ebZM9SlyJep0DzcriO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773188393; c=relaxed/simple;
	bh=SpNaRu6uMd8HuXBGwkIHZTjCWaD47krsvCZKz8R9UDw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k9fBR3r524KxVs0By01ILCqRW/9i/KJ6PCwZlhCql8w2iaxXwInRXWeY2HATnCheGKIFZoeBrx0GlBctw6L2C7pXIaXeliguC1lhoEuRMG67fIXYmm5l34sfCSlStSCWgWaYfE2Y7U7RGGqrsDNDrIl1ZZy/Ah699rXWvEXFgbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nUMjab5q; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2ad4d639db3so60004605ad.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 17:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773188391; x=1773793191; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G4UkaIVkjTxZ19xGJc/X7b8NyYsvb0FdSydtov7Zv/8=;
        b=nUMjab5qVm2UpxcrlYiA6CoXy6V2OUkR9Ktb0a6gCUH+mnF+pEaKo8prno5x4vm2ot
         vXL85vbxG7lhtRPQgWFFreLDhdugyCkqXHRnst35im5t0fTFjdrWVQH19/wUZ3FIYoTw
         nxx1CZ4cI3V4Ci8UPawPVGcrF/Qj4yYvkQWR0vmHIxTjzBYqlvfM2eHjEtcvF1Y70SAz
         mAKyXpNUwZJEsqR6Sbxf76zwe6WFKkA8novm5Hkz8Pb8rduETLa4A73ZhV2thRihFnQO
         J8c74+SiF2dGv6//JJ3XGIYTi82JGU5jHTeqjjFqrYtr4GR8OI4iLM497COWkTmUtuU3
         Q/7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773188391; x=1773793191;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=G4UkaIVkjTxZ19xGJc/X7b8NyYsvb0FdSydtov7Zv/8=;
        b=glPf+W8PnJpZc5S7WYRKD9q6yFcrscpLgBdoTyYX+Si6D5XGw01OVXXW6jkA+Pf0I+
         KVUwIQpdciPP5x91d4EjkA/LlDyMNjSd/ET49zAVsn3YR6HGeT0bF+jvgASyLLI6kFa+
         AH5+JwSVjqy/Kse+XQT082ZlcaFWzjK9YOz7DzHdXpIyDiS8BsQvYi33IxWlzyFD579g
         iO/8VREcdot0QsytwmW6XH85qqc4lrVusVg+va2BmUTAPjaBtnVYAqQfiJVpoSSCZMUI
         a1XPkgxMkLiG0iRuNi1FXhzYdQ9n2LnelxEXil+PL1UrjZoepNWBhOFe/lJrJ3nLsVbJ
         E/Lw==
X-Forwarded-Encrypted: i=1; AJvYcCXjuBHGQ1cCTaVenz6rAo2Oo1+6W2024arDUKemtaFjqupXHBQyNCl8U1ucf7jitpY/7uOZ5IORSQqH@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmewz2AZTELzfaVp5NYehmIDtuG/TgUqoJxy4ZFCPxGgzOV26D
	JlCri1c79z+XbRPc+qSQo42QY7ra1Lgls3Qk8EmsKMYWYFg3AbSzz8AU7sC2/awVWmI=
X-Gm-Gg: ATEYQzx4ta2iTL7vmFN6Tvnzm25uXrZMDQS23LUW+QHbI41BPAameU9bRI+QGHzNpdd
	vDrxaTEkuRlqrWFg+H4LtPeUA2YurlEolZEEywDigd0AgkauetTsvlEDT3oy1tL4YSPd9eIJns3
	Cikz7U9sYsf2mtMNLOJGxHMMHAbfO15S58RROqJMI0BM6m/YJn6IOJUl/eRVkdmCcBe9CxG6ttd
	9Eku1F9RK9Z8t+CvTb5zhwt6SUneBa6hrwmnFW9TAcfOGt1FMLrswbM+OEjYDLW3TvAGkJCJ0QR
	4ZnCwgIrP93/eADw1r5pnthAx47enDKfEAr8WDWMnukPY9pgo4W7a73L/lHpiw7Sj8w+UbEEAub
	Bw4VmYz5747WA+YG/LTXClw5DPb/pmV1io+cJl1T82VhIOo+Rbg9skhoyUZHkZk1VwC1BzArSBu
	q/RlE1sSdc0APV7rVl1wT5Q7VE7n7mtv4=
X-Received: by 2002:a17:902:e5cf:b0:2ae:512b:eea9 with SMTP id d9443c01a7336-2aeae8932a2mr6152945ad.36.1773188390908;
        Tue, 10 Mar 2026 17:19:50 -0700 (PDT)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae222ec3sm4843865ad.1.2026.03.10.17.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 17:19:50 -0700 (PDT)
From: "Kevin Hilman (TI)" <khilman@baylibre.com>
Date: Tue, 10 Mar 2026 17:19:25 -0700
Subject: [PATCH 3/3] pmdomain: arm_scmi: add support for domain hierarchies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-topic-lpm-pmdomain-child-ids-v1-3-5361687a18ff@baylibre.com>
References: <20260310-topic-lpm-pmdomain-child-ids-v1-0-5361687a18ff@baylibre.com>
In-Reply-To: <20260310-topic-lpm-pmdomain-child-ids-v1-0-5361687a18ff@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.15-dev-53144
X-Developer-Signature: v=1; a=openpgp-sha256; l=1610; i=khilman@baylibre.com;
 h=from:subject:message-id; bh=SpNaRu6uMd8HuXBGwkIHZTjCWaD47krsvCZKz8R9UDw=;
 b=owEBbQKS/ZANAwAIAVk3GJrT+8ZlAcsmYgBpsLUiDjI6WNZvQ23csmjtCDm2sG6My9oxiWgsj
 jofXq40XHKJAjMEAAEIAB0WIQR7h0YOFpJ/qfW/8QxZNxia0/vGZQUCabC1IgAKCRBZNxia0/vG
 ZQFQEACPB90DS6xyqHEHKzUMOrtuYJlGewKdEEMh/l5LQXY41rYLvJsbqdV5LCx66GdglEiD4NP
 6jeDqaJIiZpGIJbxgDgw8y8w6vwseR+NoC8YtF/UTEhOrwYCzp0xxdI9oo/WwIr+Z2zd0EBnVr+
 y8grEV9ktvw4lR6g1KIMnvqIw3kgbMkn4FwM4Oi5xfzdEvH6SB2E6A0ayo8TA4pNym6k8XEgNgD
 uJr8d1plI43iOLDyHoQXaRjzp2Hf+zqNtMDKQL2H6McB1m08HIeuxUU21z3xIci4gF4y0XXROJX
 fHsBHaeAECe8YOGRatDhLklxJqTGyerbGv8F6nNqa1fCsyBy3lX9GjMhcUsrKln1ODUbvCTQKR0
 aahV1rNojPIrZvK4RyS0Uxb79RJ9vDjDnggMs0e1EyE2oFG6moVl1tzla968Q5o28bk6jP1hrDH
 kKq64Jd+N7nZzEgls8sh9PnSajocfYaDG0ae1zxUTRND2nx4aWfRgACm8mC/PiWfdmz4RbQRAK6
 jmRP69B4LbXGNZ9uhBO3Lvcta53D1eCazu6HrlkDwYozWWJyLZmchRhLHkpHu1Q8VSOL8MS91Jo
 x9K50uoHLg8IkriC+0sLR6QTRfqAlIknTnzIVpYRj40VFQvP69cRTE3zxdR9UZPVLIvsGs3QVT8
 93oWglDypvxbtHg==
X-Developer-Key: i=khilman@baylibre.com; a=openpgp;
 fpr=7B87460E16927FA9F5BFF10C5937189AD3FBC665
X-Rspamd-Queue-Id: EA12F259AC7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-273770-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,baylibre.com:mid,baylibre.com:email,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Action: no action

After primary SCMI pmdomain is created, use new of_genpd helper which
checks for child domain mappings defined in power-domains-child-ids.

Also remove any child domain mappings when SCMI domain is removed.

Signed-off-by: Kevin Hilman (TI) <khilman@baylibre.com>
---
 drivers/pmdomain/arm/scmi_pm_domain.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/pmdomain/arm/scmi_pm_domain.c b/drivers/pmdomain/arm/scmi_pm_domain.c
index b5e2ffd5ea64..9d8faef44aa9 100644
--- a/drivers/pmdomain/arm/scmi_pm_domain.c
+++ b/drivers/pmdomain/arm/scmi_pm_domain.c
@@ -114,6 +114,14 @@ static int scmi_pm_domain_probe(struct scmi_device *sdev)
 
 	dev_set_drvdata(dev, scmi_pd_data);
 
+	/*
+	 * Parse (optional) power-domains-child-ids property to
+	 * establish parent-child relationships
+	 */
+	ret = of_genpd_add_child_ids(np, scmi_pd_data);
+	if (ret < 0 && ret != -ENOENT)
+		pr_err("Failed to parse power-domains-child-ids for %pOF: %d\n", np, ret);
+
 	return 0;
 err_rm_genpds:
 	for (i = num_domains - 1; i >= 0; i--)
@@ -129,9 +137,13 @@ static void scmi_pm_domain_remove(struct scmi_device *sdev)
 	struct device *dev = &sdev->dev;
 	struct device_node *np = dev->of_node;
 
+	scmi_pd_data = dev_get_drvdata(dev);
+
+	/* Remove any parent-child relationships established at probe time */
+	of_genpd_remove_child_ids(np, scmi_pd_data);
+
 	of_genpd_del_provider(np);
 
-	scmi_pd_data = dev_get_drvdata(dev);
 	for (i = 0; i < scmi_pd_data->num_domains; i++) {
 		if (!scmi_pd_data->domains[i])
 			continue;

-- 
2.51.0


