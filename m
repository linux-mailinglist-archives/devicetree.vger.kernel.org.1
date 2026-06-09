Return-Path: <devicetree+bounces-308576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UY3YK9ltJ2pCwgIAu9opvQ
	(envelope-from <devicetree+bounces-308576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:35:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B4565BAAD
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:35:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=h14k+c1M;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308576-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308576-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5F2B73061D0A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 01:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24FF33F5B1;
	Tue,  9 Jun 2026 01:32:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5810B32E6BD
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 01:32:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780968742; cv=none; b=IoDKwiETRO9sVBQzTzm91gjDbsYAgNlT9XHri25D+u4EugHwYCTdqStfp384zzRPegdb66goJlRM2XkL/VAQE80lYTUvq0IaKR6j0Ge2nDrcU1X7wjk0iunV8XG85LidX/zGk6hYdD+O3cVH4yNSwkcl7n2VbvxweNYilKHj5ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780968742; c=relaxed/simple;
	bh=smVRpaCZIxDLyRWoZHXLUYpzGx3iLGVagavXEXO2aXM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DKFHOqm3pkuWwVqI6rRd2Wq7EzDRkPHq4+CbULqiKrruNLKl8eiZyAVp7ukJL0XoeIXouJ7JczXC4ALakWne6ZbISia6oqsV1Y01Iu6ZBlXoLuERMcRIJVEwUALhBh8SnqcJarrMl7LOvcheI+2DhYIryZkfx8Pe9CR7x2IO33U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h14k+c1M; arc=none smtp.client-ip=209.85.214.174
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2bf2e8ccca1so35085375ad.0
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 18:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780968739; x=1781573539; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wLvmQCFNohOOsJ3JAW+RyfCTOssyDUr0gIAh//bmteA=;
        b=h14k+c1MXvAZ2WZRWrtBlPOCRWwIr7PO1nVu94qUAd2CTEwzRESG0Frh2RUnZNFxvL
         mCCv92hUsWypy1l9prDfunSdE4e7L59Rg6nIhMSaGbzgSwykOlQnYvrYh9u8m4dy06HE
         9Ovk0eTfhBXGwgO0ROtejUMfcJEwqdog8JDG60ZvvtyTyt0b/Qk8R6KJioMOmACLfSXu
         NdEAoFej5RREXiOzJpwepGouAoi3ibCpqFSYRGeXGymmuQJQ95XDcn+1u3CDkOoFlnQb
         Rgad/DQ6bndY/6rpA9xELsGAunkjd0zcCkflzdjgJJNGD64ualDh0+n7OO3DkbTSJ7xj
         V0OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780968739; x=1781573539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wLvmQCFNohOOsJ3JAW+RyfCTOssyDUr0gIAh//bmteA=;
        b=H1G628z5yBDjpTeP3or6nzdk1r8mml0ATQB+0pJL4haDxziL41TOOJVFKeE8Hwc6IO
         RkovamQokuIsGXqf5+PUzbGiTeIgO2+xgF5W76kOCgeYmkxqg7CHL5CcKTrycwE4nsgZ
         AO+JDhtGuIjPwmRaAXD+fkWHkkqdr1cYo5+a4nyRZE1c6tTo4X8Q6CjCgLUhnzmi+dUX
         e/aPYwsFydaZ6F1xLq7fZWBAFM056z2Prq8PxWDzYxk+PDS0Cp4b6FUAKaIhcs7cJA/s
         p1yPzI5NFMjjekB4WqyJIKW9ot4vymJng4XsgJ3reVqZKF+sCi0ZoeCLS/ToBk6sPE2r
         kbcQ==
X-Forwarded-Encrypted: i=1; AFNElJ88RV7gZYo8zgjHY4xSg0ZscxUvffOyVjfQhmY9WLWiuZGrsAoY8g0RuPmdHLTQ157rDT9Ya7DuNRsJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyC8eCc0u50mI0XdNse3Ga/J0VFFxNbqSjTTLtGhdYZXBY015JJ
	UDrquGXb86eEOe8tFTPX5NNC2+RuNiwJEbUseYybaM1waz2zmmXDNAcb
X-Gm-Gg: Acq92OH4UPirXApEX7a/TpBy40jLEnOulx8UesuEEIusxOhFAsu8b8r/DyYDhuzzQ4u
	3rCMHI0ardRRWnolU+G21kEqFGVleNq/PKS3TZDVWBCen13EfWXWSDM7VJmfzLX7D9zYGJCoqdB
	E74LAWqBlrmvC3R+XAMcEE5EmsNGLEAbsHh4nydDj69GWUYGZVbAbgQN30KZPCVxEAaYtxSaml8
	TVN4q3nNeBY+ipE5eJvDsJJraPAKEt/IMw/8gu+Urg8sBQ8FMMJgeKg5v12H6VmPP6rfTTK3Uyc
	mbMt++driVQn7Fg2StR7Cbp3rOqvmdw2m27Yya6pEYmNhMTp8Er3vbXL1aKw5hHAygLCVs0/RzB
	3YJLDSsI4BOpe0QJ2ifmpl+Slax+NrpjFEt9g+dwIHUn+sMNqWdEoVZ8e8hI7VuuTL3Ka+yC9z2
	DCzC54vbTpS4/JoaKTXI7f43ExyRiGbBl9xIT2Y6K4vwt/L7IkfbYYHdlHpOUSoxvCC+a+1tzim
	9phGhk=
X-Received: by 2002:a17:902:ced1:b0:2c0:fa4e:91f6 with SMTP id d9443c01a7336-2c1e7d41eabmr194574365ad.13.1780968738667;
        Mon, 08 Jun 2026 18:32:18 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16609e627sm198765335ad.52.2026.06.08.18.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 18:32:18 -0700 (PDT)
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
Subject: [PATCH v5 11/11] ASoC: renesas: fsi: Add SPU clock control in hw_startup/shutdown
Date: Tue,  9 Jun 2026 08:31:07 +0700
Message-ID: <20260609013107.5995-12-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260609013107.5995-1-phucduc.bui@gmail.com>
References: <20260609013107.5995-1-phucduc.bui@gmail.com>
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
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-308576-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50B4565BAAD

From: bui duc phuc <phucduc.bui@gmail.com>

Enable and disable the SPU clock in fsi_hw_startup() and
fsi_hw_shutdown() to ensure the clock is active while the
driver accesses hardware registers.

Suggested-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

Changes in v5:
 - Drop spu_count and rely on the clk core for clock reference
   counting.

 sound/soc/renesas/fsi.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
index 80e87b815c1b..a1c463d73756 100644
--- a/sound/soc/renesas/fsi.c
+++ b/sound/soc/renesas/fsi.c
@@ -1560,6 +1560,11 @@ static int fsi_hw_startup(struct fsi_priv *fsi,
 			  struct device *dev)
 {
 	u32 data = 0;
+	int ret;
+	/* enable spu bus bridge clock */
+	ret = clk_enable(fsi->master->clk_spu);
+	if (ret < 0)
+		return ret;
 
 	/* clock setting */
 	if (fsi_is_clk_master(fsi))
@@ -1617,6 +1622,8 @@ static int fsi_hw_shutdown(struct fsi_priv *fsi,
 	/* stop master clock */
 	if (fsi_is_clk_master(fsi))
 		return fsi_clk_disable(dev, fsi);
+	/* stop spu bus bridge clock */
+	clk_disable(fsi->master->clk_spu);
 
 	return 0;
 }
-- 
2.43.0


