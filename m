Return-Path: <devicetree+bounces-321510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lvbiIf8CTGrPegEAu9opvQ
	(envelope-from <devicetree+bounces-321510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:33:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA76715020
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:33:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=S94KRAQn;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321510-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-321510-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EFAB730131A8
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 19:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23A3B331EDF;
	Mon,  6 Jul 2026 19:32:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447733242D9;
	Mon,  6 Jul 2026 19:32:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783366359; cv=none; b=oyprkpFPH6aAnLMXB0MTSpmvAqeWiLSIA9nR98oN1/MxcqEae3GasfjTpqTBNsNjJWiM3DYH3VoyYKLqdCxFAq+X6mBHWZbdxTSlWxMXeJN3IU0FnAKOm8Qtn9KmsyoZwavMvkj/sidTpu86VI6LdawWH1j1xH+4iLrJnhkO/K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783366359; c=relaxed/simple;
	bh=swh/JeIMm9ReiTXix+vwRFJ6g6E243o3S3Lb9kHImP0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=frV6LpnInfykxkdgQQ+DLvJLS2t6XsemGCi1Q0VnI5mbssY7bqKpT7CQijU1CPmYKSYRtGaL5bDtI1NLVrIPapotgfzDDPFHnpl9AnpZTTV1T9rgS/D+0kKDjizADDtyi3JwKGy87LWcvBSIlrHBZ3VIKPl5W0i5W3kIaNcuGiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=S94KRAQn; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783366355;
	bh=swh/JeIMm9ReiTXix+vwRFJ6g6E243o3S3Lb9kHImP0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=S94KRAQnx+P/IMzPSi84I0nsyTi5dIUy7gVJe2rsiaLwlO87GiJPVX5jn4tE0gsAx
	 A7LSep9DOuTCsd1s0c0Gt+1CSd3ZWXbkDePyYjY+onBTF9znFdFeGGfxIkwFJahAVi
	 BQLkNRZwAO0BpqZWpUlJLxQdO5gm/WF07T/cwi6pgkB7FnkFaCjRh8V/yraubn5y67
	 CK3DmnUVcIGJ24knWi+ysFTZWW1khx5GcQJvpl52F5DS3jlLOeaFJsrfGCVygQ+o1y
	 d0BOzrEWwmX/ppXG/i8MNL8Kl5iyM91s4iEDscZafAzlG1jIp2G8sxbkug8Ol9b8yu
	 kp0p6D9hyCwHA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9CA5017E0DFB;
	Mon, 06 Jul 2026 21:32:35 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 06 Jul 2026 22:32:15 +0300
Subject: [PATCH v2 03/13] drm/rockchip: vop2: Balance state on
 atomic_enable error paths
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260706-dw-hdmi-qp-yuv-v2-3-b91beb33dedf@collabora.com>
References: <20260706-dw-hdmi-qp-yuv-v2-0-b91beb33dedf@collabora.com>
In-Reply-To: <20260706-dw-hdmi-qp-yuv-v2-0-b91beb33dedf@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:kernel@collabora.com,m:andyshrk@163.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com];
	TAGGED_FROM(0.00)[bounces-321510-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[collabora.com,163.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DA76715020

vop2_crtc_atomic_enable() prepares vp->dclk and, for the first CRTC,
calls vop2_enable(), incrementing the shared vop2->enable_count before
programming VOP2 registers.  Two later failure points return early with
only vop2_unlock(), leaking the dclk prepare, the enable_count
increment, and the core clocks / PM runtime reference from
vop2_enable().

Since the disable path decrements enable_count unconditionally, the
leaked increment skews the count, causing an underflow or premature
shutdown of core clocks and PM runtime while another CRTC is active.

Cleaning up on the enable error paths alone is insufficient, however.
A CRTC whose atomic_enable() bailed is still committed as active, so
vop2_crtc_atomic_disable() still runs its full teardown, releasing the
same dclk prepare and enable_count a second time - underflowing both
counts and, where vop2_enable() ran, touching VOP registers with core
clocks gated.

Fix this by reverting exactly what was set up on failure, and track the
per-VP bring-up state so atomic_disable() skips teardown when
atomic_enable() never completed.

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/20260623202043.8BFE21F000E9@smtp.kernel.org/
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 34 +++++++++++++++++++++-------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  6 +++++
 2 files changed, 32 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index e11dc8c7f78b..c2328b35466d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1033,6 +1033,9 @@ static void vop2_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	vop2_lock(vop2);
 
+	if (!vp->enabled)
+		goto out_unlock;
+
 	old_crtc_state = drm_atomic_get_old_crtc_state(state, crtc);
 	drm_atomic_helper_disable_planes_on_crtc(old_crtc_state, false);
 
@@ -1063,11 +1066,14 @@ static void vop2_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	clk_disable_unprepare(vp->dclk);
 
+	vp->enabled = false;
+
 	vop2->enable_count--;
 
 	if (!vop2->enable_count)
 		vop2_disable(vop2);
 
+out_unlock:
 	vop2_unlock(vop2);
 
 	if (crtc->state->event && !crtc->state->active) {
@@ -1803,8 +1809,11 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 		return;
 	}
 
-	if (!vop2->enable_count)
-		vop2_enable(vop2);
+	if (!vop2->enable_count) {
+		ret = vop2_enable(vop2);
+		if (ret)
+			goto err_unprepare_dclk;
+	}
 
 	vop2->enable_count++;
 
@@ -1831,10 +1840,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 		clock = vop2->ops->setup_intf_mux(vp, rkencoder->crtc_endpoint_id, polflags);
 	}
 
-	if (!clock) {
-		vop2_unlock(vop2);
-		return;
-	}
+	if (!clock)
+		goto err_put_enable_count;
 
 	if (vcstate->output_mode == ROCKCHIP_OUT_MODE_AAAA &&
 	    !(vp_data->feature & VOP2_VP_FEATURE_OUTPUT_10BIT))
@@ -1852,8 +1859,7 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 		default:
 			drm_err(vop2->drm, "Unknown DRM_MODE_CONNECTOR %d\n",
 				vcstate->output_type);
-			vop2_unlock(vop2);
-			return;
+			goto err_put_enable_count;
 		}
 	else
 		out_mode = vcstate->output_mode;
@@ -1965,6 +1971,18 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	drm_crtc_vblank_on(crtc);
 
+	vp->enabled = true;
+
+	vop2_unlock(vop2);
+
+	return;
+
+err_put_enable_count:
+	if (!--vop2->enable_count)
+		vop2_disable(vop2);
+
+err_unprepare_dclk:
+	clk_disable_unprepare(vp->dclk);
 	vop2_unlock(vop2);
 }
 
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index ffcb39c130aa..b209b2d5b96d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -243,6 +243,12 @@ struct vop2_video_port {
 
 	struct completion dsp_hold_completion;
 
+	/**
+	 * @enabled: CRTC fully brought up by atomic_enable(); allows
+	 * atomic_disable() to skip teardown after a failed enable.
+	 */
+	bool enabled;
+
 	/**
 	 * @win_mask: Bitmask of windows attached to the video port;
 	 */

-- 
2.54.0


