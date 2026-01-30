Return-Path: <devicetree+bounces-261103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLBZGFNjfGmlMAIAu9opvQ
	(envelope-from <devicetree+bounces-261103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:52:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6B9B80BE
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:52:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8CB8B3013A7A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 07:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58168306B3E;
	Fri, 30 Jan 2026 07:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b="OaU820oA"
X-Original-To: devicetree@vger.kernel.org
Received: from ironport.ite.com.tw (60-251-196-230.hinet-ip.hinet.net [60.251.196.230])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B462EB87E;
	Fri, 30 Jan 2026 07:52:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.251.196.230
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769759568; cv=none; b=nI5+HuYa/6G+Ebhkrj+bnw1cmD1R6y0pizGbmMilexAgJj18/08+Nqkcfc18gE7Ba3VUVZTP1udHI2MmJVh+LxIdCq72dZQt72K2Vd0vrrIlRNmGrkrTV3m9DhJRkV0y3hAQh8oYmgmmZV6U7BP2CGxf/PkJeAqL53QTpto/GLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769759568; c=relaxed/simple;
	bh=xh2USqWmPFvVEzqqe3NKTlTfG0pQtpIHu7vzwqSFgP0=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=JyWOhRcpZfOqt3d/4ZS3X1MSoLIWOe6eYj25pXhbMy3SKOiFgZRdk0L41Vy/PJRJJ0WfkOy6SxqQM2N88vXfwvXvIffr9Z5RM4bvtYKhX82M9G05n8Xrr7yPxr+vaF4dxJRAE3nlcVwOgLxyRS1LtEpSstLsYm+JJzjwTWC1BlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw; spf=pass smtp.mailfrom=ite.com.tw; dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b=OaU820oA; arc=none smtp.client-ip=60.251.196.230
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ite.com.tw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ite.com.tw; s=dkim;
  h=from:subject:date:message-id:mime-version:
   content-transfer-encoding:to:cc;
  bh=d8q7eoSppetlUUt5FXMVaOw5irGBi+mWlhzmWhDaui4=;
  b=OaU820oA08phpFDMNuHUZj7iVFZS4MpLSnIZCP9Zuzx2FWVUPPkgGpzy
   gCbOx/riRSZbynQWiA/JtDYG5L+AGYT4QFR/0eRP/Ij1vddg1V/3d7RLn
   PnFWb0vQbEZPsAXxl4Ka+XKNb9PAikdTcQINbbRQdIbZje4FmI3D9PmU4
   uyieGE0KX6fAXTieDtv+q0UZ6S2NBZq+l08ReT7OTNkH9iDsN7/zuMsNy
   9C3EcKtT+cbYbJ9vsgBVnUqXKf3aVpiWGlzTgobo5ULiRUv6Nf/P1HEWQ
   f0pNF4ZdyCuhNT0x07QlqylZKrCgxJD5DACuBsd67Dg5vsOv4EfS25Yvd
   w==;
X-CSE-ConnectionGUID: VrRCf1vOQaio2GtM9fjNAw==
X-CSE-MsgGUID: OF7wCRxVR7u8QyA4Ded9cg==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
  by ironport.ite.com.tw with ESMTP; 30 Jan 2026 15:48:54 +0800
Received: from CSBMAIL1.internal.ite.com.tw (CSBMAIL2.internal.ite.com.tw [192.168.65.41])
	by mse.ite.com.tw with ESMTP id 60U7pQj7005426;
	Fri, 30 Jan 2026 15:51:26 +0800 (+08)
	(envelope-from Pet.Weng@ite.com.tw)
Received: from [127.0.1.1] (192.168.72.40) by CSBMAIL2.internal.ite.com.tw
 (192.168.65.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.2562.35; Fri, 30 Jan
 2026 15:51:26 +0800
From: Pet Weng <pet.weng@ite.com.tw>
Subject: [PATCH v6 0/3] Add ITE IT61620 MIPI DSI to HDMI bridge driver
Date: Fri, 30 Jan 2026 15:51:33 +0800
Message-ID: <20260130-it61620-0714-v6-0-70afa65923b5@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAVjfGkC/3XMPW7DMAyG4asEmqNApKi/Tr1H0UG2qEZD4sI23
 BaB717ZQ5PYKMDlJfB8NzFwX3gQL4eb6HkqQ+muNezxINpzvH6wLKm2QIVGOSBZRgsWlVwjNlS
 v5ZwxiEo+e87le517e699LsPY9T/r+gTL95+hCaSS2lkAS0k1wb+WkU9tdzmNX2JZmvCuPfqNx
 qqNt9kETcnkvdZ/GpQKG60XnazHpNATwU7TXSPYjaaqQ8LM0XlykXfaPGjEjTZVx9xYciEm3cY
 nPc/zLw5bXbGhAQAA
X-Change-ID: 20250714-it61620-0714-ab4ab4ceff29
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart
	<Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej
 Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Hermes Wu <hermes.Wu@ite.com.tw>,
        Kenneth
 Hung <kenneth.Hung@ite.com.tw>,
        Pet Weng <pet.weng@ite.com.tw>,
        Jau-chih
 Tseng <jau-chih.tseng@ite.com.tw>,
        Pin-yen Lin <treapking@google.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769759532; l=5884;
 i=pet.weng@ite.com.tw; s=20250702; h=from:subject:message-id;
 bh=xh2USqWmPFvVEzqqe3NKTlTfG0pQtpIHu7vzwqSFgP0=;
 b=rJ+CyM4DOhjJsPorbjC0vCuBo8wK9iwHURunpVeCoNJY6aWPeKsEtLFqZTfVwbhYvwSyGrbYx
 tj2uN8VKPOxDZTcAYcSuC6FwgIIFIEOJ4/zbunmRXFaXtuzEwMFLQv7
X-Developer-Key: i=pet.weng@ite.com.tw; a=ed25519;
 pk=wd08uBtTLb93x2ixbKVNsxiZPdMh1Ov4z5klodh2bqo=
X-ClientProxiedBy: CSBMAIL1.internal.ite.com.tw (192.168.65.58) To
 CSBMAIL2.internal.ite.com.tw (192.168.65.41)
X-TM-SNTS-SMTP:
	E3887AD8A52ACCB7E1B5EECD5C5DB3C657921162994682458308DA2890FCB9DA2002:8
X-MAIL:mse.ite.com.tw 60U7pQj7005426
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ite.com.tw,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[ite.com.tw:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261103-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ite.com.tw:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pet.weng@ite.com.tw,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.58:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.2:email]
X-Rspamd-Queue-Id: 9E6B9B80BE
X-Rspamd-Action: no action

This patch series adds support for the ITE IT61620 MIPI DSI to HDMI 
bridge chip.

The IT61620 is an I2C-controlled bridge that receives MIPI DSI input 
and outputs HDMI signals. A single-port MIPI DSI input is converted to 
an HDMI 1.4 output. This series introduces:
- A device tree binding YAML file describing the hardware
- A new DRM bridge driver implementing the basic functionality
- A MAINTAINERS entry for the driver

Signed-off-by: Pet Weng <pet.weng@ite.com.tw>
---
Changes in v6:
- In patch 2								[Luca] 
 1. Fix a typo in the commit message.
 2. Remove redundant assignment of bridge.funcs, which is already set by 
    devm_drm_bridge_alloc().
- Link to v5: https://lore.kernel.org/r/20251222-it61620-0714-v5-0-afb6479ad3ca@ite.com.tw

Changes in v5:
- Fix dt_binding_check errors by adding missing unevaluatedProperties constraints
  for port and endpoint nodes in the device tree binding.		[Rob]
- Link to v4: https://lore.kernel.org/r/20251216-it61620-0714-v4-0-9d2fea7847ae@ite.com.tw

Changes in v4:
- In patch 1								[Krzysztof]
 1. Remove redundant "description" fields from interrupts and regulators
 2. Drop pinctrl-names and pinctrl-0; driver does not require them
 3. Remove port/endpoint properties already covered by video interfaces schema
 4. Fix example indentation to 4 spaces for readability
- In patch 2								[Jani]
 1. Use connector->display_info from DRM helper instead of parsing EDID manually
- In patch 2								[Dmitry]
 1. Remove redundant powered check in reg access
 2. Use TMDS character rate instead of pixel clock for N/CTS
 3. Use consistent lowercase naming for tmds.
 4. Use test_bit() instead of custom bit-test helper
 5. Use tmds_char_rate_valid instead of custom mode_valid
 6. Use custom EDID read instead of DDC bus for segment handling
 7. Drop redundant atomic feature check
 8. Pass flags directly to drm_bridge_attach()
 9. Check DRM_BRIDGE_ATTACH_NO_CONNECTOR flag before drm_bridge_attach()
 10. Short-circuit HPD update if connector status unchanged
 11. Remove unnecessary NULL check for connector state
 12. Rename cached_edid to edid since it's no longer cached
 13. Remove redundant sample rate checks; rely on hdmi-codec validation
 14. Remove unsupported 18-bit audio sample size; rely on hdmi-codec
 15. Remove unnecessary fmt switch; rely on hdmi-codec defaults
 16. Check and propagate errors from it61620_audio_update_hw_params instead of
     ignoring them
- In patch 3								[Krzysztof]
 1. Remove unnecessary T: field pointing to git; subsystem already defines it
- Link to v3: https://lore.kernel.org/r/20251009-it61620-0714-v3-0-5d682d028441@ite.com.tw

Changes in v3:
- Wrapped description lines to comply with 80-character line length limit
  in patch 1.								[Rob]
- Renamed node from "it61620@58" to "bridge@58" in patch 1.		[Rob]
- Add port@2 for I2S audio input in patch 1.				[Dmitry]
- Updated the Kconfig dependency from CRYPTO and CRYPTO_HASH to 
  CRYPTO_LIB_SHA1 in patch 2.						[Eric]
- In patch 2								[Dmitry]
 1. Audio and InfoFrame
   - Rename audfmt to i2s_input_format for clarity.
   - Remove unused infoframe[HDMI_INFOFRAME_SIZE(AUDIO)].
 2. Platform data and structure
   - Drop platform data usage; migrate members into struct it61620
 3. Code organization
   - Reorder functions to avoid the need for forward declarations.
   - Add static inline to small helper functions
     (e.g. bridge_to_it61620()).
 4. HDCP handling
   - Make HDCP enable/disable conditional on conn_state->content_protection.
   - Report authentication result using drm_hdcp_update_content_protection().
 5. Error handling
   - Replace manual error path with dev_err_probe().
 6. Power management
   - Inline suspend/resume callbacks.
   - Use DEFINE_RUNTIME_DEV_PM_OPS() instead of explicit struct definition.
 7. Bridge callbacks
   - Drop empty bridge_detach().
   - Inline it61620_bridge_mode_valid().
 8. EDID handling
   - Remove unnecessary cached EDID duplication.
 9. Mode set and pixel clock
   - Move mode handling to atomic_enable().
   - Keep only pixelclock for future N/CTS audio calculations.
 10. Logging
    - Replace noisy drm_err() calls with drm_dbg().
 11. InfoFrame support
    - Add support for SPD and Vendor InfoFrames.
- Link to v2: https://lore.kernel.org/r/20250828-it61620-0714-v2-0-586f5934d5f8@ite.com.tw

Changes in v2:
- Call the sha1() library function instead of using the crypto_shash
  "sha1" in patch 2.
- Rewrite it61620_hdmi_ddc_wait() with readx_poll_timeout() in patch 2.	[Pin-yen]
- Rewrite it61620_hdmi_hdcp_wait_ksv_list() with readx_poll_timeout() in
  patch 2.
- Replace interrupts-extended with interrupts in patch 1.		[Rob]
- Replace dsi-lanes with the standard property data-lanes from the graph
  binding.								[Rob]
- Replace "#/$defs/port-base" with "#/properties/port" in patch 1.	[Rob]
- Drop unused labels and "hdmi" for the node name.			[Rob]
- Drop status in patch 1.						[Rob]
- Link to v1: https://lore.kernel.org/r/20250714-it61620-0714-v1-0-3761164d0b98@ite.com.tw

---
Pet Weng (3):
      dt-binding: display: Add ITE IT61620 MIPI DSI to HDMI bridge
      drm/bridge: Add ITE IT61620 MIPI DSI to HDMI bridge driver
      MAINTAINERS: Add entry for ITE IT61620 MIPI to HDMI bridge driver

 .../bindings/display/bridge/ite,it61620.yaml       |  142 +
 MAINTAINERS                                        |    7 +
 drivers/gpu/drm/bridge/Kconfig                     |   18 +
 drivers/gpu/drm/bridge/Makefile                    |    1 +
 drivers/gpu/drm/bridge/ite-it61620.c               | 2817 ++++++++++++++++++++
 5 files changed, 2985 insertions(+)
---
base-commit: 7d86ab402f1ccd4190af9b9eda766e0f53a44bf1
change-id: 20250714-it61620-0714-ab4ab4ceff29

Best regards,
-- 
Pet Weng <pet.weng@ite.com.tw>


