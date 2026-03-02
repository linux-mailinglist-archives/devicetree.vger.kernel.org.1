Return-Path: <devicetree+bounces-270089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIs8OJ2qpWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:19:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FA01DBB02
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 76CB130FBD8E
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9365641324C;
	Mon,  2 Mar 2026 15:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G6rACf5v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D97411629
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464438; cv=none; b=SyqpzLhX+jWijoT3FlRoxB0GRhoHxI9gUrnFfYol1HpdrDj7PVrxIvhJQLpjcNjHnFCuHtz0jlt+i4l1zKVjbslvN8X39Vc0EGpzg17WK6q7rJ/RIYSwIceJJ92Rq9ErOFe3tp+wuKdwR/j7JJ2SL4Z8rBLhz+eFQTLqUkqPZLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464438; c=relaxed/simple;
	bh=l7yFNiOmqsvt7j2PZxlgkxZHr4AJ1C5sRtgpqni7WX8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pBZ2h91p+9lVrP/wINiP6POOAJTY575M5aiUG8Jl8oX41MVc9EL2x67/Tohrkb1zQSjPni3Toa9YuCOV+5FkfRD0fR8vE5GOwLF96dNWkzSQ7m7bMDh6hfv4MM+KXiVk4ohHZzB/8tt3MXom+WomfO9yEPuNNtl7M3h0a9SeG4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G6rACf5v; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-483a233819aso44379435e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464435; x=1773069235; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBh/BEMhIYd7yMIKn9wpAoeG/vOOsjbo+uR3/+VkGQw=;
        b=G6rACf5v3vPEKsMklKuY8ycf0uE252osOOOy9QhPhabf3Pni/0KKP6ZIfHMBaQgqNK
         uOXRpApVWdAqkFHPo3rf0L6lbENq8swBz2XRwuzTNeDIN9QMS5SQqWANq/TTp9pxzzBU
         zgWRrvtF3CDXsALzQvB5soJX+iIlMHxciqYiPZyvxj8Y73980WFsxlQ32WOMBG45VKsk
         QUBRfslhi24c4KxDk9IErxdTcuCmpSQp14kcmFkJF6EiAV+BAs17aTYgaHYUOLNhnmTt
         trcHvh3vPZPD5TenbTOwpsskUReD9R6zzfKwEzyJsMYbSHXMYDICV+yOfmjvzVo5gwJM
         Q5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464435; x=1773069235;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eBh/BEMhIYd7yMIKn9wpAoeG/vOOsjbo+uR3/+VkGQw=;
        b=DNUM2PH30aJwACYJgvdukmSY/ltVAJ5Ov5eyKipPTpifOZE+uKB4u0mU94LRFhcJo9
         F5V5oZeRsJiTTYMaEkVlfyCXI06eTF1UOKPmNYin4f04IZqoVQocdtdcoFTsWyLEmZw2
         Y6WHjQD966gfA9xQ76eBuHEMY/5OvxkHW2+ZJmeW+eHcdNgiBxT6rozKWzBRxpp0ekWt
         e5/dQeJmjmdOJtjVhrlE1VqWhxvlVVMdFnxjo5xM0pNqqKJx2IyoGztHGm+ovU3mppNJ
         H81l9Tsk1KSabH1xn/DmScM1L6K+Xg0YaqCVdtt4Qd09Ra09xM09xfDOVQRxbdfLpOfP
         c79g==
X-Forwarded-Encrypted: i=1; AJvYcCUEmjVdRI+uny/3vVfd9g94SfIE3sFEBewXB4urbNbwuqkZjWDtMr9eUWw/h7Etq0H1kPkoIONxIiy2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3sl+ArhGkoRou4/5jIssNp6CiuWFlQc/o9IltW9vF5xjwkyul
	xHDjDdVRFi/40QodMQoZ4pDXpEDmwskU6ZCqTDw22XPRbjFUU/c3bl+R
X-Gm-Gg: ATEYQzysJPSqfFrVMzgkxG9RoHQfK13OCL+bckj+xbYeAyNEcbk+F8pQS+vncgQr1VW
	nqn3DV0K5Sxj7+n236DtGAkAmnZxtdjN961PFv/Db7QTsK58lbhxCVSnCKaFiOLz+n2N2sJCMGt
	N8szvMrbkHutOX4n0KYfR/8nQH32KxOwpRb6DjKfVsjXbW5ofK2ME+YvegRghk9gSttni0ZmY77
	Fe4nCBn7k7SOsldhUDZ0CTm6GD7G/Czhd3fYaZCqfEywMi1VtFH8ppg8xoHsAOU4jNIl+otalcX
	WnUuS06wPt+baYwhmGUQV3fdzrnKddACjFA9qyI1K2K2K40imbOyicP6S4JPMFYoc4Z4goLQT2P
	2u8dbZLtmmVXnlmpDjQppZ8gAiF01nY0hn1GOhFKoGuYval2H9PgON8ueB6u3r6gfWhpHSxsdXd
	DQTpFFf2Hnway9iXOk3SNkjECrlDY/8By8vyJyGNGyeevW4SFGW8Jw6J3qaca95wSppw==
X-Received: by 2002:a05:600c:3b18:b0:483:b01c:9508 with SMTP id 5b1f17b1804b1-483c9bb7c0bmr236115405e9.2.1772464435275;
        Mon, 02 Mar 2026 07:13:55 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:13:54 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 02 Mar 2026 16:13:25 +0100
Subject: [PATCH 04/10] mmc: sdhci-of-k1: add pinctrl state switching for
 voltage changes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-orangepi-sd-card-uhs-v1-4-89c219973c0c@gmail.com>
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
X-Rspamd-Queue-Id: 51FA01DBB02
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
	TAGGED_FROM(0.00)[bounces-270089-lists,devicetree=lfdr.de];
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

Add support for switching pinctrl states during voltage transitions to
ensure proper pin drive strength and configuration for different I/O
voltage domains (3.3V vs 1.8V).

Pinctrl states are optional and the driver degrades gracefully if they
are not defined in the device tree. This allows boards to enable proper
pin drive strength optimization for UHS-I modes without breaking
existing functionality.

The pinctrl setup uses:
- "default" state for 3.3V operation (higher drive strength)
- "state_uhs" state for 1.8V operation (lower drive strength)

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 drivers/mmc/host/sdhci-of-k1.c | 59 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 58 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index c260cb89704ae7a25bec0f07831d495553405bbd..2a982bca2a50ca96f43af7b4de5bc4fb4b5b195b 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -15,6 +15,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 
 #include "sdhci.h"
@@ -70,6 +71,9 @@
 struct spacemit_sdhci_host {
 	struct clk *clk_core;
 	struct clk *clk_io;
+	struct pinctrl *pinctrl;
+	struct pinctrl_state *pinctrl_default;
+	struct pinctrl_state *pinctrl_uhs;
 };
 
 /* All helper functions will update clr/set while preserve rest bits */
@@ -219,7 +223,42 @@ static void spacemit_sdhci_pre_hs400_to_hs200(struct mmc_host *mmc)
 static int spacemit_sdhci_start_signal_voltage_switch(struct mmc_host *mmc,
 						      struct mmc_ios *ios)
 {
-	return sdhci_start_signal_voltage_switch(mmc, ios);
+	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+	struct spacemit_sdhci_host *sdhst = sdhci_pltfm_priv(pltfm_host);
+	struct pinctrl_state *state;
+	int ret;
+
+	ret = sdhci_start_signal_voltage_switch(mmc, ios);
+	if (ret)
+		return ret;
+
+	/* Select appropriate pinctrl state based on signal voltage */
+	if (sdhst->pinctrl) {
+		switch (ios->signal_voltage) {
+		case MMC_SIGNAL_VOLTAGE_330:
+			state = sdhst->pinctrl_default;
+			break;
+		case MMC_SIGNAL_VOLTAGE_180:
+			state = sdhst->pinctrl_uhs;
+			break;
+		default:
+			dev_warn(mmc_dev(mmc), "unsupported voltage %d\n", ios->signal_voltage);
+			return 0;
+		}
+
+		if (state) {
+			ret = pinctrl_select_state(sdhst->pinctrl, state);
+			if (ret) {
+				dev_warn(mmc_dev(mmc), "failed to select pinctrl state: %d\n", ret);
+				return 0;
+			}
+			dev_dbg(mmc_dev(mmc), "switched to %s pinctrl state\n",
+				ios->signal_voltage == MMC_SIGNAL_VOLTAGE_180 ? "UHS" : "default");
+		}
+	}
+
+	return 0;
 }
 
 static inline int spacemit_sdhci_get_clocks(struct device *dev,
@@ -301,6 +340,24 @@ static int spacemit_sdhci_probe(struct platform_device *pdev)
 	if (ret)
 		dev_warn(dev, "Failed to get regulators: %d\n", ret);
 
+	sdhst = sdhci_pltfm_priv(pltfm_host);
+	sdhst->pinctrl = devm_pinctrl_get(dev);
+	if (!IS_ERR(sdhst->pinctrl)) {
+		sdhst->pinctrl_default = pinctrl_lookup_state(sdhst->pinctrl, "default");
+		if (IS_ERR(sdhst->pinctrl_default))
+			sdhst->pinctrl_default = NULL;
+
+		sdhst->pinctrl_uhs = pinctrl_lookup_state(sdhst->pinctrl, "state_uhs");
+		if (IS_ERR(sdhst->pinctrl_uhs))
+			sdhst->pinctrl_uhs = NULL;
+
+		dev_dbg(dev, "pinctrl setup: default=%p, uhs=%p\n",
+			sdhst->pinctrl_default, sdhst->pinctrl_uhs);
+	} else {
+		sdhst->pinctrl = NULL;
+		dev_dbg(dev, "pinctrl not available, voltage switching will work without it\n");
+	}
+
 	host->mmc_host_ops.start_signal_voltage_switch = spacemit_sdhci_start_signal_voltage_switch;
 
 	ret = spacemit_sdhci_get_clocks(dev, pltfm_host);

-- 
2.53.0


