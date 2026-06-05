Return-Path: <devicetree+bounces-307400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tAdYAW7BImr5dAEAu9opvQ
	(envelope-from <devicetree+bounces-307400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:30:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53900648272
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 14:30:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Kw7h9mKp;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307400-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307400-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C20933052FC1
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 12:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 731C24DBD7B;
	Fri,  5 Jun 2026 12:20:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3298D4DBD86
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 12:20:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780662041; cv=none; b=kKYLEhl3IzFJBn0/wJiJXwtGoU771ZDhV/kgsKhsD/8wdL9NyD/KYo7Kp6gwNtfnNW/W1i6BIA47eLXba68LAUvJIcX5jYNlBRpXghe5EW2wTVMseiY+8Kj9Yo9FF1DxXznlK4Azr3j+bTrAR2WsMHm45hp7KY7Je7qHoaD0g3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780662041; c=relaxed/simple;
	bh=uUylIx3XFV4TA4RmfYqmD8Wd0T0GOAThqW1V8bTR8aU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CmTshCZYdpYlJxB8qT5adQC5Be+/Us0yQMTroylT585cpNL0CxIVUfnJcr4TfxYbBDv5k7xCmCWSi3RvIWFNOEFTxJCGbKxw5rpKFdqPJjV0iXWsm+ewKM+5NEkoRaMh7LvhBJBcWZAQDMhFFgaAvBeE2pYGZZNLx/FSGCqOZFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kw7h9mKp; arc=none smtp.client-ip=209.85.210.174
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-8423efd76c8so1242408b3a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 05:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780662038; x=1781266838; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JFsk3bK57pNH+uGXIvFwcPQqhl/Aln1/JKtxJWK3Jkw=;
        b=Kw7h9mKpfakWEmCXO/ZHF1BzGFn+G12svbyxI8WaWsvSDbNitxPe4ep9qudctoHudr
         17t6izyotpvUtx3Ss1RcbYSZqld3PXzpOwx9jYz0bdZPogDCEL0jafX6ePsqaDs1QngS
         BeR717OvRAGPDxv6+yJxZSDGIYX3g27JcO0vLnkadjNz+Ow/TO30sDBwz+IAtL8hEl1/
         ix3iTuyacKuUvPNnUlaYEfNybvAg0Og19DiJozLqsLUdFQ/w+szQTtsR6EjGRbBqftBp
         EemHozwCorQ+oA/0Ffbe1loXSOvubpMEg6LxHrPbM1EENe0FKUSTd11C81jkZzST30qW
         1ERA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780662038; x=1781266838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JFsk3bK57pNH+uGXIvFwcPQqhl/Aln1/JKtxJWK3Jkw=;
        b=eH/DUvvRRkchKl+g8QqT4x2kd06xeU1X6/RFLGb8XNKDcB1hJMQPqvIobgsxyQe/j3
         FPyiSylFJMC7C4zgpMBs7L5O8BqR5gdv35EFTYtK6jLQ9g1lyAqaXfAw2sEaBgjMqcmQ
         T1EeuyGWWaEry9sycU0l/M+sIs0ta6sWzqaoMNZIztY6mchh1HchwtUI6BIUSugFjwIQ
         hq8FZNJusR4EihwDEpNZ+awn/iXPcTP9s/XNJo4Sh+TczUBO88JZAGxqhaAHq8vSBjdJ
         DGeaqpvSr0pFBKRquvFjN49uRQkYflqS8z1yvvCVDYVLqZBpKg3XnlSg3Y+W83/aod0R
         zypA==
X-Forwarded-Encrypted: i=1; AFNElJ8G3KYLoKzObtg6KxutH86ixqcIKlY91i/hSXzEbxoPNK/FWLioOVTDGrjTlIf1V5nLSdEhZsHy8klJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwHmz1NH9iUHqHxpKG79/vJImNFrgmboJFltprb0k8TdP452Heh
	rbBy2GhivtoTXd2TbVfTxDrDRx1xdRoVmZhNHzvywbjXUcEf173fkEWy
X-Gm-Gg: Acq92OGSLQHaVeAxxGkdg/qq0MlyusTGfk3v5TCuNuo/9dCIL/ylLmD2zqMYHtr2v/4
	h8x7dSJu7+rWHvMxDvZx6MVoUpuFMLc/D3A+uZE8mbPyEkjSmk0ak9N2gY2OCzlJaERBixDIMT/
	erHCUbgHi/0rXiano9JvJIazUigRpNS+wogltdzgHZH/4RikBMp3Sn7m6tistesYk4gEXJIn+7t
	SrteuAuZjwZDblhlOAbT0/krjAMXPGaD+ky8E81lywRszI1PNxjLewQC/0UEiMHrfi60p4omfHO
	ryWTRDkF4lDqSwEZcLnb3s2wMdLLnFqrp+Hs1yLqplI8TPwDXqiaxIGSEUtx8OPDzv1QICXj+4f
	i2geoSXDczf2jp1//x3L4CVBPL1XeTqW7tmUdpGuIRpRDs+97TvYAi1EoKmatKiKrw7ZmA5Isz6
	5aZaYrUBeqnhvEGT65HSj4saBZ/LfNnISdOQXxecbqNRs16Yfpab0WOfTMk+MoXUITdsaN
X-Received: by 2002:a05:6a00:1d84:b0:837:db4e:a35d with SMTP id d2e1a72fcca58-842b0e3da27mr3436451b3a.23.1780662038529;
        Fri, 05 Jun 2026 05:20:38 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84282221059sm8594381b3a.7.2026.06.05.05.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 05:20:38 -0700 (PDT)
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
Subject: [PATCH v4 05/10] ASoC: renesas: fsi: Fix register access from in-flight IRQ after shutdown
Date: Fri,  5 Jun 2026 19:19:49 +0700
Message-ID: <20260605121955.105661-6-phucduc.bui@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-307400-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53900648272

From: bui duc phuc <phucduc.bui@gmail.com>

In-flight IRQs may still be running when the SPU clock is disabled,
leading to register access after shutdown and causing system hangs.

Fix this to use fsi_stream_is_working() when handling in-flight IRQ
handlers. If no streams are active, the handler now returns immediately
to prevent hardware access.

Suggested-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

Changes in v4:
 - use fsi_stream_is_working instead of running_streams.

 sound/soc/renesas/fsi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 429c3c9b6ede..0f350bddeb1d 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -470,6 +470,10 @@ static int fsi_get_current_fifo_samples(struct fsi_priv *fsi,
 
 static void fsi_count_fifo_err(struct fsi_priv *fsi)
 {
+	if (!fsi_stream_is_working(fsi, &fsi->playback) &&
+	    !fsi_stream_is_working(fsi, &fsi->capture))
+		return;
+
 	u32 ostatus = fsi_reg_read(fsi, DOFF_ST);
 	u32 istatus = fsi_reg_read(fsi, DIFF_ST);
 
@@ -681,6 +685,10 @@ static void fsi_irq_clear_status(struct fsi_priv *fsi)
 	u32 data = 0;
 	struct fsi_master *master = fsi_get_master(fsi);
 
+	if (!fsi_stream_is_working(fsi, &fsi->playback) &&
+	    !fsi_stream_is_working(fsi, &fsi->capture))
+		return;
+
 	data |= AB_IO(1, fsi_get_port_shift(fsi, &fsi->playback));
 	data |= AB_IO(1, fsi_get_port_shift(fsi, &fsi->capture));
 
-- 
2.43.0


