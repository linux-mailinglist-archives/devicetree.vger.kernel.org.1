Return-Path: <devicetree+bounces-265878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJP8Jq9Fk2l83AEAu9opvQ
	(envelope-from <devicetree+bounces-265878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:28:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 025DF1462C6
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:28:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C80A302AC3B
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21016332EA5;
	Mon, 16 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ECfZb5yq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06733328E7
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771259093; cv=none; b=BEK/RK58Qa8gxVoGmFxcVxy6ZmEgT1Akobu9GnXe6NpN2jiHKzwqA/b1x6iLNMgSxalsznmg7gDIlVT8XSk7vHZZBmyQ2FYgYUo7j1DIulIgRcVYn0xE5sZcf1I9kOlIW+Ccg/CC29K21PcO4y1TdnoKVIo3HrhgxCC4nn6t91U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771259093; c=relaxed/simple;
	bh=7SKrId/QHyVf5t6Y9oYP3Y9lo0Gw0hVIOGht55gyshY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MpenSWy3QFX9UjNMq2CkG6QIB0+kd5SH+7t3WnEFK6VMkeZGp3RLSzMLv9730h/6MX9EEyzIUYrXG+w0+vKrHGY0Blta4ipHCIw3F98S5FwLG69XVujiotkiPqpVJKxp04LIg8ubt51nErw4k3kI0C1JCoQwEYqStmNncfJkmbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ECfZb5yq; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4362c635319so3372203f8f.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771259090; x=1771863890; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eFUae8M607uXIOUb6KuR+f1ZcnqADfRg4QxjDLkY0MQ=;
        b=ECfZb5yqJeF3/0j7fTStuk/qJoIQJ44Rkk3naKVsU0g70DrunSU+L8ZajGzHtj6qXZ
         s97jSLhWJZCI1/dUtrAVLtrEAan41h5QZyGYtfTrXUDReR+cUvGSMNJq0jgcjxcTeezn
         GZW0SqOVxVrpx/cIM/CdPJASnKbfBHpNwjR5TQNH4WxwfrXpIquthKW5wCS7RjAaf6Mx
         cLeMMvPn/NRzGwqfrcmDTlX7DF9ujse3cXkX6Uw0Aty+jsr/dYAAexbYVZEbq+OSuV76
         VjO2OfWlC6b/lrBPDFkGqy59lvjPXmYwwPbec5YEl9ADgyKA6h1x++s8E7WjOecxjV0H
         +4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771259090; x=1771863890;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eFUae8M607uXIOUb6KuR+f1ZcnqADfRg4QxjDLkY0MQ=;
        b=jB60FQ0m4EjN4YXi92TPX3oLcwEEBxAzDpE6cEhBj1ph+Gl7+EajJCyWt0XdRn7fhx
         LwmPM6IxDASHBw8JZPQTtI8f4U73QWncuZw+q6FLWeRTVqREtgy3yTRpQwZ+UPdACIOE
         0h1cCcdrLEx0aXFhuZ/a1YHUgJM+G/B/j9UAd8P9cClsZHZx+StAnhFM3UeT/hGlhCqX
         FBit68QGD866h039/GlzsO21QThWdo7rrDCL3gz4nq8ee9Pd6hBLr1Mr8VbuOxxeZE++
         +pXjBnk0XtXe4XQjWSfsOLlVjN+ZLLt+5f8mSLFyt6kHedfseXenyssxCWAaxZ9N+08O
         cl9w==
X-Forwarded-Encrypted: i=1; AJvYcCXObWx+9ZUr0ozA1zYNY/xyETQd4gzynfXSDBOm8r5raLRBxTvxFZ3HGBDLjaluSmeSbO73D+uiIcvr@vger.kernel.org
X-Gm-Message-State: AOJu0Yyoj1nnyhYu4bzMPYxO8UD5qAsn4iXEqGHxOd4M6hdDPF3rbrK1
	f8DKq6UM3JvZUlW5P5BbYeMhGGkqQ7AjqLHRBz77EM7Wq+Spj7B8kAzZ
X-Gm-Gg: AZuq6aJurNkwFSZR3WZi9e+ytNK7Yi7E66kwyDFGUga/20PHqxb84tMS1uONLOC6Esq
	EtKEV0Iva4wV1qF6RnTiHyIfzYLDnoVOEAwG3NgUG0ZHvY7gSZ8JTLnOocCHgeO7JeC15Y+1/gp
	FvWOd+SWprTVde1trfcc9/kDl5WmAbjO29dsGlMDAPkKx3Yg+FiDvPSNxedr++WFiQQRwoossMP
	XaUlGNIEWF/K8aQGUcSp6S8uaKmcZcDQxyAVOmOqHY04Ub5b8AezxnvY1XcNRYdI7XyFloyb2rI
	W96QD/w6Zv83hPeSW+Y+v1eDfYLNhyvMrFjsYLntk43gUMxZtLQXKYSMsJxLhVjsKcGQb1XkPdx
	Q5HBhJvHl84B6URGS3a2c5XuNkc+J7Y4IF4fWxXfLcn7FD/L04j92J9Nvlicx6mAZZnyW5GlUfo
	pHIiYhg8BhJJTutfcyOto=
X-Received: by 2002:a05:6000:2501:b0:435:e460:235b with SMTP id ffacd0b85a97d-4379795572emr15102960f8f.59.1771259089859;
        Mon, 16 Feb 2026 08:24:49 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a6desm28775962f8f.10.2026.02.16.08.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:24:49 -0800 (PST)
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
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 0/6] Add support for mt8167 display blocks
Date: Mon, 16 Feb 2026 16:22:11 +0000
Message-ID: <cover.1771258407.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265878-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,collabora.com,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
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
X-Rspamd-Queue-Id: 025DF1462C6
X-Rspamd-Action: no action

This series adds support for the display blocks on MediaTek mt8167.
Tested on Xiaomi Mi Smart Clock x04g.

The first patch just does some reordering of dts nodes with no other changes
as this makes later patches cleaner and easier to follow.

v2:
 - Separate patch for mediatek,dsi-phy binding;
 - Separate patch for mt8167-dsi binding;
 - Simplified OF graph endpoints in mt8167.dtsi.

Luca Leonardo Scorcia (5):
  arm64: dts: mt8167: Reorder nodes according to mmio address
  dt-bindings: display: mediatek: Add compatibles for MediaTek mt8167
  dt-bindings: display: mediatek: Correct compatibility for mt8167-dsi
  dt-bindings: phy: mediatek,dsi-phy: Add support for mt8167
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
 arch/arm64/boot/dts/mediatek/mt8167.dtsi      | 381 ++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |  12 +
 11 files changed, 377 insertions(+), 35 deletions(-)

-- 
2.43.0


