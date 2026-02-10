Return-Path: <devicetree+bounces-264420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GN0qEvw0i2myRgAAu9opvQ
	(envelope-from <devicetree+bounces-264420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:39:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FF711B4AC
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 14:39:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 94FD430151F4
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34A80329E6B;
	Tue, 10 Feb 2026 13:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i25XJUIn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14B532861D
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770730743; cv=none; b=CiLCCcOdglIgcd0DhRvj9xtw2Le0W9wGEToYUCCg+lZW5d2HvG7mo+H0j0C4c9b1IM1ugBgKq+pz84w1iEz+nGtJdQDSQxGupikkxrHKgqtQ7yc72XhRoUyJKj+8OboBAa/GTIlUPRwKNjYpyXWZNL1pburhbZy6cwicLgMADHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770730743; c=relaxed/simple;
	bh=TbPJ3FjFrE2tq53WqqU4kRyhPkLnNnNnPD60wqZ0fxk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XCQJA5oTNmaYVhQpw5npluA3kTa9BjlR0GSGtCmKhadD0+FECOWDLF6meSvoAEW3/j3e7H18dGM82BzhIrgSSLj0pCZAYCKxBXCNN5RpD2X4Bq+2f1BhMHCbf0IGm7rMZZNUQNlPvJBgpo7CNYJoJ3IP/mNREaoQtJmRGNYNrEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i25XJUIn; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4805ef35864so48298645e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 05:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770730740; x=1771335540; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HGNEecakAfXorcTTEznVuRkn8Ex5W+QcTjU+PIsrpQQ=;
        b=i25XJUIn7Go0M8QB8GqI5tVdaozJp33kFC0kLOCUO8MvT+ceZDrDw3Bg01UHAyD0k7
         hbVaUI22fctTVvgaLeko7ZSMqm4WnMYTqQ8sHsHqNHgSC3cbnkcWH8F0SW1Oi+qNDW2l
         xJpBSpvOcod3+IeF3TZEwz/0ggCBPQ8YS1IUmNxzDeMHcebx/lbbllbC9vHl4cPG3vNZ
         ayDEV7DAv+MB71Fo62hwtcwceh6bwWrbGb+xIBnw4uZDbqgqW8ctyajOB+kicljCQ1D4
         dh46YrWZtwqM0x2+eAxxE3S5nBQz7baFQMsbXUb9CbMYKQsfd3MOmq0WEAHcfEi3Se/E
         DrAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770730740; x=1771335540;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HGNEecakAfXorcTTEznVuRkn8Ex5W+QcTjU+PIsrpQQ=;
        b=rCjy+tfXHv66SSJeMJIoAPM2N/plIWDOtDyP1DGdmXFyAys9lxGMEFG55J9ybwJ2qJ
         Vj1wkBJykIa5EUATZbldV4mho087vGNkBrp/uXfHPtF+uv2qKSlzB4gKuHyrIJLH6/4z
         sVfQpO5/71j42sm5htK3hK4Rh5kp5bX8BnrCYFFYS79RcooUVUgf8RZRhpNojH26oVS/
         REf9YBVRnJnXEYB4GaqdPh3x6mJyIKE6uVlzEd0226tKXPSl5cjrf7vny0id5ohVqDUi
         OjU6iR6yhwqg3zdrqTkZlWJCA3Crsl3S2NF3b9CgSwn9jR8Kv0NIrUSuP1lLpjEl1yKf
         g8ZA==
X-Forwarded-Encrypted: i=1; AJvYcCU6pZldnt+ZbLr1Ux9qPSvgS/WGfRNt3eFLbBsVHoecjqeHUvt3nq2c65mPqv6rSGF6vuxrm0bUBxzF@vger.kernel.org
X-Gm-Message-State: AOJu0YzaHs32K7l4/mfzp5BP3KQs02qiBWDPUyPGoSZvKPe7NmwNA1IY
	pM5/z7FcRhjtxp3UwLsfrfM9GZXu7/M0QPMSt740K2b1W9oAzOO1L+20
X-Gm-Gg: AZuq6aL4qz4xmcx2cBcaj//1V5gJiR7To6DKjy2SE+kEf6JqmV47+XOTeXcMhBELNX6
	23q0xVPqzgNYSl1LxME982hLMG7jaeq40gZ+ZS8MJFPgB4uwzKgSutbUgDdFd4agEDrIRs5N02r
	I3JC913hOf2eK2jhK+/4l3EF26SSdCh8/G9ASMmsu08qXG8r9yPjqXDm6Okqn0taQ2bHlxwAKt+
	gZFU7FFq/G+QskETfO5pwr2CCI9WIxfBRTRsHY7NvYDVbby/jUdU8zYIHiWeH8AjGJOdzyHJRi1
	mHDTaUD+ysY4e9M8fHoisIisXrLv40h7yMabj6uk3wZokvd5Hjv/MKdJNB7N+islYnMDokaxOMs
	D9f3Aq+3TmKg/xvMLX4BrO/jg1Po6PT4zeRUJ+11iwuHwwqrDalaZURRPaSGZcTQgbbcpnuiT+W
	yYkrBv/xSJBbrZg0W1pT8+yHm8eBYBeFSr7A==
X-Received: by 2002:a05:600c:3b1e:b0:482:eec4:772 with SMTP id 5b1f17b1804b1-48350833938mr27829925e9.32.1770730739808;
        Tue, 10 Feb 2026 05:38:59 -0800 (PST)
Received: from taln60.nuvoton.co.il ([212.199.177.18])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d8df8sm66773415e9.3.2026.02.10.05.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 05:38:59 -0800 (PST)
From: Tomer Maimon <tmaimon77@gmail.com>
To: andrew@codeconstruct.com.au,
	avifishman70@gmail.com,
	tali.perry1@gmail.com,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: venture@google.com,
	yuenn@google.com,
	benjaminfair@google.com,
	joel@jms.id.au,
	openbmc@lists.ozlabs.org,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tomer Maimon <tmaimon77@gmail.com>
Subject: [PATCH v1 2/2] watchdog: npcm: Add reset status support
Date: Tue, 10 Feb 2026 15:38:43 +0200
Message-Id: <20260210133843.1078463-3-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260210133843.1078463-1-tmaimon77@gmail.com>
References: <20260210133843.1078463-1-tmaimon77@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264420-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[codeconstruct.com.au,gmail.com,linux-watchdog.org,roeck-us.net,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[google.com,jms.id.au,lists.ozlabs.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tmaimon77@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 27FF711B4AC
X-Rspamd-Action: no action

Add reset status detection for NPCM watchdog driver on both NPCM7XX and
NPCM8XX platforms. Implement GCR register integration via syscon for
reset status detection and configurable reset type mapping via device
tree properties.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 drivers/watchdog/npcm_wdt.c | 110 ++++++++++++++++++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/drivers/watchdog/npcm_wdt.c b/drivers/watchdog/npcm_wdt.c
index e62ea054bc61..ebece5d6240a 100644
--- a/drivers/watchdog/npcm_wdt.c
+++ b/drivers/watchdog/npcm_wdt.c
@@ -12,9 +12,25 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/watchdog.h>
+#include <linux/regmap.h>
+#include <linux/mfd/syscon.h>
+
+#define NPCM7XX_RESSR_OFFSET	0x6C
+#define NPCM7XX_INTCR2_OFFSET	0x60
 
 #define NPCM_WTCR	0x1C
 
+#define NPCM7XX_PORST	BIT(31)
+#define NPCM7XX_CORST	BIT(30)
+#define NPCM7XX_WD0RST	BIT(29)
+#define NPCM7XX_WD1RST	BIT(24)
+#define NPCM7XX_WD2RST	BIT(23)
+#define NPCM7XX_SWR1RST	BIT(28)
+#define NPCM7XX_SWR2RST	BIT(27)
+#define NPCM7XX_SWR3RST	BIT(26)
+#define NPCM7XX_SWR4RST	BIT(25)
+#define NPCM8XX_RST	(GENMASK(31, 23) | GENMASK(15, 12))
+
 #define NPCM_WTCLK	(BIT(10) | BIT(11))	/* Clock divider */
 #define NPCM_WTE	BIT(7)			/* Enable */
 #define NPCM_WTIE	BIT(6)			/* Enable irq */
@@ -45,6 +61,9 @@ struct npcm_wdt {
 	struct watchdog_device  wdd;
 	void __iomem		*reg;
 	struct clk		*clk;
+	u32			card_reset;
+	u32			ext1_reset;
+	u32			ext2_reset;
 };
 
 static inline struct npcm_wdt *to_npcm_wdt(struct watchdog_device *wdd)
@@ -185,6 +204,95 @@ static const struct watchdog_ops npcm_wdt_ops = {
 	.restart = npcm_wdt_restart,
 };
 
+static u32 npcm_wdt_reset_type(const char *reset_type)
+{
+	if (!strcmp(reset_type, "porst"))
+		return NPCM7XX_PORST;
+	else if (!strcmp(reset_type, "corst"))
+		return NPCM7XX_CORST;
+	else if (!strcmp(reset_type, "wd0"))
+		return NPCM7XX_WD0RST;
+	else if (!strcmp(reset_type, "wd1"))
+		return NPCM7XX_WD1RST;
+	else if (!strcmp(reset_type, "wd2"))
+		return NPCM7XX_WD2RST;
+	else if (!strcmp(reset_type, "sw1"))
+		return NPCM7XX_SWR1RST;
+	else if (!strcmp(reset_type, "sw2"))
+		return NPCM7XX_SWR2RST;
+	else if (!strcmp(reset_type, "sw3"))
+		return NPCM7XX_SWR3RST;
+	else if (!strcmp(reset_type, "sw4"))
+		return NPCM7XX_SWR4RST;
+
+	return 0;
+}
+
+static void npcm_get_reset_status(struct npcm_wdt *wdt, struct device *dev)
+{
+	const char *card_reset_type;
+	const char *ext1_reset_type;
+	const char *ext2_reset_type;
+	struct regmap *gcr_regmap;
+	u32 rstval, ressrval;
+	int ret;
+
+	gcr_regmap = syscon_regmap_lookup_by_phandle(dev->of_node, "syscon");
+	if (IS_ERR(gcr_regmap)) {
+		dev_warn(dev, "Failed to find gcr syscon, WD reset status not supported\n");
+		return;
+	}
+
+	ret = of_property_read_string(dev->of_node,
+				      "nuvoton,card-reset-type",
+				      &card_reset_type);
+	if (ret)
+		wdt->card_reset = NPCM7XX_PORST;
+	else
+		wdt->card_reset = npcm_wdt_reset_type(card_reset_type);
+
+	ret = of_property_read_string(dev->of_node,
+				      "nuvoton,ext1-reset-type",
+				      &ext1_reset_type);
+	if (ret)
+		wdt->ext1_reset = 0;
+	else
+		wdt->ext1_reset = npcm_wdt_reset_type(ext1_reset_type);
+
+	ret = of_property_read_string(dev->of_node,
+				      "nuvoton,ext2-reset-type",
+				      &ext2_reset_type);
+	if (ret)
+		wdt->ext2_reset = 0;
+	else
+		wdt->ext2_reset = npcm_wdt_reset_type(ext2_reset_type);
+
+	regmap_read(gcr_regmap, NPCM7XX_INTCR2_OFFSET, &rstval);
+	/* prefer the most specific SoC first */
+	if (of_device_is_compatible(dev->of_node, "nuvoton,npcm845-wdt")) {
+		regmap_write(gcr_regmap, NPCM7XX_INTCR2_OFFSET,
+			     rstval & ~NPCM8XX_RST);
+	} else if (of_device_is_compatible(dev->of_node, "nuvoton,npcm750-wdt")) {
+		if ((rstval & NPCM7XX_PORST) == 0) {
+			rstval = NPCM7XX_PORST;
+			regmap_write(gcr_regmap, NPCM7XX_INTCR2_OFFSET,
+				     rstval | NPCM7XX_PORST);
+		} else {
+			rstval = 0;
+		}
+		regmap_read(gcr_regmap, NPCM7XX_RESSR_OFFSET, &ressrval);
+		rstval |= ressrval;
+		regmap_write(gcr_regmap, NPCM7XX_RESSR_OFFSET, ressrval);
+	}
+
+	if (rstval & wdt->card_reset)
+		wdt->wdd.bootstatus |= WDIOF_CARDRESET;
+	if (rstval & wdt->ext1_reset)
+		wdt->wdd.bootstatus |= WDIOF_EXTERN1;
+	if (rstval & wdt->ext2_reset)
+		wdt->wdd.bootstatus |= WDIOF_EXTERN2;
+}
+
 static int npcm_wdt_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -208,6 +316,8 @@ static int npcm_wdt_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
+	npcm_get_reset_status(wdt, dev);
+
 	wdt->wdd.info = &npcm_wdt_info;
 	wdt->wdd.ops = &npcm_wdt_ops;
 	wdt->wdd.min_timeout = 1;
-- 
2.34.1


