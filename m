Return-Path: <devicetree+bounces-260078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Fd2HdcKeWnyugEAu9opvQ
	(envelope-from <devicetree+bounces-260078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:58:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D42997EC
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:58:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 57451307005E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 18:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 462DD36402A;
	Tue, 27 Jan 2026 18:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SrOam8+y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FF636214F
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 18:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769539723; cv=none; b=j3jAXCjUWl2UHKFiN0P64NX6IfuHIMARctLe/sSlPwOYi+LYAJ+rSg3/E5Kd3NCB9DWpbXKfsGIMqRbY9lg3cGromgIYbIqTq4V5dBFtzGq2gncJd7uNmHkddp1S5KBNlsr/iPsTQcZlwhQkgqyKUtRUQ4+nEexrzKXWtxmlx6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769539723; c=relaxed/simple;
	bh=AAbdYSDBi4nid+vR4fUUeQUqMN1ByaToFMJu3nLnoTA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G4nBDIGKR5j6Yd5DazU0SP2Gfyf6dS89P8zPHFx2TTrcYroiXQ8499EFG78G2As3yxb2qnaERkfKH7ZnUQ5ZlDo7iAx6F8MidbH9U6GLQ7ecouUr2BUl/l71RpuPKS9+33+RtgY9ittez0l93S4lK8o2O+H+g5sUiMQvEkKqI2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SrOam8+y; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-47fedb7c68dso61723765e9.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:48:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769539720; x=1770144520; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z/IAsIdZyjkDQ3l7ZZkRFYkPArXV5TiBiIvdC8qWxZo=;
        b=SrOam8+y5TIuaVyw5ogSyOy1xBkDpn0ELumXPzTqHCW6avsFcwvUFvqrg9TstInTnr
         QL2Ouv4eDa9x8evvqa0WE8yWgRPAmYVqOK1iZOJlVCliqKTbUFRPgNV9+u2UVTRTlGjy
         eoeSZTxU0LJk+jfDnaI1g3pMYwunFb+aQKEXxs2bA1xeNyALUaJaDk0w8SvEKwXvFA3w
         hcfR08Y7yHnOyQC3KOh4r9e+1hCIghtG2AaKyzyWDEHjbAa5pyZthzUAvS0+5Z0Ub6GY
         cWSj4/BWKYJvaIXjqEINy1USL637+1qA35o+V5L1S7W30IjAcR4B4fxTmLriMp+WoAuZ
         105Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769539720; x=1770144520;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z/IAsIdZyjkDQ3l7ZZkRFYkPArXV5TiBiIvdC8qWxZo=;
        b=vcJeH6PQoKB4GBPC16hpYJocWxHz8T24SmkCHRFpFCf9DflOkt3TKdu6ANu9l9Kp2J
         cuJONvsF/iE8dIuCuy6rjcUxJs3ve5V0eHPzHBGy3cZR9I4kMKmjGp92hh3F5RqBdJP/
         VFmDh8lcBGchETOJ8MvGBwmTVBUgPV9w4k8y3E8sEOvFUvtS2OrqPzGvdOZWb4RUVBwE
         wLoaQ77zdYQUYLjOatJSx7aHB8ryQPBgQ7xkKKBPtutobimLttkuNPeI6+n+G9IBv+/u
         shYw5NHVHIFBu54uni6irAS+Ka8k90Y8kf5vaz0xYm60Z0SULNF/ulZgd7N2eIGzHxVI
         yMIQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6usR42UDwlsU4bktAVyQ2ub8Mllsoqp1510zS8+4sSYln8jtJRpIO4fb4anfruVxLH4MgI5l9gPAd@vger.kernel.org
X-Gm-Message-State: AOJu0YxuvMCprg1CJ8NfrGN3C4pdvKOHeGyrmHPhWzMxBfSOLgf33THT
	MQIFtDWmP4y0GlZTrNUxUyVvK11j5L+m1Bvd8ohyHFzG9FCtmj+ewNEl
X-Gm-Gg: AZuq6aLpFifDalz35uRYkOWDH25o/RFZPk3xCK30Y/k94DMztMra2Ij7luZ5UdiNt0l
	4DGFxQ2HQ47N6fzJvTVRHvr7r4nO30iGqLVWAAoEoLsplWPAl1ZAWWYbc68WULZou72trEiolnZ
	4wmOKmKmpbICFiXfQJZmSnYL5rA66PbnHOrC42WGdOUNWbptoB3ru11TNZiBufo+KeYkMMfOtWf
	yzD4XBPsR42XhQ11bCaZSfoCphViVrUqPGjVF6fQx9LathWzdjI6Fjp41KETMVcCq2pDrk02Duf
	WX/t7mc1FaphxMsn6IFLQ7X3xngZ+ddJ5mqJoaAYgndDd41xfeQw6q2CqNTX5BnPr4Xr6mzdzgq
	JPNBhrdmC7Ft6JkqqjpRbaZil9X2Xip29QXb/8DjD3Mo5x4jNVhN5gQcQ6H11D/njNG4OfD6nFF
	C3iwq+GRM4Dl8VA5R7q7kry1h3BHBnKEM24dNJh4456HlBa9LsxzOLbXc=
X-Received: by 2002:a05:6000:2689:b0:435:a501:359 with SMTP id ffacd0b85a97d-435dd0a3549mr3707922f8f.41.1769539719907;
        Tue, 27 Jan 2026 10:48:39 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10ee057sm903100f8f.15.2026.01.27.10.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 10:48:39 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Tue, 27 Jan 2026 22:48:07 +0400
Subject: [PATCH 1/2] ASoC: sophgo: cv1800b: document DAC overwrite handling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-incremental-for-i2s-dvier-v1-1-431b809c632d@gmail.com>
References: <20260127-incremental-for-i2s-dvier-v1-0-431b809c632d@gmail.com>
In-Reply-To: <20260127-incremental-for-i2s-dvier-v1-0-431b809c632d@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769539713; l=1227;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=AAbdYSDBi4nid+vR4fUUeQUqMN1ByaToFMJu3nLnoTA=;
 b=EBjERO/do4uI4s6LDi0EEae7uhFRf1KBOOxPbimgtsnly9GdSGLKz0u7DPv20vrXS76n0vTk4
 V30AAY1GAInD44pnZDm7KhGkPBKJzms0Rgw1lZyPo47NIssrrNme8x6
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260078-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 96D42997EC
X-Rspamd-Action: no action

Add comments to cv1800b_dac_mute() and its caller to explain how the
overwrite mechanism works and why we force it off before playback.
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


