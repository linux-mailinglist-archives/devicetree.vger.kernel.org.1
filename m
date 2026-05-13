Return-Path: <devicetree+bounces-296692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CI8zHN80BGoqFgIAu9opvQ
	(envelope-from <devicetree+bounces-296692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:22:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E591052F8A9
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 10:22:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F339331154E5
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 08:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD6CF387585;
	Wed, 13 May 2026 08:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="K8B+4nQY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65293876A7;
	Wed, 13 May 2026 08:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778660248; cv=none; b=Wm+m1q2DPSPTgerSMWHAJnjmNk8hjYhWDBMv5huR1e2cBbEW/S6XQ5PvTPi3zh/EQVckasXBFrB021P9700KAQzaxmeRv4SOOWyAlcqSkVaNgcbgXRJWSjdFlQxyVNuDQHNulYk7ZUJ+CLx5Q3uM9qbOdC+VEDvQBP1auWqlC7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778660248; c=relaxed/simple;
	bh=T1w65KOywt6Aem2GhCbJmOJlyoLknLOfFIhNHMwkQ2s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nbdygplbC+G/bT50YeN8U0y9ddZh/2WC/XHPHp6kXdWJrDSvXIRjUu8TK0ImSa8hbPQAFhba8YrKj6qsahBilRLSqtQFsAg0QWBW8wUYt1m3IkuXDzW2u+px34kbFL8tffzXrQLMpuuWV3kDM8vAQ/lfDyCUwV/55jb7hEJGFI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=K8B+4nQY; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 0509BC5DC46;
	Wed, 13 May 2026 08:18:16 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A15AD606CE;
	Wed, 13 May 2026 08:17:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5185411AF874F;
	Wed, 13 May 2026 10:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1778660244; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=sKypgypZ6D+IKIIZxzDHFHASGVM/SOc1W5Wd/depBrA=;
	b=K8B+4nQYAYF+KrlYvqdWE/8FTHLd9XoG5JgN4zB/XWzA2PXG542ZnBv5Ooe4GPXMpakqJe
	7LI0rmY0BlxP9QtbnnbkX5M5LzBDo3FQc7E7q8GD8xEPflZBvmB8ulzAjKHXJpRucq3tBa
	Kjig4OPsHaPq32Cp2YnK0L1ejY29LgKsN/HNeeVIEh9Fly58/PxJjwV4V9siGkKCoW3K9e
	k8/nsmStQpEyaHehYiVmzuvAUW3504cvXQiuzpg/rphqQet+KsuaOzCOhF0U6zqwYdkoOw
	2Mujj6/IvKN2MmwuBTbau5bde/EAGXDSY6S7P+ImNeGpqU1IppRREAuxKpqO/w==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v3 03/17] ASoC: simple-amplifier: Remove DRV_NAME defined value
Date: Wed, 13 May 2026 10:16:47 +0200
Message-ID: <20260513081702.317117-4-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260513081702.317117-1-herve.codina@bootlin.com>
References: <20260513081702.317117-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: E591052F8A9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[bootlin.com,kernel.org,gmail.com,perex.cz,suse.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296692-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:mid,bootlin.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

DRV_NAME is defined and used only in the simple-amplifier driver
declaration.

Remove the useless defined and use directly the value in the driver
declaration itself.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 sound/soc/codecs/simple-amplifier.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/codecs/simple-amplifier.c b/sound/soc/codecs/simple-amplifier.c
index d306c585b52b..41485445727d 100644
--- a/sound/soc/codecs/simple-amplifier.c
+++ b/sound/soc/codecs/simple-amplifier.c
@@ -9,8 +9,6 @@
 #include <linux/regulator/consumer.h>
 #include <sound/soc.h>
 
-#define DRV_NAME "simple-amplifier"
-
 struct simple_amp {
 	struct gpio_desc *gpiod_enable;
 };
@@ -97,7 +95,7 @@ MODULE_DEVICE_TABLE(of, simple_amp_ids);
 
 static struct platform_driver simple_amp_driver = {
 	.driver = {
-		.name = DRV_NAME,
+		.name = "simple-amplifier",
 		.of_match_table = of_match_ptr(simple_amp_ids),
 	},
 	.probe = simple_amp_probe,
-- 
2.54.0


