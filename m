Return-Path: <devicetree+bounces-267536-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LIVCUKBnGmLIgQAu9opvQ
	(envelope-from <devicetree+bounces-267536-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:33:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E27179D67
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:33:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 210093079C2B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AFA3314A77;
	Mon, 23 Feb 2026 16:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XxS4aHcN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6C23101D4
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 16:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771864010; cv=none; b=aXuotsJNvK7Dfi3x0hYfilR6+Y/UioWOGqRbW94hweDO5T0ZuMbxJnLxNAdU8it7k8NOHkomwl0fdSDXmVHaMb+D5ujzYo24nMON3+h1lSCWS4WVs977R0t32Yh1/yKtp5lPXWlmeUz5sh8WHU6k+QjPHQxUNI7cbLCMSncXBQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771864010; c=relaxed/simple;
	bh=71P2FjwwqecKqK84t2hIUigsb02jrjS6frt8mZgy06E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aFzLBc6K7iFnN/IT2bc4F9rDD/mPYA5lKYq39ps6wUA6xZjZXLWTMTbHwSMvP44/5XDBv+jC9HL1A4HbAoVCsXg0ZvNSj5bCwpzkZarGjst8HBJq/gLFnZgQ4g3Us1tsRvaTCYpqqsteZ9I7fx8FAR9S8OhHrv9pV7vHZ6EkQlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XxS4aHcN; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4376acce52eso2826356f8f.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771864007; x=1772468807; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87mY3bGihT8b8D/6Pcxz8+DKkw+N82+sh9Y6maoLJGk=;
        b=XxS4aHcNjANKc3GQYQt3YjYeRajinr5oWvpB2JHJXOK/IJaLCoFsl5mHotuy3bRLt4
         bztwZqRtO5g+kOAZGYA0Oz6sBbTHs5UF1xYCIalkUxqZyI0bZz144XCMi1BA+ivvNz1B
         Eygahrhc3jCSwwyWJSkL6fBQ46bJm/Hb4UP1mhLiWdaXyYuOZmTaBq9uC2ImXl/Afo+c
         AfZGJTaAT0/4wYxaCTqudg+19FJMXKIBrE5lp1ADXNV6OsaR0xEXkaR0/L4OXlOeqNe6
         g3F6GkldHVTsn4Rx6fIlmxm0NuMAkglmuSTLZxqQiE8Tg38oCHKs7E1EX8BFsxM/KiOl
         dnTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771864007; x=1772468807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=87mY3bGihT8b8D/6Pcxz8+DKkw+N82+sh9Y6maoLJGk=;
        b=oecZsc44iruCTCPk6zGnnRcCpf2RUUhKaR1q//A6UpciYs3N8Cv2w9TvgKT8xQYuyW
         UZmuV/Nwgz6ep7j0OPoX2t5c/dlT6aMnAGvpOOEMX3gLjXn01Xgm7jqW+vrPbCcDeAzI
         ZQ+chOaqXwML/YfTnhLG8RUw+n5AUynws9C9PmCc995ozvT0syqAqfkWg6EwOUDRAtlk
         VmzSM3QY5viGgPIN96XQpPZGlk1Eys80rBvGWIypQdTGA1RbmPDsmz7jf2qm8kF+yAls
         Odi8Aal2ONvLOLKGqQP30Bx8LYgIbgM/slGNAKmoB7PeokGXWIW5z0ZuI4N5t/NfjvC/
         uiIw==
X-Forwarded-Encrypted: i=1; AJvYcCVAMHfOhvFASRCITyKohveMagDjOykWX8nZgTvbuL1M3vD/hQtyXPYs++K+JzJH3GKSccoF1cqf0ZoF@vger.kernel.org
X-Gm-Message-State: AOJu0YzeY2vd1VkmlOchIGwGRgbgiCka/TUMxnFeK3l2qIE6MmS3e5rA
	e7ndOQ2PaLCMq9yF7bsYGSrdHpdxJPziIy4YLZsg7lEesx2KfgQ8Zpqp
X-Gm-Gg: ATEYQzwvwRyu5YJU8dDqex5/LbfmtuLOyQsAxtApoerKnFB+jQ+Cyzvbln1bluUYbEZ
	Xacv53oL52P2YTwYgmK6Wl5n1jX9baEzTOD0upmG7Y3V8jbeduhl51rO1yNO3W0Sj9/CIs3ivaY
	KqRjogOWDetq1SG2M4u8Ol0NdSoHr7YQkWXG/uAeOKHWTSs1iHmqP+yZVHSAEbZlO2GD6WyGCF8
	ZJhxttW7fp1EU/to5GusonLu102L/yk5nw3QDUtete9fR64oUKjLwll+NX26F61UeULRVMK4qV8
	KVRZ9m8hmvPLUfd7m3BCTGHvc/zEXkoioCWI7Y0FsecsUO3NYaZ2czetDjoPG49Hebejg+MCNyb
	vplkSCAyXret5h+tb38ASKUAx/cvBqt/c73Wnxj3noqp4E+XaY0iRgxI6c6kGQX0YEFPgGplaiF
	jwdY/iTTe09cGyvqAdbZQ=
X-Received: by 2002:a05:6000:2dc7:b0:436:1a24:df81 with SMTP id ffacd0b85a97d-4396f15416cmr16926092f8f.2.1771864007344;
        Mon, 23 Feb 2026 08:26:47 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:46 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Val Packett <val@packett.cool>,
	Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
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
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 6/6] gpu: drm: mediatek: ovl: add specific entry for mt8167
Date: Mon, 23 Feb 2026 16:22:50 +0000
Message-ID: <5f880f1334aa93184afee3e36132ca42628821fb.1771863641.git.l.scorcia@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[packett.cool,gmail.com,collabora.com,kernel.org,pengutronix.de,linux.intel.com,suse.de,ffwll.ch,mediatek.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267536-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,packett.cool:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 48E27179D67
X-Rspamd-Action: no action

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


