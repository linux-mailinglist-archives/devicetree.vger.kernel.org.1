Return-Path: <devicetree+bounces-274418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLvoMVFDsmlFKgAAu9opvQ
	(envelope-from <devicetree+bounces-274418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:38:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 416DD26D262
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:38:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B7ED7302D5A3
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFFC139657C;
	Thu, 12 Mar 2026 04:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cgS2pzQW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1A1F373BE8
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773290318; cv=none; b=b+73kwmggYRxC4Xy0idJlxtFsqo3SSyOcNC+dxgZpZH9ejlm5bKoltch/4ntgJxdRinyp6hBsGptwv0Zro2wN5R8M1gmUhFGjMH1l3v13U7USe4OgMeX4GlTzw/T9njT3KVVxRSx5xvZz4WzPJCNrRYp6W5KqccLzpBJef0RFkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773290318; c=relaxed/simple;
	bh=4mPW2KCDwFnBKr4La5QSPbgANUaDPcsaWqjSYRaqyCY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SCcQVeHiErR0D7OiaFTTMx1BGHHk0ckHb/er5R5ZUPpKlSe7rqx8lm/lpSI+I/in2ghiYd+0McdLYV/ltLUOOy+G00QogREdA1y4JLtcIzVXb1U0eZDmMnv27lwSYKQTb0hgFW+wIA6hxsGxlh+1sMBIDGbwb3NpEPyzw0/JW/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cgS2pzQW; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-3567e2b4159so263298a91.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 21:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773290317; x=1773895117; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G86kT0pIOAFLs1KKlevO+I1uz0hOs9nckbA6KVOb6Gw=;
        b=cgS2pzQWB7LSDt3clwc2TNtamOXBZ0eZ2ApV0ATgdxdAT+gNvnHu48YYS64m9NfPKR
         95iKhN7i/AF8CViOa4jWVkYCtWoIvMmjaQsJHNqQY0PTncbPugs6sKhxeCwXXW673gM0
         +uK3TzNfHTk9qmLOUdfTNIBdnGeAe6IVuNkoKVHgwFSynRlli0dk/J/vI/C7HuNmvHTI
         +72qleymJoFNZYrn3QGslBnJLzEwnYY57OvFaQEKfftKP8INmg7jcKKlU6og+jRQpclV
         YH3R0UmZAWs3zPP/zoOIidZbKOJ0+R3Lak68oorcSQT6gTIAYJne/j+x5/hSBA6poebR
         0hVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773290317; x=1773895117;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G86kT0pIOAFLs1KKlevO+I1uz0hOs9nckbA6KVOb6Gw=;
        b=JnH1bIGF62qk0f5MPnZcTzqth51u2YvMtR+0mDf2mNRfqutq58NPqG4iq9WQOl4CSE
         kWOwoeQkKhQfop4SBiA0BFKFsYQCDTbPNSZ05MFU0xeQk/6Pgh0aZl7tjRTbornv0A/x
         tJkz/1DDRUb7+lX/FQE1V1aIjssb9dAT0yNgpbZPepBpJxBhQjts+Kq4HQD1Y0yYWvIw
         d9BnXqmZp0QfVKcUwgeDfkR+Yr/LiF2cfug2+KBKQEsJNSb8SvcbJkv/u1do8BOlhDsn
         z4DlEYrX59MVBBoeNQEq4BaaAD8OzTo/eVpsiFsHHwYrkY4RgqXvL+5XVs9bvvYa+xeG
         ehDg==
X-Forwarded-Encrypted: i=1; AJvYcCXUpOb9Ol7dclHPz/S/3SjbX+GGVMR2Jqren9Xn8aVUJ43L3Pg6rhjTNCYhogFdiGD6Y/lImFl+NIq6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+DUA7bTYpG/lOQUnmED7LI3DZnBbCMsm9wlRSDfdp7yXHFqyT
	CJvbSW4d6p3OIDGMO6nBgLMJVRzpPvKaC6bh6WNPc7tBWqavGB9nJiGH
X-Gm-Gg: ATEYQzw6KKDVKYHN0wpMkVyBmz0WSwWNi4I3hzxVV7/Iuub5ma+dBvZaCaucfO8jPDa
	NGnyl3Q/Lp0Fh7OnJWwsvgbGxvS6cOZ4PVZqwRBBPnwahbZnzY0IMW0MSEwe7liq2+FS3S2EZcg
	iyFts7d0NSZT7L+JSgLQq3stshpsn208Ej9VpzeAwVtHedAXzgQkDDRK+XuIfWwiIqHnXl5OByX
	6ZFLVrl9nnL0tt3NOeUJIDkdxQeUkRYv4tCWsCxQsaCQqZeeCUZwVq/0QzZ6kj5IvnBCCQFfzf8
	zQAssMNUEd8JWjVnAF33xYbBObT0bpmd7SEMTIcAFlMUG9fpk3Zv73JazosYZCVeINEhbTC4jPs
	q7v6f+//AWO2hBxt0Ljq6+s83Ydvw77VeQye1L3BMkg4G5ANa/OBe41i8LM4qWcmUjN0cQxSBRG
	ZYcD6AqnlqKZe7yYaipi09PWsvdVqssTvJqnfRXpwVSo/QH3rgbyuwkGe+IQg=
X-Received: by 2002:a17:90b:1d12:b0:35a:3e2:7cbb with SMTP id 98e67ed59e1d1-35a03e28b34mr3993313a91.29.1773290316882;
        Wed, 11 Mar 2026 21:38:36 -0700 (PDT)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a030490b9sm3793460a91.17.2026.03.11.21.38.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 21:38:36 -0700 (PDT)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	marex@denx.de,
	valentin@compulab.co.il,
	philippe.schenker@toradex.com,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v2 0/2] drm: bridge: ti-sn65dsi83: Improve dual-link LVDS support
Date: Thu, 12 Mar 2026 10:07:41 +0530
Message-Id: <20260312043743.261475-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,denx.de,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-274418-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 416DD26D262
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi all,

This patch series improves dual-link LVDS support in the SN65DSI83
DSI-to-LVDS bridge driver.

Currently the driver programs identical horizontal timing parameters
for both single-link and dual-link LVDS modes. According to TI
documentation, when operating in dual-link mode the horizontal timing
values must be divided by two before being programmed into the device.
Without this adjustment, some panels fail to light up or produce
corrupted output.

TI also provides recommended register settings for dual-link LVDS
operation. This series adds support for an optional DT property
ti,dual-link-video-mode that enables the required configuration
in the driver.

When the property is present, the driver applies the recommended
register settings and uses a simplified DSI video mode configuration
to ensure correct dual-link LVDS operation.

Summary:
 - Add DT binding for ti,dual-link-video-mode
 - Add driver support to enable dual-link LVDS configuration
 - Apply recommended register settings for dual-link operation
 - Adjust DSI mode flags when dual-link mode is enabled

Changes in v2:
 - Introduce ti,dual-link-video-mode DT property
 - Add DT binding documentation for the new property
 - Update driver to read the DT property and apply dual-link
   configuration conditionally
 - Adjust DSI mode flags when dual-link video mode is enabled
 - Update commit messages

Thanks,
Anusha

Sudarshan Shetty (2):
  dt-bindings: display: bridge: ti,sn65dsi83: Add dual-link video mode
    property
  drm: bridge: ti-sn65dsi83: Add support for dual-link LVDS video mode

 .../bindings/display/bridge/ti,sn65dsi83.yaml |  9 ++++
 drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 52 +++++++++++++++++--
 2 files changed, 57 insertions(+), 4 deletions(-)

-- 
2.34.1


