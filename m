Return-Path: <devicetree+bounces-265882-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCWtFgVGk2l83AEAu9opvQ
	(envelope-from <devicetree+bounces-265882-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:29:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDC914631E
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:29:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62C7D30791C7
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07BCF332EA2;
	Mon, 16 Feb 2026 16:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m48U+8Cf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA6F263C9F
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771259101; cv=none; b=N5SmQbFGzhikK9L/NW0xKHe9FI9Mv/9mUPLar5DV7apdN1hZRm1xy108YtyGZWdpklY600oPoN9s0REuU+QS/tif2YyJmqFeQIzfqWKr9/c2b/VCLR3Oql+b9RrKqtH1jHJCn1cUggRjnKAYr8Md2mHHBBCyawS3yEoiNW+fT9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771259101; c=relaxed/simple;
	bh=FDigngD2QbwHUWXflj7fzBsDGQXM9oOuvmIJi6N+img=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ge/l+OGSIRr20EpxRwYIhQPYxp6p3tjZ7rB+umLqqEhSfQpouwPy1FkDdTq8P6PsGwO2NoTxDPJP9cSILDmz0nygfpl0mbq35LfKeLHcdYgKge/VteuK9rnysIxffr73p0r8S6cxtoj7lA6sbKcTFOQ4eUzMm5QGHPMXG0RYZCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m48U+8Cf; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-43590777e22so2040129f8f.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771259099; x=1771863899; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EP/NkuwHIXZWXD+wl8EaORZCaWZmz1qMdyG8O5pYtJ0=;
        b=m48U+8Cf4R5SkFmqZHPu5dvx0OM7IojxD9uAR6PC4D/Wco0D+UFXyynFBCjPZLlmcS
         IqSxdMcfufI/KT0PGk8bkkT8ogT+8WtO7A/9noWOoN2w5lCvxtWVRhdjBSZkc/L1peeX
         mIVC17OhAPghnkHJxuPWEsdLMmADgHmZLDm6AUcnYUEJpUFZHVhlSKc4PsqIKAnqNMhm
         BGDMzEIToUYSX/7jZGWyClGa24oBuv0o87ehK+ha2lZ3d2FXIGop2OpSCbP6XqIjoYxM
         993+wlYemyH3AvxFGvCuCSmpGMeSO55GPtMHMEsU+dEqAmdIoMILqexbqpOg23egnH6Z
         sG2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771259099; x=1771863899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EP/NkuwHIXZWXD+wl8EaORZCaWZmz1qMdyG8O5pYtJ0=;
        b=Cei+Hztb1OpFMv6CHi3AoIK7I8x1/aA2MEAZJ/5u4v50N09EycwUocqQAOXJqxBTD5
         u+/3fOUSdTON2cnMuXY2f6JjUGN9ownziID7MGFZW3dv+XVaHtin10BoFDqaILF5VrRv
         qJAVPfkDZIzA2JrTZ/o+U/CJkHytWarBY/L4m1PlxDX/IkZxILvRXdtZWMVLRwfsr94n
         nCMN8fbdpoD1U0LNLMEr0YRYhCT5iNxuja1kfTI4lEPceYiX+dk+tgKDDKEj6k1vMJ3P
         87HTH98GMZa2GqtcL/8iSHUIyBNX8cPu/53yMg/AkMTyZyUW4uy/+SAPRzfUVBqVH7EG
         4hSw==
X-Forwarded-Encrypted: i=1; AJvYcCV/0M0c+YPyCNdwU2LmtZXjdP9QKgLayXx6It6TNaIgfgf9YAnGyKsDVk+++bY6fqB8DPQh6Ik9cjvZ@vger.kernel.org
X-Gm-Message-State: AOJu0YylopvQJKyg3JLX4Xk4t3utRKnOOY/nbZ9iuV7Qd4cqePxCM83t
	fyNQyUGQySRztP/tETuCL6VdQa7mdPR7CAqQN72uUT0a+8Ld0vC94xAI
X-Gm-Gg: AZuq6aKtiACjJcsvGeKnqxGgDqh0+7zdkRKd9mXjM1Jbki5ImAB1SWMu+Dr4uCJR0/f
	tobCXzG9Q4dHcVpMY3McBpWCYGnqiuIO5Dhso6G+LpTa71quz4MvV4KLw0gHS0lWrPNP0M7UhwF
	fYyAH79TdBaQuztiXbnCQJ6sALI7K+pELm49aKojvbt3oUtAO4PdH8HRDekfuSV+ijtJaFxTW2k
	dU6NOwG52zouK4pbfugkCAddplBnS21sK5c/hW5pl/zomVtWN4hUgSrd/HyZe9FFyDQOMTRyfef
	Tk5BThCPRERWIF9fLoabxcY/hQSGVM7IsZ5sn0SMYkJKREYuzL9wl03Wl6uvahozPy+J5J95ZtW
	mkgt1sSMaKjFnLUJOUPOfB7XGuMXuAd8RrHs3OwlTUT4eVhYK0GAYbAaCATtLXFObBPXPVIY1fg
	HoIXDEizCIsYaRTwRSP1EB8Ygda6x8xw==
X-Received: by 2002:a05:6000:4010:b0:436:1b1:6cbd with SMTP id ffacd0b85a97d-4379db25b60mr13014530f8f.6.1771259099036;
        Mon, 16 Feb 2026 08:24:59 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a6desm28775962f8f.10.2026.02.16.08.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:24:58 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 4/6] dt-bindings: phy: mediatek,dsi-phy: Add support for mt8167
Date: Mon, 16 Feb 2026 16:22:15 +0000
Message-ID: <66fbd5dd3604ffc4fda45022c1db68e4e0be6714.1771258407.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771258407.git.l.scorcia@gmail.com>
References: <cover.1771258407.git.l.scorcia@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265882-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,linux.intel.com,suse.de,ffwll.ch,mediatek.com,linaro.org,collabora.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ECDC914631E
X-Rspamd-Action: no action

Add support for the MediaTek mt8167 SoC: the DSI PHY found
in this chip is fully compatible with the one found in the mt2701 SoC.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
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


