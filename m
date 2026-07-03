Return-Path: <devicetree+bounces-319716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id va8qH5MaR2oETQAAu9opvQ
	(envelope-from <devicetree+bounces-319716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:12:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C75376FDDCB
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 04:12:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=U5gjNzG1;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319716-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319716-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBEB0301F182
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 02:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9D0325B0A7;
	Fri,  3 Jul 2026 02:11:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E18E1917FB
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 02:10:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783044668; cv=none; b=dI9PNWRaYb0N7jwIEooHL6ClXKFh8m1FNIsgZq8WSgkxrVgzEXRNVK4l13oApJRw6FLlysDMeksLmhibXLUYvA6jpHYl+/Eo0YTlFubHgLThJMS7z/2pK0aYQVE+APwkeDQTJMHJ5zrd80/J155X6m0aUXMHdOKeySQykPgmFCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783044668; c=relaxed/simple;
	bh=o2jlelQPxV+nzbfoQUAgtVkuNyE+WmmoaGnh8aaogKI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jaGspGdIVeB6n1SYWmC/28lwC0125BznnK7JIFbhY6zBBlhS2e+/6QR56H3ShU4D9ygYW1Srb60mZznaEGj+aPjVfqwZtmRy74aCq7mzuDjVsC4WW5E5wM/L8qynz4NvIFxIDxBXTz/py+u8PY4UUCg5uXHgalNsmvGekkgz0F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U5gjNzG1; arc=none smtp.client-ip=209.85.210.175
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-847968ca62fso55855b3a.2
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 19:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783044657; x=1783649457; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9te5WRnB3/pnQ+/Q0S83oqHxAqp55SmkhfuxRe3M02I=;
        b=U5gjNzG1ZobA3lMW8WgFhjZgJ06XZN/Ydgm45lGGKjgCDP+N1OAdB21HTwzpJTUhHY
         jW8gHsg2W4Oms84EU0M3IhQ+GC+/wx4y/dy1DQ8O+g+VYhY07wWkw8LGo4N6hfejwt0d
         g1dleaiS9k+mseoilhV3E51/xr4xftz6HC88NmL8ZxopAuF2B8J4001N4Y5vgJRT7jAR
         z9+2/7vuilBKbuUSknwO6xpVyg0EdZG9UyPVG4GEocgV/qYPVFIoIAa2tR9ilzbUTj1N
         iSIbKV0YbwzMRFzIdWiP9seqT9EoI9ztzhmCM7ScVGj8ET0zJAKtpBKB6Mo2NEeShfEM
         sm2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783044657; x=1783649457;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9te5WRnB3/pnQ+/Q0S83oqHxAqp55SmkhfuxRe3M02I=;
        b=oQpVtAHETnAdEVM3Q9fXnjWHtA41xopuFbkTTwsi1O4YGe5eO7me0bEZxTxFxpgAiY
         KReLkXB5Y8U/xrdtMURDH82vOMAQjTYVt3NS7il9e87Z5YG5hK/lW5zJiQTf0ouB6Pj3
         km7zHstHSYj26J1jrVDyt91hf4hCATSza7GKzIPK//NnJ1p3H7Z8ZAmyWMFGvt9mLp3r
         Q1gtkYLkP/n/1HwBBt/Yu7WARXHbsIAPP0v9MZWmGRB2AtbF2v92YWf3QMM/mvDgk9OX
         csz7upnT15gNNOLuX9jM5Le7PC8JBX7Ap4eMdsUxCw5Gr4KKOG9prtSTVcrg6vkeFrOT
         +YOQ==
X-Forwarded-Encrypted: i=1; AHgh+RoWHML0WLgvEYzOEgfK6/1aKmBtpELJiMbxPskD+noEwwZa6VADvf4Z+9T1YmT6a9M22tAX9Y54ik3c@vger.kernel.org
X-Gm-Message-State: AOJu0YyWtVNMXXAJopp4IpEKwmCNOMmK0TXGpXN4vmN590o1+7OJCbLd
	M4UNIc6HluvUzPWkVIobVHlzwWhxxnpxtfcs1j0RzXyJWitPZp25D6fZ
X-Gm-Gg: AfdE7cl0qaGWTgn2pkhBQsQKFcYBwymq5dvNqQZkotFR2C0weYGHeCtogZnCNuRd8Dt
	aSJySrt93Wqw2i4kh73EXhNtPm1hP5X1f5z/7uc0byQXykNHLoM1ZpCHKP8sUJrrcXuZ+6mH055
	j4pyp3WS2M0nv68FJCIqOrOqYUEs0fJQpVw+W3ffewK/xxXGTdzlqgsJ7wzS/j4O7whFZgYeMFK
	pazjm9jLCmOZZqGrsljJvPaVvjJqY4mItjx6qrX9t0+gG5jfqaglw5WKN0G2WA5ZnTeCYaSEpEV
	bczxydqcUhvEezfN+pa+rVjsHEZo0P94HsRxoxzVzw8knGVfGqHDSOo6AWZJPLb+FCvJlq0jdeR
	tp6lGQWio0pjyzwR8fP6ZMgT+T3IUbldyeaHOv+Qaoaqc1ByWUUvgzYtYit2PDD8YJCl1hbnZ4W
	Eeestl2XfH2pzBMdlvAC9LIA==
X-Received: by 2002:a05:6a00:b481:b0:847:8496:1aa2 with SMTP id d2e1a72fcca58-847c0731433mr8687798b3a.27.1783044657351;
        Thu, 02 Jul 2026 19:10:57 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb9b0220sm2124478b3a.50.2026.07.02.19.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 19:10:57 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Inochi Amaoto <inochiama@gmail.com>,
	Alex Elder <elder@riscstar.com>,
	Ze Huang <huang.ze@linux.dev>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v2 0/2] riscv: spacemit: Add K3 PCIe/USB comb phy support
Date: Fri,  3 Jul 2026 10:10:21 +0800
Message-ID: <20260703021024.495433-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.55.0
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319716-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlan@kernel.org,m:kees@kernel.org,m:gustavoars@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:inochiama@gmail.com,m:elder@riscstar.com,m:huang.ze@linux.dev,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:spacemit@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:dlan@gentoo.org,m:looong.bin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:looongbin@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com,riscstar.com,linux.dev];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,lists.linux.dev,gentoo.org,gmail.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C75376FDDCB

The PCIe/USB comb phy on K3 is a big phy that contains multiple
standalone phys for each PCIe and USB controllers. This phy is
required to configure a syscon device for mux configuration and
calibration.

Changed from v1:
patch 1:
1. Add extra description for "#phy-cells" and "spacemit,apmu"
patch 2:
1. Fix multiple spelling errors and copy-paste errors.
2. Make some magic number as meaningful macros.
3. Remove USB3 set_speed() callback as it is not needed.
4. Fix the wrong land data config and mask.

Inochi Amaoto (2):
  dt-bindings: phy: Add Spacemit K3 USB3/PCIe comb phy support
  phy: spacemit: Add USB3/PCIe comb PHY driver for Spacemit K3

 .../bindings/phy/spacemit,k3-combo-phy.yaml   |  68 +++
 drivers/phy/spacemit/Kconfig                  |  16 +
 drivers/phy/spacemit/Makefile                 |   2 +
 drivers/phy/spacemit/phy-k3-combo.c           | 252 +++++++++++
 drivers/phy/spacemit/phy-k3-common.c          | 391 ++++++++++++++++++
 drivers/phy/spacemit/phy-k3-common.h          |  27 ++
 6 files changed, 756 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k3-combo-phy.yaml
 create mode 100644 drivers/phy/spacemit/phy-k3-combo.c
 create mode 100644 drivers/phy/spacemit/phy-k3-common.c
 create mode 100644 drivers/phy/spacemit/phy-k3-common.h

--
2.55.0


