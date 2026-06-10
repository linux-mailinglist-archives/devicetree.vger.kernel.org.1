Return-Path: <devicetree+bounces-309965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V7+IBruVKWqMaAMAu9opvQ
	(envelope-from <devicetree+bounces-309965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:50:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0A566BADF
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:50:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=exB4AQwT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309965-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309965-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF0BC319DED0
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C7834B183;
	Wed, 10 Jun 2026 16:44:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC8C2EEE60
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 16:44:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781109898; cv=none; b=FWsYgsWWG9+70QybwhumBDhpnMhkChwbqD/e6b37k3meV/au3HiOFRmplYauVjmtI+XOHFEFp0x0mUPvg6rDm/mrleB7XyFmUN9eNXieX3N/tzcNFbANm4wT7e4gu0Lw9O39Bn2HbARmA8qnosAaSBlj9q1JgR9ffGT7V+w04Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781109898; c=relaxed/simple;
	bh=M9xAM1mwjtNIZt7W5ObpY/pTN2GDy+yV0dPmPQmqBTI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pJSViYCG0uBMNW2Y20E0Dad6APrtS6JX2SFmSXsTMdFi+71s1VjyOPENSp+HMAOmQmpaAuyFIToWe8UCwY4GVVlJVcZxVT6ptijZwsi8c366VDgplQzklcb1E3X4GbRRAWRub5lSdKHc4vooP+GT4mlHoHjmBDGaf/M9lf25X60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=exB4AQwT; arc=none smtp.client-ip=209.85.221.42
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-45eeea039ebso3782620f8f.1
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781109895; x=1781714695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x0ZhyVKPYXfouIkDEL5h/2950Heo1BZVs//qWyHlTrY=;
        b=exB4AQwTIRVpcTujs3IshgspoccSQcf7LYOv9JtyOY789uUfr+JByF/tQFKGF58ceO
         BHiJU4OLfSVAx8/GWVbnlEe7MQcBpje7R03ysliDqhF6GsVnRloCEOk4UdNZf9OdPgQ/
         qL0jIXD1bxtCYRrvkxTXE2eW98Qqevf4LVfGeUECvrZy5QfFaA4ThBOt7wg295EmoZp6
         5f/9M7PQQ+SfhdHrfxKJPtkcMuAZLxTbgQ0SqQQ0sc34xtycm7TWXMMEavY83Ha4gtuS
         aFQeqQvemCBq5tjSo2U/gUP46BZKaaG2X1eflQhkEE+COlMc6EMN64egmHKI08tR6x4Q
         fjzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781109895; x=1781714695;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x0ZhyVKPYXfouIkDEL5h/2950Heo1BZVs//qWyHlTrY=;
        b=fHe24cCHAPw1nqtp1lVNNC4MECAQnUsNYKEojoZE5BvUhHm2w/MACuOJNlFI7UWa1p
         eFs6AUmYEPLIUYkIddJbLgPmmlJJE/PzvKmG9PtziAf1Jussn3b2EB3mZwKBzuoDHXc8
         rvWigeO0T5hD9IOHUCB9lXxN87Hi2MiBKnnNjb+MphFxfJP3r9fB6i6AGyPCsoyzRu+r
         sfMD1sPufG3QdqEh9lGTyusP2RTAyvkwZiJEUQh4OlFp0MKSV3uTWnJVSSdyicAPatRN
         7ZOAb9m4n5/v3nVZZ1fA36m2zz1RdkvhSIXjAGcZ0+sBEklJx2/MITurSDhvC8u/r7UH
         QqyA==
X-Forwarded-Encrypted: i=1; AFNElJ9BJatFpAL/vpRfifR/TTbOREPcQWe2rGnC9T9yN9DF/Afv+rIcSePUnUjtjYlPaLL6qpencMNZ8hFb@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe6UCbXu0UYD5j5vyWi6jBnr0CYeVu1jQPLYhKyTqB183967Gv
	PiM6WdQWGQzvyim1QLwoIQT4bYFfdTvgl93RSezDFF0UX+dZnzDkADa8baOncBtp
X-Gm-Gg: Acq92OGKmh8VypUWBHthSbwdx2J46gMY+zPl2BgWgdbO7P7Dc/rkFOv9cxUIXNtU7Zl
	XhlMNLE4hL3ZWSGbGfN5Fh1itP84B44Cif547AZVqFZYU/xXxFeykiet84fztRNnZSyXqu0AjOP
	vCDlA0d+AKU5Cz6jziB/Zuj/3CaWs52XmLZBKQtZ/LUyk34cnP1a5ZIdHkq6vY8wERu7dVeUFv/
	jwUrQkEJDnhrqwTflLtHZkDhBH8GrBODE58ahuKWyHGv7/mojg/Ux6nL0NDr1zw9wRx5PzCQv9S
	ERrJscQR394qAuuMYSDj+09/ROEz7ti1/NWIjwjOweWaU+4KsrCHZ9T72c6ANcjfgXu1KUI7nri
	+vLVSNetiQMQ+MG6SNokxziIUOAZxzSxpv6XVdtjlvWpd+lJbt+6ivi7hspT7KrTLHO6VYpZojx
	GloTN59nlvNWRl8YNuvafvDfJFhHepY3ihOFV2llW2
X-Received: by 2002:a5d:4b12:0:b0:45d:b14b:2409 with SMTP id ffacd0b85a97d-460302dcb6cmr29120193f8f.2.1781109894630;
        Wed, 10 Jun 2026 09:44:54 -0700 (PDT)
Received: from anthony ([2a06:c701:9cfb:2900:12ff:e0ff:fea5:3d2e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46028a6dcbdsm61156733f8f.7.2026.06.10.09.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 09:44:53 -0700 (PDT)
From: Amit Barzilai <amit.barzilai22@gmail.com>
To: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch
Cc: javierm@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Amit Barzilai <amit.barzilai22@gmail.com>
Subject: [PATCH 0/2] drm: Add driver for the Solomon SSD1351 OLED controller
Date: Wed, 10 Jun 2026 19:44:26 +0300
Message-ID: <20260610164428.180091-1-amit.barzilai22@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-309965-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:javierm@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:amit.barzilai22@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:amitbarzilai22@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[amitbarzilai22@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[redhat.com,kernel.org,lists.freedesktop.org,vger.kernel.org,gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amitbarzilai22@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C0A566BADF

This series adds a new DRM/KMS driver for the Solomon SSD1351, a 128x128
65k-color RGB OLED controller driven over a 4-wire SPI bus. The SSD1351
currently has no DRM driver; the only in-tree support is the legacy fbtft
fb_ssd1351.

The driver advertises XRGB8888 to userspace and converts to big-endian
RGB565 on flush via drm_fb_xrgb8888_to_rgb565be(), building on the GEM
SHMEM and atomic modeset/shadow-plane helpers with damage-clipped partial
updates.

The SSD1351 is implemented as a standalone driver rather than as part of
ssd130x. ssd130x converts XRGB8888 down to a packed <= 8bpp hardware
format (mono, grayscale, or 256-colour RGB332); the SSD1351 is driven in
its native 65k-colour RGB565 and does not fit that pixel pipeline.

For the record, the generic mipi_dbi helpers do not apply either: the
SSD1351 pixel path uses non-DCS opcodes (window 0x15/0x75 and write-RAM
0x5c rather than DCS 0x2a/0x2b/0x2c).

Smoke-tested on a Raspberry Pi 4 driving a 128x128 SSD1351 panel: the
display initialises and shows correct colours. The panel's sub-pixel
colour order is set in the controller's remap register, hardcoded to match
the tested module (as the ili9341/ili9163/mi0283qt tinydrm drivers do for
their panels).

Patch 1 adds the device tree binding; patch 2 adds the driver together
with the Kconfig/Makefile glue and a MAINTAINERS entry.

Amit Barzilai (2):
  dt-bindings: display: Add Solomon SSD1351 OLED controller
  drm/solomon: Add SSD1351 OLED display driver

 .../bindings/display/solomon,ssd1351.yaml     |  47 ++
 MAINTAINERS                                   |   7 +
 drivers/gpu/drm/solomon/Kconfig               |  14 +
 drivers/gpu/drm/solomon/Makefile              |   1 +
 drivers/gpu/drm/solomon/ssd1351.c             | 556 ++++++++++++++++++
 5 files changed, 625 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd1351.yaml
 create mode 100644 drivers/gpu/drm/solomon/ssd1351.c


base-commit: 83e8d8bbffa8161e94f3aeee4dd09a35062a78c8
-- 
2.54.0


