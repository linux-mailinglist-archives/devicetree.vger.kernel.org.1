Return-Path: <devicetree+bounces-300756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLN1FLLbDWpN4QUAu9opvQ
	(envelope-from <devicetree+bounces-300756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:05:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8175916D8
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:05:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F40ED30D29FD
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 15:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BABF54768;
	Wed, 20 May 2026 15:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FONIzgU6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC037340414
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 15:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779292555; cv=none; b=sP1mc7JocGeJxiC96oWw4UmhMnZ6xNSsiI3Kr0lU0KUcYK3SaDDDDTXO8PgJJ0A32DOYqTRVQUlC5VhSICfcrOIxiQoqOposBW18u9zWwX5bJ8OsYxnsTKRqJYUHNyTAnr++W+AWVE1d/LS63EHIB0YgNS0fuTNBxPGKOy6NErw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779292555; c=relaxed/simple;
	bh=/GG9HDZ1S07BiQPboyg7BK9uXBaHXRo71xOtjnxUVh0=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=REU/2wJslD/dQwvj4CoOO988x/FIJoFsMgsM4EThcBh8kfNTvgLmHPqHUHLDCOkuCghQ0PIcBGUKF4ifJTqOFhgKZVSBW3EASeFVOo3p8xBXGVu6Ux7vQUpw1jjHnSc4lpSe239MCP07Z2v7uKXQ72wgbjOMCYTj/mYTfy3plgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FONIzgU6; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4891e86fabeso67260545e9.1
        for <devicetree@vger.kernel.org>; Wed, 20 May 2026 08:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779292550; x=1779897350; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hOxCa0nAdk2kPR8ljw7z0QC4wu57IzFw2yREzNsnu4Q=;
        b=FONIzgU6ghGimqkhMZ+REDB9pJYkNFjAEbVkQmGaC6LkPcRC3J7Y2rGrIlKzWsGsJo
         Czg5FdBrUNgBPd3v9z3BToKe135IJ8PaA2w7HZIc99p7+IlVxGRlY3Wn8oCTPrIRvDMo
         YGh7JlUDij1b8zx4ZS6+/f6S3+2bYZ6SyUpa7e76ocBCc0mOCxpJP+T4teKS33aT6prt
         IqZHMrussNfEVcqGRlW96So5vrLLGCT7eA4LxJdNXkEPYYf1EHJfKtiu3rhu2db5vWMA
         LUR1qRN8w/fDgkoW9Qyn0YrKfzz8R8R5t4OVBv50bez3FTU44ZiQbluUn12qI7s3coBx
         ggbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779292550; x=1779897350;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hOxCa0nAdk2kPR8ljw7z0QC4wu57IzFw2yREzNsnu4Q=;
        b=k2MWCuOfeU3fDtuHn7vPZaUPrUR/u2twkh77QoPeSgYDnQ/HXsSCmcPWh+NocJy1Wj
         DHxDX41VtoERdkD6q8nvcJ+Lw+z8UiF4OpwQmL7JunXaUToanovlLRBJeIiCHtloA2e0
         +vcoGfLKS5vfsA4v9QHyM3EuJEd98CqrUOyAW8cZ9LNNYY05XjjsZeCtIg9oxh+V6c2W
         rHJD0c2RX3eO3FhCMS7ZGzeDIREY5tZrTXc9UTRDIMdoPKu7woF8QaafS0HvlwawLKtU
         FgAfVXiRC9RgA1JOV7U6yt3U8dS2ftF4oLREZsxCDaxXuFs5Ys0FuvVHvgnVMnwBVEC9
         aVvg==
X-Forwarded-Encrypted: i=1; AFNElJ+uzcHYlhaMY/SUqrze4brPsJJy50FsEvnOpxJJmhI6w++gSnIjiw0Y4+F88T2Zc7Q07oVWtTXXJQv6@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf18k4LbJr8j0Gkd4skUB+xy4rQMt/Qc7HYGp0uWdcuhRghrm0
	49TupOSfoSkhjMuV40lZ6L9MPLnq5V5p3StTibHIMENXNMd6Se5TSvcs
X-Gm-Gg: Acq92OHn7VVbb3dYc2V/OvkRufZtR1qTz27/GpJWVY5PIwNZoEZ7MK1s03tq2Z0xBU6
	LDuKHW3pQuFKXBFx1qgms9Tk9Lv5ZRcpinC7N3YYawri6sBgnnEVw+fxtezhiV1noYWQ6H+5DC8
	b04palJxEpfPUSZxu7CvWRcM0AftRtAWtNKDvQQCi00b9V5L9F0TFBlp/zjPirFY+VdTSwDL4Z0
	LbnfrJF1yqWz6LnXPYz7JAG3dHjsAvTvFW6F6X6TGIrrKOksrrWOgAGIxSosPYgSrjsi3C8+pzL
	dazrKuIJV+zcjSLjvXyiEd6bkfz9aBfEJ1Qaa7pNI5mhf52A1L3TEF35o4KDZsOoqbcaY92HgCs
	QwDDKCHjCzRl2Viu9NZMy6yuG5euuh4jANXdYnqvQnhyPt+fZeFgh8m4CoMgCGmOYwwecv4BHjx
	p08Zbk7xkZn67NpW7F0yuOZwxUCAEPRXoH5swCVwAV/evuAFoQxTDkFdrCIKLvesVTnvEs656xV
	Q==
X-Received: by 2002:a05:600c:4692:b0:48f:d5e8:758c with SMTP id 5b1f17b1804b1-48fe6325792mr384226205e9.16.1779292550440;
        Wed, 20 May 2026 08:55:50 -0700 (PDT)
Received: from Ansuel-XPS24 (host-79-22-5-99.retail.telecomitalia.it. [79.22.5.99])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48fed253f93sm132123215e9.16.2026.05.20.08.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2026 08:55:50 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v5 2/7] thermal/drivers: airoha: fix copy paste error for sen internal
Date: Wed, 20 May 2026 17:55:15 +0200
Message-ID: <20260520155525.22239-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260520155525.22239-1-ansuelsmth@gmail.com>
References: <20260520155525.22239-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300756-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: EC8175916D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In airoha_thermal_setup_monitor there is a copy paste error on configuring
the internval for temp monitor. Fix the error and use the correct mask for
the sen interval for the EN7581_TEMPMONCTL2 register.

Fixes: 42de37f40e1b ("thermal/drivers: Add support for Airoha EN7581 thermal sensor")
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/thermal/airoha_thermal.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thermal/airoha_thermal.c b/drivers/thermal/airoha_thermal.c
index 439aa011b75c..829a7327fc40 100644
--- a/drivers/thermal/airoha_thermal.c
+++ b/drivers/thermal/airoha_thermal.c
@@ -403,7 +403,7 @@ static void airoha_thermal_setup_monitor(struct airoha_thermal_priv *priv)
 	 * sen interval is 379 * 52.715us = 19.97ms
 	 */
 	writel(FIELD_PREP(EN7581_FILT_INTERVAL, 1) |
-	       FIELD_PREP(EN7581_FILT_INTERVAL, 379),
+	       FIELD_PREP(EN7581_SEN_INTERVAL, 379),
 	       priv->base + EN7581_TEMPMONCTL2);
 
 	/* AHB poll is set to 146 * 68.64 = 10.02us */
-- 
2.53.0


