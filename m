Return-Path: <devicetree+bounces-264577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKm9MMzji2kVcgAAu9opvQ
	(envelope-from <devicetree+bounces-264577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:05:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 683F6120AC4
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 03:05:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5FDF93035256
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 02:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A1FF2F25FB;
	Wed, 11 Feb 2026 02:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WqA+7yXx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0A62F0C6A
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775400; cv=none; b=uohmoX/bXli4vgznWl+69w0a12S3zjp3x7CndFeBGVlmzhkPh4PUoqx/eL/PtYK6PoqvVQt7UwkaP+iljrhlWsTedPk2ZqVNRZ5lmoMROwDM2smmuSeiWWE3XL87nRi0gANpR90moBYrfEfr+bb82iMhY9L5/JqiMttZBuE9Woo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775400; c=relaxed/simple;
	bh=lcbMP8x8QidDMfzZsQHgVhSc3nXU+qMMMQL5v42JxJc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gj2LXoC/xHkm1kiGxNwDw0EvCW8Kh8/nhM2IvYpQ+mBtpG4ekVuNRMsy6vVSvidrDO6kQUDkLp3UfqpkoHFrBsPGT/NGQZeMvAa9mQWyWIojq7Wdqk8gLs8V3j9p5hyWgUF1YQ/F5nZMS1zCbdz/BUxyw/+FNN2FSaLcr6RvtJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WqA+7yXx; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-896f4627dffso18133226d6.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 18:03:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770775398; x=1771380198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNovFopWC+y1Xi17NN7gqBwdQHg16MLIF/W6FMXn5HQ=;
        b=WqA+7yXxRBmZb/r+vuHa49NLpVWJacSsUJ0SGOmhOsqYqtjjRGF9ypILmsCqskuH2y
         RdohyCtLvnSpbK2iQtxc7sA7sIKyXuu7EJ4TPVMkbON6l+WbHole2RgVvdecnWskGzSi
         MTb5IoODnlZ/J4dD8GhR6HXVYI7BZ39YL/jPrvYUTu9gfg4s+olFONxHIFKDcFCiCHGd
         Zc/pDan/moRjtS2yVdR+GEZgglhh3HqT1t+ozPPU7/TjNxOScsu1XHD7QhFEzavkU7/C
         9ppI/h7K+FLcBjpxMe1WRNx5bcoVwXGemwsDRNvoqXZZ7tKpT7C8BJow0b7F1en+5vWQ
         t4HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770775398; x=1771380198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wNovFopWC+y1Xi17NN7gqBwdQHg16MLIF/W6FMXn5HQ=;
        b=fMrDnh9xzLZma2WhCQ/xi8bsPSJweanEMaNiaRG7w6mSZtau2xBteIgrSyc3eF3ZCa
         ojnKLT6NxUiODXAIGMt+j2Z5lxvyN7akLRJEJ0r05DfDV9lVbPFeMhHX73KWd6WoVh5C
         F29WiXcmLUtROO39hnhA1HZjV9wo6wRDsZWZQn/S/uCohhxeJuLgeB8GiSKVhSvFf3D5
         T8AgUCwaKUKv+iz/O2DjC6FaS3DIgnNhH1CN1jdT1P7itTBi4jOR2nS3/z/DGhz1Dudk
         xo92VbzitHMNTQ+YJRiMLlQuYmjJUHtJbmLqxq1pBBCX5/Lbo36RsqDDk4IpATONwEcT
         g2yw==
X-Forwarded-Encrypted: i=1; AJvYcCU74eb7twpTfMsKtHSjv3PPjznvzmd4xJGOd0zNeZNXnXObKyLVEv+DDx2M6vfKEtZi+XPqDh4eMYyH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf9Gsncbf4SLU33pM8VBYfLM8iatsIyYo93XbpMeXbEcjMmo1s
	s8ty9ALIPKJide5hRiIMiAQ3NEFASP9Aou2HdeyQNyXVyy3/SQEPq/TK
X-Gm-Gg: AZuq6aIkJ6Dx0gBuqLYpNqTh18z29v8UGz9UacyD4dGcbJ8Dy15RnAEarwKUy0gqwut
	ePA8qtk0zi1NvfN5GE+PAp1g3tfspE96fDiwpRk2ocHDE7FwpkA9/f0P8ZH+VhRIWwXWspDetRY
	Uyl5POdZQXDuh/a8MDT9ci4oZsK2ZFGowNp3qLKTYF9Loc7DrMNgfQgr/O2KnRN9gi59fFYgQFN
	aIreZTFEa2oIqk2+x0Iplm89cUukDpW6Oj4vRRqDE89sMeuDfeXaollYQa3G+u/0SO/dJ9GdzGp
	cox/hd3wbu24pPQrumphr9tI1HH0/s1oRxwGXTSr9YXdz/TJoBnam2yP2zOQtv+PtVBAXM981b/
	VEZt1/U2E54BFCclj6YiL9yCcdhUxqiZ0SM70hl7Bgtb1qu+9DIFDTbJ1Gk62pUK08WwrHpCs3+
	Hbh/DCw6IVqD+CT4IvQalqSzjDQQ==
X-Received: by 2002:a05:6214:f03:b0:897:bf:709 with SMTP id 6a1803df08f44-89700bf0768mr129323076d6.31.1770775397892;
        Tue, 10 Feb 2026 18:03:17 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50684ba22a6sm1433881cf.28.2026.02.10.18.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 18:03:17 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Johan Hovold <johan@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH 06/10] ASoC: qdsp6: q6afe: add internal mi2s support
Date: Tue, 10 Feb 2026 21:02:58 -0500
Message-ID: <20260211020302.2674-7-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260211020302.2674-1-mailingradian@gmail.com>
References: <20260211020302.2674-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264577-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,perex.cz,suse.com,linuxfoundation.org,quicinc.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[mainlining.org,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 683F6120AC4
X-Rspamd-Action: no action

Add the port mappings for internal MI2S, found on the Snapdragon 660
internal sound card.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 sound/soc/qcom/qdsp6/q6afe.c | 56 ++++++++++++++++++++++++++++++++++++
 sound/soc/qcom/qdsp6/q6afe.h |  2 +-
 2 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/sound/soc/qcom/qdsp6/q6afe.c b/sound/soc/qcom/qdsp6/q6afe.c
index 0b01fc9e13a7..78d48f6cc926 100644
--- a/sound/soc/qcom/qdsp6/q6afe.c
+++ b/sound/soc/qcom/qdsp6/q6afe.c
@@ -130,6 +130,20 @@
 #define AFE_PORT_ID_QUATERNARY_MI2S_TX      0x1007
 #define AFE_PORT_ID_QUINARY_MI2S_RX	    0x1016
 #define AFE_PORT_ID_QUINARY_MI2S_TX	    0x1017
+#define AFE_PORT_ID_INT0_MI2S_RX	    0x102e
+#define AFE_PORT_ID_INT0_MI2S_TX	    0x102f
+#define AFE_PORT_ID_INT1_MI2S_RX	    0x1030
+#define AFE_PORT_ID_INT1_MI2S_TX	    0x1031
+#define AFE_PORT_ID_INT2_MI2S_RX	    0x1032
+#define AFE_PORT_ID_INT2_MI2S_TX	    0x1033
+#define AFE_PORT_ID_INT3_MI2S_RX	    0x1034
+#define AFE_PORT_ID_INT3_MI2S_TX	    0x1035
+#define AFE_PORT_ID_INT4_MI2S_RX	    0x1036
+#define AFE_PORT_ID_INT4_MI2S_TX	    0x1037
+#define AFE_PORT_ID_INT5_MI2S_RX	    0x1038
+#define AFE_PORT_ID_INT5_MI2S_TX	    0x1039
+#define AFE_PORT_ID_INT6_MI2S_RX	    0x103a
+#define AFE_PORT_ID_INT6_MI2S_TX	    0x103b
 
 /* Start of the range of port IDs for TDM devices. */
 #define AFE_PORT_ID_TDM_PORT_RANGE_START	0x9000
@@ -925,6 +939,34 @@ static struct afe_port_map port_maps[AFE_PORT_MAX] = {
 	[RX_CODEC_DMA_RX_7] = { AFE_PORT_ID_RX_CODEC_DMA_RX_7,
 				RX_CODEC_DMA_RX_7, 1, 1},
 	[USB_RX] = { AFE_PORT_ID_USB_RX, USB_RX, 1, 1},
+	[INT0_MI2S_RX] = { AFE_PORT_ID_INT0_MI2S_RX,
+				INT0_MI2S_RX, 1, 1},
+	[INT0_MI2S_TX] = { AFE_PORT_ID_INT0_MI2S_TX,
+				INT0_MI2S_RX, 0, 1},
+	[INT1_MI2S_RX] = { AFE_PORT_ID_INT1_MI2S_RX,
+				INT1_MI2S_RX, 1, 1},
+	[INT1_MI2S_TX] = { AFE_PORT_ID_INT1_MI2S_TX,
+				INT1_MI2S_RX, 0, 1},
+	[INT2_MI2S_RX] = { AFE_PORT_ID_INT2_MI2S_RX,
+				INT2_MI2S_RX, 1, 1},
+	[INT2_MI2S_TX] = { AFE_PORT_ID_INT2_MI2S_TX,
+				INT2_MI2S_RX, 0, 1},
+	[INT3_MI2S_RX] = { AFE_PORT_ID_INT3_MI2S_RX,
+				INT3_MI2S_RX, 1, 1},
+	[INT3_MI2S_TX] = { AFE_PORT_ID_INT3_MI2S_TX,
+				INT3_MI2S_RX, 0, 1},
+	[INT4_MI2S_RX] = { AFE_PORT_ID_INT4_MI2S_RX,
+				INT4_MI2S_RX, 1, 1},
+	[INT4_MI2S_TX] = { AFE_PORT_ID_INT4_MI2S_TX,
+				INT4_MI2S_RX, 0, 1},
+	[INT5_MI2S_RX] = { AFE_PORT_ID_INT5_MI2S_RX,
+				INT5_MI2S_RX, 1, 1},
+	[INT5_MI2S_TX] = { AFE_PORT_ID_INT5_MI2S_TX,
+				INT5_MI2S_RX, 0, 1},
+	[INT6_MI2S_RX] = { AFE_PORT_ID_INT6_MI2S_RX,
+				INT6_MI2S_RX, 1, 1},
+	[INT6_MI2S_TX] = { AFE_PORT_ID_INT6_MI2S_TX,
+				INT6_MI2S_RX, 0, 1},
 };
 
 static void q6afe_port_free(struct kref *ref)
@@ -1779,6 +1821,20 @@ struct q6afe_port *q6afe_port_get_from_id(struct device *dev, int id)
 	case AFE_PORT_ID_QUATERNARY_MI2S_TX:
 	case AFE_PORT_ID_QUINARY_MI2S_RX:
 	case AFE_PORT_ID_QUINARY_MI2S_TX:
+	case AFE_PORT_ID_INT0_MI2S_RX:
+	case AFE_PORT_ID_INT0_MI2S_TX:
+	case AFE_PORT_ID_INT1_MI2S_RX:
+	case AFE_PORT_ID_INT1_MI2S_TX:
+	case AFE_PORT_ID_INT2_MI2S_RX:
+	case AFE_PORT_ID_INT2_MI2S_TX:
+	case AFE_PORT_ID_INT3_MI2S_RX:
+	case AFE_PORT_ID_INT3_MI2S_TX:
+	case AFE_PORT_ID_INT4_MI2S_RX:
+	case AFE_PORT_ID_INT4_MI2S_TX:
+	case AFE_PORT_ID_INT5_MI2S_RX:
+	case AFE_PORT_ID_INT5_MI2S_TX:
+	case AFE_PORT_ID_INT6_MI2S_RX:
+	case AFE_PORT_ID_INT6_MI2S_TX:
 		cfg_type = AFE_PARAM_ID_I2S_CONFIG;
 		break;
 	case AFE_PORT_ID_PRIMARY_TDM_RX ... AFE_PORT_ID_QUINARY_TDM_TX_7:
diff --git a/sound/soc/qcom/qdsp6/q6afe.h b/sound/soc/qcom/qdsp6/q6afe.h
index a29abe4ce436..d61fda8e8985 100644
--- a/sound/soc/qcom/qdsp6/q6afe.h
+++ b/sound/soc/qcom/qdsp6/q6afe.h
@@ -3,7 +3,7 @@
 #ifndef __Q6AFE_H__
 #define __Q6AFE_H__
 
-#define AFE_PORT_MAX		137
+#define AFE_PORT_MAX		151
 
 #define MSM_AFE_PORT_TYPE_RX 0
 #define MSM_AFE_PORT_TYPE_TX 1
-- 
2.53.0


