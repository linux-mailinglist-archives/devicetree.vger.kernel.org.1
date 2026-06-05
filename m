Return-Path: <devicetree+bounces-307405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wf/lFQHCImovdQEAu9opvQ
	(envelope-from <devicetree+bounces-307405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:33:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C5E648300
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:33:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=McV40nA2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307405-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307405-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DCD55308227F
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9988D4E3780;
	Fri,  5 Jun 2026 12:21:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6484E3773
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:21:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662064; cv=none; b=gMjrBZRbx3QJeSDGnVHdHZlIGN2BNRG1XMJqrynUjiuK9LcvagJvGdBymYLT2i/L8o99bpRG/9fzm6UWSTDqJH/CSLMjy02q5UWIbvzm7dNvzZL338iF2MDPGpD+DcjMsovMq6CI8zmrT4A4L8BDxNMWuDILy2tgmTUmLya4pSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662064; c=relaxed/simple;
	bh=JQixsyyJcxvuq6vRrhWqfb0xYNZFr9S1o/h/Dp63Ezk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EfikytxXrxAS8vOyHGS61K6mzzHJM8sPlrGadmNSJl84CJzhhP2NNQzRSfBuNtSl0yDEMq4BAb3VHEXjbkGG7OTcg9Bbk3ytT4v04X77VxottMIlH9K3ERCmYghVkYCHhNZMwrT4r+Q9D/MtZYvi8a1xr4wdrVeNFcE8AjcssHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=McV40nA2; arc=none smtp.client-ip=209.85.216.53
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-36b9ec98144so1233646a91.1
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 05:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780662062; x=1781266862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tLfT4vQgEatwltGv+p1FnX+A7JnfmLWZ/F6m5Pdu0sU=;
        b=McV40nA2V6AKKc4/J8JDKMvC75hnCF1tNzuEQvxPC1ShJ7X/3Bjot5YanYmdpZpEr2
         uw1hxT4bWg6YVvSSOPCiMPgn5p8hspjiF5jXeMdh7Qv9ug2uPqoFWM2xyOEyz2l5Y/lI
         GM8I/DDE+CXvjol6jkqgTpYbob1AAo1OfCiNS24vfHrXDUvaXSmBqNuo+m7+k9+5PZvv
         57Hbh2K8i5h7FaqJn5FEq3nSqSbKKCGvdBv8bwlRvj/O8tvlLxZRcVP1YW3RFSkRxfAS
         Kcw4ZspX2L4WqRUar1SD1HNvSjSQMVa8cYfz7t12dn5LWRMXQLslSZapnrMzye9q0TEz
         3ZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780662062; x=1781266862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tLfT4vQgEatwltGv+p1FnX+A7JnfmLWZ/F6m5Pdu0sU=;
        b=NGpPpA67+XnQpR8Se8K8XorUOEZBXwhNXEBcFkkfvMhI9nitE8t7VksgTAG0Q/gM7x
         Mew18ggc0f1nXaU4Ju489yDNhNmAn3+KbYEzbePP6YQExGOvEOU0FUAtTzoDYCfAVj/I
         e8WefVQov9Fo0of2AW2dim8OLOlsaJIALUO9KcG9KW058JBmsBppw46jJxo3Qm2Eog8z
         NErf5/AvBaxm9/eWcAbxT5hOfT+MyCwNJ/RfUuQN0Z7uuJCCXCMzIMgjfjIpBu3Z5WW9
         1XMCSEsLXyRtNWFlTVSMfGGyBgSDBude9AtfCcVRsv3Njr47cyF33nK24taIzBC4clMi
         XVSg==
X-Forwarded-Encrypted: i=1; AFNElJ/UKPtlf2cjV6r9S48ULgeZndwNsFC4GKI4HJ8mGC6ifHkMhME9YJp65WIqz3WwYxFeWazj736FIXnB@vger.kernel.org
X-Gm-Message-State: AOJu0YyBv0MrGO1rBJp1ivZf3rSO7Fe94mqXa5xItiyFRMtOnXI94RMN
	W4VMK5SlOnt7dpO0+o0REv9iuekbcPsjlofcrLYF0/0Hukig5Ko7njcP8mis6Q==
X-Gm-Gg: Acq92OFCclQqOW1WeDrkdJdc87avXEdiB5SeNS/zuk7COk0B0jg5QI6r4JOR67y88oW
	gziqlR6Evk/mVMDoXfizxUFNwhHgWvDMRoziidAaUN276z/zgvGdKf/hxp3xv4X8NsN6HxW//nb
	KPKyb3pt1fsUZb0OtL47qQDrRm/s21t8WUdEyFMKuf8olOUG2LrYDEybSUfogNbuThbq5a18S44
	CuxXHHTzaVqCUCkZscB02lDOTPG7xY0BaCWRsRqB7TYC574O/zmTUsFoHyzNmWh0pnjBZ4/ByoS
	/ekzmtq0hFaj1HTPNS0AVnFJjQLMyHUh/zulqSLtnzhAsO0I392NjcJzb5frRMebhkTZ84qM2J9
	dSRZ9V8Cbrc01F2dmgbO/WvY8R2fCY1dzAiJ4BkQL5NkCjG7tHOz8PXWtDf/a9UBDnVO3xU5qJS
	RtIq6GnsP+MipVnwak0onkXLMLsRM4XdYIS5+VIvElMN0WSUZdVRMGE1M0sp6r7u+NBtVq
X-Received: by 2002:a17:90b:558d:b0:369:747b:48b8 with SMTP id 98e67ed59e1d1-370ef3e8b74mr3862879a91.8.1780662062568;
        Fri, 05 Jun 2026 05:21:02 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282221059sm8594381b3a.7.2026.06.05.05.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 05:21:02 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Mark Brown <broonie@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v4 10/10] ASoC: renesas: fsi: Add SPU clock control in hw_startup/shutdown
Date: Fri,  5 Jun 2026 19:19:54 +0700
Message-ID: <20260605121955.105661-11-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260605121955.105661-1-phucduc.bui@gmail.com>
References: <20260605121955.105661-1-phucduc.bui@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-307405-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuninori.morimoto.gx@renesas.com,m:broonie@kernel.org,m:geert+renesas@glider.be,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phucduc.bui@gmail.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:phucducbui@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58C5E648300

From: bui duc phuc <phucduc.bui@gmail.com>

Enable and disable the SPU clock in fsi_hw_startup() and
fsi_hw_shutdown() to ensure the clock is active while the
driver accesses hardware registers.

Suggested-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/fsi.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 6537321242c0..d7cc5a14a099 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -1585,6 +1585,19 @@ static int fsi_hw_startup(struct fsi_priv *fsi,
 			  struct device *dev)
 {
 	u32 data = 0;
+	int ret;
+
+	/* enable spu clock */
+	if (fsi->master->clk_spu) {
+		scoped_guard(spinlock_irqsave, &fsi->master->lock) {
+			if (fsi->master->spu_count == 0) {
+				ret = clk_enable(fsi->master->clk_spu);
+				if (ret < 0)
+					return ret;
+			}
+				fsi->master->spu_count++;
+		}
+	}
 
 	/* clock setting */
 	if (fsi_is_clk_master(fsi))
@@ -1642,6 +1655,12 @@ static int fsi_hw_shutdown(struct fsi_priv *fsi,
 	/* stop master clock */
 	if (fsi_is_clk_master(fsi))
 		return fsi_clk_disable(dev, fsi);
+	if (fsi->master->clk_spu) {
+		scoped_guard(spinlock_irqsave, &fsi->master->lock) {
+			if (--fsi->master->spu_count == 0)
+				clk_disable(fsi->master->clk_spu);
+		}
+	}
 
 	return 0;
 }
-- 
2.43.0


