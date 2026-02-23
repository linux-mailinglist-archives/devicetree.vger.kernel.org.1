Return-Path: <devicetree+bounces-267560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPD1JnSNnGmdJQQAu9opvQ
	(envelope-from <devicetree+bounces-267560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:25:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD3C17AC14
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:25:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4E4BD30197E3
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DB6F330B30;
	Mon, 23 Feb 2026 17:17:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bLWZmXbq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB4733065C
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771867062; cv=none; b=RXuiw1CqPcQbP7IXCvti1gndiSLSTxU/lgP6vMUt+GSAvqWOyA4YImRih8Bu4YKWC/YbG5TXkgaJOOj7VPApKj/HL1dgStJrL+0pM8Ye8wjrhGfsg+SKFb3v1jzVsnNdvDO3pDs+xm1wPaVTpn55eZiSG7QzdiHUGGnAiIlWqGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771867062; c=relaxed/simple;
	bh=xZzzDOkgKbTZ66GRV3Ylmkt1TVDNGKrjwzmFpeTjMtA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=izx5nl4HC1eonBG41f3Ye81SvTRNveHawKJrZp9m5PoY+DDQOfuQBvvVt7WROlcOuhP5w0iy6MpnGVntKh1BDY8AtZd1ggxRXo8CXqgsJyqj62+h0YKuiDAsf1kkk1lTWghExIVQggVqeusJAdmcW2ThpfzZ2MhQJW1gy/9gDx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bLWZmXbq; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4806ce0f97bso37003915e9.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:17:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771867060; x=1772471860; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uM6wk4ilnVR3AWYXU6RXXbe1DzogOfIUTZwC0wgcO4g=;
        b=bLWZmXbqp88H2k8jp4QSQwQRi2vI0f/1Bq0gcFqMzcnIMaHRdkRUNvHEt0ZI6FBYgF
         3iWQ691o2Id0G/+XyKWeS2UeI4v/1Vdvq2iKWpq9XarKBXh64g8Kgru0ofkrbk+iPBEU
         MVU67wwols2XShMQ2hNcXE2N2kN0y8JEi64b4QGHR/1XXhKLeuFzRSWwVYk6SkxsV+C/
         Nf9kc4HhYfVmr9wk4ni8SL2cz+EJqcWXfW2IU4sQOWi3RhytoysGkZPgpqQrtZI1D9rr
         GctbvxDUsmgCwf+XPZ1fAEBzwVD0SngLMAQTEOVEbnu9mmcSTcbM1mP9IC4X7kciWYvN
         8KTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771867060; x=1772471860;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uM6wk4ilnVR3AWYXU6RXXbe1DzogOfIUTZwC0wgcO4g=;
        b=B2SYeOMNkHUGNxj6vfOew0c/UJGTcTSHzJF2o5ZvydtST1RmTMqxOLM2NVhdEjWV2H
         9oe7epzb+mRs3i78XPqe62yRPBELHHm5NO+k9yVUBOP0KQKEuqKq6Bci7LjomNgzduRQ
         ESehvwid3W6NTkKLihH2vnJexG6n9uTv7Sg7ImRUaYb3Bv2McqjSf8ALxD3+OiNMBCh7
         OyO3WAK6CvTJyTxKgg7IxeYRmwMnMik2G07Io8y/nq2hl+K2O7NkpMbKnGj5ypx/XLnZ
         PMFTEADXrkDQkRGQ3R69kToa8FzWEsxrassNcbGNs9vKT08sxQ0bT4nVKhwde7pYEIbO
         O8wQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxXuQCXRiMx/dn8AFRLk5md+DJujPv1ni55/XlyYIfQ7hgaXfXpm6iExLKRgvWA0x/clSVqlc/ZmpP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0ZlLvxZXFQ1B9cDDQHmdca4wLIG6Xu9+HGqnf/y7WxvP99Cau
	StkCNwPd9ye8Z/UPeGUxvX8qRrpSJ8nSDT3Lj3M9X8guOgNl3sXv6QPe
X-Gm-Gg: AZuq6aJumQTOl33qm14tW1SmvPVAFgHM4Nv+gIyks5q8QJrKZiHcudW6BvOr1k179Kk
	pUBk20S2s5Cd/zqAXYHAzI6VNkI5kCjxg+rNg7iv4CF2Lx3nhefLP/I1BkYLEGgJm6ZJCJjGdt8
	DiamCjWcmnIIMDC2/MCz92yyrxacpOKIw5UQWTaXDe8pH1iX/v7FVjCyfugYsyo42WIZFMps+F2
	t4JtcOvEITb0QUPe6C4SimWaIbCTSBDw3wF+WX8uniPYpT4LeS9zLJTpGZtmvXSmxXjTprcX7Vs
	sZxbQhqw4dyzdPkZDiWVtZ0VWLAdI0RNfWjjTKOG3oK11UV3dkPlBS62l6Cb2wRlxe4KXnKyG8m
	clZqYeguOYfmJ1drpJF7kvMyvenWp3UL3t5OXLN/2pqRF1bUHSWnYTh1ghf8sGsAhmka5YMQlXp
	tBqvW0QtbEmsGqo1wOBp8=
X-Received: by 2002:a05:600c:4589:b0:480:1e9e:f9b with SMTP id 5b1f17b1804b1-483a95dea3emr196855965e9.16.1771867059590;
        Mon, 23 Feb 2026 09:17:39 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c982sm20871454f8f.31.2026.02.23.09.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 09:17:38 -0800 (PST)
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
	Julien Massot <julien.massot@collabora.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Gary Bisson <bisson.gary@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH 3/9] dt-bindings: input: mtk-pmic-keys: add MT6392 binding definition
Date: Mon, 23 Feb 2026 17:12:42 +0000
Message-ID: <056cbc09fcbb4a2845cece69209a2a564d993ac5.1771865015.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[gmail.com,packett.cool,kernel.org,mediatek.com,collabora.com,bootlin.com,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267560-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ABD3C17AC14
X-Rspamd-Action: no action

From: Fabien Parent <parent.f@gmail.com>

Add the binding documentation of the mtk-pmic-keys for the MT6392 PMICs.

Signed-off-by: Fabien Parent <parent.f@gmail.com>
Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml b/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml
index b95435bd6a9b..2d3c4161a7f8 100644
--- a/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml
+++ b/Documentation/devicetree/bindings/input/mediatek,pmic-keys.yaml
@@ -30,6 +30,7 @@ properties:
       - mediatek,mt6357-keys
       - mediatek,mt6358-keys
       - mediatek,mt6359-keys
+      - mediatek,mt6392-keys
       - mediatek,mt6397-keys
 
   power-off-time-sec: true
-- 
2.43.0


