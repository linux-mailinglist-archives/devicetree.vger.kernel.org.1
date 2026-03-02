Return-Path: <devicetree+bounces-270090-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HjgFwyrpWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270090-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:21:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E3A1DBB7B
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6A2330D9C89
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F74F41C0BE;
	Mon,  2 Mar 2026 15:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l+rEQAO/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBAA41B355
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464442; cv=none; b=m5QFMfqrhgqPjrGngxe1LH6scMxJl8yhrBPyXMqSm2K51gDVWqJhxgaayWHxwFq87GOeGQufPjesP8CuSj2LOYPG8zl41MmBSzbVqGoHNIyra+D8Y3iNBHLuN/kDxVvDzz5uJImejYsIMLHHO3y5yc4/ojxSoqjvN4NObyrpveg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464442; c=relaxed/simple;
	bh=oROrpMpGRFTyu9YVgnx3q3a5mnQL/8tXkXG+ZsNoOvM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PYAmYwjwEO83GqP+64TZOSj4Te67vGlkrAEkfz/fnRx7+vLTRO7N1YR6baxrN5p9Y4p19jq6jch1GHoRjvSncVTrcyWqlu3Q3dbhyhJoWbWG6nOYn4EuQyKdtpkxl+y9l785W7u7daqd8LcTGXtZFo7vfc3+I9Jn/jWxtn/5oGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l+rEQAO/; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4836f363d0dso40341685e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464437; x=1773069237; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1vMnihDprCpz00E0mqvOLaz+xzD900tygzUTesRDljg=;
        b=l+rEQAO/ZtZ5a3ll0kTsA+nD+oMAJfL2okPyrhhRV6LTCS/e/TYb4o9MTORAW0BXpw
         MeHb0aVXUrMwouA2f9riftkYIhrw3T/fJRqqf6WFgdRRrdcPbGwYHMKHy7sSbaKmmsPQ
         Yj4I5m9RGEqhQvVATuKo3ay5iNppbT3KKIls78bEu7IcCoBIZzFICVWYyEPfDs8d5U7L
         aW64vNu2iZyFuyE+/YgeUODWQ5qCo9cEy4/s47D9TnSkau7ccbtmChvEVw/lGz8c6WmP
         cMJDiFCtEqhWoe+sRa5fKd3rXM9/c5dH2w4VJMr2HY9UVS0wyKQZblPitgA8xK4cjQ1J
         BIRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464437; x=1773069237;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1vMnihDprCpz00E0mqvOLaz+xzD900tygzUTesRDljg=;
        b=LKa9+DK71/MWBzrS0uuMgDrxpzMi/lWytGACgjbpT1UH/Kj14uBBUSlw4hzzj61Z2e
         a/+/JdxPtXVrQXJuLpx7pjPHBi9dIAOLDaQF7tD5O9vU5tCsBp2jtQOZ5w4m9IG8eqYs
         1Bj566Xa0v8ABMoT1jvRLWON7wGrxKs3ALhEY6IPmdiq4W2jR5GfbiV7/Z9QMJhuz/rj
         5NsjeCPZzHC+zRtchjsbztRK5btNAP6lSlNcH5Eb20g5rFUvuSrBYjFOQlKeXOljWvGO
         AJO7kaAbcaDO0uutr0bE4EiAUoIXvsARJ3CuGw2WdeKcsenpWZcqfj+hd7GfEHWMURMO
         P7zg==
X-Forwarded-Encrypted: i=1; AJvYcCWdkHVj9Zk4TWtUk9JVOO2qSxCbV9pHfT4kUC8NGZIGJP0C2cK6RpWgYoWbh7IeOLRp+aFqHhr99Zxf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0mI4/donJLptzNNkrQUdYekti7GOVz/4OkIZQ86bGbuw2xYCP
	q7LvdzKIhrxzz6j/wzw+QUMlSjjZ4cbYgMb0XkvR9ofJhwgJftxE1bvw
X-Gm-Gg: ATEYQzyN4CvBoqBFOwz8L2ws7ICgS3wC/wIteK7ns/F4FN73fFZnMkvBI8DODfFPqL/
	Q6+9z6FOIbP8xlPSS/lGBnE0WVK2VIB1Emm1f5loJ4DkE69dn/ibdfGrVj1jUJoHDtLiGGkVj2v
	uTHsQlGLhokqbNJbDk1taQqMhyxRcqC5TNpPqM0Wmih/x9L2KnPodzguhnk5VWPmtWjZf2+6zUO
	HuOmAlwRmVeYNfvcoYZxoLxir+kuAn5T8pZCnFIF91PIpO2fCrQVSM/B1iiaaqEoBvUoe/kpGYN
	jmTcAnr8HBC2xoxIbj6E+j/RvN1XqHEpjx5dpocXj0yCuT+hc5dhYIAbt+7+NsISkmJ574DlzHA
	Bre34fcemNKZ5C5k38vEzywqKIw58mP/b53az+73nibmmUGb2JtXT1zbDwyAaWkNj0t5KYiDk/S
	nNihnaZCEyvof2lxe3Lus2/Tpmjv4w4P1qCnnItAbuEOI6BV+q5neC5kDRNuIV1mE5YQ==
X-Received: by 2002:a05:600c:c16e:b0:482:e5d4:b7ca with SMTP id 5b1f17b1804b1-483c9bbb8d3mr200785895e9.8.1772464437211;
        Mon, 02 Mar 2026 07:13:57 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:13:56 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 02 Mar 2026 16:13:26 +0100
Subject: [PATCH 05/10] mmc: sdhci-of-k1: add AIB register support for
 voltage switching
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-orangepi-sd-card-uhs-v1-5-89c219973c0c@gmail.com>
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
In-Reply-To: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: B2E3A1DBB7B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270090-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add support for SpacemiT K1 Analog Interface Block (AIB) register
programming required for proper UHS voltage switching. The AIB register
controls SoC-level voltage domain coordination between the SDHCI
controller and I/O pins.

- Add AIB register address parsing from device tree
- Implement authentication sequence for secure register access
- Add voltage domain switching for 3.3V/1.8V operation

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 drivers/mmc/host/sdhci-of-k1.c | 60 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index 2a982bca2a50ca96f43af7b4de5bc4fb4b5b195b..9425bde6a72541bd628997e91f957072a6266c25 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -68,12 +68,19 @@
 #define  SDHC_PHY_DRIVE_SEL		GENMASK(2, 0)
 #define  SDHC_RX_BIAS_CTRL		BIT(5)
 
+#define  MMC1_IO_V18EN			BIT(2)
+#define  AKEY_ASFAR			0xBABA
+#define  AKEY_ASSAR			0xEB10
+
 struct spacemit_sdhci_host {
 	struct clk *clk_core;
 	struct clk *clk_io;
 	struct pinctrl *pinctrl;
 	struct pinctrl_state *pinctrl_default;
 	struct pinctrl_state *pinctrl_uhs;
+	u32 aib_mmc1_io_reg;
+	u32 apbc_asfar_reg;
+	u32 apbc_assar_reg;
 };
 
 /* All helper functions will update clr/set while preserve rest bits */
@@ -220,6 +227,47 @@ static void spacemit_sdhci_pre_hs400_to_hs200(struct mmc_host *mmc)
 			       SPACEMIT_SDHC_PHY_CTRL_REG);
 }
 
+static void spacemit_sdhci_set_aib_mmc1_io(struct sdhci_host *host, int signal_voltage)
+{
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct spacemit_sdhci_host *sdhst = sdhci_pltfm_priv(pltfm_host);
+	void __iomem *aib_reg, *asfar_reg, *assar_reg;
+	u32 reg_value;
+
+	if (!sdhst->aib_mmc1_io_reg || !sdhst->apbc_asfar_reg || !sdhst->apbc_assar_reg)
+		return;
+
+	asfar_reg = ioremap(sdhst->apbc_asfar_reg, 4);
+	assar_reg = ioremap(sdhst->apbc_assar_reg, 4);
+	aib_reg = ioremap(sdhst->aib_mmc1_io_reg, 4);
+
+	if (!asfar_reg || !assar_reg || !aib_reg) {
+		dev_err(mmc_dev(host->mmc), "Failed to map AIB registers\n");
+		goto cleanup;
+	}
+
+	writel(AKEY_ASFAR, asfar_reg);
+	writel(AKEY_ASSAR, assar_reg);
+	reg_value = readl(aib_reg);
+
+	if (signal_voltage == MMC_SIGNAL_VOLTAGE_180)
+		reg_value |= MMC1_IO_V18EN;
+	else
+		reg_value &= ~MMC1_IO_V18EN;
+
+	writel(AKEY_ASFAR, asfar_reg);
+	writel(AKEY_ASSAR, assar_reg);
+	writel(reg_value, aib_reg);
+
+cleanup:
+	if (aib_reg)
+		iounmap(aib_reg);
+	if (asfar_reg)
+		iounmap(asfar_reg);
+	if (assar_reg)
+		iounmap(assar_reg);
+}
+
 static int spacemit_sdhci_start_signal_voltage_switch(struct mmc_host *mmc,
 						      struct mmc_ios *ios)
 {
@@ -233,6 +281,8 @@ static int spacemit_sdhci_start_signal_voltage_switch(struct mmc_host *mmc,
 	if (ret)
 		return ret;
 
+	spacemit_sdhci_set_aib_mmc1_io(host, ios->signal_voltage);
+
 	/* Select appropriate pinctrl state based on signal voltage */
 	if (sdhst->pinctrl) {
 		switch (ios->signal_voltage) {
@@ -341,6 +391,16 @@ static int spacemit_sdhci_probe(struct platform_device *pdev)
 		dev_warn(dev, "Failed to get regulators: %d\n", ret);
 
 	sdhst = sdhci_pltfm_priv(pltfm_host);
+
+	if (of_property_read_u32(dev->of_node, "spacemit,aib-mmc1-io-reg", &sdhst->aib_mmc1_io_reg))
+		sdhst->aib_mmc1_io_reg = 0;
+
+	if (of_property_read_u32(dev->of_node, "spacemit,apbc-asfar-reg", &sdhst->apbc_asfar_reg))
+		sdhst->apbc_asfar_reg = 0;
+
+	if (of_property_read_u32(dev->of_node, "spacemit,apbc-assar-reg", &sdhst->apbc_assar_reg))
+		sdhst->apbc_assar_reg = 0;
+
 	sdhst->pinctrl = devm_pinctrl_get(dev);
 	if (!IS_ERR(sdhst->pinctrl)) {
 		sdhst->pinctrl_default = pinctrl_lookup_state(sdhst->pinctrl, "default");

-- 
2.53.0


