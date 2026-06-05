Return-Path: <devicetree+bounces-307399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 69dEOhzBImridAEAu9opvQ
	(envelope-from <devicetree+bounces-307399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:29:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDAC64822F
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:29:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=a01nWBZf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307399-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-307399-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F0B083061331
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:22:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC43B4DBD6B;
	Fri,  5 Jun 2026 12:20:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A7F367B90
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:20:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662035; cv=none; b=cdG8eaD1Cvggb0DuTYlZoxQND+L0cpHSW/dOOwRT2ZWrL6tqqVis+Z+LzNdRsmgS3zWSdaiF0wOvjQrJ5t4I7vb1v+4HtxJMWnudX0twaHD0yuYKDE3nNBjlOt7kGDCCtn1XCeWIKvuH7ucSf8r6lPAoEyGkQgO02F2GEnoalvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662035; c=relaxed/simple;
	bh=TMiHEe92SuAh6fgG6WujL79mYk0H4L6Yn425oPvB8uY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DwGe4OHIUC8etQmCDB4GUndredKhFqSXO3s+ZXGlvddXx3ikMHAw76Tr/or6Y7iRCJCSKJMkS4Nm88vyoRhS5kXj7OLmvHvZhmLORSPGdjLckuXFW6Nnnc3PzVbHklPvGQ9w1KxXeKxXiRVA1okOGRFdH6pRrQ+7ouv/r+RWVHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a01nWBZf; arc=none smtp.client-ip=209.85.215.176
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c8584bbbf2cso1151394a12.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 05:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780662034; x=1781266834; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KsRhVTKGsiM8JmWvqFHRoyOy+2lKAlrjAXLVyytCHCs=;
        b=a01nWBZf9sF1KHEwdo7dfm/S8kiyMa/XTflm+byQ84TeWOK6N0cgwr1tx1521QuTPI
         icP1n8pRwfmaFMMZu7I3tdjKay01nMHQyOvkxjSOrUTALW2GYv64PyukucF8NK7E2LDN
         gy+FGcTbxCScV5HMvz+8cQ556v7JS4iukL1AwRjN/sB6pHD/W3zSFOMfjt5mrf7nT33Y
         Ic49vG9yBMiRdHDOR1hM/L7Zn4LKEMmHfkhDi/V3HNFDAzrghFpUr7RfGDf5v+rLllLa
         gvi05EpOx6YkTpdle16eb5WxqscvSxsnEN0W9kXMSO6/t81ZAUiiO5/Hf+IF8Pd0cuQd
         AkAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780662034; x=1781266834;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KsRhVTKGsiM8JmWvqFHRoyOy+2lKAlrjAXLVyytCHCs=;
        b=OuEHl9ygPUjIMBpt76M45IiqAod07GbQrV3Pu/cwbvLqUHv/9EuXiTm6n7iQHZ2RnG
         67s14622g+e+NCGXduFLlxTI5c/zAfQcC5U9vjKzoON4rivYh6+1rOEi2vvKpMdqUvGR
         Z0qCpPHW4usR0j34za9tmjgZzTFAr4JP202pmFNgVyxPR+C7iVIlGtlzLlvg4bBzxmpY
         QEHpwWjdCnAZZsAc394Ew3wXsTwMTYcn7QDz9T2+FbTyplEXWoNT76Xv9ERNaFIF1/qf
         NN5RjDTFon3AsF8pNsy05fKCMqZah3PYUoVcMgzxjsq20hc3HG//TeeKiSCSbmfAGn5m
         W+SA==
X-Forwarded-Encrypted: i=1; AFNElJ9uPw2mRSeaT4xe+TQg5C5aUY6K+CVtNRubV1jnETOf/oSsyA3l8QTpuTfbXVs7CQDlKXTsO44u4Xa3@vger.kernel.org
X-Gm-Message-State: AOJu0YwcNk3pSJpFnJxWUb3LGy9hAUbC36Sc4y8h6M9zBFZgvAu8QDD5
	ZbTL7OVofJGKSB1AvW7nMAa/4lwf1NVkP9REP9IDJvatnDIWxhcMQGQY
X-Gm-Gg: Acq92OHYLmdyetq4uSXTJI9bdERiCj2LVh/yrdouV0Guvc0zIKvsxGj0rnR7tEHQLSC
	kgPS+vKxKPS0E5uJp+Q37NiJfWSlBnGzGB9IzE/hj+GSQSRs0q7KzN3Ct438VRMUuOHU8nUS5qk
	OgoNBnOH2VbHkMTbNkBnAs9e5tt2yfdVkKXYw0QF+x9RUEhtRFRsM3MCqwNaXeQV1JSYczzsuC2
	kdBHwz1Sx9WhFOsBZgzcgw3WyJ0BSYERFyMnDfSzFVdjp9IBuo4+vZKoCG8y29f/oXx82a/ypgs
	ui4MWOpawoMHo6MkqteeSpOjxjIIyOaBKqxuMpszlkOcffBiWeoV6b1g7QGP/ug0uBOnrvTu1fF
	PRe5AmTNlkVy1F5QShfc3WwL2Ai42PfjdE3lXQZlR7fj18kbixp3vlc1HKEvuUgwsORF7Xwg4Ob
	PM0dKjR+bR6aXLCCQ0MwBJtyAre39CRuWI9G1Kcnf8XROph9msRgFiLTynCRItvgutoxad
X-Received: by 2002:a05:6a00:ab83:b0:842:2280:538f with SMTP id d2e1a72fcca58-842b0e74b30mr3311643b3a.16.1780662033809;
        Fri, 05 Jun 2026 05:20:33 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282221059sm8594381b3a.7.2026.06.05.05.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 05:20:33 -0700 (PDT)
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
Subject: [PATCH v4 04/10] ASoC: renesas: fsi: Move fsi_stream_is_working()
Date: Fri,  5 Jun 2026 19:19:48 +0700
Message-ID: <20260605121955.105661-5-phucduc.bui@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-307399-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2EDAC64822F

From: bui duc phuc <phucduc.bui@gmail.com>

Move fsi_stream_is_working() before fsi_count_fifo_err().
This prepares for a subsequent patch that needs to check stream status
when handling in-flight IRQ handlers. No functional changwqes intended.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/fsi.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 94ab2e490810..429c3c9b6ede 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -442,6 +442,16 @@ static int fsi_sample2frame(struct fsi_priv *fsi, int samples)
 	return samples / fsi->chan_num;
 }
 
+static int fsi_stream_is_working(struct fsi_priv *fsi,
+				 struct fsi_stream *io)
+{
+	struct fsi_master *master = fsi_get_master(fsi);
+
+	guard(spinlock_irqsave)(&master->lock);
+
+	return !!(io->substream && io->substream->runtime);
+}
+
 static int fsi_get_current_fifo_samples(struct fsi_priv *fsi,
 					struct fsi_stream *io)
 {
@@ -488,16 +498,6 @@ static inline struct fsi_stream *fsi_stream_get(struct fsi_priv *fsi,
 	return fsi_is_play(substream) ? &fsi->playback : &fsi->capture;
 }
 
-static int fsi_stream_is_working(struct fsi_priv *fsi,
-				 struct fsi_stream *io)
-{
-	struct fsi_master *master = fsi_get_master(fsi);
-
-	guard(spinlock_irqsave)(&master->lock);
-
-	return !!(io->substream && io->substream->runtime);
-}
-
 static struct fsi_priv *fsi_stream_to_priv(struct fsi_stream *io)
 {
 	return io->priv;
-- 
2.43.0


