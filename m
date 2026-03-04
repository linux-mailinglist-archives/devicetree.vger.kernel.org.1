Return-Path: <devicetree+bounces-271059-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFqBMgE5qGkTqgAAu9opvQ
	(envelope-from <devicetree+bounces-271059-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:52:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29804200BC6
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 14:52:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52CE8302D0AD
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 13:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8758E312837;
	Wed,  4 Mar 2026 13:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XYlPmvp/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFDC7080D
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 13:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772632130; cv=none; b=bGpUZf1DYMWGGtN3OCjPpQvfUDGFDWdOUsJH1b4Q9F6F+eqv++3C6ayeL/s3kRGPCFk8wGGP3NUhQYVnoYXL9iGSOWGXCkxiGQbWjEFV+R3kPQnlouQT1ZWf5YozyutXk64RihtwDNd1FSGWTKZ7QfdCtLb1nA9KZo9TRTn+MqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772632130; c=relaxed/simple;
	bh=NVdzfzBkmPseuBIdayKfFKORaRzIIApVVeRYXxVyG2I=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=q04CfVl0+1d1HsUDMq0SV6OB8zDDAtuQlKBswaksH08spy/9fWlrom6U69dP6fBzdTIjLV7zTbe0UG4t5yX10x7dVTpi/Htp6z938NmLNDkoQKojR9/TxNan7ejcHkaKzhb8xbIuGo5wKNoIKnzwofsNjjdoVLDqAgUhhVrBA+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XYlPmvp/; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-439aa2f8ebaso2552642f8f.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 05:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772632128; x=1773236928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C9MyPO/rsrk8DBKCUnJACWD6uK5SDdcOqlz033Neykg=;
        b=XYlPmvp/l6/bBEhkplE7b//j6zbXcZTAapU5jza7pFHO1aVXllbEPgzsQV8e91CqKu
         4nv1dPZ1iQkqmBjq+qEAL3FJw1byS/hcbfRlraD3SLk3Wg1qVXPvizOIj+CUW+RVxKOk
         7dVxrx8A+EfuJoG3LLkg0x4YcdiJa+iRIAmR8mSU6WogAasVYZ0Ikbk+K8KLQFQY5HAg
         lsLdMWtaohzQMORquy/EcSj4sxRbX4azL4rvoAGDMfsnskilaeF/OXltWWR0tNOn8Pjg
         a2lUJbQDNlbSXxoQoFmAvCxFFH5Dx4i94FL6rdyFNNArIwBpW5zfQgRKRp0YKXRV1/Ll
         boiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772632128; x=1773236928;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C9MyPO/rsrk8DBKCUnJACWD6uK5SDdcOqlz033Neykg=;
        b=dxCKNPDdzCT5S+ccWU7wXXU7PC/wIqrWexGRbU5DmweRY27FQ+2ZmX3XtgTcxs7mtu
         ZBrZ6z/M2sSkeoZqhA9jMGwmPJLfhxh+iRtmb0/7GPZen0B0ScMquvRrHyudqXiZtSvw
         rV+jB/5pRJsIPAxAMGLnIegFk+SAGsGnS8Xi8t4XKQL0f4zLBozs+MnnLxAdfOenu/uw
         bDL+ZQwU9ZFZ+UFLk8si74tdSCfAtGxOSnhruCz4uCPNh3mRcZ6A4InPVmClgpyYzsGR
         Z5piXnt056ER9cLVsrjHnpYUfbHjm6ZkqdkXwwjfgDbJtS5enRwlUsxzWNeTevr0p8j8
         ceLw==
X-Forwarded-Encrypted: i=1; AJvYcCWGYpI19TiPPXsiRLwjfsLeCXmkuYOi6ifl4u3hV0uhrgtLBkabYjbQ+zXFPW+bXZ8WwipGetB98z81@vger.kernel.org
X-Gm-Message-State: AOJu0YzyEMdR8KO5ZEVXypz8wSFw0Cofp0H7PvZzv9NmK4xhWav98utQ
	jNAQtnkp8RBTl59g2qQNn4xbyu4JUiO3sS/QDPmeC/TrtWMn1Y9dV/Xs
X-Gm-Gg: ATEYQzwHLnhaLlfosE/HCk3ktN3Zt/GR432esL2E7ya7wnSahdWnTjDZKk8UEOlG4m3
	1GVNC8bLoQEfLaF0H0pTMTWdLIXsCCwlGvDRosZ1AwvYcwOiAANdtRu+0Z5nTKeZT2KTGP1IGpU
	L3qbode7EOgr6KkucehFze9eiy5wH3rSdvvrEgH9kpFisetExOUotGW3LhRCu/40hkY6dPJpZ7M
	z/ri2J6OSc2iHAIPG1dhF6gFSN8m8wHQryvhuUuSteR6JKntZHc84duQSoWkoSM8YXCKqdLWuiE
	ySPM8E9JaNFFzhcY94ct7399euYjpt2R6SfQ4J6GTNSW5s+eDYj+Oa8OQoXnpj+dl4S8Jsp8y2w
	xL57E9lLHff4rLoz3ASu1zAcII0cD+FQll26+Vi2h+s9YASpEtMpugkKcwzYLrxw9YSgSi2KApQ
	Z/B61husJSEgDKT5KCr0ZBZBw+eLCEifQ=
X-Received: by 2002:a05:6000:1885:b0:439:be43:61d6 with SMTP id ffacd0b85a97d-439c800fdfemr3927375f8f.48.1772632127417;
        Wed, 04 Mar 2026 05:48:47 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:de3f:f927:40ff:12a6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439c65e0b23sm7105229f8f.32.2026.03.04.05.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 05:48:47 -0800 (PST)
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
Subject: [PATCH 0/4] Add RZ/G3L GFX support
Date: Wed,  4 Mar 2026 13:48:35 +0000
Message-ID: <20260304134845.267030-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 29804200BC6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271059-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,bp.renesas.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

The Renesas RZ/G3L SoC includes the Arm Mali-G31 GPU as a 3D Graphics
Engine (GE3D). The Arm Mali-G31 GPU is a graphics acceleration platform
that is based on open standards. It supports 2D graphics, 3D graphics, and
General Purpose computing on GPU (GPGPU). Add the binding and driver
support for suspend/resume functionality along with some improvements in
panfrost driver.

Biju Das (4):
  dt-bindings: gpu: mali-bifrost: Add compatible for RZ/G3L SoC
  drm/panfrost: Drop redundant optional clock checks in runtime PM
  drm/panfrost: Add bus_ace optional clock support for RZ/G2L
  drm/panfrost: Add GPU_PM_RT support for RZ/G3L SoC

 .../bindings/gpu/arm,mali-bifrost.yaml        |  2 ++
 drivers/gpu/drm/panfrost/panfrost_device.c    | 36 ++++++++++++++-----
 drivers/gpu/drm/panfrost/panfrost_device.h    |  1 +
 drivers/gpu/drm/panfrost/panfrost_drv.c       |  1 +
 4 files changed, 32 insertions(+), 8 deletions(-)

-- 
2.43.0


