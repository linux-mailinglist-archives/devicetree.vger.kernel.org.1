Return-Path: <devicetree+bounces-271426-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBIlHpJDqWlV3gAAu9opvQ
	(envelope-from <devicetree+bounces-271426-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:49:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CD320DB8D
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 09:49:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1BA35305C8CD
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 08:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 365D6375F76;
	Thu,  5 Mar 2026 08:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="USIJzNR3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604AC3659F8
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 08:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772700528; cv=none; b=YSFYolyznJj6FfqmhnRWV8vQpsXg6Djsh90KmcOdOugc/cT0XReuVJcjPJvgwEZsTcbDsyi/3/ozMhNAc2YqiUeaB1YN/HdfXLYDDD5RfLqyxRFFGoiJ4+ejhoQ18pRfioWuHwOQyoS26Liwt21XPo4cfL9ctQt10RuoBP3krCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772700528; c=relaxed/simple;
	bh=emLN+nD9jR4O9Dpq0INOAkg4ffDwwbYjWCTdFG1PCyo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=E3NJCAh0r7THBGwCVuLWKUamsKRrWsCicvSvhBPtD0AWxnAd/tK3nPPCUQaFQXP1iWtzALSjXpnowSUFV+fR0EgkiyB4YoZ5eiusERnuEF/d7qtprATGVry0U+VEliivyVqXWGlm4vC4LKqxyfPN8/l+zi8B+eGzEsIVTOERbbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=USIJzNR3; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2a871daa98fso58786545ad.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 00:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772700526; x=1773305326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TGStloZ/zCqMNdJSTLCHdDY1bkUR5oF+Ve9XjU0YRms=;
        b=USIJzNR3mUNKBjAU4jl6M+fWTndGAbi/LJR9A1dI7O8tfGFOM30/CJkCgjCx9lmjpL
         37o1KIb51PG9/10XoPmejU6LR0WrHH12CsssXUG5nqLnVgdWknIy5W/sA4eW4ORVOBwx
         kocpjJzq6kcELyIWbVcwEnHzsoWnFV6Ow9lS3uYpRic9drdAX7aJqG8ybbDekNRCoGoK
         SCRWbKu313EpuPIRBIiFpOzFmIndjzMDM1EBSrgBY04yqIAxOBuwWZT00bgx+yCBs1Fe
         /GzjBBDXuzseUTG9FXGUoC8bw7nsHM2e4m2vti9DdIWJ8/ZTYvu2E+30jQMIuo2eJXPc
         18zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772700526; x=1773305326;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TGStloZ/zCqMNdJSTLCHdDY1bkUR5oF+Ve9XjU0YRms=;
        b=tnyrgwXWTQjoAmZj386n0/O9D0ROiWbL3DdwPEdiAE0YILGYlXeN9HbyC1MA4KfCZ/
         JZXkgkr4frDN/HqPC7Vyq9XqNAfwfgXcPByCxzs6VCG8WkWLYnvGBlNWGpAS1kptovcg
         QmeemVpVl4esDvYXPJkA+Cotf8dWVXpjphXNhuxmULUwA0ePZDWKygG/YRe0hDrtQI4x
         0hOWiZwhlpOYxPqMllzyWE7oKVsHAh93jYKuLrrUUlovfja0VJtK12hPwUJ7EAr1ESiV
         JfLw3zhVaLeNRLMwF9a3Lf7w/6y0NBfl5aMgfDSh4pBsDTUelGx1dcG+iLZkEBd6O6ec
         urpw==
X-Forwarded-Encrypted: i=1; AJvYcCVmXH4U0761gfV6l27WFb+HwolU5vaG5gfeqIARTUhrfAlSKz8+5ED/jpR9Yv3pOQ7UX1ATXuvQSJf3@vger.kernel.org
X-Gm-Message-State: AOJu0YyqFu3bTzt40U154WIhdumFSilexf4YRkj908IpAasH8vQt/Lki
	V6aIaCkv4G/2+oZXw2X+3sJg3qTppxb16cIvcO+ZVnmTl9ibglP1zxz2
X-Gm-Gg: ATEYQzxlJeKVBmuKH3CPioSyWZ4+XWeI4iCxXbowdeRNHXaourfyGmPtQ4oaK7ycPrU
	SpVHn7pbNupbxWMFUUR4Re03OujIPXsaWfN56LgdLZ90jJsu3uG1Bbl+AxZ36R0CGiaUb1DBv0Z
	YBdfyLGDHp2MzGOnMDLfylfndWwKLksqJb7690dRo4t6mt6ScOQNz3Ck/7xRh3t7y5BkpsKUQZQ
	pUhevLDSgmk2/n6guT7app3DEBjAj+WtaJwf5yZMFHUWTDxu4dXnAonVJTJdlHQthv8fFcO0xmL
	4xnirrWVBajHdpzxJsnM6NxJx0HBjnFg06BwlXUFLnS3ABvgKvHCdQAg+PEjJSB8CmX1sKAUrOo
	XTNarBHORGw6uOpWZ1WUWFkhX8pHrPmjTKITZKdOVA/YugMVnMndc10OJoXiTcbA5Wh5c7bVUBj
	BZDfI2Ypr2C/b+w5BtyQ==
X-Received: by 2002:a17:903:19ee:b0:2ae:4222:4535 with SMTP id d9443c01a7336-2ae6a9ed187mr45451715ad.12.1772700525627;
        Thu, 05 Mar 2026 00:48:45 -0800 (PST)
Received: from nuvole ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5c9f79sm233490715ad.33.2026.03.05.00.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 00:48:45 -0800 (PST)
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
Date: Thu,  5 Mar 2026 16:48:08 +0800
Message-ID: <20260305084810.370024-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: D2CD320DB8D
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-271426-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add a driver for panels using the Himax HX83121A Display Driver IC,
including support for the BOE/CSOT PPC357DB1-4, found in HUAWEI
Matebook E Go series (Gaokun2/3).

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
base-commit: d517cb8cea012f43b069617fc8179b45404f8018
---
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

 .../display/panel/himax,hx83121a.yaml         |  92 +++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-himax-hx83121a.c  | 749 ++++++++++++++++++
 4 files changed, 853 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-himax-hx83121a.c

-- 
2.53.0


