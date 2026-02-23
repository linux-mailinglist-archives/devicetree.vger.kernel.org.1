Return-Path: <devicetree+bounces-267535-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCRPCyKBnGmLIgQAu9opvQ
	(envelope-from <devicetree+bounces-267535-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:32:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F45C179D3D
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:32:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6B6963072C9B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 963E3313E15;
	Mon, 23 Feb 2026 16:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XkDYEGMB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA5E313273
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 16:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771864008; cv=none; b=UDFrsPc//0jlA+c6lpZSe0PAAkAUWDAsIXA5N0SAkDDSJf9q1U67Yw07zzy1CUhGA99YrAA9qV5optZvnYeIFBHi9cAYrMS/fvY1kc9MlKIDo6rUjYq0FolMJhKjFJRr1BLtxfLu6BAwU4KFMEDcG7Nb7qUHxkRB1yqJ/zLdjps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771864008; c=relaxed/simple;
	bh=DCYmKYti+sjxVkKdNq0jVe1/F6m9dTsTGIkhitMSbPE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UMMX0fpQTDvGg1m3NzwNyx1/nCMRZFJoyihZd1BM9bEOEsjWuMRnIkZvHJJDHvPJFehbrr4Bv62iKjPBwY/C741eZYkjuvupBjx7Qktqo16jQKxciaebsGuLON9qA2ewuxMgrWlZLggqgHM3NRGUOwlhFDyW96XrLF2K0Mc996E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XkDYEGMB; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4362507f0bcso3223573f8f.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771864005; x=1772468805; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GsX5I8ekieUXCqSFWWV9OWjKFqWSLur0ZuBiwFVR/2E=;
        b=XkDYEGMBd3nx1ylfMpqxJLTa7o3ZDiP+6ejZbZ/0/Qyrfg8L55WIAXJXF6Q2sUTNQ9
         8ZxPnwZStfoRuvz418hzYhAZw4s+9bpjbWYkU7cGTpQsSjjSEmQbK5rwpr3TPe62uflZ
         oNGoltQJ+CX5TjNXBRXn3eB+q8SRJ7V0uqYtki0rcKTZn87KOjHK4QlglTZQZqUtxf7g
         bnfJFx1mMp4zc9QcOigF5UrZ0a2uHuPT94xtiJ0I5mTDI47pPVmipDLeWv9Qi7cB4Pk3
         0tO+VpV8I8sHoc/KYyQ0NVH1EpKkbEnQ21jgEWJ43P4MFy4j9uTPrkuu7QJFVHMFwAsz
         Ep/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771864005; x=1772468805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GsX5I8ekieUXCqSFWWV9OWjKFqWSLur0ZuBiwFVR/2E=;
        b=LaLFuebyi+aM1WEkHDxVeeI5AgjIOCWWWS/GgXA0RKYA00mvSnXknYGTJZH+iRDath
         WoIYMo/7L04VkY2pqgAxyuMNKyOgEKeS9wNdYEAVlQ0ouIepjBg+EP0bGOCIqeqChzDs
         0qPoLH/I0Z7d9l1+A4hDMYrOQOz9d8emve0FXkesPerANdUd7bA7j8UMm7lDNo0I0bbv
         i9cWQRCzgDJIHD2iBEAXG2jGgdyOs2htg2qIYiF4W1MCVSqWiR1fdS+b6Tqi11aJIzEJ
         hmDU8RswaeaGhooGjGGrUgL30XsNMMd99Cbl7qQQf0WxqSdZ7gdzcNQvdu06qK+o+tc8
         0Bjg==
X-Forwarded-Encrypted: i=1; AJvYcCUpg6pneIHikNFkxsR3v/BU0LHZVcp8HBzd+5vnu6wr5h725Xolzpwcxqb5yVX9T9ea8cN/hZRlZhde@vger.kernel.org
X-Gm-Message-State: AOJu0YyGWrLhXWhU4iHrbYRf4OcOpPijMz+9x55ONsLMYYrSDc2m94yB
	wE9vXkL0zF1zo8WHviyokNvZ4Ids8NTDHLpw2OX6Va5jllqRYcPFjA+D
X-Gm-Gg: ATEYQzwgpYVrudjXjRnOmw7YuwYMpwwtDYgYDxUTo+xa2ue1pPKMcu2oTBQf8+NZnEy
	XxFXQv+HV/dvVPVF3Es0B6zRO9ium/AG2gIqe726Q0umjMjEeq14RR/WROuqoGe5q3MOAJov4ON
	Zfd6vWhDe/s0San3z+cDO+dasL8UAgju1FmxuQ8g1kpNGvCs0/dmBDVAQ4NI66EU288jHgzoRnR
	V1ejrvDa2RxLy9tYtz10L82upL2vvLDQqd9C8GslPQ1Nb6Rcm1wxikbokCKGE1bZ+i4n0kySUy+
	7CiIP7h8Ay22i2MEknA3LIWV+qcwHkNGY4iqQ9L7FdmRHrh0jvkg04GIKyNAHRcRTMnO+/RE5VM
	3urSFTD4CSsuVWhW7CTuurqRN1GsFHvY2j0BPjmzRtHxhQcjyO0wGqe5d0UzvOJhks0KV0JHIdD
	zQSwKthbctCqmj9JxeF5c=
X-Received: by 2002:a5d:5886:0:b0:435:92c6:d556 with SMTP id ffacd0b85a97d-4396ffc46bfmr17665504f8f.16.1771864005236;
        Mon, 23 Feb 2026 08:26:45 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:44 -0800 (PST)
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
Subject: [PATCH v3 5/6] drm/mediatek: dsi: Add compatible for mt8167-dsi
Date: Mon, 23 Feb 2026 16:22:49 +0000
Message-ID: <2fbf179c03c61f527e2583f9df4f97f6aaf3297a.1771863641.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,linux.intel.com,suse.de,ffwll.ch,mediatek.com,linaro.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267535-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4F45C179D3D
X-Rspamd-Action: no action

The mt8167 DSI controller is fully compatible with the one found in
mt2701. Device tree documentation is already present upstream.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index af4871de9e4c..ad10e86b161d 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -1301,6 +1301,7 @@ static const struct mtk_dsi_driver_data mt8188_dsi_driver_data = {
 
 static const struct of_device_id mtk_dsi_of_match[] = {
 	{ .compatible = "mediatek,mt2701-dsi", .data = &mt2701_dsi_driver_data },
+	{ .compatible = "mediatek,mt8167-dsi", .data = &mt2701_dsi_driver_data },
 	{ .compatible = "mediatek,mt8173-dsi", .data = &mt8173_dsi_driver_data },
 	{ .compatible = "mediatek,mt8183-dsi", .data = &mt8183_dsi_driver_data },
 	{ .compatible = "mediatek,mt8186-dsi", .data = &mt8186_dsi_driver_data },
-- 
2.43.0


