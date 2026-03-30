Return-Path: <devicetree+bounces-282384-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEdpEGBRymmb7QUAu9opvQ
	(envelope-from <devicetree+bounces-282384-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 12:33:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A28483595C6
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 12:33:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0BA58308C162
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 10:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D4F73C8715;
	Mon, 30 Mar 2026 10:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="i0FV1/RZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313CA3C7E11
	for <devicetree@vger.kernel.org>; Mon, 30 Mar 2026 10:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774865789; cv=none; b=HeCaHLL8jS3prMOblTl+jaoxQdte6We/lPA98ZNbNiyGYWEIw+JJExeszk/H8zE/Tujyq38NY+xcYOnyj1FR/wANhvyjqF1n1rNqVbY0qHThAXWrlWC35A/DOUICrobParqNE8EFjNJwUMd6Ctn4ATJN6yf4cHppXKwM/4+eChI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774865789; c=relaxed/simple;
	bh=Jk8KbZlmKq8ZEAXNtnD15PPIxXzpCD4uHwokEAZ/GLY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KWa+bnDRVWCEsjADU6fM19093KUIQLcPgse1qMEtudNk0Pg5xQmlJwD1tz88R1adBtXv7LuAv0JG/K/S0PfXEtvLdKVka02kfJUQ+F98eBHECs3+mgrXFlvXAggfRVIIE4XpD56agz3nb0cAaFP4+cJUbX6j9fXAqx/LQ7381QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=i0FV1/RZ; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 064A6C40406;
	Mon, 30 Mar 2026 10:16:57 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F35255FFA8;
	Mon, 30 Mar 2026 10:16:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C2CA310450EF5;
	Mon, 30 Mar 2026 12:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774865786; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=BqD0ex0T8aAZm0wxVLLFoEpGMUaXrtSX0K4TG3luA3Y=;
	b=i0FV1/RZtqg0RZR5cxypfFm/IVAU03WN3LRg3SNU9/MYuAaq+2oCQGwp3+H0UdPf9NKxAJ
	IaIMAGKdQOJ40HX1xkVZG2SfE2uWInSFIdWWRS0/+CWt9lv6/49CH5wMCwaF2RahdptYm3
	/8e/8O48elxwqZHIAGZeItWHvUj4CwLUFoxxMzIgGRP7+9ANSWDc0kKjQYwOLXI5EYvV73
	rkkJnFsDOCViSIHCcPVanC9anZ9Mq6eFVootTozX7L4o16UGaGYrzO02UNTHXUUp4nSlxn
	/EW8xmskQ+YWAmu1USSu62re05X/OjoOOW/XR/LwfnaGwa37rapv7GuTWrvkOA==
From: Herve Codina <herve.codina@bootlin.com>
To: Herve Codina <herve.codina@bootlin.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH 4/4] MAINTAINERS: Add the ASoC gpio amplifier entry
Date: Mon, 30 Mar 2026 12:16:08 +0200
Message-ID: <20260330101610.57942-5-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260330101610.57942-1-herve.codina@bootlin.com>
References: <20260330101610.57942-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[bootlin.com,gmail.com,kernel.org,perex.cz,suse.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-282384-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: A28483595C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

After contributing the component, add myself as the maintainer for the
ASoC gpio amplifier component.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 55af015174a5..2546eb81f233 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24765,6 +24765,13 @@ F:	include/sound/dmaengine_pcm.h
 F:	sound/core/pcm_dmaengine.c
 F:	sound/soc/soc-generic-dmaengine-pcm.c
 
+SOUND - SOC LAYER / AUDIO GPIO AMPLIFIER
+M:	Herve Codina <herve.codina@bootlin.com>
+L:	linux-sound@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/sound/audio-gpio-amp.yaml
+F:	sound/soc/codecs/audio-gpio-amp.c
+
 SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEMENT (ASoC)
 M:	Liam Girdwood <lgirdwood@gmail.com>
 M:	Mark Brown <broonie@kernel.org>
-- 
2.53.0


