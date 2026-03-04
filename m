Return-Path: <devicetree+bounces-271171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDFIH6hmqGl3uQAAu9opvQ
	(envelope-from <devicetree+bounces-271171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:06:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B99204D8B
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:06:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEE12301016C
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F44378823;
	Wed,  4 Mar 2026 17:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A1YThv0w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90FE372EC8
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 17:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772643613; cv=none; b=n5oyp9350CmBqLNVZRhIPr5BEoFPoUPurFvrkVWg0NCPcWqXJj7BRdAWU4bwuVAlhOl+9PqWobXiK8G2p4LQWzbVbS3UJiplXmsnEjTXM1MF/aZ//UNe4L9Tq45ccEE0R33fxL1zuOZNTN2UL22QOv29wLVmC98nLHtmcgp+xjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772643613; c=relaxed/simple;
	bh=k1SEXk3hQTDfN0dLQzmKqJQ4Ry3ZBcRC/Pm3oxOE4Z0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HB1qtjnyZnV79xBrnzr/YW2lwiYCfaR3RheJ8JdB11xfRydE4prVpnyyF/ncjiG9Cb//gacvHpVX9Oo1Ye1VJB7BhwJ1cXXDZDCIouLrWmkG4fmDC0HOKpi9hoLul9PjEikh0rEOi5z0Rcm2/gXfctiWUCbhEFOestatjL5olzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A1YThv0w; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4836f363d0dso62753105e9.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 09:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772643610; x=1773248410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iOKKDiE8UwEX6D8ImXPa3GsQCDK5MYHljgoPPgkonbw=;
        b=A1YThv0wdleNeQUvA2lpgxo28LP5SfUH4oa0X5jNdiSI3Qijz0TsbGliZ1/kEdgRGo
         sA9hoeXCqe0fbuFlm0DxlEEOUOolo9Fosan+FvJBcDLfkBVuzG0xDuw028ByXoKy+cM0
         y7uFLDUVHmyWmtIf+WiwTl6RWREcbaU60wVZRr6N1RO2uVrIpC9k3ycJqk1Rajl7TdCQ
         wnxNCPVuI+11RfGA9pQze+GjvP6ZH1lRlj2p8rBKoVjihjaFxnz9FjvvQpxL6XU32TYG
         YK95bPNy2TOjvZ+qQR192H+qY1CyXBdnsHrvuHI+gKRSoPh2YKMDr9x/o/StjwL6JSUa
         bLkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772643610; x=1773248410;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iOKKDiE8UwEX6D8ImXPa3GsQCDK5MYHljgoPPgkonbw=;
        b=bXKd8q8BtSShYe/yTpegU36whTlGF7eWINsx2WAeyR86diuiYFiW0keopYaVlJKPUV
         AEVJUAPfYjxCEYylOPuav75vx8Y4n16vb9iEgHLEaWAF3Tfw/RUywklIaEBFzyJn/UDR
         ioOFAdujvM/flJ7kWIUAH3hS0jsIPYDN5YB6fAgNDGIkGj99TeQ8pdCUrMJmASBRUhzs
         RUFtqP3fZzU/jnLXYBdKsyZ7HCbi2rLFLznhGudBoQJM2EkMDMqxccoex+PUl3W0DhgF
         6ncxp0I3KbxqwdVjYBqCb72riUJfRXOMGuSh2Y/V8IIozvM7GlOq+ugy5K7SabtUCV+n
         Xn/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXprXfw0Us9i11dw2ms9RyICnbLOqZ3wfodBmK/stQfMcmJIgFC0dIBJ+A01c9dyXBdNss7Dfw0Jit4@vger.kernel.org
X-Gm-Message-State: AOJu0YzyvAcPUwCAwNK5+pP3oD6jvINshAk3CETW58Nd+OaumINPH069
	PBqPbVY9bxT/LvTG9+9JMsfU/IXPvlVxWkzkKQ8y0208cTQqEWUZJYpM
X-Gm-Gg: ATEYQzwfIHQQ3lyh+Sv6QJSBGH8Ed3xsP1bSxxhJy9cr2PGS7x25kOJGEK+ilBJgz8r
	eTo6EEacVUkg7IeXLpuTYbTPupfzz3bxTMQUMEgPxleBqfkRsg7cPOQTg5r01QTV466mESB+KaQ
	Ts6P8yUEBe7dwf5HmZoJNQq+aYdn0bnDfh3Fbk8N+M2nqJEidNU+TchVNCvV8BQALJ0imuQl10i
	u6vV7iQpJpb+RBpdAYTcLS7Wb5jcgAyUOEv0f4GzGl2vIB73aWWxB/9oph5yLYG/g9x+YTl4s+F
	RcfGMWv2AovCgYwzd94Fqq22DmVH8tM6kTzV7J1VZfsofi27dz4IpvdD5f0mEncINmwti7luX9R
	O0li+/JAzcsc1AW/pP6S5NyMkJcAS3mdQf9tbX/Teev1RCCLvsN85UgaT7p+JZvc7JUTxFtTdmr
	tQ+U9jRq5T0kn5uZsb8X17jcCHfqy7/s2H+38RVO7zEPRjDMoEGy8C8nzqHvGVZQY7OI4VhdXI8
	X3+ug9UAFATJCukxBsaIs+0Cp1iS/r6/I3g4heW
X-Received: by 2002:a05:600c:314a:b0:46e:4a13:e6c6 with SMTP id 5b1f17b1804b1-48519883ac9mr47568175e9.19.1772643609888;
        Wed, 04 Mar 2026 09:00:09 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851887fc54sm69946295e9.10.2026.03.04.09.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 09:00:09 -0800 (PST)
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
	Primoz Fiser <primoz.fiser@norik.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/3] Add support for Variscite DART-MX91 and Sonata board
Date: Wed,  4 Mar 2026 17:59:52 +0100
Message-ID: <cover.1772642881.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 10B99204D8B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-271171-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,tq-group.com,phytec.de,norik.com,toradex.com,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
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

v3->v4:
 - Fix space between BUCK4/BUCK5 aned parenthesis
 - Remove unused pinctrl groups

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
 .../dts/freescale/imx91-var-dart-sonata.dts   | 471 ++++++++++++++++++
 .../boot/dts/freescale/imx91-var-dart.dtsi    | 468 +++++++++++++++++
 4 files changed, 946 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx91-var-dart.dtsi


base-commit: a251f9ed77f01f16adaaa1b3d2f568fc1b5acbfd
-- 
2.47.3


