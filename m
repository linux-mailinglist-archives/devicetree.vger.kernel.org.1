Return-Path: <devicetree+bounces-40336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D83F6850305
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 08:11:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 959BA2851BC
	for <lists+devicetree@lfdr.de>; Sat, 10 Feb 2024 07:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24DEF2836E;
	Sat, 10 Feb 2024 07:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LMb4XSJr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1920A374E6
	for <devicetree@vger.kernel.org>; Sat, 10 Feb 2024 07:09:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707548991; cv=none; b=Llb9REdg1zo6FJ8SIPWHewUme1TAAbHQXE0Gtt+yl+omKnE9W3p3P4TzijRT5odPrXgIwAaugvZiTMKoYP3nDikZZDK3lfkg3jFhYZI0a8zZMkLp/qP2tWowCCtFONcDEbz2P74Zbp4ljWxf2nTFM1nSCm04D7aD7C2nK/lQyz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707548991; c=relaxed/simple;
	bh=jL/gG9D8lG06mow1s8GNyHxflUWLSuC/auB5hTAdw0g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HseyEYsvgoG4gYCrTBoiFWWbc2xKMAMScjzHME+nZRJ/Wz+G0Xn7L9aYAWtygHNocYGN63zzvIW0quCEAc+v8TrGvj11hRdNnidXzVflf4jIbSKLdCcC7sX/0NTvuGO4Sq/0GfPqQeFSeyI6U/SFpFutcWTjoRdiWknS9EhQV9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LMb4XSJr; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3bda4bd14e2so1218142b6e.2
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 23:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707548988; x=1708153788; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hhcGY0pJW+kaFughUNfil3pAisJaqEi+Mlm0h6qD8C4=;
        b=LMb4XSJr/AtRiNKyFWuEIB/sbAY4X5AP2GLY2VSF/Hg/fHOUkFttnS4glVWEu0ONYe
         e8d78noShDDn7RtYcNi50/D1laeKqMeke63izqYIiwLHCSo52ZKtxcumnYHeFHE8D46a
         C9QWw/u9t9RDBBwhSjuSk03QPb4/LffulCies=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707548988; x=1708153788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hhcGY0pJW+kaFughUNfil3pAisJaqEi+Mlm0h6qD8C4=;
        b=Z0TOFva/h7/D0aNhGm1SWwuIGBeQaibrhHZRtXEt+3Be+OFNFzAkRMrBUZp8euyRWe
         CaoTIm3nRuX+U4sPES7j5diLHWoH4PUJ4VY3e7Djr1UWoGScYoaqgsYOhnuowm+wnnd0
         Ux+tdTDmwNCySbybFktOap/n4/9jH7hkRxHVhG9TeUltdFRCE58xJiYhK9RW4Y9ImOJ5
         Ay0wpZ/KKPUMT0TPhkI0RWVy6pwvKiEOEdj5sHDJ2xlsjK4BgcpRYYTZ0tDgqafyWYld
         CehYsodLHFj2Y3cfLYjw9vloOfBXlqumvQnFi3Qqhw8FZKywQZoRTirSmveD+L/vaYFk
         J3bQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4TtHfefURIgO1J7Zf4Q5mSKXqCuW2C8k4LABGwsON1OxREmF6vVQKhbEhxGlh+uYL+vTeXRYgGNnWlszpG6ZuAYflpI/jUKBs/A==
X-Gm-Message-State: AOJu0YzBlaOWK3QVId7/EXDc8ndvTZEzvfsbbxbn9X98iP1X8vOBtaQv
	3w5UZ86LosUk1YC79J7SMvS/q9vSK7A4Y261OtZlO8DAR2f7TLE93L7DmFZcEw==
X-Google-Smtp-Source: AGHT+IFV/sFlW8qKgy47k/Il/yfb6VFTvd6pIr0PTj8o+WR+abJvSKAIoFNUNzLDpAyLa4aVU2Wrwg==
X-Received: by 2002:a05:6808:1154:b0:3be:459a:b373 with SMTP id u20-20020a056808115400b003be459ab373mr1858284oiu.52.1707548988259;
        Fri, 09 Feb 2024 23:09:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWfg+QEjW5TkMN4yEs4j/hGTro4fPsmIMv+/GkLsSyKpPXxknHnXcMzvSJZhJsl1lg7IyadrS3Kjw4OTEmQ6hIJcoRx5Qmxpxt4DU50F8HnZ3rraSeppCM5Num5mdpQ5uKGPXy9XWKjnmjnyYsNlVGJmbUsVR6bzZP0Ke6I/GxDVL6hXL8xZofWfNdddRFllmzXhxZsldGorzdP0hGlRTrugqA8prmIN69jc21X9nuzmMGau/oYxAilSWF2o6Uo8PPj+nIgy4m4+QWgIO+TSHiM2qvXy/IWHaFHfmqvWXFL8tEWy37wfxdm7t2BR8wQsWdEMjEDfwyZvo7ASqhLqnBipuFS2C7IAVhf58k4yvXcNIGifcJnNwfK9HxLzLBzM8V6GkW+zpWnaAQWGmdeiG8qwkkpQqmjHuW9amz8RCQhV/lmrOVety//gSyNNFf7LNytox5MAKvNJEfGH597G684E3DrPI9MQRlRZP/fPyTjtb4gGbThd5gZQKOepaGySvVcmL4OnqGyiyLZzjz2rw/GTkHQOam37GjCWM3he2a/Wmr6E2HDBEHmiQCZOX7Gqo8bxkpzlcdzTW0Xa3Fdo+sMZiANkkHjLmrRQkRkRBR/q2tdMi3GFPQIKK50nIwxC+3ZUAnZbTxk/TWdJaGXOnsCFlG/tZuk7EnWUaHg
Received: from localhost (175.199.125.34.bc.googleusercontent.com. [34.125.199.175])
        by smtp.gmail.com with UTF8SMTPSA id y2-20020aa78542000000b006e096ff7c91sm1645603pfn.100.2024.02.09.23.09.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Feb 2024 23:09:47 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: chrome-platform@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Pin-yen Lin <treapking@chromium.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 05/22] drm/atomic-helper: Introduce lane remapping support to bridges
Date: Fri,  9 Feb 2024 23:09:16 -0800
Message-ID: <20240210070934.2549994-6-swboyd@chromium.org>
X-Mailer: git-send-email 2.43.0.687.g38aa6559b0-goog
In-Reply-To: <20240210070934.2549994-1-swboyd@chromium.org>
References: <20240210070934.2549994-1-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support to the DRM atomic logic to support lane remapping between
bridges, encoders and connectors. Typically lane mapping is handled
statically in firmware, e.g. on DT we use the data-lanes property to
assign lanes when connecting display bridges. Lane assignment is dynamic
with USB-C DisplayPort altmodes, e.g. pin conf D assigns 2 lanes of DP
to pins on the USB-C connector while pin conf C assigns 4 lanes of DP to
pins on the USB-C connector. The lane assignment can't be set statically
because the DP altmode repurposes USB-C pins for the DP lanes while also
limiting the number of DP lanes or their pin assignment at runtime.

Bridge drivers should point their 'struct drm_bus_cfg::lanes' pointer to
an allocated array of 'struct drm_lane_cfg' structures and indicate the
size of this allocated array with 'struct drm_bus_cfg::num_lanes' in
their atomic_check() callback. The previous bridge in the bridge chain
can look at this information by calling
drm_bridge_next_bridge_lane_cfg() in their atomic_check() callback to
figure out what lanes need to be logically assigned to the physical
output lanes to satisfy the next bridge's lane assignment.

Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: <dri-devel@lists.freedesktop.org>
Cc: Pin-yen Lin <treapking@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/gpu/drm/drm_atomic_state_helper.c |  2 ++
 drivers/gpu/drm/drm_bridge.c              | 34 +++++++++++++++++++++++
 include/drm/drm_atomic.h                  | 31 +++++++++++++++++++++
 include/drm/drm_bridge.h                  |  4 +++
 4 files changed, 71 insertions(+)

diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
index 784e63d70a42..2e989fbeb503 100644
--- a/drivers/gpu/drm/drm_atomic_state_helper.c
+++ b/drivers/gpu/drm/drm_atomic_state_helper.c
@@ -764,6 +764,8 @@ EXPORT_SYMBOL(drm_atomic_helper_bridge_duplicate_state);
 void drm_atomic_helper_bridge_destroy_state(struct drm_bridge *bridge,
 					    struct drm_bridge_state *state)
 {
+	kfree(state->input_bus_cfg.lanes);
+	kfree(state->output_bus_cfg.lanes);
 	kfree(state);
 }
 EXPORT_SYMBOL(drm_atomic_helper_bridge_destroy_state);
diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
index 30d66bee0ec6..3fce0d8d7dcb 100644
--- a/drivers/gpu/drm/drm_bridge.c
+++ b/drivers/gpu/drm/drm_bridge.c
@@ -843,6 +843,40 @@ void drm_atomic_bridge_chain_enable(struct drm_bridge *bridge,
 }
 EXPORT_SYMBOL(drm_atomic_bridge_chain_enable);
 
+/**
+ * drm_bridge_next_bridge_lane_cfg - get the lane configuration of the next bridge
+ * @bridge: bridge control structure
+ * @state: new atomic state
+ * @num_lanes: will contain the size of the returned array
+ *
+ * This function is typically called from &drm_bridge_funcs.atomic_check().
+ * The @bridge driver calls this function to determine what the next bridge in
+ * the bridge chain requires for the physical to logical lane assignments.
+ *
+ * Return: Lane configuration array of size @num_lanes for the next bridge
+ * after @bridge in the bridge chain, or NULL if the lane configuration is
+ * unchanged from the default.
+ */
+const struct drm_lane_cfg *
+drm_bridge_next_bridge_lane_cfg(struct drm_bridge *bridge,
+				struct drm_atomic_state *state,
+				u8 *num_lanes)
+{
+	const struct drm_bridge_state *next_bridge_state;
+	struct drm_bridge *next_bridge = drm_bridge_get_next_bridge(bridge);
+
+	next_bridge_state = drm_atomic_get_new_bridge_state(state, next_bridge);
+	if (!next_bridge_state) {
+		*num_lanes = 0;
+		return NULL;
+	}
+
+	*num_lanes = next_bridge_state->input_bus_cfg.num_lanes;
+
+	return next_bridge_state->input_bus_cfg.lanes;
+}
+EXPORT_SYMBOL(drm_bridge_next_bridge_lane_cfg);
+
 static int drm_atomic_bridge_check(struct drm_bridge *bridge,
 				   struct drm_crtc_state *crtc_state,
 				   struct drm_connector_state *conn_state)
diff --git a/include/drm/drm_atomic.h b/include/drm/drm_atomic.h
index cf8e1220a4ac..b206ae2654d8 100644
--- a/include/drm/drm_atomic.h
+++ b/include/drm/drm_atomic.h
@@ -1074,6 +1074,27 @@ drm_atomic_crtc_effectively_active(const struct drm_crtc_state *state)
 	return state->active || state->self_refresh_active;
 }
 
+/**
+ * struct drm_lane_cfg - lane configuration
+ *
+ * This structure stores the lange configuration of a physical bus between
+ * two components in an output pipeline, usually between two bridges, an
+ * encoder and a bridge, or a bridge and a connector.
+ *
+ * The lane configuration is stored in &drm_bus_cfg.
+ */
+struct drm_lane_cfg {
+	/**
+	 * @logical: Logical lane number
+	 */
+	u8 logical;
+
+	/**
+	 * @inverted: True if lane polarity is inverted, false otherwise
+	 */
+	bool inverted;
+};
+
 /**
  * struct drm_bus_cfg - bus configuration
  *
@@ -1104,6 +1125,16 @@ struct drm_bus_cfg {
 	 * @flags: DRM_BUS_* flags used on this bus
 	 */
 	u32 flags;
+
+	/**
+	 * @lanes: Lane mapping for this bus
+	 */
+	struct drm_lane_cfg *lanes;
+
+	/**
+	 * @num_lanes: Number of lanes in @lanes
+	 */
+	u8 num_lanes;
 };
 
 /**
diff --git a/include/drm/drm_bridge.h b/include/drm/drm_bridge.h
index cfb7dcdb66c4..5f64f6e822e1 100644
--- a/include/drm/drm_bridge.h
+++ b/include/drm/drm_bridge.h
@@ -884,6 +884,10 @@ drm_atomic_helper_bridge_propagate_bus_fmt(struct drm_bridge *bridge,
 					struct drm_connector_state *conn_state,
 					u32 output_fmt,
 					unsigned int *num_input_fmts);
+const struct drm_lane_cfg *
+drm_bridge_next_bridge_lane_cfg(struct drm_bridge *bridge,
+				struct drm_atomic_state *state,
+				u8 *num_lanes);
 
 enum drm_connector_status drm_bridge_detect(struct drm_bridge *bridge);
 int drm_bridge_get_modes(struct drm_bridge *bridge,
-- 
https://chromeos.dev


