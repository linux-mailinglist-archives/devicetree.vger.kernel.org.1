Return-Path: <devicetree+bounces-308981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AmVTLsX8J2qr6gIAu9opvQ
	(envelope-from <devicetree+bounces-308981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:45:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C3B65F98F
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:45:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=a4KzTUZl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308981-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308981-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C0323059A73
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 11:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51CE6400DFB;
	Tue,  9 Jun 2026 11:39:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140A03FF1CB
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 11:39:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781005155; cv=none; b=K+WeSj3+pBL8SC+hx8tA09rWwcYM2i8349JP2vNU4m4tEYmoI80ukQD1F6cOHdhDy7P0C8ILVdAgT3SN57pJyP6370DBCEuveGVbo2Dxe0FaZqgukvTawdI2gBU12Vc53joSjYP1O8NLrEseCp58gjDevd0f60fwHiRyOLw8eQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781005155; c=relaxed/simple;
	bh=+xrzJMsTkYG93fo+90IGUX9wUe4dn+/Qn2o113vfxno=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dC85LipT0TSPzAnaASW6ykjEOOZklMGBFscqWgRspLqAEUdCjsi6jzmHikfwt41wPCVz3B658iYBxS0ckGgK3Ei2PrjYNiweXnvqWtAO1qxKAYksarDYilykxSZfElAqmS4O/+8jlC4KiWT43N0StiAldX4FOoZh63gh6az5WgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a4KzTUZl; arc=none smtp.client-ip=209.85.214.169
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2c0c2c7d45eso48488375ad.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 04:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781005153; x=1781609953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XSIuBNvqBaODcdv8iM12D2GiUh6JRLaoNHjKcJ+PWwc=;
        b=a4KzTUZlCQ+UAFKRAoD6QnjKWTpMRF/+MRjfgojPwaIA1d+1Nk6p7jqgSnTGCzkANI
         Lw+Lt9JN+zjNe5Wj0hKBNL9HO3MT0zRM1sZd2Nvss/4y6HJp71frTFoT0EyKI1L3CwHr
         mu2gE6VuVmgq0l+JjrHERyEEaykeDaUgRi2IilDfvhk5Qf7QxrkT/HKEgJEwXiH6Vy0C
         kx7H4H3ZD8Ae4wWrSwcS7nL0QlQiG+3YsSYakLFRg9uCbToD77Upltw4Ryt+5VIdrbf3
         ue0n9sG6H02dVvzrJZSOaXh3nNlztaa+Sv5roisfH682kTxEw/HEaQ+ZsCCbjVfNrt1i
         odGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781005153; x=1781609953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XSIuBNvqBaODcdv8iM12D2GiUh6JRLaoNHjKcJ+PWwc=;
        b=EzeAnUkQ3bccdYZ+PGUM7aZ6asX6mKBzTQ5CGYyFAy5ekD75J7meNIiA2SWdlDAkJQ
         kvrUs/xDgMglh4Qvzim/L6U6zVD/9670Aqair/BLNrWWycvHTIdj8KhKr3+GhBhrNThv
         xObwI985/bc7liIk9sPgv64EYtQwSbL/rBxcXdIQfIUJbLpNGrRYvsGoirppCInADnNC
         6iIdXSLqPFXsTLHPa3RoIFi9pbNh+40GIVq/83tMqY3kLl9lNO3pAFRtBwVl0YYw5rQt
         Y1wIty94YR4MdCLsdiW94NtL0Z96hnTJ4XF4geVAWuSxmPcBvdr+nitNgHUKrmR0tFw0
         plOw==
X-Forwarded-Encrypted: i=1; AFNElJ/8d0JTey214mBr+b9pTxwjj+Lcj8bNKvVeI0dr9m2CHBdGzdT75zss+n5qunw4bHqjTZ+MxMSf7ODk@vger.kernel.org
X-Gm-Message-State: AOJu0YwZl+1AAoYOdzI6W3ojO+AhytNolJZ7P4YD3lgQdKuNtgni2f2k
	wIV9yT5ZT6w3SfPDH6sUgTorRFaZRY8R/GENg5+0fcvJLv9DpfrdYI0u
X-Gm-Gg: Acq92OEVm+CvL+JPXPrnzE9XvUp/Oh/O3f3zB919ZRSz8uXylPaQXfluFqKY3G8oHxD
	SHfUJ60nJTnpM5dAnn53NT/F8EzmVw/1HWg5ZfnR/DxticBOHTd+dCytQkssPZEqsylAFFCPA6h
	UFMMT4efmax2Pej2Wr6IfovBIzPruSXdVXirRnG1B71hDbOPxD2pzdBQQ0aAVCfxYsSk5enok6g
	t4gcaItBzF0aWdyWiQqMVbhd1WMWmjbELWnnmRvGy3HBXd/dE5BufUUy7jXUHiTJtAckIOEc9fZ
	svMQkPWjfbYsU8VB0wHTnz3VdS/xX2cnCsWajvBmGoTW/YCcRkAJ9p8++F1Ja41pW4WOgclZc2z
	ejKK8ySut6hLsaaP2OkjZyE4FaNGwLfCPYoWjeRJVTbhk+l9rhIgYAFovd8G0w+8sBKs4h0E5hW
	Fu73ZlZL1KIlq88BFmRTzG47vQhpBWH2NmiAA2Q0Urp1AdRkZy7EgYM0/bMLW9XVTwixhFte/eI
	TfiXXc=
X-Received: by 2002:a17:903:1b44:b0:2b9:7ad1:bf2b with SMTP id d9443c01a7336-2c1e85aef51mr248401615ad.29.1781005153477;
        Tue, 09 Jun 2026 04:39:13 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f70660sm210755635ad.11.2026.06.09.04.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 04:39:13 -0700 (PDT)
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
Subject: [PATCH v6 03/11] ASoC: renesas: fsi: Fix trigger stop ordering
Date: Tue,  9 Jun 2026 18:38:28 +0700
Message-ID: <20260609113836.45079-4-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609113836.45079-1-phucduc.bui@gmail.com>
References: <20260609113836.45079-1-phucduc.bui@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-308981-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuninori.morimoto.gx@renesas.com,m:broonie@kernel.org,m:geert+renesas@glider.be,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phucduc.bui@gmail.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:phucducbui@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phucducbui@gmail.com,devicetree@vger.kernel.org]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 48C3B65F98F

From: bui duc phuc <phucduc.bui@gmail.com>

Call fsi_stream_stop() before fsi_hw_shutdown(). This matches the existing
order in the suspend path.
This change ensures all register accesses during stream shutdown are fully
completed before disabling the clocks.

Acked-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Suggested-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

Changes in v6:
 - Add Acked-by tag from Kuninori Morimoto.
Changes in v5:
 - Move fsi_hw_shutdown() after fsi_stream_quit() to prepare for
   subsequent patches that use fsi_stream_is_working() to handle
   in-flight IRQ handlers.
Changes in v4:
 - update commit messages 

 sound/soc/renesas/fsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 8cbd7acc26f4..800ac40f9680 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -1586,10 +1586,10 @@ static int fsi_dai_trigger(struct snd_pcm_substream *substream, int cmd,
 			ret = fsi_stream_transfer(io);
 		break;
 	case SNDRV_PCM_TRIGGER_STOP:
-		if (!ret)
-			ret = fsi_hw_shutdown(fsi, dai->dev);
 		fsi_stream_stop(fsi, io);
 		fsi_stream_quit(fsi, io);
+		if (!ret)
+			ret = fsi_hw_shutdown(fsi, dai->dev);
 		break;
 	}
 
-- 
2.43.0


