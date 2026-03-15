Return-Path: <devicetree+bounces-275792-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLocOTXGtmk3IgEAu9opvQ
	(envelope-from <devicetree+bounces-275792-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 15:46:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4917E2910FA
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 15:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA1213013D68
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 14:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91DB836997B;
	Sun, 15 Mar 2026 14:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bI/ph75A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6B0369973
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 14:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773585971; cv=none; b=MtlawpCi+dGe+LgwW7eeUA+w68cPy/9l9y6X+7OVRv+lb7nKEMNOh0+tiUogI5WCjdDiBVd+EGJ6wmdSlr98N8GU1X6i0X4xdwE5HL87pL8CMPwOzNKp552LI6KIB11T9/pWqjMj3/I5sDwXdNF8Sfa6fTOPbcL6sIgISsdYlkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773585971; c=relaxed/simple;
	bh=0pOKPiAFsIjOZK5rxyP1yr8adICd98jtxy13VU+ZtfI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HtT6AneL9e4D0mSnVyjJttURGyqai9MNVhBg6yqZNUa9OxiIim78HwvEVJtRmHlXKYpMK7UMstykjC2P0Bs/SbaK+smqwEi4DggmqmC30blZumYNNW0ZA25/u/x0Hx2TJkzoHvYSPyJZYNmj7HWrduX0stNc8JZW0K2u9VqRcz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bI/ph75A; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-35b98def50bso251276a91.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 07:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773585970; x=1774190770; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=488Hq9Gnkxct0mKIctR4RCCjc0FmYu7caXBMO4q401A=;
        b=bI/ph75AtDfrO1uL8LA+mUupMeN8nHpyS7HTuzDyw7xXBU4FURrSPykew1b+d3Ospr
         ESOGOh6PH+hY91mESyacN7DA8o3pp6cI5b8wJ6o97m6f/W/3p6vM80l5rBE6IMOXSVPU
         HVOLkBfKEkjWAc/gBFoOkYFU+ljrFhgGD6u7NyXoNAgp7prFqQ/I0qYxfm0qkJYfU91I
         vvhQtUfAH1Fj5Yaf9m3iBmzOOKo6VwDtjyGkk+PwOLRys3/XnHAuzZZNRDUW/y9Qa0Sd
         mDkECYtLhngrQNPAxd9eTMIzkJBOY/5dyd5iZQrdMacsTcwwLgjOzcT3jbNcrq+8NRL9
         XGfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773585970; x=1774190770;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=488Hq9Gnkxct0mKIctR4RCCjc0FmYu7caXBMO4q401A=;
        b=LkLIv6QBdgsJIH7dOB8OjDGBR0CKKBAffQkkYzAHM++Dd/7ZDNuLXL6a/VsDG+dRnW
         gymficOoZbko0N9Q9Gt7vAft8czdpICEwrM/8rOQlBa472DsGE6S2PxwrDffkeRDWoO4
         Et3balXixvfnHjQyiScFSu6sct0m8nC4yvrm/N4H1BnTIKpwRu1Nay3SOO+Ge8bSlSyp
         UfxTVpfIPUi8gSEJrm7A9HYRgM+bnQUNP/+BEWRhijIsybc5e/8e92Alywj+K2fOZT+D
         Ef8mUXYGlVyBEVj+kz6m1mDuFHm27otjWdlFK48lQR01mDOi4n+OcA6WHSbt70gJUCAN
         Ta8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUFvZKtZDezWE1ntS/AAXhxz5vSLtTLri4Wok8byPkvsCwFflqJJLLugbp6attft+oa7dEN55Jq4iIz@vger.kernel.org
X-Gm-Message-State: AOJu0YyKWuqdpif10PqcWF7p+X7rnYLXzd71ICKUAgskoOh5OBsCBgcu
	hvj8fJkfsMOxVQMnnPfQVBN34a1+I0WEeJMXZy67nQnygpXF08LQZyde
X-Gm-Gg: ATEYQzzf7mSt6JZiGqj2SQaMkFze1l3AgYx3KYSyRHzB27iCGDmv6jhTc+egsRytUPV
	9BbtZ6gd7q8m/yH83alhh8t/o4vI13I1ya7oL265u/vDKXkJTU5elKSzUmPsP94GD97v7/0Y8b4
	H0eo2x3xZ2D+2UEcZmL8O2yqNjaoAD/9k37ka1gZT04K6dA8gLpsScv+59seRE2xCrno89DvMt7
	xCEuRJM64uNJbye+viI8SGKWP9H6b0VSxo74EAlIuxgJz1eZlAHiUig8did2w9OvLbTP3J/2mEr
	EIdHHrfSEoc7dA+Woa6g33E8S9iHMwcXmLkCKKewQnPW150y1ktbZbZkSBpC8kUS9d285ei7Yzw
	kvPdB/c0dEMRlnw1QTDh4YhwK9oNP97w+I55cZTwkSLyQtt5q+KgqgSmdbYyybLFirfMk+uI9Kx
	yja+JZvCef1nTvpUct/g==
X-Received: by 2002:a17:90b:3b87:b0:359:9073:c368 with SMTP id 98e67ed59e1d1-35a22081e73mr9292412a91.28.1773585969738;
        Sun, 15 Mar 2026 07:46:09 -0700 (PDT)
Received: from nuvole ([109.166.36.159])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02e196fdsm14022887a91.2.2026.03.15.07.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 07:46:09 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH v2 0/2] drm/panel: Add Himax HX83121A panel driver
Date: Sun, 15 Mar 2026 22:45:34 +0800
Message-ID: <20260315144536.515032-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-275792-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4917E2910FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a driver for panels using the Himax HX83121A Display Driver IC,
including support for the BOE/CSOT PPC357DB1-4, found in HUAWEI
Matebook E Go series (Gaokun2/3).

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
base-commit: d517cb8cea012f43b069617fc8179b45404f8018
---
Changes in v3:
- remove '|' from description (Krzysztof)
- drop description for reset-gpios (Krzysztof)
- use backlight_enable instead of backlight_update_status to avoid NULL ptr
- Link to v2: https://lore.kernel.org/dri-devel/20260305084810.370024-1-mitltlatltl@gmail.com

Changes in v2:
- fix dt_binding_check (Rob)
- use devm_drm_panel_alloc (Neil)
- move panels specific chunks before module probe function. (Neil)
- fix supply in .c file
- do not initialise statics to false
- Link to v1: https://lore.kernel.org/dri-devel/20260303115730.9580-1-mitltlatltl@gmail.com

Pengyu Luo (2):
  dt-bindings: display: panel: Add Himax HX83121A
  drm/panel: Add Himax HX83121A panel driver

 .../display/panel/himax,hx83121a.yaml         |  86 ++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-himax-hx83121a.c  | 750 ++++++++++++++++++
 4 files changed, 848 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83121a.c

-- 
2.53.0


