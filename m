Return-Path: <devicetree+bounces-276987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKmuNWxVumm8UQIAu9opvQ
	(envelope-from <devicetree+bounces-276987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:34:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 821402B6FC0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 08:34:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6E352301A9DC
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 07:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15A6C368279;
	Wed, 18 Mar 2026 07:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="q5DorV5K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5C7354AF2
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773819242; cv=none; b=CS8+qWRrFYZNAYvFUyYk9WZNofX5GT+LBuOwiueUDLoPvDiLSmUe7BpFbm7w4EHjaz1CPE29so8IV0zGJWZ6XRa61FoP+1cr6H+xRp/JFrWdfrZoH7uOMv6Z7uSbNxAVXqI5VjorT3+E4wQ7qpIpVOk0Uk0kTLR8qD9j+M+h+QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773819242; c=relaxed/simple;
	bh=neM/5kNOWt4/kz/h9PchhzIR2mR2hFmsD8O5TF68+Hc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qxc4wyKwF0Nk8zjQaIwYn35MvSWDp6lJ5xWxn2ZH502rfqh9MzhCn6lNo+zBdUUbeoC1yGyqiX6IqT2BhIyQU4k4rviu9y52SMp7z/KRAhic4zVWzP5m+z+l4H4C02eJG7Cn7nQSqjS9x1J6QBYJSsUZixYLsePLjVRAyKY+Yr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=q5DorV5K; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-43b4d734678so1376623f8f.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 00:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1773819239; x=1774424039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pSUUSmmsogfaETb+4P0uT6nWdrd+bWZzxMlOvJd/ddk=;
        b=q5DorV5KMtZVTIy0G86E4etetQgly7u4ZFd6ugdZdOlrm4EBPSOr6GajEzh2MjMmjS
         7EXZHlQgcnEWLFJdx7e2LKS1yG87biWcyqpqNfCQFIx1jA1l5VWgbsIhD++kuozG3uu6
         pQN/PkBc9lL3wS7eWehNfdiHtJMrvrJuOW+AU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773819239; x=1774424039;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pSUUSmmsogfaETb+4P0uT6nWdrd+bWZzxMlOvJd/ddk=;
        b=kOQ71/CeiG+1R7Y6ZuInc2P1DzVPM0B6cJ8lqh+9dvRMeZsgEHeg+aE0babXcaBp8R
         jI12V0zUIht+CQ2/YRyJja87Ryptmr+jpP+JhYRRvz81b/WI7iVUyeT14dGkq3kGVrZ1
         0KAE5LRm1aBqi7CvqqAULik3jJH7lgLCVHQshEn/DlKcNDGpfjiHYbWZIGnxh/c1bjRt
         ipdJurAttABMj7oiIsSLW9p4dnjiEHyDcAZfmxC9xXC1Iw5dgA6L0AwrvuQ6Y4CAjIVO
         PVG5ogoYXMh9sRV6r+bo14CjRdqdFC9RiNQHL85D8EnyuuTZNF0+wyYGPR7k/rJyoNxO
         5o1w==
X-Forwarded-Encrypted: i=1; AJvYcCXysNBqbdYYe0Y9LG4IVbzXPJAmhXAjt+Nfdauy0HEfTyOVhSlMRo9ndSUmPL150SPXvnaBJQL1ab4y@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6DQKO+lER0UtHf4sZgIuefKs+amDGDtwq6VQkcv4PC6lKtU5C
	9eA59MnkBJ9uyOJPRVJU3+uFBtouwdABmlbcSLV/46A400tjpMFUb47kkl+KpBJfZQU=
X-Gm-Gg: ATEYQzzlaTCGL+LC9dnni1J7K2woV+n8wGCoZSh+CAx58eXaEo39VsmTbQIJ5qfFj61
	ziVyWEN+AwnJ7AxcAVqTFaHijuH2N3mCdiPrifLVhaXo1tuF8tIiyKOZYol2uZHwgJ/F/UGOz5j
	1o3NHggEhVo9RWlet27VRIBuKrii15Ep9+n8PBHu8Hm/Xb0VpYMFByZpoVFVcSaFbLVySC5WgGl
	vdDvRdIi0mFzD3hEGWzIwWFT3MoOCN4vIOit99mpL+saClxVd9iOO6hWlbAxHxCYbn7lo6bS+Wi
	qiO4jR3PtXh3ro1DbpbeE3PfIvG1SC2WCO8TDvWjDnFKaYEypHyRxs9o4ylI9SOQvnWeoxzjd57
	rn+ihYahj/u27SveeI0H+aF8NlP403lA6PmvcEtRXoKeFVTpyNof17KKfFdsm1RZdEXVm6qmosw
	HwB0qWjbTNbilnB6X0U02H7MQMxolJE9RRmvF3RDFQmmsreZPtARx6L2aUa+INtyepLl90eZwfY
	7P8Hnd7Z3kNIcbSlY1s1vjj2Q2M6cBBvb7ErAwe4y7eGDLQr79FIurpyVGA0GypI6iu5z267nk9
	icd8fBFvMOSvYeGRX28T1g==
X-Received: by 2002:a05:600c:8518:b0:485:4328:407a with SMTP id 5b1f17b1804b1-486f44435d3mr34511445e9.19.1773819238694;
        Wed, 18 Mar 2026 00:33:58 -0700 (PDT)
Received: from dario-ThinkPad-P14s-Gen-5.homenet.telecomitalia.it (host-87-9-97-160.retail.telecomitalia.it. [87.9.97.160])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f45f7e96sm25615765e9.0.2026.03.18.00.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 00:33:58 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 0/4] drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A support
Date: Wed, 18 Mar 2026 08:32:49 +0100
Message-ID: <20260318073346.18041-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[amarulasolutions.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[amarulasolutions.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amarulasolutions.com,kernel.org,gmail.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-276987-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dario.binacchi@amarulasolutions.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amarulasolutions.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amarulasolutions.com:dkim,amarulasolutions.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 821402B6FC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series extends the Ilitek ILI9806E panel driver to support the
Rocktech RK050HR345-CT106A model via SPI.

To achieve this, the current driver (previously restricted to DSI) is
refactored to support both DSI and SPI variants independently.

The series includes:
 - A refactoring of the existing driver and Kconfig to support
   multiple buses.
 - DT binding documentation for the Rocktech RK050HR345-CT106A.
 - The implementation of the SPI-based driver for the Rocktech panel.

Changes in v5:
- Add Reviewed-by tag of Neil Armstrong for patches:
  - 1/4 drm/panel: ilitek-ili9806e: rename to specific DSI driver
  - 2/4 drm/panel: ilitek-ili9806e: split core and DSI logic

Changes in v4:
- Fix "WARNING: unmet direct dependencies detected for
  DRM_PANEL_ILITEK_ILI9806E_CORE" reported by kernel test robot

Changes in v3:
- Add Reviewed-by tag of Rob Herring

Changes in v2:
- Introduce DRM_PANEL_ILITEK_ILI9806E_CORE hidden kconfig option.
- Split core and DSI logic.
- Restore vdd-supply as required for both DSI and SPI types in the
  dt-bindings.
- Dop useless settings in case of rocktech,rk050hr345-ct106a in the
  dt-bindings.

Dario Binacchi (4):
  drm/panel: ilitek-ili9806e: rename to specific DSI driver
  drm/panel: ilitek-ili9806e: split core and DSI logic
  dt-bindings: ili9806e: add Rocktech RK050HR345-CT106A display
  drm/panel: ilitek-ili9806e: add Rocktech RK050HR345-CT106A SPI panel

 .../display/panel/ilitek,ili9806e.yaml        |  38 ++-
 MAINTAINERS                                   |   3 +-
 drivers/gpu/drm/panel/Kconfig                 |  22 +-
 drivers/gpu/drm/panel/Makefile                |   4 +-
 .../drm/panel/panel-ilitek-ili9806e-core.c    | 134 ++++++++
 .../drm/panel/panel-ilitek-ili9806e-core.h    |  15 +
 ...ili9806e.c => panel-ilitek-ili9806e-dsi.c} | 153 +++------
 .../gpu/drm/panel/panel-ilitek-ili9806e-spi.c | 323 ++++++++++++++++++
 8 files changed, 576 insertions(+), 116 deletions(-)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.c
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-core.h
 rename drivers/gpu/drm/panel/{panel-ilitek-ili9806e.c => panel-ilitek-ili9806e-dsi.c} (82%)
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9806e-spi.c

-- 
2.43.0

base-commit: a989fde763f4f24209e4702f50a45be572340e68

