Return-Path: <devicetree+bounces-307928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nD7rI9ApJmrTSwIAu9opvQ
	(envelope-from <devicetree+bounces-307928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:32:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E4F652407
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 04:32:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=YNhcvSHc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307928-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307928-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B8C530062F9
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 02:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1221A3101A6;
	Mon,  8 Jun 2026 02:32:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7BEB26E165
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 02:32:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780885966; cv=none; b=h1caSIiMvfZpLUqK0CGr6fSM1o38OVJz4O8qWzoo8TdIITqbDFc3zzJnapF0hRlgYPRzXglGWTFG6EGxk4QV5E++Pw95C5GDSLr40R1c+aGDO4/3i6l2rux+DPwgk+tVh33eNdHeJW62VjXPrOyvVPM+SwCsJFFv4GuF7rYOxlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780885966; c=relaxed/simple;
	bh=dic55TwcktDXLUB4rYeQvy2MaNFTsEOyNZ2K1+9Zk6s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TPYSGaJK3scMXEwvoNq8eaKYAmqZZR5Vj0fHoJhFfgiJYvQFEE5fGjfTlcx7H3q4uuHpGSYzknvSlP6+/7p+7X6jQWl/jITDs9ju4S2mJH+t+hQnWJuI8INf9tUcd2+1u8GuNnkriXBGvGsgJg1JIg/QGTEwZJn4qUWTSi475PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YNhcvSHc; arc=none smtp.client-ip=209.85.214.177
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2bf2247e38eso39443895ad.3
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 19:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780885964; x=1781490764; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QgcMG5nFEAs89H2OIuVhEyONVcKyhkh1xoo32LhXMAQ=;
        b=YNhcvSHclyCKuKV8LUTC1ZPoQvJSddjIzY8F6cSwjM6sZ6LB3JgGiDdx2+BYo9nvh3
         HgOIAc2IsPEZuzIrXq5cIdmfHKkYqc+YF5usb/XXgwHdoOZ+EAweid3zNk9zIBk5Zonu
         /oOccY4pfENwbw78YTOTCP6Kp+rCtHJPlPsjRuc5bkErsV7fwhjiRhzrGKx/hFndeKuu
         FJ2vwhJiqxAI2dhm2/F2aMEm92vQ2nnBPA/m0DRkvmLEczdf98w6FMuUHUmqA5JTJ7bN
         Uu8Z7ZP7MEjegJc1pTq9n6w6+GoEQ5oBL23GirZ0Cz2z08yoM2VdOahjzSBAuSTRF4Hd
         D5dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780885964; x=1781490764;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QgcMG5nFEAs89H2OIuVhEyONVcKyhkh1xoo32LhXMAQ=;
        b=FoPtuIU2oIdETw7EkkS7BLKB59ep96SsX32HsF80fLXlN12r+Imb7ZuXMydrKcYbro
         QViZfYvKWgIn7bEB++qrPkUNB2zv83gbP7qF6lbCCoGFuyu8VDU+lUZqiZIJi1RpQZFq
         5jKZ/42rL8T+PXk76ewZgQFtR0HCIYOZGrG1PPT17ebYBjohJIK56NE2iHGZ7AR/J/6w
         wUXkyprMG/QRykczbRM9MykvSYp4mJ7KZgO8QYunykJW+T7p3F3tccZPa9xMYM2lqIQy
         ABMRdE+YGNJn7z2TFjlpZto1gmIXqSFOICOvZd/VhI6gPhD73x9UZVGYr2N0FfpukW+m
         Fy/w==
X-Forwarded-Encrypted: i=1; AFNElJ/lPQVb2h2lpFLoGlcM3EkLQrf9SxGu5ScO0KgP7FzOe9oBa4YQpbzIQblx85LU76DWnhoVODcJmlEx@vger.kernel.org
X-Gm-Message-State: AOJu0YyKH2IOcZLfdpmOGitSoczSUIlD+4Ec6gzAJMdYSMz+DXWXq75H
	H+zXaIYVXIz4VHS91+qrsqHo7wsoc0oYHeMd3H4bs3pd2BjxG5TAaG2Q
X-Gm-Gg: Acq92OH8RoI/ijwNV9W+oWbJUMZT+8VW+RtHQRYYoGdwc1alKFO89jDHvhfORxqdmmc
	BWw0VN2HXFmlIxALASVosASgo+iND0snXZ9uEVDx6DmQsuQBxNCuGMV8760yS3ZbLOvHgWS1SmV
	hAc8IaqhZAe5y+XPE6YOjfebsrCPRjpfZ5CP6tx4/huid5Vr1I9+W2ROvSKx3HHp3rtaXZzMNzM
	QEv/tggGIF2MkQ1lEuQbYfy7Se0lxVhT6AOAfb0PlZl1aJQdUNlQB2NbeD4Ju5338GT/18PuedB
	0rC9lWRbonJ4CZKK9WIwC0SEjI1eMGiROEuV62O8eX9WgIdX4bELGFsfeEJ2rlw8l5b/8N2sIFQ
	zBA0oSoEINkIxOyP/unOeeTs6vPt+s/WppNprYhMUYd3H7bJhZK0PjLxPioRZaNdAHaNAUJFdf3
	FCN/7G/+VIZRBy/gEyRq1gb97l6ck6S0IXra5kgvLVN4BH3bLgU3cT+uYliU8pb3L2EkXid80Oc
	9PCARPKzBVqQnMIQpgIqk4=
X-Received: by 2002:a17:902:ea0a:b0:2c1:564b:4f47 with SMTP id d9443c01a7336-2c1e8495453mr161310405ad.26.1780885963925;
        Sun, 07 Jun 2026 19:32:43 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c245dd3b5dsm38143485ad.81.2026.06.07.19.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 19:32:43 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: zhengxingda@iscas.ac.cn,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v3 0/5] drm/verisilicon: add Nuvoton MA35D1 DCU Lite support
Date: Mon,  8 Jun 2026 10:32:32 +0800
Message-ID: <20260608023237.305036-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307928-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[iscas.ac.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_SENDER(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:zhengxingda@iscas.ac.cn,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:yclu4@nuvoton.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:a0987203069@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[nuvoton.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 01E4F652407

This series adds support for the Verisilicon DCUltraLite display
controller as integrated in the Nuvoton MA35D1 SoC.

The Verisilicon DC driver and its DT binding were originally written by
Icenowy Zheng <zhengxingda@iscas.ac.cn> for the T-Head TH1520 SoC, which
carries a DC8200 IP block.  The present series builds on that foundation
with gratitude to Icenowy for the original work.

The DCUltraLite is a different variant in the DC IP family.  While the two
IPs share a broadly similar register layout, a number of differences
prevent the existing driver from working on the MA35D1 without
modification:

  - No CONFIG_EX commit path: the DC8200 staging registers
    (FB_CONFIG_EX, FB_TOP_LEFT, FB_BOTTOM_RIGHT, FB_BLEND_CONFIG,
    PANEL_CONFIG_EX) are absent.  The DCUltraLite uses enable (bit 0) and
    reset (bit 4) bits in FB_CONFIG for direct framebuffer updates, and
    requires a per-frame VALID bit toggle (FB_CONFIG bit 3) to latch
    configuration changes.

  - No PANEL_START register: panel output begins when
    PANEL_CONFIG.RUNNING is set; the DC8200 multi-display sync start
    register at 0x1CCC does not exist.

  - Different IRQ registers: DISP_IRQ_STA at 0x147C / DISP_IRQ_EN at
    0x1480, versus the DC8200's TOP_IRQ_ACK at 0x0010 / TOP_IRQ_EN at
    0x0014.

  - Simpler clock topology: two clocks ("core" bus gate and "pix0" pixel
    divider); no axi or ahb clocks required.

  - Single display output: no per-output indexing beyond index 0 is
    needed.

  - Hardware-discoverable identity: the DCUltraLite exposes chip identity
    registers whose model field reads 0x0 (revision 0x5560,
    customer_id 0x305), allowing the existing vs_fill_chip_identity()
    path to identify the variant purely through register reads.

Patch 1 generalises the verisilicon,dc DT binding to accommodate the
Nuvoton MA35D1 SoC-specific compatible and the variant's two-clock,
one-reset, single-port topology.

Patch 2 adds the register-level macros needed by the DCUltraLite ops.

Patches 3-5 introduce the driver changes in three logical steps: the
vs_dc_funcs hardware ops vtable with DC8200 ops extracted into
vs_dc8200.c; the DCUltraLite ops in vs_dcu_lite.c with the necessary
Kconfig and clock-optionality changes; and finally the DCUltraLite HWDB
entry that gates hardware recognition once all support is in place.

All patches have been tested on Nuvoton MA35D1 hardware.

Changes from v2:
  - [dt-bindings] Replaced standalone verisilicon,dc compatible with the
    SoC-specific nuvoton,ma35d1-dcu added to the existing enum list,
    paired with verisilicon,dc as the generic fallback; this matches the
    thead,th1520-dc8200 pattern and was explicitly requested by the
    reviewer.
  - [dt-bindings] Removed standalone 'port' property; kept 'ports' in the
    global required list; MA35D1 example now uses ports/port@0 structure,
    following reviewer feedback that a 'port' alias should not be added
    since DC8000 (single-port) also supports DP output.
  - [dt-bindings] Replaced additionalProperties with unevaluatedProperties
    to allow per-variant if/then clauses to add constraints cleanly.
  - [dt-bindings] Added separate allOf/if block for nuvoton,ma35d1-dcu
    constraining clock-names to [core, pix0] and reset-names to [core];
    the if/else structure from v2 is replaced by two independent if blocks.
  - [dt-bindings] Removed all description strings from if/then branches per
    reviewer request; descriptions remain only in the top-level properties.
  - [hwdb] Removed VSDC_MODEL_DC8200 and VSDC_MODEL_DCU_LITE macros; HWDB
    entries use literal values (0x8200, 0x0) with inline comments.
  - [hwdb] Added enum vs_dc_generation (VSDC_GEN_DC8000 / VSDC_GEN_DC8200)
    and a generation field to vs_chip_identity; funcs dispatch now uses
    generation instead of the model register value, per reviewer suggestion
    (DC8000 has model 0x8000 yet behaves like DCUltraLite with model 0x0).
  - [hwdb] Moved the DCUltraLite HWDB entry to the final patch in the
    series per reviewer request, making it a gate that is opened only
    after all supporting code is in place.
  - [ops] Split v2 patch 2 into two patches: register macros first, then
    the per-variant ops table, per reviewer suggestion.
  - [ops] Extracted DC8200-specific ops into vs_dc8200.c; DCUltraLite ops
    are in vs_dcu_lite.c; dispatch in vs_dc_probe uses generation field.

Joey Lu (5):
  dt-bindings: display: verisilicon,dc: generalize for single-output
    variants
  drm/verisilicon: add register-level macros for DCU Lite
  drm/verisilicon: introduce per-variant hardware ops table
  drm/verisilicon: add Nuvoton MA35D1 DCU Lite display controller
    support
  drm/verisilicon: add DCUltraLite chip identity to HWDB

 .../bindings/display/verisilicon,dc.yaml      | 103 ++++++++++++++---
 drivers/gpu/drm/verisilicon/Kconfig           |   2 +-
 drivers/gpu/drm/verisilicon/Makefile          |   2 +-
 drivers/gpu/drm/verisilicon/vs_bridge.c       |  20 +---
 drivers/gpu/drm/verisilicon/vs_crtc.c         |  38 ++++++-
 drivers/gpu/drm/verisilicon/vs_crtc_regs.h    |   1 +
 drivers/gpu/drm/verisilicon/vs_dc.c           |  13 ++-
 drivers/gpu/drm/verisilicon/vs_dc.h           |  33 ++++++
 drivers/gpu/drm/verisilicon/vs_dc8200.c       | 107 ++++++++++++++++++
 drivers/gpu/drm/verisilicon/vs_dcu_lite.c     |  78 +++++++++++++
 drivers/gpu/drm/verisilicon/vs_hwdb.c         |  14 +++
 drivers/gpu/drm/verisilicon/vs_hwdb.h         |   6 +
 .../gpu/drm/verisilicon/vs_primary_plane.c    |  32 +-----
 .../drm/verisilicon/vs_primary_plane_regs.h   |   3 +
 14 files changed, 385 insertions(+), 67 deletions(-)
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dc8200.c
 create mode 100644 drivers/gpu/drm/verisilicon/vs_dcu_lite.c

-- 
2.43.0


