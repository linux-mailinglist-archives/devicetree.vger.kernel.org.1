Return-Path: <devicetree+bounces-270087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Df1MBmspWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:26:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DB04C1DBC9E
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:26:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 99F013004C8F
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1880040F8F4;
	Mon,  2 Mar 2026 15:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QnCiMNbV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A25484014B4
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464435; cv=none; b=G0rTsfy+Fl2Rna1DeIi+g7+va45R1E/7EQwT/MqW73hSomf/9BMKmQVmQHdUoL+2n/miEzJuTlYeVTV/D6luyHl8d/mP9XloZ2we2HImq0NqZ7Ia3pOPU2HCYyMVT9J6Q9dcWY9uMxTdOXZYfp1deUJUB0CR6OQM4f1wSVeK3y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464435; c=relaxed/simple;
	bh=d7a13S6dF61g9+cfR4EleR8xvtk9XXvgHgcgm1c6KYA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JV+sbTVJEOrFbGpC6f1R8+uQc2OeQ19Y0tyKTAowwZB1jun9QeGRgpjulDYa1ganxl4j571Ng6/GecpEkkcdzSNAM23UpJnAj1mPT0kU1BDYEehwCEOsfkc/Vsz4PHMb1YrIx9+Uh5xCUR8kZCfE4zZ7+K6lKE83yWR2wz74TKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QnCiMNbV; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48378136adcso27517715e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464432; x=1773069232; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SjMmH3TKAZLFeVk2hH9QgAPKoSKsH6HVvsl5OwBldO4=;
        b=QnCiMNbV539UrhE36Qmb7phytvOnIfxnFJ781sYgOlgwNJN/zkURmPTLZvbeafDnZJ
         kvGhLWJPdl31Oa72XOPj47K6G1kxqVu9KwM/RfjiwjmP8YHlTsfXU1hDLIsBToJ9cDmZ
         /b/O0FIa3fFZFWzDIUlTgfhyUcRZKprD2sRMhwdIhX2Kl2iisInEi4HLDtYzQdILzcIb
         PVaah8eSr0Aij9wkJ8Y3hFgorbmh6tMvwJcxxE86Zr9/vOnP6ixEjRxbhLr74fiN31zS
         sl7wAp7VfC5vIINOG4mZU0ipngPYM1g2dXgISInqSeaioVFJbfUZAEnlSmXHOiYAsaiD
         cCqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464432; x=1773069232;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SjMmH3TKAZLFeVk2hH9QgAPKoSKsH6HVvsl5OwBldO4=;
        b=ozbRiidsd8eJ1+UZeO+TE+UzLiPj1ZGtriisigOybY4Bv/SctseUIibrWkeISUgqkK
         d6B4gOPlV4/Xo6z7aTk77BPvSxM/Ekklpgkmk/PPUIY+xNBSZkXIaPBTVBREDoeLQkqi
         RUvFWchdZM42fSkgIRuuB6PkZSBUHrwHF3IoqPqBzTTUihSJhiEhRjdyuu9c3/5DWopT
         YPcdhyDHXtRRHusWPVFiSQVoLi+WHp/4Nvdfwks+Fyd1hVV1UULDnxvqQhNK5WxiP2Ct
         vlRMT1zCXGiL9I/aB2ke2FSn8ji8Z0I3vA5TCoZTdWE5ZDsiVVcLkFThJa6H7JjaEfYE
         Kmvw==
X-Forwarded-Encrypted: i=1; AJvYcCUp2gM3o77wdTiOs9YF1hVSmCH1VKZ19jBRrKjDZNfM9B1StHj6cjq1pjhcYDX3i5M2FNnCLhi6gcO8@vger.kernel.org
X-Gm-Message-State: AOJu0YyMAhP0SOutf4bibFO5awpHTXgNj7jJhjyTJ/JgJTA5GJR/aNJn
	+LKwJ6QrPzP7McfWI8ZtFvh2P4ld728uOHEBTynSV9LSDoDg7qU0HABK
X-Gm-Gg: ATEYQzxsLhvPSoWEYFqPMC40Em7RQAJfCZdgykEdwquVszocEmxoUY3efoOgBuim9u7
	tHvk1WN4g7KM9fa6VWvYK3uXud1cTzXYntMExxTJIavjy8X95fpabRad7aug6AWERWnqKIbEq2Z
	dAmcgLWV27CBimaAoaApgkMuug0hhdJM8CPYZz//YuBOT+f5O3T1i3OFiGlkPiUrx2fKoNP7z+t
	CNiplwly7RTbLs+uoWPRk4XJRojr6wQDd/N3MTQJpji2dUTwBJKpfjiG7J4fhdwjkt4h4dFzvDb
	varZhoJhhaMlCbQQE24CQy9YPZkvT31RaNMC2HIdy2qD5G8KQbTDIiEBEfAiFLezVE2Ju6GNayd
	Ez/8oWvIY43306Lq8frMGLYvcZJN3sLAFZ6YeScGyr8Odb+AXRBr4JhZ5qvsWRipRbGMqtUtgQo
	/xcHv1wNTpeda7HltR8i/swR4LhWMrgnoP3DzgAG4jDO0zwfNZjUun3eFeo2rLKWPzlhbEDx5Fe
	Ybq
X-Received: by 2002:a05:600c:3e86:b0:480:6941:d38b with SMTP id 5b1f17b1804b1-483c9c1bc0bmr208716755e9.30.1772464431872;
        Mon, 02 Mar 2026 07:13:51 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:13:51 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 02 Mar 2026 16:13:23 +0100
Subject: [PATCH 02/10] mmc: sdhci-of-k1: enable essential clock
 infrastructure for SD operation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-orangepi-sd-card-uhs-v1-2-89c219973c0c@gmail.com>
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
X-Rspamd-Queue-Id: DB04C1DBC9E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270087-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Ensure SD card pins receive clock signals by enabling pad clock
generation and overriding automatic clock gating. Required for all SD
operation modes.

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 drivers/mmc/host/sdhci-of-k1.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index 0cc97e23a2f9c7b2f9376318a8a7ebb860571504..b703b78282ed8d89183c816477c149c0a565618a 100644
--- a/drivers/mmc/host/sdhci-of-k1.c
+++ b/drivers/mmc/host/sdhci-of-k1.c
@@ -20,6 +20,13 @@
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
@@ -100,6 +107,10 @@ static void spacemit_sdhci_reset(struct sdhci_host *host, u8 mask)
 
 	if (!(host->mmc->caps2 & MMC_CAP2_NO_MMC))
 		spacemit_sdhci_setbits(host, SDHC_MMC_CARD_MODE, SPACEMIT_SDHC_MMC_CTRL_REG);
+
+	spacemit_sdhci_setbits(host, SDHC_GEN_PAD_CLK_ON, SPACEMIT_SDHC_LEGACY_CTRL_REG);
+	spacemit_sdhci_setbits(host, SDHC_OVRRD_CLK_OEN | SDHC_FORCE_CLK_ON,
+			       SPACEMIT_SDHC_OP_EXT_REG);
 }
 
 static void spacemit_sdhci_set_uhs_signaling(struct sdhci_host *host, unsigned int timing)

-- 
2.53.0


