Return-Path: <devicetree+bounces-245345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1104ECAF73D
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 10:32:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CDBCE3011EE0
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 09:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFDBE2F5461;
	Tue,  9 Dec 2025 09:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WdKPcsxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A602ED165
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 09:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765272723; cv=none; b=HByMRJCx9Z/LEPh4p6S/O8ZGp4Dnf2/b0zJSkdIc2D16ujXgalYyAy9Bg5/jExI0zdX6JVMsHqkKz0B8iwDEEf0F5k2sxPVulO5yPTcjWvayH8IkB7nzB81LnQhXsjmteUSjNR8CK13/Zn2EAkrbDHR3PhiBqE4kRSOPkKrSkhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765272723; c=relaxed/simple;
	bh=9BrUquyvgfOE5tXuWI9JhhGZxPBE1kg0z2Vo1M4aQHc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uMcxdbItq5JF3p+Dy0/iMgwRRltDcmEbvjEmTr3Zvdk54htIuUqNVUb6x2AlXRuvd3IPOlPgC8R0TYPhUxZeFGtq0jD+wSFv337g6b5SCQ3vQlmpBWzfmBqXFoWPNmzH40xF2UYw2fMCk2YZ7MtU62aoOivSjo3bBDTqGZM2J9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WdKPcsxJ; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-343dfb673a8so5492195a91.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 01:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765272722; x=1765877522; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X/homEcZK52uy44aasdrENOooGOE5sAlOYEfUkV5W7I=;
        b=WdKPcsxJt9kZ9NmSwHfiLHuEiVZvUfhnJDSR3rb0xgZguqSZFVMmxkst2wanW5HGTv
         BSyExrwCzdrm9RgjCUVX9RWZ4J2cp/QK/hE3II3aBH1++Yzvqxc/yqx6l/7LA9Lz3FBJ
         BOxk3xWNfQndzPJ2E/xXxjFhoZhVxuVr4tdilLHbbLyYLqXr/denGDnhkkowKwdO2QGW
         3sJxW5J+z2+EVRGh7ijmI1Wka+fY4GrRfzfS7d6o3CSJW8gLO3UsC8WM+5oAAQ/tpMO0
         uldWJHeKlPypdJe0MFlGiPnnWTQdueUnPSU/Tv6ImgkhG5vLJCo33zTDy0c2qhqIQttj
         I4nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765272722; x=1765877522;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X/homEcZK52uy44aasdrENOooGOE5sAlOYEfUkV5W7I=;
        b=ftWos20meVh0eVgbQA3jvCP/nDovuSfVL6/w3Jp6EjdHVHMsM2hltWeW8+EWbn6U5r
         QkHdiipDjYy1fZlJlgyuHAmdpw4Yd8nPCz1PdzBW2OMr8MK5ylA/b45KRpTp8eYT2a2J
         94vF2GMk5cc5gOamWh6az/Gx/tHmdVExY55+M1Jn5CWFpV0dTFeWLhiNq4oWOHHVhX77
         4RF9lttuV03kaqfV6LVQOAj3Bz+Sxu+pCAtvLt5Lb69sePLL2JTDHskfO6YkzmUx6xq5
         u38mM/nB52/rXAKfkl5Dg7ClfrrNyctb73GDS3Hgxtxb1XZG9e0kybZXSjiaHqMq1lTb
         rZ5g==
X-Forwarded-Encrypted: i=1; AJvYcCUw82Lgy0x9BfFmIetjU6Ehv8DeAHZYZh82h238uYncqHmwl/PnfKJ6XVYY4N2Ly08NKlqRGHpdkaJY@vger.kernel.org
X-Gm-Message-State: AOJu0YzXCpKVf5l8lWNYAvdJJMwld2pL8zQzfh4VXVDvhbJD3EQCGtT6
	ged3+d2noDCXULUwYI2LRkYIxaNvIHHdoEJlbSxbF76OgTlxrmD9Uw9i
X-Gm-Gg: ASbGncvpX6pmN6nRjx39KEvF1bRWaYF4h3cYyRBkZUBxxHg/qciMilAZeCXm5+jXAmI
	/YlM3RiU5OUBEk96xxX80MqANIcI7uC+XZ6dsXEtSTvjmlUY1xekB5JiQTxer8/jI1OWw+87KU9
	2urxt3n/rdTwZHoQhas2IqUKiklgbtZvn48JWnQwX88zjNdbo4FKo7mDklfDH9d6SSm040pjWBZ
	u0DE8VQqgK+aLeleSeKXwJFdynBvR3Bm2DMgztkNebrd329OyUcNsXkqH1xqXribn0Y+3j6ipq/
	JWUeiTtmPBQPJlHR0BcMxWKRchO19NEppClf/zt8jaCIBkNtAIPaQOfsDbl4FPW5jrXCNKt4YPG
	myO8Gg0/ruB7yjZkPzZaiH4uaXIARzHqfJ3GSkJuJKo6/AtO7XODbgvMvjAJM770Nz2+eGHvlaU
	zymprEVhbaBhhrZ140PsxkJKVQFR4hg01TYWzooumDHae2NTlVfdITczNWUCJI6ZlkNOSPZgWGZ
	pYsA1kL3NmkEdOZt+VA9VhJ8pd07/mmRWhwa8GzV62PRxgyOvBTG/4GDVtWfz+1u7ERe4Eoa2GR
	yz4Iu7QMUiGRTSdI1FfbX//GNXJZFIIHmbx59egv+tEhxt315jA=
X-Google-Smtp-Source: AGHT+IEwaeD0b9uHojQWY3Zj92Hr/X5acaNl0q97VcOUGKTdKrWTewUu7dv7EFYi+rSt77tp7bmfqQ==
X-Received: by 2002:a17:90b:3e4c:b0:349:3fe6:ab97 with SMTP id 98e67ed59e1d1-349a25c00dfmr7898399a91.22.1765272721737;
        Tue, 09 Dec 2025 01:32:01 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a49658704sm1800408a91.6.2025.12.09.01.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 01:32:01 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Tue, 09 Dec 2025 19:31:17 +1000
Subject: [PATCH 4/7] ASoC: soc-dai: define TDM idle behaviour modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-tdm-idle-slots-v1-4-38dabf6bc01e@gmail.com>
References: <20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com>
In-Reply-To: <20251209-tdm-idle-slots-v1-0-38dabf6bc01e@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 Shengjiu Wang <shengjiu.wang@nxp.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Shenghao Ding <shenghao-ding@ti.com>, 
 Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1797;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=9BrUquyvgfOE5tXuWI9JhhGZxPBE1kg0z2Vo1M4aQHc=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJnmb7Llv+1kaVUxfcu0Lyr9iOuUFcssFQvk35ZxHPLV9
 3RbufdWx0QWBjEuBksxRZYNTUIes43YbvaLVO6FmcPKBDJEWqSBAQhYGPhyE/NKjXSM9Ey1DfUM
 DXWMdYwYuDgFYKon2zD8L7p27p9KpcGMFdc2Tp/u92VGWJiRQcaf/Nf1cy5fVDnAEMHw32uK5pn
 yTx4z157KdWEontG08r7oaZNUBtm2Xccmfp7+gwcA
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Some audio devices, such as certain Texas Instruments codecs,
include configurable bus keepers.

Imagine for example two codecs sharing a bus. When one codec is
transmitting, the other must ensure that it is holding its side
to 0, or data from the transmitting codec will be corrupted. We
can trust the "idle" codec to simply do this itself, however
this is undefined behaviour. Some devices may leave the line
floating, others still may pull the line high. We need a way to
control this behaviour.

Thus, we define five possible bus-keeping modes that a device can
be in: NONE (UB/as initialised), OFF (explicitly disabled), ZERO
(actively transmit a 0), PULLDOWN, and HIZ (floating).

These will be consumed by CODEC/CPU drivers via a common DAI
op, enabling the explicit configuration of bus keepers where
required.

Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 include/sound/soc-dai.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/sound/soc-dai.h b/include/sound/soc-dai.h
index 224396927aef..a5784ef8e3f7 100644
--- a/include/sound/soc-dai.h
+++ b/include/sound/soc-dai.h
@@ -52,6 +52,19 @@ struct snd_compr_stream;
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
+
 /*
  * DAI Clock gating.
  *

-- 
2.52.0


