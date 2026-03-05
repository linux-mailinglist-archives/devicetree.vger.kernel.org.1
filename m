Return-Path: <devicetree+bounces-271632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLURLGOsqWmtCAEAu9opvQ
	(envelope-from <devicetree+bounces-271632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:16:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A0721547B
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 36D2C3035142
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 16:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39E933CE485;
	Thu,  5 Mar 2026 16:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FThXYIoE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04743CD8B9
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 16:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772727064; cv=none; b=GHPsKlZViBpAQhlHiS9k/OUuxwUXjkYoC8qDJ5LToQYT+R2HZi8q0xZm7YJK5MAT8G58rHAC/IVNxXnnTODngZJ1En62mC3atDJskHaCrM1vQzMrK7fzqocgO7a3nyJec1qDkihLjtAQFC1xk2C2Iy1rav5IgkTGpGZY8G/4M6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772727064; c=relaxed/simple;
	bh=7A5SaJxm6A19wscHdaLNNyLuVvs225F1wW29IZZfcEo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eBi0Q2tJpBM9kw/kFtcLVtq8nciZ0TXGLqtQWui4TMCDSFMTguyypTTyoFzdUmfQpGoHRPLX2wMgJuL++3u+44KudLV2ozKbX/Q8cfwu7V1VQpw/TISa6IN5gUROtIUATaY7qaI/I1pbqV6OUOMEJYyjQoEs/I6pmy6aY6hg16c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FThXYIoE; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439aa2f8ebaso3408715f8f.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 08:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772727061; x=1773331861; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k18reyTAC8BmNDz3OVBl9e3+SF3GLnxWQZFfdgkzu28=;
        b=FThXYIoERxPYAELsjEZj8P3kJxrtO+UvXYxpDT/xZlwrCrvp+OFh8yGGz74TPY9ZPv
         KIVALtQtVfliItSaRhqNcgrQjBTmUveav1i9e3VxqHOIfsZE2wopw8A8KD06jImbpnvB
         bZ55UB4pRzVkoy8HAMypUs/96w8VEJj1nsERyOhitp7VCEvziGhUgH1oMMkKHzlr3N5I
         WgpKYGcosbppTvS1tl15174VwGRKkE7IYLv8RxnLSlxO94lZPlMCmm3GviIf8ZQ9/bNT
         zAFbQKOQ8lAkn53vGW9btwhu3aPHk6AgAWpBohdnduXCaVqslbwvoKeePLFxfCowqrD4
         zw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772727061; x=1773331861;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k18reyTAC8BmNDz3OVBl9e3+SF3GLnxWQZFfdgkzu28=;
        b=CWwSbu+CbroqpkS4bH0VKcVhGOPcVEwyFql9uBKDY9Ez/YkuuZj6huaMw/bq7KudlQ
         aeqvTWSjwBorr2wngR/QSefwCopERFYSAfbL+eu4tBTHe27PbyrX7rOuqghWyhLefXaZ
         CXkTmV6GYpqOax1PdKpX6ml0mR6TmWnMS3xiFQ0ZvfoVG+510zg9EkRB6k7603o+Hv+Q
         sRoggxQ+6uCDNVPZ8FVq/JJJIUjvvzstfsV9+Gft7+B5240DwV7v2nDfZrmnDyxE3O8f
         TwUsDp4MG0jaBS06taH5Rsw/77Ni0gTDJuuDnoHWj0RdU2u5/IDtcfxa/JKNmWuD4t21
         a7lg==
X-Forwarded-Encrypted: i=1; AJvYcCUDGqyIJVcsWYB3Pl6f75AU+pKi8ZtwpU35nxKdPdWDTimi5kavLJZHa1JY+qvoooYnA6wheRQM4xFz@vger.kernel.org
X-Gm-Message-State: AOJu0YznhgpyG9RECVYS09ChPirsBpwJMUsDoFMd1L9/QdnP0B70mNx2
	istI7GXXKrhV8+WkyDD2z42Vd5aOcb06VPiDDpCoBCp2Ssi+sQrnUd6u
X-Gm-Gg: ATEYQzz9BXiA/fccz2QQqZQxoxMnjN8D2Vc9typ3HCXlOKIxP07xwWho7RJbmXfOKNE
	/GxPJMv4HwqdkAnndhutijVjVvmbK8PJ5vmLW1+CHvKmq7uqMsgNQm8+cfvpqZu8ZGbFAhToLPF
	SCxhmgxypO1i6tD6P6r2KwSTKNcvjaUu72SLpGALLhd1WtHWPOt9Syi+P/oPd4gbxxDsoJu3dMp
	M38B22US9r4nOOobPMdHZn23IPClSS1I5KALij2se3PnxM97SxmiIgws8ngLUeF9Uw2c9xkcUa7
	7oOhCSiwbzYI0HvgBlvXbVgqLBqZBUsXFmRc4TYexvHS0t2o5XzykQxg3dJB4PSZY/jgBUfinox
	3C82A2Addliuc3QBRYB6hIRT+mn/8U8fGsA25KOIU08KqJip8gZr2cB9s7WbDJ1wUyLyRwIv+1V
	3oAmi8kZUHPZYfqInyJThQ/PU=
X-Received: by 2002:a05:6000:290f:b0:439:ad2d:99f8 with SMTP id ffacd0b85a97d-439c7fffea8mr11452126f8f.30.1772727061010;
        Thu, 05 Mar 2026 08:11:01 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b8807a4esm31426496f8f.4.2026.03.05.08.10.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 08:11:00 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Thierry Reding <thierry.reding@kernel.org>,
	Thierry Reding <treding@nvidia.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] [RFC] drm/tegra: dsi: remove tegra_output_probe use
Date: Thu,  5 Mar 2026 18:10:33 +0200
Message-ID: <20260305161035.64548-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: F1A0721547B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271632-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

The tegra_output_probe() function parses DC, DSI, HDMI, and SOR nodes for
panel phandles, OF graph endpoints, EDID, HPD GPIOs, and DDC buses.
However, this function is redundant for DSI controllers that define the
panel as a child node.

Furthermore, it creates conflicts with modern dual-mode panel bindings
that use OF graph links to both DSI controllers. The function incorrectly
treats these links as standard panel links and attempts to resolve a panel
that should not be handled there. For example, this causes the Mi Pad
panel to fail initialization.

Testing shows that bypassing this function allows the Mi Pad to work
correctly while maintaining compatibility with other Tegra20 and Tegra114
DSI devices.

Svyatoslav Ryhel (2):
  dt-bindings: display: tegra: document Tegra20 DSI port
  [RFC] drm/tegra: dsi: remove tegra_output_probe use

 .../bindings/display/tegra/nvidia,tegra20-dsi.yaml          | 6 ++++++
 drivers/gpu/drm/tegra/dsi.c                                 | 4 ----
 2 files changed, 6 insertions(+), 4 deletions(-)

-- 
2.51.0


