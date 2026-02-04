Return-Path: <devicetree+bounces-262516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id TwxwNLPggmnhdwMAu9opvQ
	(envelope-from <devicetree+bounces-262516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 07:01:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCABE227A
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 07:01:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3BD1E30115A9
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 06:01:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7F1C23D7DE;
	Wed,  4 Feb 2026 06:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="LtmwFhXX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0A614A8E
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 06:01:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770184879; cv=none; b=DESf+AUidkvZP2GmW5YFtZkeU+rMTGzP/2xwXOiV6DeGc5hg1p7Su/Rkhrppihh4/3Tt3Fmj4dNiighwmvSe1Vz3RlIglXRbj0VHzPpP90zRXzfhwAOaY0vPLufLDV8zKs8w5mK6HLrnjoSlO3yNtsw1d4qB7Vm8HtQPNFdQw1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770184879; c=relaxed/simple;
	bh=ohikDSRC/V0X8jSqCoJvOnzwmrRK9zktOa89Mo9cMHs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UK7F5mG5z9I1yR3TLeg8adD7GUknUx30MNmMGn0Y3mDDmfM7oyPjBwMPG5fajpHfbXko8x578R1DVvDG4fMhsphmiskuzUr1CTm/tcu9TLNrpKK9vP3OMIW/Dp3USIPJArQDMV+d+dGpgxoT5pcLeOA/IUvsjvSqgWWbsCtBe14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=LtmwFhXX; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-81f5381d168so6666219b3a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 22:01:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1770184878; x=1770789678; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=knmmDy3mJrkVrvhIFIyiki8QNjOHAU78qve5pMcvXg4=;
        b=LtmwFhXXnXDNjm7jdF6Lyo1wnrhVP2tExm+0NqXjqgdOkgnXVX384mA4+oali/tkoz
         J1YCc+w0/QQ9/nlgeOduGlJBPkIud6ayIQ7SjftIwJA8lIhAlxEZp5596XkVvj3VPNCp
         dn9hLnOZZjY4yQcvxw/dmMFxiPApeaY+VnrYddpuK/Jtj/9IKB6JaTTL6p7MDEyfRImk
         2wik/Uz14wn3L/RmcbAv8yQhYLKUqXI7HC5jMSKBZIcmhnWA0ukRANJIpzMVATMadLfn
         sjjBgEAnl2xBmgfPUMAJCPlfQJBe69rTpRvBono0+x197d9p2JrSDicbKhoEB2JWEAT7
         j1Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770184878; x=1770789678;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=knmmDy3mJrkVrvhIFIyiki8QNjOHAU78qve5pMcvXg4=;
        b=okMmB5KjNb8lf5cbv+/gCzPsZN9fBVBfrKgvawUb2Wh6VXOYi9ZMwK+6Q5e4HOH6pO
         piQyB+ZAtPIvsen0aT65ZDa2Va/9rCrIrqy6BpzCD58vmMXKrcOC1vYCxBEScX0Ienvh
         AUp4m7H83sEZr9oaiTI4R1BJZ1WOSKIFd19dtTSkTScnTTe7EKwrajII1cRr1RMIHBcH
         GerEuBBSvMqlBypO6KAjxl+4ZI8YGhtn/6sBC1ZJyFSzs78Hc1mLnyaLayZBXQZVNsb4
         GQrwL2sTus1upsLN/B+sFDlEHPBudJj0YB+Q0ijydVviNCkqzU/WpTlssJbTEts7cmEh
         tZHA==
X-Forwarded-Encrypted: i=1; AJvYcCVE0G12iPAM2v9yvI1ZGuZVv1YPG9AqBcNpUr11b/q48+qTHIxh/4pOq2bDAAzHQwSQzGfceWHied7d@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1SKQ7sgXw/P1b5kryFxl8VHpF2kkEO5zUTkmu7tmSakpgUr/Y
	8/HEMvL+96vq2rHKGhmGtdJlxMtYMtOb0CODdp23dAMUoUga/IB117EqcYClj9wsh7Q=
X-Gm-Gg: AZuq6aK3SY1MEdxPTAoNcG/sqOFVQcsS/p30m+DAePwzPY9MDke93J0ZBmI5XhowuuV
	NYl1mIWcbXKjGRQEb5Lfg6aY8UGCY4BJVfmhlVior2zDbt2rsuj9u0gz2uw1zox6hgL9REU/o/x
	2G5iKR3fod3xN6AzTvLmG/Avi0pMokZ0IjnmROzEuulRb6qwQs3C5hTpJ+PvE7XicgjOo7kHCZb
	W638FO14/0dCH56QjvMi/w4JcrXOjQhrJn+khw/ccq/oALB6pnJD3s7C8n7NsOcsm8GEdIkAQke
	k+zRJ6QMpvWxMYDu2M/oKKmaaDFK3QGo/8a4qjj6YSTg2M9HcHaSttbIpnKw2VQ+/2LfHNNfNQp
	qi6UKr4tYkJt4Pa6BR38Imnrn8apPYsczGGigPAddEVGIEqcTSNEHgDNU3cJ4g/rjrVaQ1JyWfd
	mcTK0QzhqiZjIoaNh37KK9jl5D00FV
X-Received: by 2002:a05:6a00:2d03:b0:81e:408e:47d2 with SMTP id d2e1a72fcca58-8241c64c763mr1896419b3a.53.1770184878532;
        Tue, 03 Feb 2026 22:01:18 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:16e9:94c2:69a7:e3c5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d163865sm1335710b3a.9.2026.02.03.22.01.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 22:01:17 -0800 (PST)
From: Igor Reznichenko <igor@reznichenko.net>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	"Kael D'Alcamo" <dev@kael-k.io>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] drm/panel: Add support for the FocusLCDs E35GH-I-MW800CB
Date: Tue,  3 Feb 2026 22:01:11 -0800
Message-ID: <20260204060114.345219-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[reznichenko.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-262516-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[reznichenko.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,sntech.de,bp.renesas.com,kael-k.io,rock-chips.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[igor@reznichenko.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[reznichenko.net:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2FCABE227A
X-Rspamd-Action: no action

Add support for E35GH-I-MW800CB 320x480 MIPI DSI panel by FocusLCDs.
The panel uses Ilitek ILI9488 driver IC.

v3: Fixed missing Reviewed-by tag
v2: Added comment explaining the "focuslcds" vendor prefix
	https://lore.kernel.org/all/20260203054121.335441-1-igor@reznichenko.net/
v1:
	https://lore.kernel.org/all/20260131034101.307486-1-igor@reznichenko.net/

Igor Reznichenko (2):
  dt-bindings: display: panel: Add Ilitek ILI9488 panel controller
  drm/panel: Add Ilitek ILI9488 controller driver

 .../display/panel/ilitek,ili9488.yaml         |  63 ++++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   6 +
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-ilitek-ili9488.c  | 299 ++++++++++++++++++
 6 files changed, 380 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9488.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-ilitek-ili9488.c

-- 
2.43.0


