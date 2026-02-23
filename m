Return-Path: <devicetree+bounces-267530-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HaVH75/nGmLIgQAu9opvQ
	(envelope-from <devicetree+bounces-267530-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:26:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFB2179B8A
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:26:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AE8A3300D1E5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BCCE30F92D;
	Mon, 23 Feb 2026 16:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HNhaeEzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC5C19ABC6
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 16:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771863995; cv=none; b=ipVVdkk8k/4BKzWJc3Jlim8Wj2tgrZFya0rYHmVPv7c7EJ1X5Ocin7kxBclWzLP7JSYGwUIIbwcpe86f/q1QZYYx7yMU028WWssk4zwZuUrWkLA6cmc4w8muvxMrKa+538G7UmEftyc1vTnAuwCiQxiKqfFMydKAdECIUuWzGX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771863995; c=relaxed/simple;
	bh=7FN2B9dS3ONhNFWzNo+UxUELB4BJoj5IYF7MQN1R6UY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QjlYM5IU6mAp1qTK5vF2usTw645o3OfvFo5gecCF6D2nNJXqgwFFj4t73eaTlQKY8YXdBfCOmAPgCIc5NoaJqK7C9ECBUO2CozsyTNEmZH0Zengs2g/0k/hmHPY9JURYiRDrWLogBd/jEOIOnoEFRuqA/rgq218u5rGqFtvIL4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HNhaeEzJ; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-436309f1ad7so3403923f8f.3
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:26:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771863992; x=1772468792; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GPabK+sR6tt9Q+NXwIlbFeumv2ta8pwtwfHRnJheAtg=;
        b=HNhaeEzJn9kf0Bj9QZuDan563GnqxyxNLHxBkHzDr93ZGLoA2wVPD0/GirMVA9hgE9
         aFghZ3Yb/Ef3lgZlGmi7FujNnlUrNELLRPJ23PrTGmH/G5s6vQfm+0wH6PdVkRoW1sYJ
         7X5FmXOEbZqfKboUueX7c05DQiJ31c+HC16hXGLH1YunM49vSEP1ZtDHUyh0LwYzXFwj
         v4UyGoRXMXlfKtsAWbVy3/npYzxbxwkstmL/25JlJFJX21U2I7klnMDzuEtzkSC/JgrI
         aMO36aYJLwjdYsL9az7uXuVrheI4NTEpWplr49HJ75yxRA9xPsgFhBjmsoMpgHE4V3RD
         B8Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771863992; x=1772468792;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GPabK+sR6tt9Q+NXwIlbFeumv2ta8pwtwfHRnJheAtg=;
        b=sF4ZHtAtEMDOHbkQ3k6NXhSeqHZLyNYdvHK/i9AaWbU8w3rhqYfkF4Ds+XV9Rdx+XE
         YSyunYmvkGghU7P4E0wEYzHwnAr9fxVyEZa6aH4zuSKJOquw1TtBoYVlYL+HIs2B9ROy
         BQLnDfk0dPKcCoIHs6ToWZ9bPq93WxW4xb+O0LGN7ygCvYCtJveM1nCNtONf0LZ7mZmV
         lyjGIQAjTqI6o1kI720efnh5YxvVdCczr1gvUhaT+rZ7yQxeCnAbWX7J00WoREumgrsE
         c9LdFbalpQkZeCC/UNLP1jnfUXCoX1MVhTag0bte3I/moDT5Tm0pYU/FO++Zvr0HxoAj
         4xVg==
X-Forwarded-Encrypted: i=1; AJvYcCWNaeOk+E9IGjUD+lKHDfHqBi6rMNIS7bCX6jUZhQkxQLOITadilkOVKKce2ml5wKSerUQ1SA7ClgfU@vger.kernel.org
X-Gm-Message-State: AOJu0YxOPgmcTU5jLqrAd3mHC/ucf7ZK/RDi3gMqWSQKZ+iNU6e8FnOu
	FnAkj+5NCP9S7qB+jrqONAQ8z61IOXNw/k2qVTGReSCWtKZVAbksbPH35FI4eA==
X-Gm-Gg: ATEYQzwKuP59/yI7tNjT9NgNe3DKIUQPzvdPGhg548NbdH/SeoAs/C9LessoYarP8dv
	pXLoEFcJQPWpdZ6cP+ZVJbNKJ1zwt7+OsQqKY4R6FGu7Di/Hhpxd15l1Rphs8NUFNDljBWbIz6v
	0/s/9y1WUFwGLpFr2SBS0OugM4xMVGGbvyCFduFgWb8Lr5G1VLGc8T+5rQ9lJNB/80fW8pMNEEP
	Pet4VXBQj5ggnrBNkBPPsMu4YjUgZO+PjJO+QhpmCVnzbxSIS9dlS0vlDPxRIMM3FhFjObx25vc
	ZbExcrql0BwnJahtwLsgAlaB9jVBf4poWjYyXC9CoxAuzb1q+41gMI7vil3zYpyMcLXZrhHoVG6
	YVoywWcaero8kd9n1Va1z4P+h66K7gwFDtooAbMc8nSheiWAaSm9EhpGlct3V23BHb9tTBZJRbc
	4NyOW3uOfLRFugScy9KiE=
X-Received: by 2002:a05:6000:40cd:b0:437:719d:a753 with SMTP id ffacd0b85a97d-4396f156a40mr16159891f8f.11.1771863992210;
        Mon, 23 Feb 2026 08:26:32 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:31 -0800 (PST)
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
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 0/6] Add support for mt8167 display blocks
Date: Mon, 23 Feb 2026 16:22:44 +0000
Message-ID: <cover.1771863641.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,linux.intel.com,suse.de,ffwll.ch,mediatek.com,linaro.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267530-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4FFB2179B8A
X-Rspamd-Action: no action

This series adds support for the display blocks on MediaTek mt8167.
Tested on Xiaomi Mi Smart Clock x04g.

The first patch just does some reordering of dts nodes with no other
changes as this makes later patches cleaner and easier to follow.

v3:
 - Added mt8167-dsi compatible to driver instead of changing the binding;
 - Resolved patch formatting issues.

v2:
 - Separate patch for mediatek,dsi-phy binding;
 - Separate patch for mt8167-dsi binding;
 - Simplified OF graph endpoints in mt8167.dtsi.

Luca Leonardo Scorcia (5):
  arm64: dts: mt8167: Reorder nodes according to mmio address
  dt-bindings: display: mediatek: Add compatibles for MediaTek mt8167
  dt-bindings: phy: mediatek,dsi-phy: Add support for mt8167
  arm64: dts: mediatek: mt8167: Add DRM nodes
  drm/mediatek: dsi: Add compatible for mt8167-dsi

Val Packett (1):
  gpu: drm: mediatek: ovl: add specific entry for mt8167

 .../display/mediatek/mediatek,aal.yaml        |   1 +
 .../display/mediatek/mediatek,ccorr.yaml      |   4 +-
 .../display/mediatek/mediatek,dither.yaml     |   1 +
 .../display/mediatek/mediatek,gamma.yaml      |   1 +
 .../display/mediatek/mediatek,ovl.yaml        |   1 +
 .../display/mediatek/mediatek,rdma.yaml       |   1 +
 .../display/mediatek/mediatek,wdma.yaml       |   4 +-
 .../bindings/phy/mediatek,dsi-phy.yaml        |   1 +
 arch/arm64/boot/dts/mediatek/mt8167.dtsi      | 381 ++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |  12 +
 drivers/gpu/drm/mediatek/mtk_dsi.c            |   1 +
 11 files changed, 374 insertions(+), 34 deletions(-)

-- 
2.43.0


