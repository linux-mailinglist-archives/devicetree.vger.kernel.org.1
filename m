Return-Path: <devicetree+bounces-307398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bpyFHaLBImoTdQEAu9opvQ
	(envelope-from <devicetree+bounces-307398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:31:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 325D56482B4
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:31:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=JoyrZdZJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307398-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307398-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ACDE5307617C
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E8F34DA549;
	Fri,  5 Jun 2026 12:20:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AE04D2ECB
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:20:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662031; cv=none; b=MENxYb3FsYbFl4sgYwvsBCR2vkbbA51u3ErEw2Gxh+DeZMaEGXsRT0ghyxRwkQ8Zl3BSGw14/bwzK8h8wr2zlDiOzq0A35mHRvlouEwtxxOszTY8yCQcTLK42WOofoltyOAx1/qLCAJcxBoXZq4x4TRA/5Gir1Xe8+fKV+u1hYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662031; c=relaxed/simple;
	bh=3GFYui5kLq2EPiPzoe/M8PI+Cp/RAZZ4lW+BTGGq+Mw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=s2kylMuDzICth7opksLfmJULnOvGPUodFbwmBAeTFlaO7/s9jH6517Rp6/YZwDvmTiKwzrV4AjKcZGRLixGUlUvjVI17CIfvKg9x1K9ts4ID4fPX9wnOz8cIYcc/sBFeMmHhT7H2lhhHcrgktawh06b0/TvDR67bGauCfvzxH/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JoyrZdZJ; arc=none smtp.client-ip=209.85.216.47
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-36b7b7b7a80so1615789a91.1
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 05:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780662029; x=1781266829; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D54NjRtBiVnrkV6UxtLEigo2q3b/zdX4gpDk/FWxcIk=;
        b=JoyrZdZJTYhx7vKXz+rSHnM47/Q1UP5z/goI1JJOwb1mwEF1hVuvD4tX06BUl7V22s
         9UyiwjPfE6rbJwgGL520fvsdg2K9vVG3o/mmObeQe5cPW0uk5PMyw9d0/D24T1/eGGaQ
         w4uFrakrfPX4G+rN0hof7zugWjteRhk3fSFLdZJvlEDDyyG4oejcjUTLbMatrqjWQbxv
         a22vWshJWo/OmLQlL19LsJ+D77OdeOTOO32rCbDURPjgIr8a1CGaWvOv3RcfN1DC7LgU
         uOPYn6v4E1EBha/B9SmnSuyI4M3qOcVxgTXfFQYaDRGB7QDDy4B7WLqMZME009MjbGRm
         riVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780662029; x=1781266829;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=D54NjRtBiVnrkV6UxtLEigo2q3b/zdX4gpDk/FWxcIk=;
        b=cGyJZGvXujogmZX9qV7kkEW9h/k1pohm2Bg+myvDWxWOawUt2tPr/tXqYQpa0eiIMR
         2EPYJn7t6q+N4h6eRE4h/j7v867JQ8wqI9j1P6AzxD7rCiGR5ztov+WaHRLFn5zMatp4
         5ayk6UjTWj+VUmCPOGXxTP8kKWkmdN86o6tn4yREPNhvG3WIuOW+9Sc8NjYK+p3/dI9J
         KV/Rn7THNHLx44z52JALtJmPkpRuBqXFEVxi1vhqlYqXsr3hTFlh+b06dWjKjIvl+6vY
         F5OsKLjaoinb83Xaj2i1WXElf62T8c6FG+PVmNHbcPthQJtfw8UKi41LmOOF3KI/SC3P
         R6gA==
X-Forwarded-Encrypted: i=1; AFNElJ9YXqNGyA7bYvkU4peMkBdFUuYUkVyVPt+KkniqkLJ7pT4a3PnMLPEikSWLKyxYjW1kkszeA4zoJ4G3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt0DuPj4wseFWeRfgx6HgzwaDIY/ehmPtGnM7w0bKIv6xqfrVF
	dkCm1cnZ1gFa/Tot9Yri20nmNzU/PRV6MmJT764flPH7ZJchg9BGlndS
X-Gm-Gg: Acq92OFqv1+SQyvivJnc0/WE33H9TCq7jTYWLCpO0GM8ytCtoeyDV1BbY+6a4fZZrAr
	fgx3D1FaK60HdoXrUHJ+Rzl0Vr3oD51/Rfflt33PZuYikumtYMLUnzhXZ0ngLvgknNcCR2MBECz
	UvGxB0WnKgfRqbJslNL8Dv15t7D+BXvOhP3i0qvdSllTL6eJjbQrJYvZEkYPTTWUoJxWAyqryhq
	Ds0GkEh9HcyS/RfDX30XLgp2oxrWrnF9nwgDFTCkIF8XvrIOQ0WBnLS/QGNChQDLK9NftDrERLs
	M1YtD9vJwnlDkK9LBwU+dyvYBE0SrYBTF+X/PpTO6SJLFpA+2U9zkt5Ngo7Zg4J5zFPCxh+G8nS
	B8TvbgZbC1yKSZNfpOKI8eRGXmlbmajVa/d6T4G9tmvTeBEeLeoe4/oVlUzq+X2stZnMIuM5vO1
	lKsjq47ULOsNmvjnOwnuegqW0V4YE1CLOW+veTdBIzIhJrn9mNpNLPVtwhdN7iI3gWj0gT
X-Received: by 2002:a17:90b:2f0d:b0:368:3830:a8bd with SMTP id 98e67ed59e1d1-37131041514mr2123116a91.7.1780662029184;
        Fri, 05 Jun 2026 05:20:29 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282221059sm8594381b3a.7.2026.06.05.05.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 05:20:28 -0700 (PDT)
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
Subject: [PATCH v4 03/10] ASoC: renesas: fsi: Fix trigger stop ordering
Date: Fri,  5 Jun 2026 19:19:47 +0700
Message-ID: <20260605121955.105661-4-phucduc.bui@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-307398-lists,devicetree=lfdr.de];
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
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,renesas.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 325D56482B4

From: bui duc phuc <phucduc.bui@gmail.com>

Call fsi_stream_stop() before fsi_hw_shutdown(). This matches the existing
order in the suspend path.
This change ensures all register accesses during stream shutdown are fully
completed before disabling the clocks.

Suggested-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

Changes in v4:
 - update commit messages 

 sound/soc/renesas/fsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 8cbd7acc26f4..94ab2e490810 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -1586,9 +1586,9 @@ static int fsi_dai_trigger(struct snd_pcm_substream *substream, int cmd,
 			ret = fsi_stream_transfer(io);
 		break;
 	case SNDRV_PCM_TRIGGER_STOP:
+		fsi_stream_stop(fsi, io);
 		if (!ret)
 			ret = fsi_hw_shutdown(fsi, dai->dev);
-		fsi_stream_stop(fsi, io);
 		fsi_stream_quit(fsi, io);
 		break;
 	}
-- 
2.43.0


