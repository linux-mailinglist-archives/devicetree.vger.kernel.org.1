Return-Path: <devicetree+bounces-22566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D005B808274
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:03:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 774781F21876
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 08:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E3DC1E49F;
	Thu,  7 Dec 2023 08:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="G8VAugyK"
X-Original-To: devicetree@vger.kernel.org
Received: from m12.mail.163.com (m12.mail.163.com [220.181.12.196])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id DA2F8D73;
	Thu,  7 Dec 2023 00:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=7UFyQ
	nQVsJKLgpuqB6gs/J3SwmQuFN9FeaP3Q+gt1XU=; b=G8VAugyK9D+MyPFxsb/wp
	Etmzjr3j3nPcTOMUg64aQaK0CpQ320uNuGCy/frwAIIV8DyF4TgI3XSQBaJkXbUR
	wqyzvd9k24Xfn0ERbQtMqg6KWbTZEbawRCl31jbMmeoX3cbVK6WtTsUbOmWqo6Tp
	+KmOa9dhKw8fgt9lyT2EH4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-0 (Coremail) with SMTP id _____wBn7wEDfHFlxFycEw--.44530S2;
	Thu, 07 Dec 2023 16:02:15 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v4 13/17] drm/rockchip: vop2: rename VOP_FEATURE_OUTPUT_10BIT to VOP2_VP_FEATURE_OUTPUT_10BIT
Date: Thu,  7 Dec 2023 16:02:10 +0800
Message-Id: <20231207080210.652594-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207075906.651771-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wBn7wEDfHFlxFycEw--.44530S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAF48CF4UCw4DAry7WFy3Jwb_yoW5ury7pa
	9xAryjvrW8Cr4aqw4DXFZxZFs0y3ZxCayIka17K3W7JFy3Kr1DWFsF93W8Ary3Jry7uFWY
	krsrX34UJF42qr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jw4SOUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgk-XmVOA0W9dgAAsc

From: Andy Yan <andy.yan@rock-chips.com>

VOP2 has multiple independent video ports with different
feature, so rename VOP_FEATURE_OUTPUT_10BIT to
VOP2_VP_FEATURE_OUTPUT_10BIT for more clearly meaning.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 2 +-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 8 ++++----
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index edca7723335f..2b996f1a25ad 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1995,7 +1995,7 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 		return;
 
 	if (vcstate->output_mode == ROCKCHIP_OUT_MODE_AAAA &&
-	    !(vp_data->feature & VOP_FEATURE_OUTPUT_10BIT))
+	    !(vp_data->feature & VOP2_VP_FEATURE_OUTPUT_10BIT))
 		out_mode = ROCKCHIP_OUT_MODE_P888;
 	else
 		out_mode = vcstate->output_mode;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 2763e54350a9..615a16196aff 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -11,7 +11,7 @@
 #include <drm/drm_modes.h>
 #include "rockchip_drm_vop.h"
 
-#define VOP_FEATURE_OUTPUT_10BIT        BIT(0)
+#define VOP2_VP_FEATURE_OUTPUT_10BIT        BIT(0)
 
 #define VOP2_FEATURE_HAS_SYS_GRF	BIT(0)
 #define VOP2_FEATURE_HAS_VO0_GRF	BIT(1)
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 275d265891db..48170694ac6b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -136,7 +136,7 @@ static const uint64_t format_modifiers_afbc[] = {
 static const struct vop2_video_port_data rk3568_vop_video_ports[] = {
 	{
 		.id = 0,
-		.feature = VOP_FEATURE_OUTPUT_10BIT,
+		.feature = VOP2_VP_FEATURE_OUTPUT_10BIT,
 		.gamma_lut_len = 1024,
 		.cubic_lut_len = 9 * 9 * 9,
 		.max_output = { 4096, 2304 },
@@ -263,7 +263,7 @@ static const struct vop2_win_data rk3568_vop_win_data[] = {
 static const struct vop2_video_port_data rk3588_vop_video_ports[] = {
 	{
 		.id = 0,
-		.feature = VOP_FEATURE_OUTPUT_10BIT,
+		.feature = VOP2_VP_FEATURE_OUTPUT_10BIT,
 		.gamma_lut_len = 1024,
 		.cubic_lut_len = 9 * 9 * 9, /* 9x9x9 */
 		.max_output = { 4096, 2304 },
@@ -272,7 +272,7 @@ static const struct vop2_video_port_data rk3588_vop_video_ports[] = {
 		.offset = 0xc00,
 	}, {
 		.id = 1,
-		.feature = VOP_FEATURE_OUTPUT_10BIT,
+		.feature = VOP2_VP_FEATURE_OUTPUT_10BIT,
 		.gamma_lut_len = 1024,
 		.cubic_lut_len = 729, /* 9x9x9 */
 		.max_output = { 4096, 2304 },
@@ -280,7 +280,7 @@ static const struct vop2_video_port_data rk3588_vop_video_ports[] = {
 		.offset = 0xd00,
 	}, {
 		.id = 2,
-		.feature = VOP_FEATURE_OUTPUT_10BIT,
+		.feature = VOP2_VP_FEATURE_OUTPUT_10BIT,
 		.gamma_lut_len = 1024,
 		.cubic_lut_len = 17 * 17 * 17, /* 17x17x17 */
 		.max_output = { 4096, 2304 },
-- 
2.34.1


