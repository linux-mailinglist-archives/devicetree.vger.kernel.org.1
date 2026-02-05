Return-Path: <devicetree+bounces-262957-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMuSFuRqhGl12wMAu9opvQ
	(envelope-from <devicetree+bounces-262957-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 11:03:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA9DF1268
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 11:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 751A83018289
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 10:02:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E38113A1D1C;
	Thu,  5 Feb 2026 10:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="joxb3fTG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7832F3644D2
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 10:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770285714; cv=none; b=SgRWluvzJe2FAholR2FBvg/pVWKfpaKqVsMZnmu91CNHNPYdYohotBfXSGb5sD4j4d/MzziuN1oYbeHwtcbQipiduw5feU6XFDPeBeynrK+V5wZp3SmHqi8vyVcD9M/waKYlYv6pUir7nS9wxsZ1Ko2R6+g82+uE1YsKX+2w/Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770285714; c=relaxed/simple;
	bh=lleOIIrkEM6FB+pXJ1Razl4FkfUSxwLS7fdsMrD/1L0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=e057SzPjgqDr9W7C8JFKLTHpXhk04SEz7tceFgJHxBJbjNQX0d7h1aBQoMbC23arhy61MrOtCT8oaYGjSUzGwamw8kp92k2QQYU26nSxf03hsnkK2/piPm3OqT5C6E6EAdvLBt1VfvFk9dJvSRuAiUhN4m+XKhoN/1jci70tgaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=joxb3fTG; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-4359a302794so582003f8f.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 02:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770285713; x=1770890513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qMd6eVgyTaMp2dz0Bmva0s1vsJYaGNF3GbW8MNURkF8=;
        b=joxb3fTGR9WBjzqh4SP0/851oMtkEyK1cg2VTHE/UYF24izDf0Hgk7oKGkQYtxBpsM
         RStNsyGaHW/O30FZHbhYbczlqIZ/81ipkPhGP1n5zY4NL8CKhAmfCKSuAbrfqwMJ5Dn+
         9mrWbmYYhIUot3Vmvq1O5d2POW2H/uNrA/rLQz4bFgcfCuUBRNVv5b2ppckIT3tuymSa
         1/BVNqu38LGRE9VKOFGVWqIhGjlO7z6Kk79GobZRp04a0Ei5g0Lideke7P0zjyHjUKWD
         wYId1IU1PUuWaRp+/DfLF6bYAazcCOJ4yKM4SLxqv9kgufunOx3Wi+6Hrfdq4ZYIH/4X
         29Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770285713; x=1770890513;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qMd6eVgyTaMp2dz0Bmva0s1vsJYaGNF3GbW8MNURkF8=;
        b=cCD2R8OgyNgk1L/dIL5UpxcERrFDQpS7S5x9gAC2UbqsTgPm8QgiOIE9y3HX47Jrfg
         T5ynNlm7nZoPgXYLfpS0juNRxOzZ71uVhtqf0Zwi0+CHTpUzkIgDdTVLw8Eq1oAC7y2M
         +N/sS2K2BCkiHp7GFjqfZ5nQ1PEz74OsTcV6/nUAcTZ4kXDjc8bLu/KGhXo0JyQSXyWI
         9c78/LoCgVyWIaNVAgMLZsXoBTxlFFj/bZzJ2I6nAC9cM2tlqXEgucsggpYVBHdyQTM8
         orDGp3Wj3YWE5E1xbDJADDERQdvHr3mmIAvU55Rs6nVBhqsGu5n8YMGAmzHCiJJ4ZhHX
         KCVA==
X-Forwarded-Encrypted: i=1; AJvYcCVYpcS21YB7Ag+bjS5aXPfLjBfzB/rHIAzo0PH/z64rqGJM55brC6EVQs/W9W8qpZQyJHPYAAQRX7Qj@vger.kernel.org
X-Gm-Message-State: AOJu0Yyn3mDMHnPgJSkoEXIvZox46NhDPFBkwK1XDA1CMHfFX384PZQB
	IZWqBeFArK9HZrs5ZiQ+zCMIMcGOnELn50cWo68IyeL0Afm219MhDGzi
X-Gm-Gg: AZuq6aIv+VCw53JOF+b3ivOiaVd+9LR1Vt8OshXUKsFePhUr4rXzkW+u1UBGny4BNoa
	gCxibSvWePFKHTTFI/raLRXmlH6jNmwIlm0ckTW6QJcsxMErx0fPaYxQ/VBEDDjfOBePIyUDLrg
	WsD6w3nc5M5So0kwFlVMs08EgBi+WlgYF11ydfgwJpdRG/m9BypONoxT9KQihfWKlHVvmCWMlLD
	tB1Wp5KFmIbesOD48do/8fYgP3Pw7m2cE36XEskmcNOOc/QKXHHa6KW7i23h/1rj5BC9y5LysZy
	zLApgLYjViu6qOBV2Tkw7+CFt7wCjsRSdtO39/25LaJud6mLENZrCyDNyFEW0KlM82oVt9j/Y2U
	Z4NcVDclyQT1ICKBdq5YY5HfB30P39NhZ3CVyhhXko1rkPOheXysr0ynFGaWs+l3LxgzIN5z01y
	xHmMnaldAuCZwR8YflwwfXu5JbVPzaEW0ICN11/i83F8GUB4VrqfhVVTS8oHwJ2LyuQao5qGa79
	2eo6y8uy4kucfvGB9CEqK/pNCgG
X-Received: by 2002:a05:6000:2384:b0:435:a258:769 with SMTP id ffacd0b85a97d-436180627b8mr8506438f8f.59.1770285712565;
        Thu, 05 Feb 2026 02:01:52 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4361805fbc5sm12025466f8f.34.2026.02.05.02.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 02:01:52 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com,
	primoz.fiser@norik.com,
	Markus.Niebel@tq-group.com,
	y.moog@phytec.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	maudspierings@gocontroll.com,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>
Subject: [PATCH v2 0/3] Add support for Variscite DART-MX91 and Sonata board
Date: Thu,  5 Feb 2026 11:01:22 +0100
Message-ID: <20260205100125.9095-1-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-262957-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,gocontroll.com,variscite.com];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CEA9DF1268
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


base-commit: 18f7fcd5e69a04df57b563360b88be72471d6b62
-- 
2.47.3


