Return-Path: <devicetree+bounces-260091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +L52BFANeWnyugEAu9opvQ
	(envelope-from <devicetree+bounces-260091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:09:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DD499A3F
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0DE0F300C33D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEA123644A5;
	Tue, 27 Jan 2026 19:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iFwUTGJq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D55364049
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769540932; cv=none; b=YLX7F3iYsQxGcfuOZpG/4jWF0mtm1l2ncM2wKmE78981qoDA+l/H3g00fGTS9PQbRTuHQfYKeL7NeFwFP9MFtx0naCkZTQomg9hut0t9MBCEyRs8xkggcbRMukROYZtM+hwhry/GdLwp1R6beewFu3VUqXblm9VInj/IK2UA4Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769540932; c=relaxed/simple;
	bh=zadY22GSPVPhNTUtDV/+6Sluf6seV+Q8lASvyVpCmJ4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VRCTIFWF6oJLzb9J2+tINI9CUUXhlW+XwTlxAPuJMn77EfQaScPN1P+0D8WzYTYqr1JaefuaMhbIn6rLxPLaM2Ik2hoW7fbLoe3wbHVWCwjGanWihqlnndLC1xNtbisz+ziFj3NkHtABcTYz0pN2V4XfZ7bPwacrIHCdUMgPWjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iFwUTGJq; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso1207845e9.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769540923; x=1770145723; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sw0L4UiyDeVexCr4mH5MBXgON1vZTOJNFRmxBOuEtVE=;
        b=iFwUTGJqzPM218ei4cSNtvX5VasQXOSyagqyiGQFPe2IOD9WHtp+HTkoxCRXQ+g0qo
         Ls9wKkNq6pwtPJvn3rXUYvPh2PDP8dPFuO9nETZMiV+SM3dRvIWEbYJAjn32P/w2cXzE
         gzm2BJ17wnM6CRhVVeckKVuTOVfQJWaztNDXdhthFpip50Ns3FhrFTnZFzlEMhonIAOX
         e0h5BJOzjVoCiVfuB0GZ+LNqAj6dsmdj18pYzFDs+NbAvr2Tnckj/+cNEJWbOkmT/P3j
         KtCHGqUtZWQVL9LjeeYdN/j/ckv/PqOhXwAQHQP2IQeKwZxehZawwTwW+za5lZnGwkFj
         aSIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769540923; x=1770145723;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Sw0L4UiyDeVexCr4mH5MBXgON1vZTOJNFRmxBOuEtVE=;
        b=SCEUMGzAufx/lRvL4d0PT7S0YumG875SrA1jrgNke+ZmlQnnwVGbr41r7t7Ntnm2mf
         VMjEI4gO4RmFYPAn2MGuBaOf2dNZYdgzzUuN4o27KECaKfFmf07UryC6pFbYG0fKREV4
         etmYWzrX/XAJOXbCVpZu9tiJGQ1OYjbzZjp7ShMnrmtqjegojA/oo+w5vv3npYe+/UDR
         zrNCTIOv3+AhyL1xEA8K0LNMQY7Nq8suvEpHuvhkb13v1HlmqOx/motIOnQOYaSGK9DX
         Chf55k2w3KMki5Q2dTZDIX/OzDd7eqRDX0WF+hWFZmYR1SCqF9A8cq+qKxldJXe491b6
         D1QQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhvhHHkN3Qx0Fq0pJS+TWxYCZBvKebXDiMJTgu202djm+4P8jSb8StdCclKDuyPjDODVfb7qeWRjjz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz45Z+UxSIDx3qQpYtlKMlEw8jx5XTQBweN+K2VrrLKfx6291Jp
	rlsLWLD30r6WVr35vvbngbRYIIkRcchKugI+FTquOjjmazDCvrGBWQO+
X-Gm-Gg: AZuq6aIVTKlsUjP22M/yEb8Sp/V8vHVnurPb4eHCmLaw1/d+5Fll4Fqh1Gk6h2U7i4m
	fctR2UeJx0TtxxH9XQktji5NQKP9v0P9IkMJlVxTUU/HyS6ifv0VSVTf2fEpmfme45wHMsnL4gp
	22mRp1fgXqTlZU64zzAN0IwOhcSUpWbExWr4Nu95BnJPROrpeTAx9Cp1zSxkgoTESkMaW214LgM
	bBveHUFVrfTVTvDeYTlSUCcf64leBZZ6C1qD+8HuB1kNdusXR/EzxRfMsFjGwhwp0oyghFkT7Jv
	ssYIo85GCSxypTtBEe1TsNEoAOYnAqM+ocLaiHhSMo4vGzsr9tTN6OgXNF96VclgxB4+9ZntCFH
	kttc54XsVCToflGiRzehYsjdbymaZFRCJvCLjB8et3/kgAjF/KxV1FB9DialeRrn4XaLzeXuV1S
	7+L1uLwGIfLPHnq7fwJ3MACdLTyPQsHjMk7+X3EHXq2NEc
X-Received: by 2002:a05:600c:821a:b0:479:13e9:3d64 with SMTP id 5b1f17b1804b1-48069e95c98mr40755575e9.15.1769540922876;
        Tue, 27 Jan 2026 11:08:42 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066be77b5sm74577805e9.2.2026.01.27.11.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 11:08:42 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Tue, 27 Jan 2026 23:08:19 +0400
Subject: [PATCH v2 1/2] ASoC: sophgo: cv1800b: document DAC overwrite
 handling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-incremental-for-i2s-dvier-v2-1-5f66b841f63d@gmail.com>
References: <20260127-incremental-for-i2s-dvier-v2-0-5f66b841f63d@gmail.com>
In-Reply-To: <20260127-incremental-for-i2s-dvier-v2-0-5f66b841f63d@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>
Cc: linux-sound@vger.kernel.org, sophgo@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769540916; l=1287;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=zadY22GSPVPhNTUtDV/+6Sluf6seV+Q8lASvyVpCmJ4=;
 b=rcy0EioZSDj08un85FD4cMTF4dOy7DTuSQ+7myJ0yfgsHFL4rCXoEjKKSGdM7eWN8MUM5J+1L
 rSTdu+GC0QwCHnuC5/qCHba9LWd4lsde4UUcAK/xj9+KiVKjYPcIw+f
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260091-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,outlook.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E1DD499A3F
X-Rspamd-Action: no action

Add comments to cv1800b_dac_mute() and its caller to explain how the
overwrite mechanism works and why we force it off before playback.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 sound/soc/sophgo/cv1800b-sound-dac.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/sound/soc/sophgo/cv1800b-sound-dac.c b/sound/soc/sophgo/cv1800b-sound-dac.c
index ccf386174639..135322bcf6ad 100644
--- a/sound/soc/sophgo/cv1800b-sound-dac.c
+++ b/sound/soc/sophgo/cv1800b-sound-dac.c
@@ -57,6 +57,10 @@ static void cv1800b_dac_enable(struct cv1800b_priv *priv, bool enable)
 	writel(val, priv->regs + CV1800B_TXDAC_CTRL0);
 }
 
+/*
+ * Control the DAC overwrite bits. When enabled, the DAC outputs the fixed
+ * overwrite value instead of samples from the I2S input.
+ */
 static void cv1800b_dac_mute(struct cv1800b_priv *priv, bool enable)
 {
 	u32 val;
@@ -105,7 +109,7 @@ static int cv1800b_dac_hw_params(struct snd_pcm_substream *substream,
 		dev_err(priv->dev, "rate %u is not supported\n", rate);
 		return -EINVAL;
 	}
-
+	/* Clear DAC overwrite so playback uses I2S data. */
 	cv1800b_dac_mute(priv, false);
 	/* minimal decimation for 48kHz is 64*/
 	ret = cv1800b_dac_decimation(priv, DECIMATION_64);

-- 
2.43.0


