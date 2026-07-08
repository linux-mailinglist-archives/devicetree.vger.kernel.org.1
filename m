Return-Path: <devicetree+bounces-323057-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iPjHCL6ATmoJOAIAu9opvQ
	(envelope-from <devicetree+bounces-323057-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 18:54:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDB6728EDC
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 18:54:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sartura.hr header.s=sartura header.b=heZsnlOv;
	dmarc=pass (policy=reject) header.from=sartura.hr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323057-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323057-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 93C423016AC0
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 16:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8804F47DF8F;
	Wed,  8 Jul 2026 16:52:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440784343E1
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 16:52:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783529545; cv=none; b=idXTGxywessfu+j/tAF9YZuY0TAFCrUfWxOWDTYXpnO/j3I7fm9FLQIG057Y+52TV4P/psb/lXy9SYnOvMNkmw8YnEG0JTmt5z2bI5KSFdLDGea85lHYe4tiofuv8/xlmOhSIqQlLubSm7OzO6T90jl4+3fv8BBPLrAirwxO838=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783529545; c=relaxed/simple;
	bh=YerxN599C9K5/WkW/n/MaJlm+4DTVduUUon9gz0fQMk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bu86h2cqf9CmCyEGWI8r8dwoRr72xtqG60Z+ATJMqM1tv6lQYeYuo9cYDoMXBvfq5W4GN2ukpP1Niq5VHdabyWTun9cX8ESRCwDROMurZlin/kPrNSPSRU2f3zBA00G+9uuvZZoGzHj8jIIdN7RQk/Lx0OneOwaRbSk8UfXF8iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=heZsnlOv; arc=none smtp.client-ip=209.85.128.43
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-493bb510ce4so129395e9.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 09:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1783529533; x=1784134333; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=e9Qpcj/wkj9TypLUNOyfNd+pq1jx929AEvSS7+Vs/LQ=;
        b=heZsnlOvdFpDX35dOss1cxVIAGAi4E2jqW8uCycLx48/lF535lfPSGAprT+9r8OLd3
         CbUDa0fq6BcZKwp0MoyduX2KzFuvGUNVCTimWr++OGMahs3G+OWbEbTWuiNUsWZ3oOTo
         4+B8DmyFpH4pt/JXpILg25gygCVNw6Rd4RjBjSLGjBbSaT4fLS4FcP/LvCz1CbhuZJa3
         i3N+NbanK68wGoJCed1jD/HDMA60htoifXMCEk6jxLHPj1xrDiXqoe0CL15F/pMdynIn
         jxhwlEgBSaMeukbpb0uZT2NdVunCzBxWwlGnGJZu0t1Iq+ceQLhSZfIHAnhWVkrM7MWp
         Ua0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783529533; x=1784134333;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=e9Qpcj/wkj9TypLUNOyfNd+pq1jx929AEvSS7+Vs/LQ=;
        b=LrtGDtJOZ0ISNEUqdlzMHDZ8cW8rjUibKDvZCEPbcp4uSBenhERXRLDkPGLUusEjSC
         pPRMGg9QkNWek3TeuhEtgf4dg7aIX8kHgA+iiHm5WVP18ols6Co7kPkNKImMLEf6Bsku
         buoAHvziSKRh6/50iPWvjnBxiCn3pS7fy4dpbm9tk6KMaqmqjDM5j/N1QPFabUPz5Dgn
         Bi0FSV8xSvYN6sCd+NzkiLQdQpkoLnWi1mYa3zSE1NRgR3k3F7Y0z9PVxEDVoMJiMqxI
         QbQfEC+9O1h9Sr3fEtS9R+kjosbZ/fPNY7V3pT2b/w3MzDf1XDlXuh5bxGpoNLXCAJRp
         vb2g==
X-Forwarded-Encrypted: i=1; AHgh+RrC/fDxVosPz4RxXA+DQ6H473FeKZ3mudlYt62XzS9HYOPjLfGzbnokFUzDftVdYRj/5I+pqHxt4UCl@vger.kernel.org
X-Gm-Message-State: AOJu0YwOV3/44CApnigDeP8s+GUCQVJqYKYcBbUZtFjauz1ZzlGHGZrU
	YJov/JU9YY9hfBCBXFGZI1GcHwM8JQohxtx1kDnhn/HGSGPt98opK4YOGEKQHQ/3Ehsrkp0HPGS
	+dOLv
X-Gm-Gg: AfdE7clhFEOfsDVaUbPcdRZcbdA1Do3KBYak8hrvioyBUVW38zUI8WhWanSlC3RwXJs
	M95Fw/X3lxN/HFMjAUvsi/tiEXGgLcB8lb/Inww3XeL0x0EeWEr6YH8Gax3sX/wmvc155RXfnaz
	jEQqLextsh1UV9GKLnFnuIVOVNbksjLLyx9JtQb6dADztLfGJAOavMiOLjlrU+VVSVEkm9JmNay
	03Rcr9kcfPxQYXRjjcM+b8lI15bgKxqK9URa8yvQMlVDpIZ0ke3vVLT5JtBkaeCoZF69Z8kgZUE
	tA2/lBCjnZE4NQUCPE+QiO8C5iTST6gu1S7A+pYjFQJELDrEDuZfgcA+wqGdd1z+Z9vX0X6/RcJ
	Lh+S33qobv6qtrRBofrSIdWVfSu7Dcc2jRZvUBk02DhqRqEAcS5tmW/IAu8GX10GOufS7bbcd2R
	hadTCfJNpYs0bwItsuEAB8w8JjJUx0gnzhdgLfanNOWhHvDUq9vdtbdm6STbAOKMu+HDFLBPXJc
	Y1/IuVAZTLclLrF58DSI0P342AlGUOGW4fi3xjGEOk=
X-Received: by 2002:a5d:5848:0:b0:478:1a24:912d with SMTP id ffacd0b85a97d-47df07a2e71mr4183000f8f.57.1783529532914;
        Wed, 08 Jul 2026 09:52:12 -0700 (PDT)
Received: from threadripper-fedora-workstation (dh207-15-57.xnet.hr. [88.207.15.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0f214d2sm42902679f8f.33.2026.07.08.09.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 09:52:12 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: conor@kernel.org,
	nicolas.ferre@microchip.com,
	claudiu.beznea@tuxon.dev,
	robh@kernel.org,
	krzk+dt@kernel.org,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 2/4] spi: atmel-quadspi: use init callback for gclk variants
Date: Wed,  8 Jul 2026 18:51:09 +0200
Message-ID: <20260708165201.624271-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260708165201.624271-1-robert.marko@sartura.hr>
References: <20260708165201.624271-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sartura.hr,reject];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-323057-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:nicolas.ferre@microchip.com,m:claudiu.beznea@tuxon.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:broonie@kernel.org,m:alexandre.belloni@bootlin.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel.machon@microchip.com,m:luka.perkov@sartura.hr,m:robert.marko@sartura.hr,m:krzk@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sartura.hr:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sartura.hr:from_mime,sartura.hr:email,sartura.hr:mid,sartura.hr:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1BDB6728EDC

Assign the existing SAMA7G5 initialization routine to every generic
clock variant and dispatch initialization exclusively through the
capability callback.

This keeps hardware capabilities separate from initialization selection
and lets variants override the sequence explicitly.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 drivers/spi/atmel-quadspi.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 62ea84d234d0..d1aec14e3978 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -1159,10 +1159,7 @@ static int atmel_qspi_sama7g5_setup(struct spi_device *spi)
 	/* The controller can communicate with a single peripheral device (target). */
 	aq->target_max_speed_hz = spi->max_speed_hz;
 
-	if (aq->caps->init)
-		return aq->caps->init(aq);
-
-	return atmel_qspi_sama7g5_init(aq);
+	return aq->caps->init(aq);
 }
 
 static int atmel_qspi_setup(struct spi_device *spi)
@@ -1576,11 +1573,8 @@ static int __maybe_unused atmel_qspi_resume(struct device *dev)
 		return ret;
 	}
 
-	if (aq->caps->init)
-		return aq->caps->init(aq);
-
 	if (aq->caps->has_gclk)
-		return atmel_qspi_sama7g5_init(aq);
+		return aq->caps->init(aq);
 
 	ret = pm_runtime_force_resume(dev);
 	if (ret < 0)
@@ -1638,6 +1632,7 @@ static const struct atmel_qspi_caps atmel_sam9x60_qspi_caps = {
 
 static const struct atmel_qspi_caps atmel_sam9x7_ospi_caps = {
 	.max_speed_hz = SAM9X7_QSPI_MAX_SPEED_HZ,
+	.init = atmel_qspi_sama7g5_init,
 	.has_gclk = true,
 	.octal = true,
 	.has_dma = true,
@@ -1648,6 +1643,7 @@ static const struct atmel_qspi_caps atmel_sam9x7_ospi_caps = {
 
 static const struct atmel_qspi_caps atmel_sama7d65_ospi_caps = {
 	.max_speed_hz = SAMA7G5_QSPI0_MAX_SPEED_HZ,
+	.init = atmel_qspi_sama7g5_init,
 	.has_gclk = true,
 	.octal = true,
 	.has_dma = true,
@@ -1658,6 +1654,7 @@ static const struct atmel_qspi_caps atmel_sama7d65_ospi_caps = {
 
 static const struct atmel_qspi_caps atmel_sama7d65_qspi_caps = {
 	.max_speed_hz = SAMA7G5_QSPI1_SDR_MAX_SPEED_HZ,
+	.init = atmel_qspi_sama7g5_init,
 	.has_gclk = true,
 	.has_dma = true,
 	.has_2xgclk = true,
@@ -1666,6 +1663,7 @@ static const struct atmel_qspi_caps atmel_sama7d65_qspi_caps = {
 
 static const struct atmel_qspi_caps atmel_sama7g5_ospi_caps = {
 	.max_speed_hz = SAMA7G5_QSPI0_MAX_SPEED_HZ,
+	.init = atmel_qspi_sama7g5_init,
 	.has_gclk = true,
 	.octal = true,
 	.has_dma = true,
@@ -1675,6 +1673,7 @@ static const struct atmel_qspi_caps atmel_sama7g5_ospi_caps = {
 
 static const struct atmel_qspi_caps atmel_sama7g5_qspi_caps = {
 	.max_speed_hz = SAMA7G5_QSPI1_SDR_MAX_SPEED_HZ,
+	.init = atmel_qspi_sama7g5_init,
 	.has_gclk = true,
 	.has_dma = true,
 	.has_dllon = true,
-- 
2.55.0


