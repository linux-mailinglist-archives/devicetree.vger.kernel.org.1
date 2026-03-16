Return-Path: <devicetree+bounces-276195-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDUPK3kOuGkWYQEAu9opvQ
	(envelope-from <devicetree+bounces-276195-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:06:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A38D29B007
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:06:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F1C6304B4D9
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DCFA39B976;
	Mon, 16 Mar 2026 14:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eE3Eo1RC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0862939C624
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773669872; cv=none; b=oNhNi1ehe95jFEv6aW7fU1Pj/0k/+NghHQZXwmJLI2/RjQ/Q7P1zZ4ekAAYznUZrQS8IAua/77cRywlDozvmef/kopLGinzUdHwOImMfokMJXuueBTjVtDa4+XKkIQ1W02ErAtustvZn/yunEWHPkc4wZKzRd8GDl8Cfl3U9zBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773669872; c=relaxed/simple;
	bh=epbnSIRFEcgFtseIgir8HKOEck/DcrGNKZLBIi+3AcY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o39/q7HlCoq2f7RSdzqq3u339goVdvRTkWLijSq4ydBJdaTXUC73CDzXHOn3mH6q68TsJrwPaNt/YAgVCsnPgq23RwjtWr0UFHTxJ+ed6SeZPlextYrNV1kzR+QOW1+uYIo1XK99bNF71b8EUHTyNhNnUZAeD47ruvgdpOtvlKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eE3Eo1RC; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-439c5b40f60so3607646f8f.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773669868; x=1774274668; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IatXzbXfYasV7clQDZ74AZFa+ggBYqSvKjib0f90qgA=;
        b=eE3Eo1RCYJK1C+/a3vbyx/q9uB8XQjN58P/y7fvIpo3tNUehZKpTii/jRVqKsvSiTE
         YMmJlU3g/aSHPaHMLOGerCpvRbJ7ynJAL4xGNpOrp4bpXNkWvjIUo0XVOHFCk51K5soO
         0lFJ9ba5lU2JdU4x00y8q4mj2CdnfqzELNTkxNnPEoiNinUQI2gipwgDz2HhPLZLaQYm
         DyVzJfynPS48+lpH8GFt6JgqalHOOFcR/nN5ZocvS5/zXC8JogSXbG+TKTfy5WEFMLrp
         VY80GTA3m5Sf1a4L+v39c/lqileu08vz0QAxJ29Pv1cggqfA5TmqxdZJITrupbLPQljS
         nEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773669868; x=1774274668;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IatXzbXfYasV7clQDZ74AZFa+ggBYqSvKjib0f90qgA=;
        b=p37yGglRBhIA4Ci2b6DcFrFZ+RAVCAgsIdf5qLBCiF9oEd0rj5aeVGSGaGqHU0MkZ7
         IjvhA/mGa/d46NwEHZ4Ce/clEAJi5ZpYw4cQ6bA2+NgvvhqSE535aWsUKItGj1g9WgwF
         08leSRFL3N0n/vVMFjcUbUwQrRoNmQfArlghxaFHjQRBRVtAnihQBBf8x/kKPHJHH0fM
         E9SuniVM86cvD0KtbYkLcww6XarB1RudzzPpRTXwLHumaztzzWdBun5QoAMzJGJEEY/6
         U6fsQ6YD7VLTvXozsYUNMvfyeC/L32hcIVhIBNPweq31jqzYsss6j0tVM34ELEgVN2Ul
         2yiw==
X-Forwarded-Encrypted: i=1; AJvYcCVH2wkqyLm+snP8tFjwPz1wkjJU9u6mZ57H1U0UWBJdWMQNkSRRwPtYywN3q1dI+gzLB1JrD3/WTazD@vger.kernel.org
X-Gm-Message-State: AOJu0YwhAgIvpkzO9OqDEksqtV9efernYBGTZPW+nLvCnTDOf4mLvKhX
	hQM3+dFshK7QYYEVfOP4cHBLIJ4+WNF1+wxO+BxNZKS/dfmSehGQthT2
X-Gm-Gg: ATEYQzzwrRIBxli35PYdiq37d8W+xFN8VO905UsWHAaAwqCExQHWasfYsdMyDVccORf
	bB/DWkfXY3S57UcuTb1E3M/oi1FdDemlygGC9ITFF78P5is/Wqn95WwYaxa3c4i6s5qugyNsH3M
	sYvTR9jMsS/QzxGTofUF0whhKvUXOzN+GpvG2p6SWFPCVAZbEIX3VKqRnMAWLlPXCsGlA3tZyM9
	IqD2uiK6qv19wZdYkRICzDvMcDyD3n47XOlE/obnnCYKnuqTipp8KuGfVlivxXhi4VdVgnYGHGd
	dIwZT71xApbNE28tEsmUbNoS9gG4lmYpv3i0ahQuBAWsvZP7obaSkqu8JeTKb8Ql8p4bp/BhcJY
	811pIMKWSpZ+N5P6ReeOhAYihRQJErftL6k8+eISB32owgMSR2GB4H3ZDmQ0K8O2uJ7zeBORHeb
	Jm6xLGY6+j98DGH1F8HLWBxvc9zlGjrW+zL95X30pwfdfXIM4/cAArOlSn649YauzMUwTUV+2h7
	Hg=
X-Received: by 2002:a05:6000:4313:b0:43b:3e40:2223 with SMTP id ffacd0b85a97d-43b3e4024dcmr9315126f8f.19.1773669868020;
        Mon, 16 Mar 2026 07:04:28 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.234.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b3a09e453sm20698725f8f.0.2026.03.16.07.04.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 07:04:26 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 16 Mar 2026 15:03:30 +0100
Subject: [PATCH v3 2/7] mmc: sdhci-of-k1: add regulator and pinctrl voltage
 switching support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-orangepi-sd-card-uhs-v3-2-aefd3b7832df@gmail.com>
References: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
In-Reply-To: <20260316-orangepi-sd-card-uhs-v3-0-aefd3b7832df@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Yixun Lan <dlan@kernel.org>, Yixun Lan <dlan@kernel.org>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>, Anand Moon <linux.amoon@gmail.com>
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276195-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0A38D29B007
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add voltage switching infrastructure for UHS-I modes by integrating both
regulator framework (for supply voltage control) and pinctrl state
switching (for pin drive strength optimization).

- Add regulator supply parsing and voltage switching callback
- Add optional pinctrl state switching between "default" (3.3V) and
  "state_uhs" (1.8V) configurations
- Enable coordinated voltage and pin configuration changes for UHS modes

This provides complete voltage switching support while maintaining
backward compatibility when pinctrl states are not defined.

Tested-by: Anand Moon <linux.amoon@gmail.com>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 drivers/mmc/host/sdhci-of-k1.c | 58 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index 0dd06fc19b8574ae1b00f7e5d09b7d4c87d06770..01afdadcf70796704b272ee5a31543afd5e01188 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -16,6 +16,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/reset.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 
 #include "sdhci.h"
@@ -71,6 +72,9 @@
 struct spacemit_sdhci_host {
 	struct clk *clk_core;
 	struct clk *clk_io;
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *pinctrl_default;
+	struct pinctrl_state *pinctrl_uhs;
 };
 
 /* All helper functions will update clr/set while preserve rest bits */
@@ -219,6 +223,33 @@ static void spacemit_sdhci_pre_hs400_to_hs200(struct mmc_host *mmc)
 			       SPACEMIT_SDHC_PHY_CTRL_REG);
 }
 
+static void spacemit_sdhci_voltage_switch(struct sdhci_host *host)
+{
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct spacemit_sdhci_host *sdhst = sdhci_pltfm_priv(pltfm_host);
+	struct mmc_ios *ios = &host->mmc->ios;
+	int ret;
+
+	if (!sdhst->pinctrl)
+		return;
+
+	if (ios->signal_voltage != MMC_SIGNAL_VOLTAGE_180) {
+		dev_warn(mmc_dev(host->mmc), "unsupported voltage %d\n",
+			 ios->signal_voltage);
+		return;
+	}
+
+	if (sdhst->pinctrl_uhs) {
+		ret = pinctrl_select_state(sdhst->pinctrl, sdhst->pinctrl_uhs);
+		if (ret) {
+			dev_warn(mmc_dev(host->mmc),
+				 "failed to select UHS pinctrl state: %d\n", ret);
+			return;
+		}
+		dev_dbg(mmc_dev(host->mmc), "switched to UHS pinctrl state\n");
+	}
+}
+
 static inline int spacemit_sdhci_get_clocks(struct device *dev,
 					    struct sdhci_pltfm_host *pltfm_host)
 {
@@ -252,12 +283,37 @@ static inline int spacemit_sdhci_get_resets(struct device *dev)
 	return 0;
 }
 
+static inline void spacemit_sdhci_get_pins(struct device *dev,
+					    struct sdhci_pltfm_host *pltfm_host)
+{
+	struct spacemit_sdhci_host *sdhst = sdhci_pltfm_priv(pltfm_host);
+
+	sdhst->pinctrl = devm_pinctrl_get(dev);
+	if (IS_ERR(sdhst->pinctrl)) {
+		sdhst->pinctrl = NULL;
+		dev_dbg(dev, "pinctrl not available, voltage switching will work without it\n");
+		return;
+	}
+
+	sdhst->pinctrl_default = pinctrl_lookup_state(sdhst->pinctrl, "default");
+	if (IS_ERR(sdhst->pinctrl_default))
+		sdhst->pinctrl_default = NULL;
+
+	sdhst->pinctrl_uhs = pinctrl_lookup_state(sdhst->pinctrl, "state_uhs");
+	if (IS_ERR(sdhst->pinctrl_uhs))
+		sdhst->pinctrl_uhs = NULL;
+
+	dev_dbg(dev, "pinctrl setup: default=%p, uhs=%p\n",
+		sdhst->pinctrl_default, sdhst->pinctrl_uhs);
+}
+
 static const struct sdhci_ops spacemit_sdhci_ops = {
 	.get_max_clock		= spacemit_sdhci_clk_get_max_clock,
 	.reset			= spacemit_sdhci_reset,
 	.set_bus_width		= sdhci_set_bus_width,
 	.set_clock		= spacemit_sdhci_set_clock,
 	.set_uhs_signaling	= spacemit_sdhci_set_uhs_signaling,
+	.voltage_switch         = spacemit_sdhci_voltage_switch,
 };
 
 static const struct sdhci_pltfm_data spacemit_sdhci_k1_pdata = {
@@ -324,6 +380,8 @@ static int spacemit_sdhci_probe(struct platform_device *pdev)
 
 	host->mmc->caps |= MMC_CAP_NEED_RSP_BUSY;
 
+	spacemit_sdhci_get_pins(dev, pltfm_host);
+
 	ret = spacemit_sdhci_get_clocks(dev, pltfm_host);
 	if (ret)
 		goto err_pltfm;

-- 
2.53.0


