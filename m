Return-Path: <devicetree+bounces-267533-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MYYJhGBnGmLIgQAu9opvQ
	(envelope-from <devicetree+bounces-267533-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:32:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1744E179D25
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:32:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36F1A30F157E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A3731283E;
	Mon, 23 Feb 2026 16:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HaVMhGyc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6FD3126CA
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 16:26:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771864004; cv=none; b=MQr7Ch/NhK2dH9oOhEET8GQttLd/1t4HcltqfmpYaoq32YdjWMkDMW5RnuQqvCZx6uX/GVn9gwRb+61sRi03ibCyR5lz7f7GuhdOrZT1F1jM9RfpNCNAG5ivEfmmBXMqKnqfZCmjcaXaxMYJMHEIPBcnv8iEDde3UCbnKMf9tCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771864004; c=relaxed/simple;
	bh=aBKnRra0Im0CeXx0r94m9/POih19Pa8su7Xf3T8a6/o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k3/e+vzHBLumRKAP/o2zjB4NY9/yVG3Lc0aIMRTyHu7uc4KNfmmt+381DIaP+aPlUHTfDAIGL3Wxc9I2pAgTFRp8v8zQMKda9Z6MCkw7TyhKcnkotwOwUBRSoLQzm4ki0A90TqjeTO746boXbtf2d9nQcNN1DSdp4NBza/tPlJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HaVMhGyc; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-437711e9195so2967255f8f.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771864001; x=1772468801; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qf/+YOrO2BrvqafNFjJO+GVFFHfE339w5tpogT6PGGo=;
        b=HaVMhGycXMZ/wMYN5K+kc2+zkzC5oT+tCRoV36ipuWCCsI4FC13ewlGnxf3IAcPVR7
         KGFZ7Qft2zBXS5QsKX5PNuCkFceZ1Kvrf8r7nhDPD5d/Vuyat4fHdR8+GRHRdNaBTBqp
         OSbiKbTDgzgQ1xqclOylNCMZQnoWoXozweJxwPJJG2Ksc7AoDKZKbc+kUHLKgv3RFmnn
         JnArfKCydbdjR2oLGJwhxn+/o46fJZ8e4m+6W82WSiybSwjUdHc58B6ukrAMrthwZ0rY
         7LuomYs/TUlBO89OhzkaqwY7yYgRnxJiiYGMOUotgyPJf49xdKntlwzlBDl0rKfF+78L
         W03w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771864001; x=1772468801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qf/+YOrO2BrvqafNFjJO+GVFFHfE339w5tpogT6PGGo=;
        b=iLpsU6+qBqLN8/n9XSMsP4rXk1GdrfRtLdm+10FZG27P7HcFEnQTCFgDn7AkNgF11h
         vq+T8GDyITqvHH3lciCc28e1c3ZvNsFCiasGojxnjbUO1sg//h506My1BzvXkLx89isk
         xfqpSdCEXdAn+mLR2dN6PZaF9P3em2P2zge0sWUHCJHZw5tl/WvgG+yGHhPzLDbUsfcz
         4D2Nr7yhGdwESwIhH6xwBvlxjYtYj5sipkO2SwmKbuinVJIv5V7AKFOW+K64Q4GxJjoW
         dk2Mv8FFp0yyHOJIDdRu8c6HF/az0xA4+TVbZ6Kb2Y/lwlFpRLi4njzMjiNBx+cjxkfr
         BcUA==
X-Forwarded-Encrypted: i=1; AJvYcCVTQYK8HxKusebi9bDKb0a/nON+GBhx066qRImw4EH5q3k0HFgP26FB/QU3YpbbGSBMah8f0QLxrWRT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw50QVOQXYDMXEG3asqXOXkztFh6zA8sA4DC87ZOFt98gtJ2svX
	r5vp7xfugrx3vI+ntF/mKSEx+S18baYCKKyDGg9QJStBiWnkb7KU2J7h
X-Gm-Gg: AZuq6aI5i41RwTCYfjoA1lXte5eAliMG3AkTOZWe1gAsvjh/9Y1xMYT8l0RpvnRBYZ3
	e6wj2fVtfD12fqSHLNFjR4b7p5eAQiDHkvamghL948SqmIAJKca1L3NVdtcf3lNQvqiOjGm4vn3
	oOWnooJL38WUZ4aVoh8BgNwwfjwQy26DhyzDCAGXRY5VPUwtKBfyM6OEeDmzIn2ovVZn82JFMq6
	TGWd5btAwrfkTklhI4Ao3KmeEe+wjmITwlxNNcosljkFOqscUlREl4TQKNaz2N2bihVIRYIFqp6
	N+Y0bPPErlwt9Jw99lhWSIAB3Hk+Ij23dgEfRP4FOHVLUl+lWpp4IyAHwfU6xR7gQwnryjb0vw5
	YlJ39ZQyDQA4SdrK3+0ca4Qf0eOHpcCo1P/JYoVP8Cp9ODS4YkKcD0Crsj2Xd93cXJFxZQZLgI0
	9UO0qkuFqYTomQZ7uqZTo=
X-Received: by 2002:a05:600c:154b:b0:483:7ae2:1737 with SMTP id 5b1f17b1804b1-483a962e486mr129723295e9.17.1771864001041;
        Mon, 23 Feb 2026 08:26:41 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:40 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 3/6] dt-bindings: phy: mediatek,dsi-phy: Add support for mt8167
Date: Mon, 23 Feb 2026 16:22:47 +0000
Message-ID: <92530e0a31eca1feb822f5c5fd4ac894937dd6c7.1771863641.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771863641.git.l.scorcia@gmail.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,collabora.com,oss.qualcomm.com,kernel.org,pengutronix.de,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267533-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 1744E179D25
X-Rspamd-Action: no action

Add support for the MediaTek mt8167 SoC: the DSI PHY found
in this chip is fully compatible with the one found in the mt2701 SoC.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
index acdbce937b0a..c6d0bbdbe0e2 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
@@ -23,6 +23,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt7623-mipi-tx
+              - mediatek,mt8167-mipi-tx
           - const: mediatek,mt2701-mipi-tx
       - items:
           - enum:
-- 
2.43.0


