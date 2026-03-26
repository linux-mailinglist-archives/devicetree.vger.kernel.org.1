Return-Path: <devicetree+bounces-281332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id um9ZNrFxxWlJ+QQAu9opvQ
	(envelope-from <devicetree+bounces-281332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 18:49:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 79763339776
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 18:49:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4275E305CA29
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 17:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37525429800;
	Thu, 26 Mar 2026 17:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="MMSMn2SC"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0D142669A;
	Thu, 26 Mar 2026 17:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774546309; cv=none; b=rWPKvOkyzbdPB3wMXJjxBRgknGgk/JMl13E/0txVNnyRIMweoSoQ4do27z65A9qXmYxNMsBWTdV/xNItvLGOJ5jZNBsifZZf7oscCcI922mBzbWX1znwutrYHCJK6euhsPIMgst2mn41KwPVy6ErMbqYa1ccxFgdeSbQGFDsOjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774546309; c=relaxed/simple;
	bh=y/WxaFe170zGz77jcK5TnRXAJAb/xaqMUcVKWbGq+ZE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AXXs/aToPMGFQkt9lULZ3bAddVxozmZN2DrNxPu6xtPRQI9wwdg3JQct8W0WGz9oGktOIZqJ9HSvy2wfQrdEs8ewGAtjHVSIIq6N0CnyG8mJJ4yqvw0P0gQaeh44JB2ugrTDr0FLP/+ZKvkqyVaPuY20hWes8q4dRcsz5xfc/6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=MMSMn2SC; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1774546298;
	bh=y/WxaFe170zGz77jcK5TnRXAJAb/xaqMUcVKWbGq+ZE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MMSMn2SCCMylgKTY8/Fb/nirYv3T7ItHADt1fIKjqSQ8gwt3wrh2TpiqbC8uVkzCR
	 BnjseAK3R2YpTpgyH2vD55OktkAKYQiFoXCkdi97PdV5kz9XS7r4HhPZ2YrQXvSZnU
	 RZe1vvABjCIFDf2ToG5vOLqJaaHUz3fu3qBXP+9w3fkp5aiRpxKBTOvWGvyPc/GRvf
	 qcflXJYtVLbUwu+Hxt8NDqQWBUNu6Nf7ack6hf6r2OszA5hHWel1Rz9oBlDq31tnop
	 EN6vI7NX+RbunAWBBqMU3lDvbcYw83HiV6H97UbiBgk6sE+s/zvUcLRmfaXOLaGMpv
	 NEEXZiEx6tD3g==
Received: from jupiter.universe (dyndsl-091-248-208-149.ewe-ip-backbone.de [91.248.208.149])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A651C17E6192;
	Thu, 26 Mar 2026 18:31:38 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4342E48002E; Thu, 26 Mar 2026 18:31:38 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 26 Mar 2026 18:31:28 +0100
Subject: [PATCH 04/10] drm/bridge: Add out-of-band HPD notify handler
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260326-synopsys-dw-dp-improvements-v1-4-501849162290@collabora.com>
References: <20260326-synopsys-dw-dp-improvements-v1-0-501849162290@collabora.com>
In-Reply-To: <20260326-synopsys-dw-dp-improvements-v1-0-501849162290@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Damon Ding <damon.ding@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, Alexey Charkov <alchark@gmail.com>, 
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2384;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=y/WxaFe170zGz77jcK5TnRXAJAb/xaqMUcVKWbGq+ZE=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGnFbXkNm9b/9IesCFgzRPyYZyu2ftDb9POz8
 ra4anrVKZoWAIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpxW15AAoJENju1/PI
 O/qa6H8QAIYlA8u4tabSPTN+BBulhD0igkCQqyAasi8O3D2Qn3iIGVc8kEXDWAivGWy5SVnf2qD
 kvUnpH//3RqYB03atxDtpAQS4lW9z/cV9fUI1/IY7gsEuaUYDJ/FJeRJHbQJ+qovfQcxShIFLnU
 UaTeJ2dG9hR2k57VRCK7rAyPA4bnpznS42zelkuZFB+qC80pD3aYzSeyDNVwIsiur/UaPFzRa9l
 8qCwLP3H2D86I9LMZt42YXgUNtGg4/yilJS36ZbxxpO8zJJC5wC78D36VohXdRoxeWjttnXE0SS
 6l6XRePH8dFjmHLNCLRrnsxPegpmCoCUJ4bbIpBkuD6AieXCsVNDryou2hn5tVNzi6X9VsgwBBf
 hXPJ/NgRBmd+JJph7PCUHLwpRJdHiG+fIPy5cSRw75O/KXBLL4q4JLJB7C26vyOzjxxlOGJe/sw
 7W/k3IOhBCNfJKOWFtqJMzsZn15yFilMUl4/8CC3iPIPQEMlfuMZEngg7Jii+HcOWfnfqRUD7VD
 YyFnDAznoDoiWoAkz7jR+ZOayDtdALOGdM5D/DSa03kmDvmfZ1IpP50QMf6cVFnnY6jTnvH5jED
 4ktCqm0QQqX9GzTD+jlB01/XAEXkytEssWLs7FBvXHyCnlqtjhKMbijLLJPM16Z7i9o4CLzvxcU
 ypoiAuIZJlJhmHsHVzG8xMQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281332-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,linux.intel.com,kernel.org,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 79763339776
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

For DP bridges, that can be used for DP AltMode, it might be necessary
to enforce HPD status. There is an existing ->oob_hotplug_event() on
the DRM connector, but it currently just calls into hpd_notify().

As DP bridge drivers usually also implement .detect and that also
generates calls into hpd_notify, this is a bad place to force the
HPD status as the follow-up detect call might force it off again
resulting in all follow-up calls to the detection routine also
failing.

Avoid this by having a dedicated function for OOB events.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpu/drm/display/drm_bridge_connector.c |  6 ++++++
 include/drm/drm_bridge.h                       | 14 ++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
index 39cc18f78eda..4333cc66073e 100644
--- a/drivers/gpu/drm/display/drm_bridge_connector.c
+++ b/drivers/gpu/drm/display/drm_bridge_connector.c
@@ -180,6 +180,12 @@ static void drm_bridge_connector_oob_hotplug_event(struct drm_connector *connect
 	struct drm_bridge_connector *bridge_connector =
 		to_drm_bridge_connector(connector);
 
+	/* Notify all bridges in the pipeline of hotplug events. */
+	drm_for_each_bridge_in_chain_scoped(bridge_connector->encoder, bridge) {
+		if (bridge->funcs->oob_notify)
+			bridge->funcs->oob_notify(bridge, connector, status);
+	}
+
 	drm_bridge_connector_handle_hpd(bridge_connector, status);
 }
 
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index a8d67bd9ee50..1ad9ae50c829 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -646,6 +646,20 @@ struct drm_bridge_funcs {
 	 */
 	void (*hpd_disable)(struct drm_bridge *bridge);
 
+	/**
+	 * @oob_notify:
+	 *
+	 * Notify the bridge of out of band hot plug detection.
+	 *
+	 * This callback is optional, it may be implemented by bridges that
+	 * need to be notified of display connection or disconnection for
+	 * internal reasons. One use case is to force the DP controllers HPD
+	 * signal for USB-C DP AltMode.
+	 */
+	void (*oob_notify)(struct drm_bridge *bridge,
+			   struct drm_connector *connector,
+			   enum drm_connector_status status);
+
 	/**
 	 * @hdmi_tmds_char_rate_valid:
 	 *

-- 
2.53.0


