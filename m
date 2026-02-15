Return-Path: <devicetree+bounces-265613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHRuND2KkWnkjgEAu9opvQ
	(envelope-from <devicetree+bounces-265613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 09:56:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F2F13E592
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 09:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BDDA630055A7
	for <lists+devicetree@lfdr.de>; Sun, 15 Feb 2026 08:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 624232D2483;
	Sun, 15 Feb 2026 08:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="av8h30GG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04ADF2D5926
	for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 08:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771145749; cv=none; b=YHGJrhVfRzgLRhq38oAqbhhC+SdplIcJ8VvSquZ3Gunc4BZQtT3+mLxum0YzRwPBr1qP97XP7n41RsXYFoC7QnnFa2QwjN9nK5ajb70qtHn6oH8j9BcWBKh3iEkoyxCEOWSPlqEynQoRKD+B38QQA3X5nHelesVViApQH/zsafk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771145749; c=relaxed/simple;
	bh=6eZpIZ1mf5KB22ZXb6Ymm1IyaMffdDDS89O69+wRmTQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p/ZJUWcQn5pPrghE/vDETk3+MOajLXscUaQ+otxgVkGTW8ClF1CrF4OyPMSTnXRJWipXcfQnvV2pAJRfXdlT+eWW/g5pw9+5YEtMuxaCKCAq1NyupiO7E9/u8k62CnPRlPhYhiMXGCnQgjIgZpc4vW20EfTIcpkZ6TzXxtSTH1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=av8h30GG; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-4362507f0feso1442277f8f.0
        for <devicetree@vger.kernel.org>; Sun, 15 Feb 2026 00:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771145746; x=1771750546; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xn0j1K2MWkt0qaJPtZ+aFAPD3v2FfobPnhX1+9/1/mc=;
        b=av8h30GGBA8f5LOU/aBra86XQhRM1HN5dtNX8HyZDUDD9UWMS6/WQNBsAPzqFn8m0c
         Px+EVTh3IwRApnTdcsPZ973rOKc93g8vdP+6aGp+AO5qmRpnzrb2tLUHnmwwyAHmJBuW
         rljAOlAUm3XOLNjDXJuQfzzdV1pFzIqoWPrn3ugusZz2DmG+uxYqmYx3PwEw4HEh3lsX
         mxBUl4kxbHoKXcuqsn2NrkR495mvxSHrV5DtimEGHocQZ4yKy80rjkZ4Gn8f9ImxGXXY
         vI/VlsJbg1EwbHl9onIhv/2EPMsU+u4CBYEUklu00zEMLAKxTRU/EMMl+p8KKuolhA/b
         K7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771145746; x=1771750546;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xn0j1K2MWkt0qaJPtZ+aFAPD3v2FfobPnhX1+9/1/mc=;
        b=Z+GasKBzWKx7yqRFAJ1Rr7WVRezGSzFZJP4r2/yGoTu1llzOru3SozV+hz0ngFN8n2
         6ehGZs9hb/ykcTklUIwMvIFwPE84u3D75pb0lSvAXMBFFOM01EOFBwnR0RvnjO2FrkX5
         yfVH11Qoh2ErUm8ttMVECKcGjgxaArWtZ12CtMSfwYvsUq/nmruPraZsk5SeD7tK59QF
         FNsFlK+dMkIAiFfYDbuCM8gRP+I6fp4VtbLmkdBtL5T1nDIBk/trlL7L8lG2qgIFpiLB
         N1QlTMvUIxi0DGQSE2sKRhT72Mp0hKJkpvNhR2sMG3VYnzWERwn+1msYJYpjG8Oqg2DO
         b3/A==
X-Forwarded-Encrypted: i=1; AJvYcCXWVuJZ15neu4BErvIOq1eMi3BZWBf9ignwtkQB+itcAYYlAJdQGZNuAeKcJ5SXkRNM2TPQZXYB4OY0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/1+0eslLhG2ImH82nDzE5PRryJ1KBNGJOt33t7/v57WsTt9BK
	/FQCmjDKLKV5n/4aJnI1gOU6Kq2A8ipEA6wP58LHvf47B/5gYixJdaL9
X-Gm-Gg: AZuq6aIuQgcrwGAYAMONQVfk8VAcTWoqi04sodyOY/jYdv1yOWP/C5U7l8ol8BbxPPy
	ge2oTrwVUv02z2CKsjhIc7EQ9WanCx1G/17YjkvmGT0bKyRvFOX6Tf2Ng7WFgACri3+0BH1PE3z
	cn5o0CAgsiaq9ODU0FxLQ565EXG6iz/RbpNy3UzF/MQAkJLwtgMdR1JXMsPaSA6H+AFn33H/Dv+
	73AXQpUGRpP4+psFogZcSDSnOsI489qwmDtPpxvXWfZ7wGjyJuHM3q9Tq04Kje1N8zmdksqwTga
	moLLAh8pjREn5dF1tL49Byi15XPK1rq4bBviDIukU7NM78Uv8jOanoUQ7smeLZViMKD1x3MSAf8
	qeQ/9wHHWUbr+zy68oA8b80nek0YzBxZy8+7hz5HsYu0M0frDveReK1t4qjLzYcRBsRAd8mVMcR
	3BvmwqwobVDMMjmvpxRrY=
X-Received: by 2002:a05:600c:870b:b0:483:6f37:1b56 with SMTP id 5b1f17b1804b1-48371051b15mr146178135e9.10.1771145746214;
        Sun, 15 Feb 2026 00:55:46 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d78cfsm547211675e9.1.2026.02.15.00.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 00:55:45 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Val Packett <val@packett.cool>,
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
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 4/4] gpu: drm: mediatek: ovl: add specific entry for mt8167
Date: Sun, 15 Feb 2026 08:53:56 +0000
Message-ID: <b440a9c1972dedc4cfbf29a84366e635b0d7d984.1771144723.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771144723.git.l.scorcia@gmail.com>
References: <cover.1771144723.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265613-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,packett.cool,kernel.org,pengutronix.de,linux.intel.com,suse.de,ffwll.ch,mediatek.com,linaro.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 88F2F13E592
X-Rspamd-Action: no action

From: Val Packett <val@packett.cool>

While this configuration is otherwise identical to mt8173, according
to Android kernel sources, this SoC does need smi_id_en.

Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index e0236353d499..97a899e4bd99 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -671,6 +671,16 @@ static const struct mtk_disp_ovl_data mt2701_ovl_driver_data = {
 	.num_formats = ARRAY_SIZE(mt8173_formats),
 };
 
+static const struct mtk_disp_ovl_data mt8167_ovl_driver_data = {
+	.addr = DISP_REG_OVL_ADDR_MT8173,
+	.gmc_bits = 8,
+	.layer_nr = 4,
+	.fmt_rgb565_is_0 = true,
+	.smi_id_en = true,
+	.formats = mt8173_formats,
+	.num_formats = ARRAY_SIZE(mt8173_formats),
+};
+
 static const struct mtk_disp_ovl_data mt8173_ovl_driver_data = {
 	.addr = DISP_REG_OVL_ADDR_MT8173,
 	.gmc_bits = 8,
@@ -742,6 +752,8 @@ static const struct mtk_disp_ovl_data mt8195_ovl_driver_data = {
 static const struct of_device_id mtk_disp_ovl_driver_dt_match[] = {
 	{ .compatible = "mediatek,mt2701-disp-ovl",
 	  .data = &mt2701_ovl_driver_data},
+	{ .compatible = "mediatek,mt8167-disp-ovl",
+	  .data = &mt8167_ovl_driver_data},
 	{ .compatible = "mediatek,mt8173-disp-ovl",
 	  .data = &mt8173_ovl_driver_data},
 	{ .compatible = "mediatek,mt8183-disp-ovl",
-- 
2.43.0


