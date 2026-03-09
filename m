Return-Path: <devicetree+bounces-272867-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2L7GM9mxrmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272867-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:41:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2132380B4
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:41:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0EB8F3037C3E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27F1A3A4F37;
	Mon,  9 Mar 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aZX1mTv4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20A53A5E74
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773056433; cv=none; b=kEqjgo9V9ZgSrY9iFQBJR9dqQ8h+2kCGUFjqahpSo1/xavaMvP8JP5y6Jpzb20a+kKlpPqa0gR6aDcaV+iylKbfFZZ3PAMQi2OxyDW4Y0uN+eAQ+e1DVOZrXPrQF+en11ba52YQOiSoxRH1ignxkwmYFtdBVfB/lTJxuf+Kp5xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773056433; c=relaxed/simple;
	bh=ZjPfOEay4iJtYw/Yc+++kB4+JFWKKrhSslqGPOY6h3k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EM22Yjy/V5BmRvD5gXASpzzxNR45PbBEwJeti36M4jB4huftvcvMr7+u3Uhf0guDL4/YyF6siQIu/ecPkQR97CMTNXsYfYptF6JzWo42rkNZSP+04hB2+Gigft0h0XSlFDqc13HBnQ8NNbQFMI9GnVHAxkEHxoEp0S5jsnJ3048=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aZX1mTv4; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-439cb5af25bso1894268f8f.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773056429; x=1773661229; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ENoXAlYlr/CKB5p2K9cJMvCPGqe7WoN4P4jGKMHaZJw=;
        b=aZX1mTv4BcFETrP8V766dzYE1sW5H2vUQLZmfEuPz8pOpv9l+YItQQI0oZiuSiTPYO
         FEHXb/fiw+5BPgkmgDcq5mPKz2iSQGhQ21wIuB6MDl7n6FdyNF5zE1tL7ZEv4HjKo8jZ
         vKRrr8iCvqVkmFEB3E7/Ptthmo+KenDqqos+HeMveUn65rpWgceCcdDrZL4y+qdjxhsQ
         +R6IzucsSplUPWoFjlRh6F4QNk1cufh+/be/sCAtoYLVO/eRTX1I/NtVp9E/901fa7G2
         hX5MHt2ujtSaN4xgT9pN8+gXQUzxUZQat+QiNWd4wctgOFBMRpFMx+itJ+1gpCn0hToz
         2bOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773056429; x=1773661229;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ENoXAlYlr/CKB5p2K9cJMvCPGqe7WoN4P4jGKMHaZJw=;
        b=RKc2tqX/EkIMaIyFZVzyyvUoFGHOWC9wSZLEdAw7ZicLL2zGjPShI3Y9JaOO0j4fow
         jh9mSLn39/Dj8ZaovVZvJk19mezu/f0LnFF9M9UHHVYwV4HJK01ye34BLCwdfJ9PuJYh
         jU4clYbi/Y8DTaSJs2Zq/Ei9hoSMi940Aw+owTgpDkSucL0VN5oAjdb1XKJ7b5gIVj0n
         ueTUZuHLPs81i/pHujVgPDbdQYFwCYVK0uYjcoUO6270LsarYg8NwBxwCyW4PtJwr0KO
         5Bz5fBV9omnIcE/7duE8bVS2BLGGW3ONQKK6eMDj+/D2IOnpA0+IwV10XDesfmlGKc4v
         iIGg==
X-Forwarded-Encrypted: i=1; AJvYcCVGDGGDV19dzvMa92bKD85y1UhD8Osh09eARQTMffL0Qsm5KDpuR5KPNUY/AWMtzHNxWMPjQ+tEmCoV@vger.kernel.org
X-Gm-Message-State: AOJu0YzTv2Ixkpew1Uc2FosYVYEFv4poTUlUPWmPeA0fnWg1N5sPfDSR
	SB9p9TCxPW5ZyfG4CypwVm9HKJgNLB5MG0je050j0JgmGQ2hL7izUQAR
X-Gm-Gg: ATEYQzzTEIe0XMtLb/gQi7WzYJO94CxWXfl0kQ1jyfDMdvI/rZpV1gb5//tNbDy9yOv
	sOYbpfSirZdvFjUR+bp09EGqJoLrv438gNG4d6zKYd6ExnIXc/FahRjuJCkm8SfZ+tLAEbhk+Uq
	tQ+8SvzLNataigSN7VzkXlXGwIJsTdvFUCF+lQrqyuelE/YWsmEh1faesJIqmAaUGqyBPAA6KQt
	L2R89zCDkICm5MHXhoaJjlM+ntd00gPGSUJ2MBFJdukLBt6RZgXpBOTL6F87CzTfevAPHQqIAJk
	EJAPLPuFw+iwOqoSjgCZHQOQTDVXmUh37D1mSlxQ/bK3i7ATBq7QyytSSZtZoTwebQkCF3BowXA
	hYJjeZvE772+nl21igZTYHBaZWXtvPWKYo3H7CetEpIrJJBTRlgQTkobxcM1thj5jdTzk3G9usp
	GWBz6MMrRWQN4iYGNKdH0AdaRtwsAUsWGl2N3+vqzrCL3GRMEjyFABBBq0GwYdBhaZ
X-Received: by 2002:a05:6000:49:b0:439:be67:a02d with SMTP id ffacd0b85a97d-439da67c0c9mr15289084f8f.31.1773056429202;
        Mon, 09 Mar 2026 04:40:29 -0700 (PDT)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.236.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8ec97sm28471699f8f.5.2026.03.09.04.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 04:40:28 -0700 (PDT)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 09 Mar 2026 12:40:11 +0100
Subject: [PATCH v2 1/7] mmc: sdhci-of-k1: enable essential clock
 infrastructure for SD operation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-orangepi-sd-card-uhs-v2-1-5bb2b574df5d@gmail.com>
References: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
In-Reply-To: <20260309-orangepi-sd-card-uhs-v2-0-5bb2b574df5d@gmail.com>
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
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 4E2132380B4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272867-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.971];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Ensure SD card pins receive clock signals by enabling pad clock
generation and overriding automatic clock gating. Required for all SD
operation modes.

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 drivers/mmc/host/sdhci-of-k1.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
index 0cc97e23a2f9c7b2f9376318a8a7ebb860571504..585c7eca6ebf253aac466dd37cef029deb63f692 100644
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
@@ -100,6 +107,12 @@ static void spacemit_sdhci_reset(struct sdhci_host *host, u8 mask)
 
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


