Return-Path: <devicetree+bounces-271251-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBphBrKPqGmzvgAAu9opvQ
	(envelope-from <devicetree+bounces-271251-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:01:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B70E72075E9
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:01:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B9FB3055DC5
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 19:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2407D3DFC80;
	Wed,  4 Mar 2026 19:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GF392ueY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DA03DFC69
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 19:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772654374; cv=none; b=BL4Zr0rUaIajPM/UxxaIEnKeLg4rPFSpf7iHJWB3MSFwbw+7QiaBbg8Cq0pSgluhuTrBjUNf9tv0dIPJXq0NTpbOzmdVrrYKwgztnijqKEoxV53SUwkeoVTh5d4PVqBLLWPYVqVLmzsvO1VW8rqdG9DcAk8RTjdEEFTVITeJlLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772654374; c=relaxed/simple;
	bh=Atswd7XoWexAHoA656Zx8+pkzN3C1wZOHJtIQAxglfo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DpEhG65IczBIig5aqsLqwAuj3LvN9ffDYjAZCZI1+TBh85fnVyU+4/cL5qBB8x4j++4OmeXAkAQ9KNlRWhmqbYIikgCoAiWiHL98xRvT3s2aOfHEF+BrKemCTVHzXkUfVhH8pozjfzkW2sMOqbqdaII5sLfllNwZVRcvwTsJPDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GF392ueY; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8cb40030be5so614010385a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 11:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772654372; x=1773259172; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kTnNNwyMSp+7AFSV4aUBjViYsyPkYU8KkKPKkk0kktU=;
        b=GF392ueY/E66dXqdfQlsZpDJMBVdpVtZGAX+te5s5zZe/slKarZw7P26VkwhPL+ssW
         hh6TGoIZj2IlmNgOSNWyJSwzZt/Xk1iVqYait2Vn2KWDCvEO6tOZD9jepZgvL5GDUSQB
         LUwcERdFDkv+aLSHvDx2ltnDGKuJuXOEefnYTxN5wDUlqClzbChzWvY77nzlys++kKG6
         KJgZxnrp/rcyj7Y7rVk5cX9PCRh+CqxDU/nAuVOKFg2ABZPaisPvpMu37uO762GDgV2h
         JVe2ZIVdEgdD7W+TE2e0YhAXteYHY7ZJjPqjDWTYz7SPML5ljH3ZPs6Vjd9uTb7aHNp1
         8I1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772654372; x=1773259172;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kTnNNwyMSp+7AFSV4aUBjViYsyPkYU8KkKPKkk0kktU=;
        b=GuoQxpJbadd6zV5NTk+4XWdeC3iQiXakqBTUiAc5/HxUIwBsE+SwRETOkeYHq0RuRs
         FESCc0L+/7yzHHN8XMIaryMvEvVYinhI42q8b10bBmkKCvKBDENtyg0B5JcKNk701gwi
         dksB9DBKK349wrhKBmrOut7t0u0V/b+6a7BBMiBXMYuyc/miIBCTXfGXn87Xc7y2Pbgu
         8eCE+LbFeitLuhruNmtikwmoFcbeAuUlURrG+0wK2S6ktp/RdaqSLzgL2Pfk34NvZjr4
         qdMA1sgfH405fQiGN7Ue2qpneswvugSzvaCtrEOzsMwe1qLcI1eEgbwXCiak/8OG/Wq8
         35Lw==
X-Forwarded-Encrypted: i=1; AJvYcCWqUi1SVbhcFCZUtGRxZIx6X69GEEewhKxAeKsgXMvndxo4cJw6TYvVLoPoZkH03bCBl/eqiQQ1L+Mv@vger.kernel.org
X-Gm-Message-State: AOJu0YzJ2yp9y9e/RQrqGPa6W+RD6RnlAR+hTxBd0Q61pqXpxQ8iroYr
	YhuaMLgL5JgdVliLyfZJnR9CIX6kyysWxkNESWcN7v6RboVpZi08gWAt
X-Gm-Gg: ATEYQzx6z4/wAcj77sL9YNhlMGZUFi2ssgH0zWFkjGl7i3LznPilXzR0Udl39DnMHpK
	yUdP5gaPxyDWPEAaadiu0rjw3FexgVJWGosKeTxNzv4HjCsupXbTdiY6C1fCcO+D2IPt6IaaGEu
	FzhAP47L8mdlpks6njrJhsJvm35Q4uziq/zBxI/GTJW8IzV//+DoK6LS230d2v+AnzXi8q6F2pQ
	lxwgOpPqbMeWQDSRQ7vW1wUKrh0QlR1hQ0P5rnno8POWn5WUoOz6pRl0e6G3WwJP9GszawP5YMl
	FnA391prfReDCfcpXee8oBFHF45UI8Bm/3bhRsSRsrQDliGcozTRFErvxe74p9iCiCmXyqPzy0L
	QFDNF/yKdu6zkJfbLGmxgzYri02wHRTbhOs0wWBhtgIYSX/YNaqPTyY5eW11CRHTGhQqgEc7W7y
	33Rupk9z+j2PSFogO4AgHzx/wNnw==
X-Received: by 2002:a05:620a:470c:b0:8c9:f9c2:118e with SMTP id af79cd13be357-8cd5af1bd5fmr372427385a.32.1772654372065;
        Wed, 04 Mar 2026 11:59:32 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a1fcb781fsm10577136d6.23.2026.03.04.11.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 11:59:31 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Johan Hovold <johan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 09/11] ASoC: qdsp6: common: support headphone jacks connected to internal mi2s
Date: Wed,  4 Mar 2026 14:58:13 -0500
Message-ID: <20260304195815.52347-10-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260304195815.52347-1-mailingradian@gmail.com>
References: <20260304195815.52347-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B70E72075E9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271251-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[mainlining.org,quicinc.com,linuxfoundation.org,kernel.org,opensource.cirrus.com,renesas.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Internal MI2S ports are connected to a WCD codec which may support
headphones. Register the headphone jack on codecs connected to the
playback port, INT_MI2S_RX.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 sound/soc/qcom/common.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/common.c b/sound/soc/qcom/common.c
index 7ee60a58a336..aa5ba282166d 100644
--- a/sound/soc/qcom/common.c
+++ b/sound/soc/qcom/common.c
@@ -226,6 +226,7 @@ int qcom_snd_wcd_jack_setup(struct snd_soc_pcm_runtime *rtd,
 	}
 
 	switch (cpu_dai->id) {
+	case INT0_MI2S_RX:
 	case TX_CODEC_DMA_TX_0:
 	case TX_CODEC_DMA_TX_1:
 	case TX_CODEC_DMA_TX_2:
-- 
2.53.0


