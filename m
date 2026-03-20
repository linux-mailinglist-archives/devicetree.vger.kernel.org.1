Return-Path: <devicetree+bounces-278363-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJozOJh5vWmt9wIAu9opvQ
	(envelope-from <devicetree+bounces-278363-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:45:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7782DDEA5
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:45:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 778B13024A04
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 16:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 102A03D2FF7;
	Fri, 20 Mar 2026 16:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fODMX3aD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B9D3D1CCD
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 16:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774024924; cv=none; b=sX4ZW5nDRXccAKfnJ4GDeCUPI2J2S2tZoDql6n2NoLiSscAKlNTYwESKfXS1ru1ZDseZzO+uGKIRR7uC5P06BiGwhu4nn7EpKxfgQpNUqmUjIQS3gsg7GlFETc8Zj9KSkBSFFWFmdvAa21tjnTpRxcNJflP8OStXF4ShyHqYm6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774024924; c=relaxed/simple;
	bh=Hi/TIoOUSM841qakUTbu3JycSYmvOXP03h79Q6RySHQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qDzd5GkKiI+rw5NrPdoM8B5JyldOJ23w9MpQaUoJEicvsU5Ww/4Q1nEUKreyNr7/FpxyBj1IEcyThM300ijT0P6VAU3fh4zdoKN9JiqryCU4LPrQFMcNA+hHEmBpxqo5kc9oWuV9Kt1+MqwJ7lEFBlWtOSfRlrzHSCUJIN5QWWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fODMX3aD; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso7696425e9.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 09:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774024922; x=1774629722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3By9JWUmg9qQ/pqhNEezgrYY//+LwMSXyyt4mTlVhH0=;
        b=fODMX3aDChTLmxSRB/oocQIORSjHtOZY4j+OHuZs273z6lKDMHPeTxZ+zzcVYvjmNg
         NhgMTRqff+mwUg4qGP8/qadWU5oute8FhmI/vTyY5yFFNDW/nIGEAcZsqBKqr5cZqEBR
         qloCrl7DslBfB/MK2tTaq1dLCrjr/NMJdE5IPuHgays5+Hj7Q7Ji6j0t3jv0OTz9QXB0
         BxyPbpT6PSlzRYCeGANZ6vsXvBwJolCbtiT/XWa9WRZ4SYkIX8K+0+N2sHPQmqzgbPhv
         pGdR7HOPhPnfjVWyApnGvmPOuRYHHgY4tlivUPHB1aDSA3efcUhhDc/tKwd4m7fWGqH2
         HMmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774024922; x=1774629722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3By9JWUmg9qQ/pqhNEezgrYY//+LwMSXyyt4mTlVhH0=;
        b=j1FgwOw4q60qxIrIc41LSd0lnAIX9VPXnGQjh+9U2qwOPU8vZw5ecrxE017WFQH2N2
         xL4SRnelnbwf/QIhc1kjJfMuyD/iUcZd4TqwEUkTnCY5Ycg3JNt/EtKTMmcAFvhZYFeu
         rVJMq+Khra7qywnKAVK+PHuuxrmCqWhNMlOIAzzkFkRffQUr+9sR+SqMBsQ2JpwCJaf8
         M6ZR85HZm10xuOt5wQy4zdMMXUBBObHdvZOeB05rFqrx2IUDGykkX6Zd+5fRCgVqGUcz
         ffrU7VoiN3zIhlSSmBNHjDa49JpRnfNlwk9mDjYeckr3P9wNnGs2W5XclywuxdLGtdgC
         2HnQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5AzJ+jOq6nV3D9s7F3mDH6QBAe53RlRT47b77Rukdo8RDU7Hen8dO9DLnb31PSDH/ncTced+LgApk@vger.kernel.org
X-Gm-Message-State: AOJu0YzYhitj5HHoKklf7jlKvezYTdI5/zM9+mradQ9Qudg3VEqiBTMH
	1s8BpBYNwGWzGZPisu7D2bMie3+zMBakOmnr7jIoG1zYlhMhRRk9DHHH
X-Gm-Gg: ATEYQzy7n49CpbjZJl1ulW4bHjgFgTR9YbOaR1YGXNAglIFcNszCk/CFQNiZ6L8H/2e
	+ilSqBloHyLFQs4j8gH2Ipx+tFMmxAvuX7t/MIXMEbn45AdtKR7RkUVCHNs4z3ME5qI97Rfolkx
	ZR4g2DNKBRdoYqeYYnJScP1AskCuiX9/ImbpQ9eaTPy2nwMf6JZNgdzZvsCC/tFsrpp6FZNk3W1
	2T2wbQDh9HEqEOlAay5iK/sLMFBPhSMdCyK+ogEqlKmDxwRD+iE6LB83ngp2llP3KLVs3LMLVOv
	0r3xCxGLPD8CW+FrjLFSMxmoE7B9CaCoa30nZtJMVc4kvFqdTIVQeoQgwmQmM6MJn3Q1WyKtjsK
	7rd5Nzipmc0ZkhS7yhZ/NWQTJl+XZhxIWkqlkA2vXYHbEVwKP9RVj/FtF4PNHIFL7sniKhxLxdJ
	tMQAY1FtiXDeV5V0ixGI6MJGl/D/DNk98=
X-Received: by 2002:a05:600c:c09c:b0:486:fcdf:c065 with SMTP id 5b1f17b1804b1-486ff01caa3mr43316465e9.27.1774024921602;
        Fri, 20 Mar 2026 09:42:01 -0700 (PDT)
Received: from biju.lan ([2a00:23c4:a758:8a01:5b93:d2b1:bc5c:9231])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b64703650sm7016575f8f.20.2026.03.20.09.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 09:42:01 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Steven Price <steven.price@arm.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	=?UTF-8?q?Adri=C3=A1n=20Larumbe?= <adrian.larumbe@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 0/4] Add RZ/G3L GFX support
Date: Fri, 20 Mar 2026 16:41:46 +0000
Message-ID: <20260320164158.487406-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278363-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,arm.com,collabora.com,linux.intel.com,kernel.org,suse.de,glider.be];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.846];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: EB7782DDEA5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Biju Das <biju.das.jz@bp.renesas.com>

The Renesas RZ/G3L SoC includes the Arm Mali-G31 GPU as a 3D Graphics
Engine (GE3D). The Arm Mali-G31 GPU is a graphics acceleration platform
that is based on open standards. It supports 2D graphics, 3D graphics, and
General Purpose computing on GPU (GPGPU). Add the binding and driver
support for suspend/resume functionality along with some improvements in
panfrost driver.

v1->v2:
 * Dropped duplicate err assignment
 * Changed the format string of dev_err to "%d" and simplify the dev_err()
   line by using err rather than the same PTR_ERR().
 * Collected tags

Biju Das (4):
  dt-bindings: gpu: mali-bifrost: Add compatible for RZ/G3L SoC
  drm/panfrost: Drop redundant optional clock checks in runtime PM
  drm/panfrost: Add bus_ace optional clock support for RZ/G2L
  drm/panfrost: Add GPU_PM_RT support for RZ/G3L SoC

 .../bindings/gpu/arm,mali-bifrost.yaml        |  2 ++
 drivers/gpu/drm/panfrost/panfrost_device.c    | 34 ++++++++++++++-----
 drivers/gpu/drm/panfrost/panfrost_device.h    |  1 +
 drivers/gpu/drm/panfrost/panfrost_drv.c       |  1 +
 4 files changed, 30 insertions(+), 8 deletions(-)

-- 
2.43.0


