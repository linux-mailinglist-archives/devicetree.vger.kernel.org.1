Return-Path: <devicetree+bounces-270088-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLWhGPWqpWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270088-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:21:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B881DBB6C
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:21:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2544F30F9CF4
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1725E41163B;
	Mon,  2 Mar 2026 15:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nMcxR6Gi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5064741160E
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464438; cv=none; b=Ayz3B91NRQM2Ux8+QUXO8pqm883xzJ94Lqm2FT9XXJNcJqjU4IVhE2Q0GRHStNP8BvzSsLixf/HlhJmWvJdPC/UHTy2ZHOurJAqw1+IWKNMCWKZMp4JpSTGIoPGxI7XJeMGWpTPoxRvqFp/szyNmSbcOPReb0gQHgPdvO/PbeQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464438; c=relaxed/simple;
	bh=SX99H5nWyHLgqEfAA8y8YXcLLBYPw3yIqFfWFk7yuwc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tmpGN2VJg+gx63XC09VrJO3t78rsgcPanxaIKaxkGhkn4hgohZEFgiHFeW3XNMjFAOCNEHYyWtyuEE+F2uG2zfGnjg9axsoTcIGVzu6yhmmyv9BAs6FOrhqZCiqspcLWF0wGfvPfwyxNGg4/K3kKbtAS6g+6DqRfJrl0kE/sKWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nMcxR6Gi; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4833115090dso47404505e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:13:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464434; x=1773069234; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xPno2RjoHZxgUnIZr6lB0hz/wV8TjU09ZahXKQxHzqQ=;
        b=nMcxR6GikrAIBr1jHaFwGnIgSyIpLkVtQ9cWEoR7BRDncP64+upobB6gCOYD3aBNut
         XXoyeJkguFIwsIgrvpg1FSa8NdxfEghSbneMJIBlpC9RbD511hjbL/3c8b13tw94f5fE
         U/pgWVPnkcD/2/FsJwDI/OUBD5EREFJ7dYcNqVYeGAvLjPeiftzBulcyyvN/EN4blM9v
         k2gnKd+uZ3ol5Z8dG8PWzKkSCgvmtCS01wPwgxFz4k6D33JxOV3Cqd4cmo4leMZLyyc2
         5MqiFpjpPOMdO3dE/DXdnqTZ3+bGzi//RSQgxOIFPnLW/M99dOOO4B2tAxRuhgAmAQId
         0jYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464434; x=1773069234;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xPno2RjoHZxgUnIZr6lB0hz/wV8TjU09ZahXKQxHzqQ=;
        b=IYDVciMMi9GXkdhXexnwIkFIVXunRNLtLd9L88kuMZgdoHL1NQRHUORuxKt4BlyJqk
         2xYXTU126jJvnIc2yV6HJjeR8Fr17Sb0xNaIsb4cum3qy0CyQapTtfOlQY18blOZ4aru
         wEJOyfH+vOCmxA1aSWH8EjukiteG0aNCXf8p/Srx9P8XoM6pGfQgKJ3RRIoyPrRvlNHp
         oR4k2aJ1nhgjSUD7mTDq0G1veOlYbn/Cfe3G4KD9GrJoSLdhn8/EI5+33NOlZ939fnve
         al80vKQClFKI0w2jMPIF/QsIltx6aMY0hLKA9Em6Ly7nw5whMowuwoLib2L7wfgf8DC2
         rARw==
X-Forwarded-Encrypted: i=1; AJvYcCXlh1gP9eJW7e8SGXPMRJstMzy5XVNdKBN2BzEUq9fx3svgTxjib8Hmqcd0NXarRW6OvlWzgoAbrNNg@vger.kernel.org
X-Gm-Message-State: AOJu0Yy274CCQj1pm0cBuimgF5q4/umf2Yocm256ZsAXvJNRliq3k7Xs
	1k7WNxtP4Fxre+sJTtPfcc6REAoxIjAfTm4UBmsE8qg6BI625FlLN7l2AszE6w==
X-Gm-Gg: ATEYQzzZAGmj1HG9bOYlMd1pgjIhgNcuwVcwPNAPBBhS9Qm078qbMITnt4jZ6OUb0jw
	WiODlRDogyKTwe5X9dpTscN3uM6AH/blYqT05PYzjTfTOY7uR4EUpfFLZ1PzPmU9cDBwU13sg3u
	T/+/cGa8EKPpMz4eOG3TVHdBCOrXw7iqpdx3FqeFrLSU2gZWYH8WBK3OQ5AlDw0sp+rKCLF4rwy
	8oXJmTCL9rmfUOo3Je57yhrlrBsZ6x4AM70FTDA9ehdl+FckX1UD9fyg658LepPn7rS+zjpip8W
	OqiMnlbzjGA7B2eOubV7ob4h+ci/CqIP93cpku2G7YGbMChwqe9HojUfpK+kGtJM7o3A4FXw5HC
	DmxNxRjpsuBOsfsevEIf351Ma3Q2MOJS9lhrqvVKG5zBq4uCB9tBHhplOQGSROcJeuyMVPvi+3A
	wEfwMj5pyQt0a365fiNhygcfOeUMSq5Najf6eqgJNLjYU1KjkCyiRXjE1f2iWngjMGruoBKPvi2
	MKu
X-Received: by 2002:a05:600c:b86:b0:480:4a90:1b06 with SMTP id 5b1f17b1804b1-483c9c196a5mr205940835e9.34.1772464433577;
        Mon, 02 Mar 2026 07:13:53 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:13:53 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 02 Mar 2026 16:13:24 +0100
Subject: [PATCH 03/10] mmc: sdhci-of-k1: add regulator framework support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-orangepi-sd-card-uhs-v1-3-89c219973c0c@gmail.com>
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
X-Rspamd-Queue-Id: B8B881DBB6C
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
	TAGGED_FROM(0.00)[bounces-270088-lists,devicetree=lfdr.de];
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

Add regulator framework support for voltage switching operations. This
enables proper PMIC control for UHS voltage switching between 3.3V and
1.8V signaling levels.

- Add regulator supply parsing
- Implement voltage switching callback
- Enable mmc regulator framework integration

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 drivers/mmc/host/sdhci-of-k1.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index b703b78282ed8d89183c816477c149c0a565618a..c260cb89704ae7a25bec0f07831d495553405bbd 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -216,6 +216,12 @@ static void spacemit_sdhci_pre_hs400_to_hs200(struct mmc_host *mmc)
 			       SPACEMIT_SDHC_PHY_CTRL_REG);
 }
 
+static int spacemit_sdhci_start_signal_voltage_switch(struct mmc_host *mmc,
+						      struct mmc_ios *ios)
+{
+	return sdhci_start_signal_voltage_switch(mmc, ios);
+}
+
 static inline int spacemit_sdhci_get_clocks(struct device *dev,
 					    struct sdhci_pltfm_host *pltfm_host)
 {
@@ -291,6 +297,12 @@ static int spacemit_sdhci_probe(struct platform_device *pdev)
 
 	host->mmc->caps |= MMC_CAP_NEED_RSP_BUSY;
 
+	ret = mmc_regulator_get_supply(host->mmc);
+	if (ret)
+		dev_warn(dev, "Failed to get regulators: %d\n", ret);
+
+	host->mmc_host_ops.start_signal_voltage_switch = spacemit_sdhci_start_signal_voltage_switch;
+
 	ret = spacemit_sdhci_get_clocks(dev, pltfm_host);
 	if (ret)
 		goto err_pltfm;

-- 
2.53.0


