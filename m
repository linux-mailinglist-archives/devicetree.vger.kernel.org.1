Return-Path: <devicetree+bounces-270432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPCFNLO9pmlDTQAAu9opvQ
	(envelope-from <devicetree+bounces-270432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:53:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0404B1ED024
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DFE923096D82
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C57373B3C1D;
	Tue,  3 Mar 2026 10:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N0vZNBaA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC1B3B585B
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772535083; cv=none; b=MkUfAL5lK0AsWkz3Yu6atHPQczMbRWFb80lEVsbqIq5TWPhbzrOw2q7ntU7tZ1L0AeddcENzYOS56QWKGqAUnQkYW53koX0w1cs4ITMTvwRJ6vIumCClEbznrZTUj201LFWWbumMNEu9EX0aE2DAM0E5AzT4IakqU1igOIOn2oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772535083; c=relaxed/simple;
	bh=FOyo6I+/JBVOMWvLfl9hFvZQVhcgm9DqCEirJlSsFNA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ODufqdm6r51f+LY/RznGtN3TYpyak+6R0c73Z/JH/9md3n2iuXAX5g1hZCUaiZyScEgQDug8cvk3bMzDpbGwTeY6yiq/dTwzHKpR8kAt1iK5p1ZXcICO/psn35fU9q6tg/koq2TlO7LDruwJLJQcnaW6Cknl6q6uXWH19Ti6aR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N0vZNBaA; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-483abed83b6so45583935e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772535072; x=1773139872; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g3SE8o2QxCYBZuJ6zYQoYbch5/wwuKdRU0VaDoGflE8=;
        b=N0vZNBaAOdR/6SDfZuQZoQx13qSU7r+b1KUoz2QlHm4oV/dAHTuy+/YUazAoTWlAjO
         uYD1kmkzBjxkZKR6Tre7CRY0ctdW3xoym+mq/nOg2hT8AggZcl9103cmrBSiuFBlMVHe
         /01Q4IBwWvm+hAHuuxjTZaMnMUqLUtdGeh1PFeeC5tXkY757DEGXC1N6TmwX1agk+VwP
         jA+XjlIUH14AzNv+visTE+dx98tZuQtyJqeRewnywBmTX2c2W/2cRjbsASEvaiPWnWTa
         JqLIIbUDtQq70ngWZwlE/gPfhLacLpc0Vf4cejj4+PNXv7F47HOvvkv3gV50v0LGwewI
         NgMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772535072; x=1773139872;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g3SE8o2QxCYBZuJ6zYQoYbch5/wwuKdRU0VaDoGflE8=;
        b=Bu5PFRBhPmvL+zNXArztCu44I+pIYRSk2NQXvMdXu/KZNaL0QNqtJSjtFfwHOr3FD1
         rTrBQyjfXiKqRRGPThdPGI+P0gTqxF5q+1Mh3L7F3Neh4rpwTy8SiVS4kA282MOZ6Djp
         MQ/l1vz6R6orBkrkcYfMmLJYJn8wAgKjv8C4b9PfsiVmnzypBSkRLu97ifK2JidC8Ryi
         gE8S8je3KBWITaJeocFEe76iDRm33xN7iPJDN5GKI7kmStm7UEyCVDjoe3HDm3BLin4s
         0VOJKr79CyJjZui1BhtijD3FKQjR3gqNIG2/MihGUaowES66iNJ8JUeOembz++9YczJj
         C7DQ==
X-Forwarded-Encrypted: i=1; AJvYcCWozsK7nec5Ggp63PGsWOp35Jv4OXeXMkTPW76sa6TPVF0Jfefv2ipjALyiXskQw37kFM1UWE6Y5mjW@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv2Grqg4+VqERMhHvG8N3hQVCflm3sH4iFiZJwGaBTSIefsFLo
	5+Foouub0GRCOF9XS7HzTzmC7h+X7sykizvtF4q1+DOvxUzfr8Dwx8FP
X-Gm-Gg: ATEYQzyV8o21XyZRxGWhtfXRVv9ExdzNmb6neYg2J6EgcplPViubtv8bp3RLCKIbQ0T
	RSMA1ioxiZNbSS9zg/7RBmTSXG2V8BEP5YOmqfWEw95AZB0R2qOlnwIynnq2ATvGh2ePCSxw6yo
	sJMsREAGc7HCbvSjBg7UW4JwqFghW1DR4bp5EqlTv6Pz3wQXhoeqPr3uPyYyhY/Kq1uEIssqpjH
	EtzNl7yqGKxf7oDUZD3wkZRNFpEMnggkXb+wKzq7em5l8s4TYosa+N09x1YQ+jJD4ZQt+WR6df+
	nhxbbpu3bZnglQ4vN+iCaDWFJrt+dIEmkLb1jgNgwapsFDpMRlbqYxXT/j71LLLn6+AFMH/S8oO
	EEC2vBqXQiBKRjOs7EZO1sr5F+lvyLWcZTNiPS7Z62BxtX8rh1bxm/eZNyIcog3zOWdimLyVThQ
	aPZRaOrfy4Z02rjHhqgHfUzR13ut4J9BszQgj1jbPUoIhoHrZIaTBgojpHdpT86mLjaDAK2hKBO
	T824fbUFI1LVE2GUWVNdCfw7OakuN5B0+oYWa8=
X-Received: by 2002:a05:600c:8b84:b0:479:2f95:5179 with SMTP id 5b1f17b1804b1-483c9bb1adbmr270868955e9.15.1772535072145;
        Tue, 03 Mar 2026 02:51:12 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b3474dsm318916045e9.1.2026.03.03.02.51.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 02:51:11 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: Frank Li <Frank.Li@nxp.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Matthias Schiffer <matthias.schiffer@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/3] Add support for Variscite DART-MX91 and Sonata board
Date: Tue,  3 Mar 2026 11:50:36 +0100
Message-ID: <cover.1772534362.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0404B1ED024
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-270432-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,tq-group.com,phytec.de,solid-run.com,toradex.com,norik.com,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,variscite.com:mid]
X-Rspamd-Action: no action

This patch series adds support for the Variscite DART-MX91 system on
module and the Sonata carrier board.

The series includes:
- Device tree bindings documentation for both SOM and carrier board
- SOM device tree with on-module peripherals
- Sonata carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

v2->v3:
 - Rebased the series to fix DTS apply issues.

v1->v2:
 - Ordering by hex and node name.

Stefano Radaelli (3):
  dt-bindings: arm: fsl: add Variscite DART-MX91 Boards
  arm64: dts: freescale: Add support for Variscite DART-MX91
  arm64: dts: imx91-var-dart: Add support for Variscite Sonata board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx91-var-dart-sonata.dts   | 498 ++++++++++++++++++
 .../boot/dts/freescale/imx91-var-dart.dtsi    | 468 ++++++++++++++++
 4 files changed, 973 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart.dtsi


base-commit: a251f9ed77f01f16adaaa1b3d2f568fc1b5acbfd
-- 
2.47.3


