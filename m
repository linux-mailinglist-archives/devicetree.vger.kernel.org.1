Return-Path: <devicetree+bounces-265609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEQBCS+KkWnkjgEAu9opvQ
	(envelope-from <devicetree+bounces-265609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 09:56:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D829813E575
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 09:56:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B6C42301C901
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 08:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4412C3768;
	Sun, 15 Feb 2026 08:55:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R0ptTe71"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6282C11D9
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 08:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771145740; cv=none; b=hWx9QgHegCAh96EsUnbTcAcFZuHqzmueHsgeugBT+8q+kjH424UtY+LMEaR9q+iw+32AxWF5GcHvivlGZo6jUVgSNid8pVef5wVOw7xtPrVw5rXoQF/KkakcUd5DnOeNtgp6tyE30f0iLGVFRAE5C4ei03y/Y/jTPjECZKpG4EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771145740; c=relaxed/simple;
	bh=WFDLz9qCz0sMbcRbPyjfmP8UbriqES4S8pPXRvf7hac=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cwYJF6obZfX7a0d49q6AESH0Ruyi7UZ7lkMro9LpZyy2COGE6F3Z+ZaUrivZ2tfLcPHtf0BcYoQ/1WV5SlpJnDoPnTkyaj7un+BPUP+YdJqgW4UNJsZj4cdy8qFmsgKYgzanGM8vHZsnb9FELjHvGDm/5eKftu1T/Yve07hfG5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R0ptTe71; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4807068eacbso16809115e9.2
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 00:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771145738; x=1771750538; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sAQNxQv4JzsX9m+4gmiEwv4VehekE5HhN8PtLOEQY1Y=;
        b=R0ptTe71vR7DZQZF7meCjXy6Nk4BUQAfQ+6XTC8BRARLi5gQF5tER4oW/BX+ayX22b
         zdds46LgeQ1WBsa3aQxclexWFQUROo/o36ARzSNfepZbMQKaItz5KpJcOX4Q991Yio0e
         KW6TFGUc9P+pnzzqP3MYIYldFxtGBMCi22gDCuZosx5hvhsRMSBU8yNwlZb9GYg/Del+
         D1ht2ZDrUc3k3avTo6SYtexrkrCulKye6Wak1hgn13012WiDjc5huRbE1y9Hm++ctTsd
         9qTQP0CazPdXHG9hOs2EqatV9F6V8gjdeXqwXEW6dEC21xD5ZJgQXA2ozrypHn2wuBdU
         bLlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771145738; x=1771750538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sAQNxQv4JzsX9m+4gmiEwv4VehekE5HhN8PtLOEQY1Y=;
        b=ilYfuDVlJVJDH5YDSJ172XL4cFNyzdPbujW2Or3ytx0TOG7yG4zIf4afsgQOUHUpyl
         0+3RjjndK0kwVgsnpzPz0nqh8b77gosmg04qHl1w8kbItwBeq2bMPqmycaupj5l1f7g+
         3SCSQaFFpLh5M+2LqrvPM4fnXLeMrooo2D8xhwJT/Q6D19sw0+ax8vJOcZd0aUs5oGM9
         RzGPsJpV2d5qKNNbKV6PYo4kU99kTm9TkJizpk3NCxS0/yUbHIlFESktht36SolZMYKz
         iQMlFNHPR/giG8Sq74amTGAV4d2z44FzWhEewMZ7CyvMosIUTNwQsmng7X0Bxqd/DGqn
         rvKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCTQv/5PcwZkKPVY5NFYkuvhNDzpkqdtwdqxvOyUwOESixVlt98aliLQKAKzhOixpdWTCXfWe7Bc7U@vger.kernel.org
X-Gm-Message-State: AOJu0Yz36tq9Im5R60Kng2NULocFfPnkCrE+GMrmJsofyb3OTt7ogffz
	soBw6ypAxaReicaq1MGPT9KS+QJwrdtWBVwYl+MT42c4TUSNVLtijpUP
X-Gm-Gg: AZuq6aJe1JdadhPRPfOx8//Ttctw3CZtetmB0XpigMHfviWuBOsLKjZpeLrSUVJqSRx
	HBs1i4BwRHmpoCe8XKUwzyC9p6mJLifCIHaxS2tNtqU0xq88Yn58kPHt7D9xGv9SbbDAT/R+akV
	Mz+soLwubKcHUk+/tC+F5R0OhVP9q4/jDVcVT57pvxiQMu7V1adJ5V8/2nVl2+YZYAzqak3Ewg/
	FoIGACAwWbi3MFREkejY/lNnTAiZnvDhG77RMq51BqqnwbeUdcr7eqin/pwKM4eGSRiV1GZ1VvU
	0u5Ocqj8GC3XkhqUMQrTwqwt4/YMKpn18KBWHOiXegkua+J4g1ystVIqNmJKzsOrFdz9UMaY0br
	9GghETcNHhmwRoxE9B35X85ILCHtMiiXbpyGuiAkEwlhgavrati+8wjxH8FCTcLAKSnlGVprX8C
	kIMYxmDq8FCPjAmFpdgi4=
X-Received: by 2002:a05:600c:314f:b0:483:6d4e:9811 with SMTP id 5b1f17b1804b1-48373a73ec5mr119238475e9.31.1771145737543;
        Sun, 15 Feb 2026 00:55:37 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d78cfsm547211675e9.1.2026.02.15.00.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 00:55:37 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
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
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 0/4] Add support for mt8167 display blocks
Date: Sun, 15 Feb 2026 08:53:52 +0000
Message-ID: <cover.1771144723.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265609-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D829813E575
X-Rspamd-Action: no action

This series adds support for the display blocks on MediaTek mt8167.
Tested on Xiaomi Mi Smart Clock x04g.

The first patch just does some reordering of dts nodes with no other changes
as this makes later patches cleaner and easier to follow.

Luca Leonardo Scorcia (3):
  arm64: dts: mt8167: Reorder nodes according to mmio address
  dt-bindings: display: mediatek: Add compatibles for MediaTek mt8167
  arm64: dts: mediatek: mt8167: Add DRM nodes

Val Packett (1):
  gpu: drm: mediatek: ovl: add specific entry for mt8167

 .../display/mediatek/mediatek,aal.yaml        |   1 +
 .../display/mediatek/mediatek,ccorr.yaml      |   4 +-
 .../display/mediatek/mediatek,dither.yaml     |   1 +
 .../display/mediatek/mediatek,dsi.yaml        |   5 +-
 .../display/mediatek/mediatek,gamma.yaml      |   1 +
 .../display/mediatek/mediatek,ovl.yaml        |   1 +
 .../display/mediatek/mediatek,rdma.yaml       |   1 +
 .../display/mediatek/mediatek,wdma.yaml       |   4 +-
 .../bindings/phy/mediatek,dsi-phy.yaml        |   1 +
 arch/arm64/boot/dts/mediatek/mt8167.dtsi      | 450 ++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |  12 +
 11 files changed, 446 insertions(+), 35 deletions(-)

-- 
2.43.0


