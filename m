Return-Path: <devicetree+bounces-267558-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LwAKACMnGl8JQQAu9opvQ
	(envelope-from <devicetree+bounces-267558-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:18:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AF317A9A1
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:18:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A89753054ACD
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC552330B2D;
	Mon, 23 Feb 2026 17:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LQCdL8TH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B94932FA2F
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771867041; cv=none; b=aEQJgT4/jleeLKzmjKMwNbTikp5iSJ9XLlt3pWFc8ROXv2K5JGXRyf7bKQZoV95MRo/Y472L9JJewdJMPv2Z8oIVrBwFAPXdiY5MQ1BCt1hed3WjO2fXLKFmcwufs+BimPfG/NYwrA8qsoyRRiyUyYqEXgBwUIAlw5ymJwt8SN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771867041; c=relaxed/simple;
	bh=vJOr9ewXibzfb3H7LhY3fT3XdYMp+tyABiqtgW4H+/4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JtHpSfmtjoCMACZSERkAwL/oT1GVoD6g5Ti+OFoN2rWGOOWk3grsdJLWTSxkofaCNwRbyrY1QgHbb8ddjRtgQCfX6BrQN6fly1qul78wcbxIJ2iWKl4i2qmIG+oXh/ieYUaC+UVnErVYLJN6vX0hwZVzLu8/gGYWUaFE5IIbqZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LQCdL8TH; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-4327790c4e9so3482941f8f.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771867039; x=1772471839; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+jf6/GdPMgEPudu5Ub5QM0YH/lbZT9UmvVkra65sIm8=;
        b=LQCdL8THtSx20n8arg5+THT/3yXUfYGFN36M5mv1CHRiBfcBnnBjKsWzt4KZ/l8hEl
         JUBVirKsXyYSKp1S+8qa/+evoRTaUkN4/w2zRwmt1aNHsD246HV8cayjJgc4XNX0KNeM
         y1lpNSa4kI5Yr4j3/hE/ASnQ3nTp1WYeh1PSxnPEaYoTPZPXtToJhZitCw1Ltok0ptbf
         ZmyU3EBdFzgF4plaEDrPss3CLBfGUwmqsAbA0DsAkFHdQLIu5Q/Ok3XYb7kojUNY72w/
         yof8bTbhrUDAwOgb0tu2mLVhpWxPx0ek/jALUw50aOCBSlziykHhiwsGb/mUtU7U7d8E
         xaOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771867039; x=1772471839;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+jf6/GdPMgEPudu5Ub5QM0YH/lbZT9UmvVkra65sIm8=;
        b=ix/mQShAL4+f4rvRzyqIzqgLtxLa23dYkYrPrZJo/XnJZAyuMfJw8AbMDFgTS9cxKp
         LoRnp4IlY15GGrl4zv8D+IdinzIYa4sNnxghitUsnPv8fi2A5R9fQJPn3dlbVzn5u4NR
         KOYX7nijQLMTO6oVX2Kv+UX+LTa9NN75g9TBi0ahATsig8jWuH34V7sTgOBaFUhuTanq
         OQOdSYeXJpWyqq6zQt1gAXCRU1TljIDXJWpG1jWxY+A24lZCz6Qg3oGsvVLCr/DcIIHT
         JdK8l58M6AstH9NGriqG3D0ljjZ0R5MKdnsMyPvg2wJtxlfe9LW3miI3Kf9ce2ygti8v
         o76w==
X-Forwarded-Encrypted: i=1; AJvYcCV++wsvG+kx1a9sFussiATS+uKTWq5gyIt7kwPy266ls0mYsvCeQp7FeOoqGtM79Qtvk/D5+fDQf9rK@vger.kernel.org
X-Gm-Message-State: AOJu0YycJ2zHffKyx2jG97kprTdGYUP+aBuixpDeZsNdnuxuNZ2KACjt
	1UhCRnO2mWHe12WZh1m4NCDgZXD5d2U/jc65IT20Ke8IDTiu24bQIEOG
X-Gm-Gg: ATEYQzxTf/I+Apf0MgCqUuPCjggR8eNZI+77xTKHHtqX9farC/hvtknZM2aCYRN6FC0
	fb6vgglMNzZZ0JbK1J3ijCSxI9DGrvO2P0XOPw4vGLQNsB/EUD0p/2JnVYT92rkZjin0vwINdVA
	fqnuF36aQULOvlP7GdZMbjWN6o8n2FZePSR/xWMybd8VWYOQmwhozOApZWw7W43ddqThfbp0GaB
	ZHMtjzwvex571m0xne6pAtKFDNW9BqcVTfDpZ8p6WIbXnt+ETZ7+QTQJ4zpXN3Y842WGahp5KVH
	T+MInumWDrBjWDNNZEdQe31auFQaLvTdTkczX15PHQBiPYUNxPRDz7fajHlduPCqmPaGPUA8orP
	8GHG7DERePSJ+PeTmmi2bXkjobKvSptWVIhrPcliU7cNyQVXddF/krV3HtiOmgg5kwYeroHOpNQ
	8kfATon645AxDACjK87VB0Y6iNqcX48Q==
X-Received: by 2002:a05:6000:604:b0:435:97f6:4f44 with SMTP id ffacd0b85a97d-4396f1a97fcmr18768298f8f.56.1771867038655;
        Mon, 23 Feb 2026 09:17:18 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c982sm20871454f8f.31.2026.02.23.09.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 09:17:18 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Fabien Parent <parent.f@gmail.com>,
	Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Eddie Huang <eddie.huang@mediatek.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Gary Bisson <bisson.gary@gmail.com>,
	Julien Massot <julien.massot@collabora.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH 1/9] dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
Date: Mon, 23 Feb 2026 17:12:40 +0000
Message-ID: <c5ce038359583c5318c2d5ee341287c213aef880.1771865015.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771865014.git.l.scorcia@gmail.com>
References: <cover.1771865014.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[gmail.com,packett.cool,kernel.org,mediatek.com,collabora.com,bootlin.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267558-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 31AF317A9A1
X-Rspamd-Action: no action

From: Fabien Parent <parent.f@gmail.com>

Add the currently supported bindings for the MT6392 PMIC.

Signed-off-by: Fabien Parent <parent.f@gmail.com>
Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
index 6a89b479d10f..5f422d311d4d 100644
--- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
+++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
@@ -39,6 +39,7 @@ properties:
           - mediatek,mt6328
           - mediatek,mt6358
           - mediatek,mt6359
+          - mediatek,mt6392
           - mediatek,mt6397
       - items:
           - enum:
@@ -67,6 +68,7 @@ properties:
               - mediatek,mt6323-rtc
               - mediatek,mt6331-rtc
               - mediatek,mt6358-rtc
+              - mediatek,mt6392-rtc
               - mediatek,mt6397-rtc
           - items:
               - enum:
-- 
2.43.0


