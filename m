Return-Path: <devicetree+bounces-265884-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OB9pCAtFk2kP3AEAu9opvQ
	(envelope-from <devicetree+bounces-265884-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:25:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B06341461EF
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:25:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 927ED301062F
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BE79333755;
	Mon, 16 Feb 2026 16:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gui/J8+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8A6333424
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 16:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771259110; cv=none; b=cRQsfZ8z4298Wtf5HDpSXC3SQXAtRgRIniuilNo8tzvO/birU3sIuHjnnS18oRZ8yxa4+o2udoLF/C2GptfaZXESWpe2JrHhJp83DniXo/VTuYTbHPcODIUeYI2iuDi4i6wGfgIkL0oWorRRlDyPqbJIoX76r4wSTvHbNLnssR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771259110; c=relaxed/simple;
	bh=/th+y4Uyi6Xeei9iUDMsd+diwbN6a4W0g3Mq5uekSFk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=es092ZmcQp8LOKtCREoFPlFEdktW+dIwQcZ6oWALhHpjn5voeOSOZCaHAvXOGVQ3s+3i1jP8sQWWWVOIyc8maybb2Hv/p2OKZeeT2T48o6BZdwsnZuOYxAo6V2ZVWk6MLsl6RrNVtiI1VknKBqsB8vZYgH5ptAu2ppgmyDnIh68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gui/J8+N; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-437711e9195so2347364f8f.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771259104; x=1771863904; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tqCD0BNLW8XMq70VZYZvuBAvYG0v4co2Px4uvRfSTgE=;
        b=gui/J8+NIYrggW4IC/+z7ndxkd/t8oRlvAXJFb0PrtSDUduWAlwUiFadFJ7cVB0TsT
         4VWeUMH+z9XqiD9nya7OZeh0U/zCRJCbKrs8j0XAZbtR2SZ6lg35YC23smP3AaLyhLCZ
         MX0F9JnIq+o26nM8HxX1kSzjKECUTzp6gHBiIbInsfKm9UKWQEtndAFOOaJ961Wla1z4
         PO++jF+TnHIhuZaklji+pHmZDUkn0lg0jnrZwnpTL8ruinosn2FEne94OPk2HwBLPjaK
         U6baetZ7RlXEwh3hVWq9YIYFR8btuyIrUNsCv25Q4nzrTrrIgBcZkB0hIuFYDJ7Irgmx
         MtqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771259104; x=1771863904;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tqCD0BNLW8XMq70VZYZvuBAvYG0v4co2Px4uvRfSTgE=;
        b=o6mXRR3NqH5PhcyS03czAgPCHF3wRIBYr2QRBh21MPKjFbZq+ddQFRMaOJ5uuw4PxH
         uRk7LuVXvsTAKnH6G6Vl/ntyBQmrQyVj6sewIMudYyKdImleF4CpT506/qXkZd6WTsjd
         JWdB23SL2NsBkbNhFkBG0f7vzKPQunn46TBEhZFkOjwj/PnpOnbq7q66j1gO4qYoRSd9
         jAnh1QIkZY31snh17mxlVwwiSIx8ceU/MhMdTsuu+pLNTG3X0dZPqAsND1Zb2kpH9W/T
         vIIpTcz3m0EtK8ixchtCYXHD7X3uaASZ1q3ueb0B/4e1e2BhfMhXYwiVgmoHEEFhO6fK
         ZZcA==
X-Forwarded-Encrypted: i=1; AJvYcCUF5OAe2V+9fX/VeYmDlmTHSH313ZC/sog6srSKqTdkDycS4IydzXbCO8wd2YdgByrOtTh0Q9VSTA1s@vger.kernel.org
X-Gm-Message-State: AOJu0YwM/eQK77tVRDaHLfwFEq/F3vVWSnHIfA1NWL/yzpMJS+2ULbnR
	zmVyLJidaD7m/MgbmN4z89HEpnO6IVEj1GpFPBAyQh+qqlwpu4j6H3dw
X-Gm-Gg: AZuq6aIZPV6pWYBv35ZR9CDC+SncewQDKPd6M3ioWD+Spoa7WNqOTMBgLMAeoZC4yLH
	NjAe6+XWydCp1i5A0G9Pq412ZeeRupiYjqHZrkIbUUyInh2uSg9iY51qBBujQqJNjxWw/C/1AOc
	PFRvKWg5nt3vSx3rLh7b99HlHtX7v91824UeAtJB+NwXJ+HueytgHlNB1JMoP+cONqa7fL8QPhS
	U/Wa2fG+wvbOLkM/ZNnXd+dqkTCkQF9uhnyaaRbW6eWA6Jpsruufghb2dSq318Wgm6S6MPxTlGS
	5vzobdHZRP/JoxTVTAE6KorVtkbJlgDdEBsGc6R1AE/WcI+PyMDjcLYUnNsHxvjZ499Mrs6buzi
	oz0+oXgcZ/mp/AFRK/JWNVsHWp43Gtq1YwCf14ik1/Yva6NTwkEebN031MW8K0kzBPtp30dQRjS
	+oXwtCaCYSdjm2BncWccc=
X-Received: by 2002:a05:6000:238a:b0:437:6c23:3465 with SMTP id ffacd0b85a97d-43796ac1fc8mr18185802f8f.16.1771259103790;
        Mon, 16 Feb 2026 08:25:03 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a6desm28775962f8f.10.2026.02.16.08.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:25:03 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
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
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 6/6] gpu: drm: mediatek: ovl: add specific entry for mt8167
Date: Mon, 16 Feb 2026 16:22:17 +0000
Message-ID: <ee6bb10f8beb4a9d0d2bf49d5b053c7395ad6b50.1771258407.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265884-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[packett.cool,gmail.com,collabora.com,kernel.org,pengutronix.de,ffwll.ch,linux.intel.com,suse.de,mediatek.com,linaro.org,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:email,packett.cool:email]
X-Rspamd-Queue-Id: B06341461EF
X-Rspamd-Action: no action

From: Val Packett <val@packett.cool>

From: Val Packett <val@packett.cool>

While this configuration is otherwise identical to mt8173, according
to Android kernel sources, this SoC does need smi_id_en.

Signed-off-by: Val Packett <val@packett.cool>
Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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


