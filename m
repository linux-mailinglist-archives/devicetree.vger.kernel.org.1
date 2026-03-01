Return-Path: <devicetree+bounces-269676-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCTIB93zo2mvSwUAu9opvQ
	(envelope-from <devicetree+bounces-269676-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:07:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADBE1CECA0
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 09:07:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA4D03030988
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 08:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1A732ED27;
	Sun,  1 Mar 2026 08:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U9bwnysP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86EC532ED29
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 08:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772352402; cv=none; b=YRQA8io5ZbszdGWcoWrFDSDLd3On+U3wjDYWcgzX4/Xp5dgYvTnRBhpyXAd5hoXoYePU5nAzwK7pzKODuscnkfumZB83ufNhsMkFJ/nkT7HdRvFSzotDb99jkeWTdISvrHVn39pVQavXVbkUGgTX0RquUzOmb+Uor+8sFWDr3kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772352402; c=relaxed/simple;
	bh=VyTWRPS81+vOo86P7NyB7zBl67kC7Sarhern+hi6yV0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iMLa8gb0KLR6dy1HUPkkzign5ylomuubgzHsBfedNPKt7EGN3HLIVzIxBPPySn5RjH+t5HxMrYIE7DNsslK4/bcxOYjT7k6t5YTHcDeCrQl09ORzLp3H/lgKRF3ZfIp+Ddry0gAro3FNAY0ofzp0Ei9csJTpIOfAkWtPxZ0pC6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U9bwnysP; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-82746ed8cdcso1884565b3a.3
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 00:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772352400; x=1772957200; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=COktpS70G1jBT7Oq0awQeJHx1NZJeipbMMF36OzY5Z0=;
        b=U9bwnysPsazAHpbYU8klwctF30VxW0j2I3eRmugN45MVcbGBNG8WrxWxAsUAD2AZVz
         YYng8FmyQTqiQkLiwKXUgP63t2geqsGGR/aiZE0HLCCiI53SIw4NzP3mlFgIimuKaIEA
         qfPLt1Xky++OIMNBrnXJliqb69p96D1CjdBQlWZBde6xI7NqHxkneDQUErLiIxdHyQJ3
         dV1jlvJFY6UHzLkchbIkUL1u0X/FrY5Oj2Y7+6PvwgXVkANLP7KsXcgu0wAY04IZumwk
         PMlsihkZghn+EH7bomWaoVhjr7mM6OXHdvchV6u+iD5oSdEK8vMaxfHo5cQbQ7g0biQT
         kR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772352400; x=1772957200;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=COktpS70G1jBT7Oq0awQeJHx1NZJeipbMMF36OzY5Z0=;
        b=GNEa58Lve1PlV1cEPfssKwc4XPTP8YRJ6r9TfmaXU4yo2LzvDAY+2lEiH5WnvKVESi
         TJrf03B3K52S9mzLDqovMuslYqt4xRNExNODqwk+fi9o9Mu+SDh1bVJclev6YOPnbut1
         RD5LL9ay+CwGzyys+4cWH9RG4A+pETqY1q9ZuPGFQo3S0VjWMZXaCkDIMr1eG8OKljwN
         VCixsSY4IAhWB6gETd3VhID4wwi6IZhJRLrWRaXBISTPy50NYPkAsVkm3eevYPAlKsK3
         tmYjs7pUc1qHmGxk4J7cdjyM6jlTIx1mJNqxtoLN/YTX8jeyqrkq1LiakE2HSAV/4D9h
         mCNg==
X-Forwarded-Encrypted: i=1; AJvYcCWKIk5CW1gh9D5cfXGuGXYFEIK5aAoOZ/WijOkRmR3Ah/cDZ37dY4nmV0DF991YcPiUpwiusNT4NHzn@vger.kernel.org
X-Gm-Message-State: AOJu0YzH3xORcqdhLxjBjludq0vYeIMNQHY7oIUBSK2kk/Ve1ceHHZpo
	3/Ft9HpRfhkTEsG7t9/KJ4yTz/uuGotzB9/4mwqFd8BqE8Er55koYCFU
X-Gm-Gg: ATEYQzz5g/xMRdbk870YsEla3hOphXWHuDPQtXsruuUlVd1Zv60Y0KlcjPL7aYsu11Y
	NA03N9HGwKVxUuBMu4ubfhLn8xPKin/HUfyrN12n+dz5Bja5ezfij54SBIeleo7eLV26k+YkoVJ
	neMLHb3BTZzpVa7KyscZZ8z2+RReDwWYY4XgyWaPYk/P6mgjhgc8jqkc1HXBMHfJ5G3dYPHMF1c
	c6uVagNcqP3uOD465YKrkdEv9RPeLmTqe8yLs5tN/fx9YTPRolv5vX4kjCnGMVcYrlEQNHw/WWM
	vy1uq0cydPLrW/EeghaPxpqmzT7usJHtETSHC+VcwYxf+5gHTNry/F0DDz5OCIz4zr8HVl8gAlJ
	qaHCbl+avKmngwxD/8dAv693w9Xo8Pf46Fngf6J2kp3ChLs4eCmN9QwYNriZYmZ4Ld2uroLzTV2
	maCdWIw9pdnZLwfmuONOhix9xD0Wo0QagwHYLc5/maYDyBChbaAg4RGbTmcFAD+NEQu3LbJNDf+
	1ZHjkOSc32e5BxEqqkyDh5p4YRM5pW8SHyz0kpcaT4nbUS5unBJmXl8Vbt0b78+Fw6OrWMA/Vr2
X-Received: by 2002:a17:90a:fd97:b0:349:3fe8:e7de with SMTP id 98e67ed59e1d1-35965cd1066mr4480685a91.28.1772352399832;
        Sun, 01 Mar 2026 00:06:39 -0800 (PST)
Received: from [192.168.2.3] ([2403:581e:d87e:0:fc2d:ed31:e80e:412d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359135ef1d7sm8885384a91.5.2026.03.01.00.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 00:06:39 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 01 Mar 2026 18:05:23 +1000
Subject: [PATCH v3 4/7] ASoC: soc-dai: define possible idle TDM slot modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260301-tdm-idle-slots-v3-4-c6ac5351489a@gmail.com>
References: <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
In-Reply-To: <20260301-tdm-idle-slots-v3-0-c6ac5351489a@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>, 
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>, 
 Frank Li <Frank.Li@nxp.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2335;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=VyTWRPS81+vOo86P7NyB7zBl67kC7Sarhern+hi6yV0=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJmLP6fXyj+ot16S9/zirdpppzcc2LDlnapn6bXO1G+Hz
 6y9z3LmXMdEFgYxLgZLMUWWDU1CHrON2G72i1TuhZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DI10jHWMGLg4BWCqJ+gx/GJO9N22/us5k96pFR4/V7C08c4w3xVVcFidZcP8zCcfjNIZGQ6lTXT
 u+PN3rYrwtOxN968V75nySMXRV/eSfPhus8QJ+iwA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269676-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,pengutronix.de,renesas.com,nxp.com,perex.cz,suse.com,ti.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8ADBE1CECA0
X-Rspamd-Action: no action

Some audio devices, such as certain Texas Instruments codecs,
include configurable bus keepers. We currently don't have
a standardised way to configure such hardware, and instead
rely on the hardware initialising setting itself up into a
sane state. There are situations where this is insufficient,
however, and some platforms require more concrete guarantees
as to the state of the bus, and being able to explicitly
configure bus keepers enables this.

For example, some Apple Silicon machines have an odd bus topology where
the SDOUT pins of all codecs are split across two data lines, which
are summed via an OR gate in front of the receiving port on the
SoC's I2S peripheral. Each line must transmit 0 while a codec
on the other line is actively transmitting data, or the SoC
will receive garbage data. To do this, one codec on each line
must be configured to transmit zeroes during the other line's
active TDM slots.

Thus, we define seven possible bus-keeping modes that a device can
be in: NONE (UB/as initialised), OFF (explicitly disabled), ZERO
(actively transmit a 0), PULLDOWN, HIZ (floating), PULLUP, and
DRIVE_HIGH.

These will be consumed by CODEC/CPU drivers via a common DAI
op, enabling the explicit configuration of bus keepers where
required.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 include/sound/soc-dai.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/sound/soc-dai.h b/include/sound/soc-dai.h
index 224396927aef..44dd06add52e 100644
--- a/include/sound/soc-dai.h
+++ b/include/sound/soc-dai.h
@@ -52,6 +52,21 @@ struct snd_compr_stream;
 #define SND_SOC_POSSIBLE_DAIFMT_AC97		(1 << SND_SOC_DAI_FORMAT_AC97)
 #define SND_SOC_POSSIBLE_DAIFMT_PDM		(1 << SND_SOC_DAI_FORMAT_PDM)
 
+/*
+ * DAI TDM slot idle modes
+ *
+ * Describes a CODEC/CPU's behaviour when not actively receiving or
+ * transmitting on a given TDM slot. NONE is undefined behaviour.
+ * Add new modes to the end.
+ */
+#define SND_SOC_DAI_TDM_IDLE_NONE	0
+#define SND_SOC_DAI_TDM_IDLE_OFF	1
+#define SND_SOC_DAI_TDM_IDLE_ZERO	2
+#define SND_SOC_DAI_TDM_IDLE_PULLDOWN	3
+#define SND_SOC_DAI_TDM_IDLE_HIZ	4
+#define SND_SOC_DAI_TDM_IDLE_PULLUP	5
+#define SND_SOC_DAI_TDM_IDLE_DRIVE_HIGH	6
+
 /*
  * DAI Clock gating.
  *

-- 
2.53.0


