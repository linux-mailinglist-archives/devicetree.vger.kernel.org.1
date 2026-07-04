Return-Path: <devicetree+bounces-320437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wgU6Fs+/SGpmtQAAu9opvQ
	(envelope-from <devicetree+bounces-320437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 10:09:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DDE707073
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 10:09:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=UbbCaxfI;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320437-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320437-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 732B33002A3A
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 08:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64A26320CCC;
	Sat,  4 Jul 2026 08:09:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9271D16DC28
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 08:09:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783152588; cv=none; b=TswgpQ7Lv4O3eXMeF1RDAp6UxjVL/00RIfsd9GkzQKHLBISUIf/hz1RgrizTNDer6fAJLYkkb+MdKEy9yn8gkn01a/5IJqPfRPP9ad3F+dhQe8DGy+CmJX1DZlkPKFXFdCFhzr2/y2fc9IQKD+5GF7rDo0tz8V10NVC0A0RyDcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783152588; c=relaxed/simple;
	bh=3Gb1qLr+4hY7hXNMpgrfujyyQ9wkokz41UDQYuWYbUE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eBEOUCh+vST6FtsTag1BIa1XZg+Gyuccxaf12GRTmxzYVl1yd0ORsFaezvk7WrTK0yzRQ6pXusRcjrwiSaEQLLYjp+VQBJTNWCMWfE9yarmqLR+XNCAAWtObT7gEEZgAt+FIbXF6/vPghPRNpi5teVd47jW5+qDHXcfH2r5y7cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UbbCaxfI; arc=none smtp.client-ip=209.85.128.53
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-493c19bad03so11484355e9.2
        for <devicetree@vger.kernel.org>; Sat, 04 Jul 2026 01:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783152584; x=1783757384; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qUI6LtKyM70E/t6OmoCo0C4PhkrVFGAuXytOxTDiAXA=;
        b=UbbCaxfIlhsI84v9wjbv+WBFSnFY6f5HWmxwvxt5sWOOVcEofA1PHHKZDfIn0Ykimz
         BnrwAMvCoDSi349BeCu4guKkwC9PVvJGPDLLnIY0BQbCo+WGubH9T8WLumEZNjIOyigA
         VAW3bKj19HKJDEaq0ryXu4uqPJhQ1pud+MeNeZ1e70arGP+yhQvyiGVDTPjs7ni2PMhX
         HY964dEnMw+3u+VOpiIrhO4HTEZl65hM55cPKwo1wtf8YKbhVjCBpzjkTK3M68r2LvFs
         8PQrly74gl7sb7WVoU2tCbzfJvBiAOxrxdcDlDy39WXYCHOs/CzVXcNmIi57D0GNWFa1
         Xxkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783152584; x=1783757384;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qUI6LtKyM70E/t6OmoCo0C4PhkrVFGAuXytOxTDiAXA=;
        b=AiCjxy3Eo9aW50Zpa1r37DxfL6PKxQEy30v80ymdDjhnOLxrv30O70g8RBGCdozjHH
         cswKnm13MjIIIOCD+XlMf8/FHwdSssEMgxTID0Ql2VWw+4YnlSb6G/7WH929Dt6KuvH3
         V/TvTMhibfyh3z/Se5JlTA98J0Cijt4xIVKqFZgiU3Z4Fln8ndrSYOFO6JFa5j7Zrz1u
         vXeJCdPEfhr+twPLhmbpJAVFrKzeosw5opWldAiD9FTkkuxeT5hq4RoZvf+cMeeYzdjO
         0tRmfvktgFfR91A78Kq6dPV8OX5Hv/0cMdoaQH0iNMDcPeFamJe3dZSXo2Oc23vLQsw/
         yGGA==
X-Forwarded-Encrypted: i=1; AFNElJ8eSVjBJp0yxBbV1cQPPmo6A+9hRYxI53JBwU3O5dczvH05U1/Q5fEtNi80SO5YT5/mZzjKtfIrgWUS@vger.kernel.org
X-Gm-Message-State: AOJu0YwYgHDWb1QieI51XOc78RM9gXKeAw1N1PdB7f2qar0Eha+qcBPr
	qCNKjVwqI3AqwNRmuZLqUVc3qbkO2fm+8w1hWPA5ysXqUdTZNB8SRtGR
X-Gm-Gg: AfdE7ckkzybZf0TzGlThMhaWzQ4t4BOKLuoE3ceAiRXyXE5euGMD28PwrbqcncWJsrH
	J2ilYEIdVQcu4wXkdhUAuuiiz+M7OGtNsaNTfUOqbWShVEbDBoJRHOWnQcQrsRnsZ3jCYVwG0h2
	rfhqTS3csN7IXvglhkES9cVYZUgRTvCAVkYPnZYCbJe//RPylkyTjHdYRjgMCoa2Qv7UrDKrVP3
	GOXe+akBKxND6ymGN9BTVZeGfvKaKWdJwhX8ReWr06rFlwtpWyxOE76ASDDw54Spw+x2RYJRNgj
	/ujMAqlTOoBexkOc0H7nOz9jcMEM/XUb5OgmfY2HnMzbcJqnAe095Nvf3/xSFiIlQRYIUX408PH
	T7dlUJyDGEgtRuQ/eauBbhFfmMh9fImMlkXdYAZC4H6Y4osQ1mhghqRvMLxAHXAf74Jn6kqWV04
	DwxGoP296Wb//cBGOdInwd/vg1UkI=
X-Received: by 2002:a05:600c:5897:b0:492:4cce:53e2 with SMTP id 5b1f17b1804b1-493d11d0775mr17309745e9.3.1783152583419;
        Sat, 04 Jul 2026 01:09:43 -0700 (PDT)
Received: from anthony.local ([2a06:c701:49b2:4c00:12ff:e0ff:fea5:3d2e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0960634sm6143055f8f.26.2026.07.04.01.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 01:09:42 -0700 (PDT)
From: Amit Barzilai <amit.barzilai22@gmail.com>
To: Javier Martinez Canillas <javierm@redhat.com>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	dri-devel@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Amit Barzilai <amit.barzilai22@gmail.com>
Subject: [PATCH v3 0/3] drm/ssd130x: Add support for the Solomon SSD1351 OLED controller
Date: Sat,  4 Jul 2026 11:09:22 +0300
Message-ID: <20260704080925.75113-1-amit.barzilai22@gmail.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-320437-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:javierm@redhat.com,m:andriy.shevchenko@intel.com,m:dri-devel@lists.freedesktop.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:amit.barzilai22@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:amitbarzilai22@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[amitbarzilai22@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amitbarzilai22@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A5DDE707073

This series adds support for the Solomon SSD1351, a 128x128 65k-color
RGB OLED controller, to the ssd130x DRM driver:

  - Patch 1 adds the device tree binding.

  - Patch 2 switches the SSD133X family from RGB332 to RGB565, bringing
    65k color to the SSD1331.

  - Patch 3 adds the SSD1351 as a new SSD135X_FAMILY, reusing the
    SSD133X plane/CRTC and blit/clear helpers. The only data-path
    difference is the explicit Write RAM command (0x5c) the SSD1351
    needs before pixel data; it also gets its own init sequence.

Testing:

  - The SSD1351 (patches 1 and 3) is tested on hardware.
  - The SSD1331 RGB565 change (patch 2) is compile-tested only; I do not
    currently have a working SSD1331 panel. Javier has kindly offered to
    test it on his SSD1331.

Dependency:

  The SSD1351 reuses ssd133x_update_rect(), which programs the column
  and row *end* address as a relative offset rather than an absolute
  coordinate. This breaks partial updates that do not start at (0,0). A
  separate fix is posted at [2]; until it lands, the SSD1351 shows the
  same partial-redraw artifacts. This series applies independently of
  that fix, but the two are best merged together.

Backlight:

  While adding the SSD1351 I noticed that the shared backlight path
  (ssd130x_update_bl()) is only correct for the SSD130X and SSD132X
  families, where 0x81 is the contrast command. On the SSD133X, 0x81 is
  "Set Contrast for Color A", so brightness changes shift the color
  balance rather than dim the panel. On the SSD1351, 0x81 is not
  implemented at all and the brightness byte itself would be executed
  as a command opcode (e.g. 0xae is Display OFF). This series therefore
  does not register a backlight device for the SSD135X family. I plan a
  follow-up making the backlight path family-aware (scaling
  0x81/0x82/0x83 together for SSD133X, 0xc1 contrast A/B/C for
  SSD135X), which would also fix the existing SSD1331 behavior. Happy
  to reorder if you would prefer that rework to land first.

Based on drm-misc-next. Note that the series depends on
ssd130x_run_cmd_seq() (commit 208211646fb3 ("drm/solomon: add
ssd130x_run_cmd_seq() for batch command execution")), which is in
drm-misc-next but not yet in mainline.

Thanks to Javier, Andy and Krzysztof for the reviews.

[1] v2 of this series:
    https://lore.kernel.org/dri-devel/20260622152506.78627-1-amit.barzilai22@gmail.com
[2] ssd132x/ssd133x update_rect end-address fix:
    https://lore.kernel.org/dri-devel/20260622122604.32500-1-amit.barzilai22@gmail.com

---

Changes since v2 [1]:
- Drop patch 4 (staging fbtft fb_ssd1351 removal); it was agreed that
  the fbtft driver stays.
- Patch 2: remove RGB332 support entirely and drive the SSD133X family
  at RGB565 unconditionally, instead of adding a per-variant format
  flag to the deviceinfo struct (per Javier). Retitled accordingly.
- Patch 3: drop the 120 ms post-reset msleep(); it was a generic fbtft
  value, not an SSD1351 datasheet figure. Retested on hardware without
  it. A comment noting this is left in ssd130x_reset() (per Andy).
- Patch 3: explain the ssd130x_write_data() constification in the
  commit message (per Andy).
- Add trailing commas to non-terminator array/enum entries and drop
  the comma from the init-sequence terminator (per Andy).
- Declare the loop variable inside the for statement in
  ssd130x_write_cmd() (per Andy).
- Split declaration and assignment of ret in ssd133x_write_pixels()
  (per Andy).
- Fix comment wording/plurals ("3, 3 and 2 bits") (per Andy).
- Patch 3: skip backlight device registration for the SSD135X family;
  the shared backlight path would execute the brightness byte as a
  command opcode on the SSD1351. To be addressed by a follow-up making
  the backlight path family-aware (see the Backlight section above).
- Collect Reviewed-by tags on patch 1.

Amit Barzilai (3):
  dt-bindings: display: Add Solomon SSD1351 OLED controller
  drm/ssd130x: Change SSD133X color format to RGB565 from RGB332
  drm/ssd130x: Add SSD135X_FAMILY and SSD1351 support

 .../bindings/display/solomon,ssd1351.yaml     |  42 +++
 drivers/gpu/drm/solomon/ssd130x-spi.c         |   7 +
 drivers/gpu/drm/solomon/ssd130x.c             | 289 ++++++++++++++----
 drivers/gpu/drm/solomon/ssd130x.h             |   5 +-
 4 files changed, 278 insertions(+), 65 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd1351.yaml

--
2.54.0

