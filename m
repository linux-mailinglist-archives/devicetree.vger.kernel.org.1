Return-Path: <devicetree+bounces-316300-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lO4kAkriP2oqaAkAu9opvQ
	(envelope-from <devicetree+bounces-316300-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 16:46:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E491A6D21BF
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 16:46:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=XOU4h+qu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316300-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-316300-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F3FA93007AE6
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 14:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1798318BB5;
	Sat, 27 Jun 2026 14:46:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A68E70836
	for <devicetree@vger.kernel.org>; Sat, 27 Jun 2026 14:46:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782571588; cv=none; b=n8vEVTgFrJZyEMLEnmXW7T47YBsVD4cdIApr3brcgXwiJtfpInyazCIBC4TWriitUkSghL3WSHkwpiF3F+VXDY0dn6htx0qxFmRpBZxAsQU2gQytLEpCj0nEcPw97vrs5DYeZQVP6F9iAbPPugpfLRpd/P3+MqRtYLAQ1Hebozg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782571588; c=relaxed/simple;
	bh=oOPF8wGesowHZTwgzTTwlv6PG/+pRbuklz/XtIB7O/k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GKfu/VgNybxPJV8uvuQegAOyL1JSJnOUJ9gDhbIlGEBRI8peI1+J1RM+l3JYnnSoUzC9naVhTdrp1fwizFgZdFlJeKK3LT96x2MkckHKiXCgkB1L71sD5OS8hz9AAAt38EfHrNaSF09vhcyGi67SerFK0YecvJlu3/FwfuZ8syk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XOU4h+qu; arc=none smtp.client-ip=209.85.128.45
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-49249707788so15349685e9.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jun 2026 07:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782571586; x=1783176386; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HBg/7OCyilKcHeMXMdL3WuPjtAWiZJrGkie7U7w+6JM=;
        b=XOU4h+quX5ih1T7B94efGI1rwQI0n8nt5wE5iN1iqGb5/3tzpdFR1S4AjHoyxFCGjf
         3a5PZGZINsFCpTO0hl1Js1b9Z0T8mpP4iPdW/s1fCWlyHMcmhLjuDkSjTLobh+RzDQcu
         +oa81x0/qqJv1CP4o7H0/3CL0yLEqXiP6XOhb8ulY8IJbYwZ2bPxV73eCCiFNsLs4fKt
         isnxqHJVCMyzXl5HPMj92tDa9Vxl3XbvovS7fsbaTUOVvF4C4YEbEpz0z/rgjFUoMVqx
         +UznI2hQmZnwpglVRPvcKGt1qT+nFWpDKpn7D83B7O8kejdzpZUDbWeISpoi4CVzvelm
         euOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782571586; x=1783176386;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HBg/7OCyilKcHeMXMdL3WuPjtAWiZJrGkie7U7w+6JM=;
        b=jTK7hRG5SLkXhdcxlkzr93mpcG4WRTv81e2fnULNDNoufHO5ewFP/etVik+z985Y9Z
         S2qn4x/I0Y9umqc2kHN6giQVuI8AF5fMShabtE+SN0Vpioob7sWhA7cmCNJTdqASJjZZ
         YbWYhkF1kvlFi5PEIiQ5RMqp5ew6hQgH/jNlZwO7vJhossFqYbXuefB3zQ5o0pq0dMfr
         mixpvYdkL7QZRnD8fzhcFqtJ2U9xKsollwhe5RUcDmeXusgd58x7ET4EKEQ9mqQy/RW+
         efni/NsJzWh3KuTrjnp87mteG7sFzsb29bwfuAs4BX9iyCJSASU29h1WzqbPLA9GfMI6
         Njrg==
X-Forwarded-Encrypted: i=1; AFNElJ+CXIfh7hw4Iogy5ZVAbApHcb9q3jHzGK/X/kZOfK2PS0Jt2/BNG2CuBu9h9xglVsF1MIYTrQKYZRqZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwzXFsGon/NiVaRs0ytQLslemp4F3HEu+KXeUVx7BfrFauFimi6
	oUBkQvTQ3s/fdA2rtpT9hye29/grvzJ8tGC/Bjysb5sUw8s/22Oh+Wxv
X-Gm-Gg: AfdE7ckKtm6ntdYfvFuG68a0jPXY50CJQIswZCfaMKLNli6Q5QO4fR6NpiFoBJKsFck
	O8qKDUxLfN70mlQutuV0DBAqA+HWtvpXyFiUe3dAvFbT5kAac9mCPO46UTzeEOoZaFCYgw3Mr67
	w93y/XSzsADdBomE299q5JCY1fmywBbxu+DPpZdbA75nREBjadfc7UU9BszJHTWdf0LKKIShK5C
	qD22fgfiJAicTPLUJ1Wl3CV8nJphTTKZ3OaCzoLCRAaIz2wDCzkYVGwDjW686X4Dx7D35c6saVE
	/h/6De7Phci+auFrpiRUNyW21MG13wZmftziS1so+4xzg133JLfQp/6ftmEsjvV0TFYJMU5XV5a
	LaOexFYxxTfyfjlxUYw/4yI1nIlRXy4CktBtN1ddd4pIaC1e9OOymwCiVusPfcf/ifGw5gExj8l
	K6KTOy0rd8I56ANXor7A+Olvq1APx4hRO2NuUvSb6r4pwM1zUxwi12DqDtnR1o8MKhl62eLCnYv
	QJJ4MYeOJ3BPN9Y7Ni9dr/mGxQ=
X-Received: by 2002:a05:600c:c4a3:b0:490:d354:bd00 with SMTP id 5b1f17b1804b1-4926fc8822cmr82329145e9.25.1782571585491;
        Sat, 27 Jun 2026 07:46:25 -0700 (PDT)
Received: from Lord-Beerus.station (net-93-144-65-248.cust.vodafonedsl.it. [93.144.65.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4927038578bsm98709035e9.4.2026.06.27.07.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 07:46:24 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Josua Mayer <josua@solid-run.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Ernest Van Hoecke <ernest.vanhoecke@toradex.com>,
	Maud Spierings <maudspierings@gocontroll.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>
Subject: [PATCH v2 0/3] Add support for Variscite DART-MX8M-MINI and Sonata board
Date: Sat, 27 Jun 2026 16:46:10 +0200
Message-ID: <cover.1782571383.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-316300-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:daniel.baluta@nxp.com,m:josua@solid-run.com,m:dario.binacchi@amarulasolutions.com,m:alexander.stein@ew.tq-group.com,m:ernest.vanhoecke@toradex.com,m:maudspierings@gocontroll.com,m:francesco.dolcini@toradex.com,m:hvilleneuve@dimonoff.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com,solid-run.com,amarulasolutions.com,ew.tq-group.com,toradex.com,gocontroll.com,dimonoff.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,variscite.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E491A6D21BF

This patch series adds support for the Variscite DART-MX8M-MINI
system on module and the Sonata carrier board.

The series includes:
- SOM device tree with on-module peripherals
- Sonata carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

v1->v2:
 - Remove HDMI from commit message
 - Fixed eth regulator

Stefano Radaelli (3):
  dt-bindings: arm: fsl: add Variscite DART-MX8M-MINI Boards
  arm64: dts: freescale: Add support for Variscite DART-MX8M-MINI
  arm64: dts: imx8mm-var-dart: Add support for Variscite Sonata board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx8mm-var-dart-sonata.dts  | 517 ++++++++++++++++
 .../boot/dts/freescale/imx8mm-var-dart.dtsi   | 558 ++++++++++++++++++
 4 files changed, 1082 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-dart.dtsi


base-commit: 23a7098c710673ce8f245af317903ae46325a694
-- 
2.47.3


