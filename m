Return-Path: <devicetree+bounces-317355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q4BPOx8sQ2pXTQoAu9opvQ
	(envelope-from <devicetree+bounces-317355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 04:38:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7696B6DFD56
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 04:38:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Z55iW9rT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317355-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317355-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7300F30325E2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 02:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA945376BC6;
	Tue, 30 Jun 2026 02:37:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F998370AE4
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 02:37:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782787031; cv=none; b=lkKV05YXp5rvOKxKll8VfsMp+z7gG4DprvxFrJz0q4b+6aHnvfoLWqGzSyjml1SoENxyOusHY6/KreUb+qhMyqYcvwXj4S27FwmgeCIFLm3YKZ+Mh8oZqfXkf2U1OGXEgNBbMEwmmCZRlouYI3sL8GlaTeYSe3GgHvO+3BZuMRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782787031; c=relaxed/simple;
	bh=zEbh7CdMPatuluBJOH72TQw7GK90ry2jJQgRetZwBQ4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OvM9LBTIevcY4AANueW9QCim8c1BQqZul+m6ll4Xnf0+30SCh/tUvINXNVRaXw8kHHU43pGv2zFl6AUS8FSG8xhX0cy0D7dJ9l2wnzkhvIG3kSdXFh/RMGcmHfA34I5iPJHnrwU1n47kgGpCb6JbBcXQjcSjJdgZ3M9mqMoa9Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z55iW9rT; arc=none smtp.client-ip=209.85.216.54
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-37fcae0ecb3so1258059a91.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 19:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782787029; x=1783391829; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=21ZT2NLOqak/UmjGCnvaZ01Nfpagn9lBx2F49mLQoMU=;
        b=Z55iW9rT9X6zxLJwhG65GnexxzmeND5MIl2DOCSFPEPw6CRK2yLgLyJPsKZ+EH5UdZ
         wSeqwhZ9D5wNnt2DJQPz+Yla/AHStwrOkxUk3Am/d6XdDPUo/IQYWUZz68ovE2vAE0bS
         WTsaf7m3Fo0mq+MWNdi1B+yVSLPr21kOhDOc1JvKxHVVX04r8IUJroLJovwUzkxqGgYZ
         fLcfGt9WXN2Oz94jO7dxHptO2QfIJ6OXPpC6Mn5borewR7taW+XssQPPWMrvUOxR9duW
         00R5RYlFFd/52ff5oIQUmxruP2zrUEYMPtg80Ma4YNZZTFsAIfvARDTXGuGREUqkPzRe
         MvvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782787029; x=1783391829;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=21ZT2NLOqak/UmjGCnvaZ01Nfpagn9lBx2F49mLQoMU=;
        b=V0XlZVypX+7dHhtvUSf1I8AAjzGHe2tq9fs1To1tHDt1nzfiVmjImDbF/3580bWNbJ
         I1GyBiktLnoeRQlDyT7qvLBNlBmAbkpQdGg5Of/WBOn/BW55JUg1CrihOQG6qjDZodVC
         Rdd34LO9b+G6aQnavXjJzM7u33OZnhWq4jUGmgdoJfPatiQ/5NpaLE36Z0Ld7F5ubXQx
         MupO5zN635nQG7emR5qdl6xp8Pk7yDBVYYXJKGqmkKVJxvp4GFSd74bwsuRH0uD0ZoSe
         Urvmxkow/zi5ikTF4VNATjx3k73ADKOEyNNiIHT2ysWKlPFRAIUX+qfBI1yglGB/79Gl
         tXEA==
X-Forwarded-Encrypted: i=1; AHgh+Rr8U/5grK1R0xnp8hfvjcNxTQ1vXgzq0skomhfXO6IXPr9+siRi5FyGLzMOSmACCZweI9KCYRVp4tSp@vger.kernel.org
X-Gm-Message-State: AOJu0YzhEB05CQYw7HbavWA9Unj5/2boHg9nGZJ/eY0+OYAqGCeNzW4F
	S1ty/wVUkrSZt2FSRR4C6DJ7Cuq/JwjRA/huvAXdrl6KEm7PQ9gZ1iJV
X-Gm-Gg: AfdE7cnnNasL+v+TvpCjHQZKAKU4C1RVbQEQCewFsAvQkMNwcHMfAE3Bb/vSRb79JQE
	gL4r3Sq1kvsNLHew9lEHrvc3h7hmO7XPL+kJBgs8FgH6IAh9wABROlrsy9Jnfo0zm1A9ZmRUVB5
	G5nFcmQxap/wabXgY9tNHbkJ22H+R7RHiE85jMSFHm2DFRZSZGWuPJELudR3TOAOLuXd9VYNLxD
	nlVbZeqFF0t3mx+aK31hbiufIJNFnRRItZ4EcpTJh63en7ljmMPkuuasvMtDyoL5YChdNAtqsfO
	YYyMVsKcYNFQ3jknuYEFWb1p70Tn/e7dwhz9Qi/jMiEh6c2SuSY1fG7YTkdyuCRn1wV0FW93ZRM
	97DkpJJRBr1oyF2JvV5v/3ORMix7EX1M7GtyVaZjWuEGVHkuRnduU4avEwiCa0E9GkHy6ax3FsQ
	QUIlUnVUMdMZQ=
X-Received: by 2002:a17:90b:2ec8:b0:37d:edb2:830d with SMTP id 98e67ed59e1d1-3805255b088mr1242206a91.9.1782787029418;
        Mon, 29 Jun 2026 19:37:09 -0700 (PDT)
Received: from nuvole ([2408:844c:b00:2b2f:398a:8bef:b88c:653a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca3828c2fesm3310465ad.49.2026.06.29.19.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 19:37:08 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Pengyu Luo <mitltlatltl@gmail.com>
Subject: [PATCH 0/2] drm/panel: Add Novatek NT36536 panel driver
Date: Tue, 30 Jun 2026 10:34:37 +0800
Message-ID: <20260630023439.248861-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.54.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317355-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	FORGED_SENDER(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mitltlatltl@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7696B6DFD56

Add a driver for panels using the Novatek NT36536 Display Driver IC,
including support for the CSOT PP8807HB1-1, a 10-bit panel found in
LENOVO Legion Y700 Gen4.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---

Pengyu Luo (2):
  dt-bindings: display: panel: Add Novatek NT36536
  drm/panel: Add Novatek NT36536 panel driver

 .../display/panel/novatek,nt36536.yaml        |  90 ++++
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-novatek-nt36536.c | 494 ++++++++++++++++++
 4 files changed, 596 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-novatek-nt36536.c

-- 
2.54.0


