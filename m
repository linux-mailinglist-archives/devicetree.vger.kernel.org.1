Return-Path: <devicetree+bounces-276194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KVyAkwOuGkWYQEAu9opvQ
	(envelope-from <devicetree+bounces-276194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:06:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBD729AFCA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:06:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39E5D302FA98
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20F939B963;
	Mon, 16 Mar 2026 14:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lKIgGgLB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D07A39B964
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773669868; cv=none; b=ZpKfH+VpeYeEOgFQVzbfY91YXu+ybhlPQ+aymKU5uXN8MZIQaZXPAw/uzk8IWOp+7XlFnLiIV1vxDYlJ/nvqsQFkDzpZJNdLVH4uRqLeuiC4I3lZ7uJ0XWM8/FDML8fRUq066pYbB4cgdgsmsb2JmfmtCJdASFdO0GaPUUwVI0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773669868; c=relaxed/simple;
	bh=vmF2pgWK2VUkaN/torpDV5fO5DqEsvTqOvhELAztUNI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u8gdr3ul7UjKokaf4huKJckNeXPnGf5qhrSQyvFdyyWOH5Aro1+yAp6UnDUC91bi7h/sVRn+Q6BigJRO2wQzfSdu4pRJa4G/iLYSd7fvu2MwbMm5niIJDeHG96VAXRwatx1UlpPMS+J51bdhcaAMmwnZ7tFL7/kUcD30ozHxZUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lKIgGgLB; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4852e09e23dso39156925e9.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773669865; x=1774274665; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O74WQNc1aV3W+cT5lrJjmSbPvv2lawW0j0OjNB+99fg=;
        b=lKIgGgLB1PMNFm0tt7D4siVQ+lCI5xoPwrzyfbFfhFRjfeqqf2wdBI1LNu6g7riP63
         lssojq286iErkTocLbjWSieYoKjKGgECUnW5M14q70yvJrX4LHcUHelVbHfae/cMIO+D
         G+3hu9gFNVVPzC29E5bN/HfMSIi3/BkaVPIeOnryA1PfMZsgoUZV+9WsoSETRYcXQXRe
         aDQs/5D6JHmZPreEfGMg6ZgrfDuXrRSGuuFcOI3UyvC9ZxeXsbKXZqcYdldK8TwJD6Oi
         67V7YJv9Uk9Cg617m/XSFJu1l3RKSKZ2eufjyEjmjiqpFpX2d2AZIM1Y1GLkPICsjwWN
         8HRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773669865; x=1774274665;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O74WQNc1aV3W+cT5lrJjmSbPvv2lawW0j0OjNB+99fg=;
        b=lUzGzSLN3+ZOk0/NYQjOb5q31FGUNmEFEFKyGlQFQnaHpZUcPFvV+WkqIFEDKmrZE2
         4aAqKK39wewwbS7HN430pRlF9rcm9dcvQCS6sZMlji/or9GManBL2mAelzpzsHhhiaUs
         EM7TnISw6c+I+xSkYM30bmyhlfAcbfUdfmO5bDcAG9EeTBnACsql/hbHUzuoDFjw3Zik
         60K/qVl5og7/V0kOlbJAmvE88PG+dAZlPQBsg2hsP/aOJts/osdl8aoIQVkOLQ0Q+aJq
         nZkoGgFTY945udCX+PyWnGGnXe6c4j8rmr8qq5u28KYtdFZvImGhA6lfd8UswokiHIcG
         wzhA==
X-Forwarded-Encrypted: i=1; AJvYcCVrytEC68a1odeD0APxJ8tfNIhkMVFqzqkp/Rp4+n6St30GpJv/0mt9/vj58nIprcwTpIZecIW0OiTi@vger.kernel.org
X-Gm-Message-State: AOJu0YwWi6phmmln2HhwXyJzDZSQvufScYEAv6VbBqvGqQiqL0580pdz
	gVF9WbtiqrjSr7HDDSEvF0lM/+XCmC3BKB2xS+d9hWm7FZbkijqpiRzd
X-Gm-Gg: ATEYQzxqfO19Vj/GQja2aVmr8FCB9gjNSkGNWu3rgrm4bXhSkqbJAwNmb97qn6mIA3k
	phwIUBrKPYDaJYxvHeH7r13tffvi+2H1CC0M/WlSA4ZZAfYRtsR/m+VuQ+dCbsis9yMNPcLxpQP
	DY1l8UIkdM6inNZfpg9cT080GtXud7Hz0e/Bsy19CSyB7BHMKWRS63DarwTsJKDZxH3kh4XysQP
	Ze3/seFgIXSeapnqFpwO1zkYXuci0D3WKFRoQnKKDqkWxZmzEEg4vsjnNFO5A43Q0UeOLmlv0K5
	+KWIeXRoSuyqYsNAtljuOhTi80iDCjPGkK5vLifa6VtWUDnjuSRSSpTN8acWUCG2Za9icTCC9sU
	Je0HQ1iae350tymmEBDwFRCarBneuXK71uuKhi+Hk/bCW6aiiznHQIcU36cyo6ycj6sWhGLnMod
	NKi68WeMPbLN5Yz/XaPWy1lQ3PnvIie+V1C2D6bgb4EtKFHB08eCm2wjXLe4yIBydv
X-Received: by 2002:a05:600c:698e:b0:483:1403:c47f with SMTP id 5b1f17b1804b1-485566ca5cdmr217587185e9.6.1773669865177;
        Mon, 16 Mar 2026 07:04:25 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.234.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b3a09e453sm20698725f8f.0.2026.03.16.07.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 07:04:24 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 16 Mar 2026 15:03:29 +0100
Subject: [PATCH v3 1/7] mmc: sdhci-of-k1: enable essential clock
 infrastructure for SD operation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-orangepi-sd-card-uhs-v3-1-aefd3b7832df@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-276194-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5FBD729AFCA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Ensure SD card pins receive clock signals by enabling pad clock
generation and overriding automatic clock gating. Required for all SD
operation modes.

The SDHC_GEN_PAD_CLK_ON setting in LEGACY_CTRL_REG is safe for both SD
and eMMC operation as both protocols use the same physical MMC interface
pins and require proper clock signal generation at the hardware level
for signal integrity and timing.

Additional SD-specific clock overrides (SDHC_OVRRD_CLK_OEN and
SDHC_FORCE_CLK_ON) are conditionally applied only for SD-only
controllers to handle removable card scenarios.

Tested-by: Anand Moon <linux.amoon@gmail.com>
Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 drivers/mmc/host/sdhci-of-k1.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index 455656f9842df90c7a94a290aeec22157b378fc1..0dd06fc19b8574ae1b00f7e5d09b7d4c87d06770 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -21,6 +21,13 @@
 #include "sdhci.h"
 #include "sdhci-pltfm.h"
 
+#define SPACEMIT_SDHC_OP_EXT_REG	0x108
+#define  SDHC_OVRRD_CLK_OEN		BIT(11)
+#define  SDHC_FORCE_CLK_ON		BIT(12)
+
+#define SPACEMIT_SDHC_LEGACY_CTRL_REG	0x10C
+#define  SDHC_GEN_PAD_CLK_ON		BIT(6)
+
 #define SPACEMIT_SDHC_MMC_CTRL_REG	0x114
 #define  SDHC_MISC_INT_EN		BIT(1)
 #define  SDHC_MISC_INT			BIT(2)
@@ -101,6 +108,12 @@ static void spacemit_sdhci_reset(struct sdhci_host *host, u8 mask)
 
 	if (!(host->mmc->caps2 & MMC_CAP2_NO_MMC))
 		spacemit_sdhci_setbits(host, SDHC_MMC_CARD_MODE, SPACEMIT_SDHC_MMC_CTRL_REG);
+
+	spacemit_sdhci_setbits(host, SDHC_GEN_PAD_CLK_ON, SPACEMIT_SDHC_LEGACY_CTRL_REG);
+
+	if (host->mmc->caps2 & MMC_CAP2_NO_MMC)
+		spacemit_sdhci_setbits(host, SDHC_OVRRD_CLK_OEN | SDHC_FORCE_CLK_ON,
+				       SPACEMIT_SDHC_OP_EXT_REG);
 }
 
 static void spacemit_sdhci_set_uhs_signaling(struct sdhci_host *host, unsigned int timing)

-- 
2.53.0


