Return-Path: <devicetree+bounces-268482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBRQLosrn2kOZQQAu9opvQ
	(envelope-from <devicetree+bounces-268482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:04:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8B419B2D6
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:04:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78268300D95F
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AA083DA7D9;
	Wed, 25 Feb 2026 17:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nJoHHf28"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E2672222A9
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 17:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772039038; cv=none; b=MwmtrEsLtGogn3b/NrQcOuAhXuzq4GF+0lLRVWWJEqaXZnhe0vXIKEhHNt7j1a/DDL5LCNb5FGP1+yVGhO24Nlv3yRzGjJqqnadUUmEaXcrn705MdEQ1gMwdZf8c/TZ84iWf7A8Byxlizq5Xj4+e0C+WcdJlWMhKRnbyER050tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772039038; c=relaxed/simple;
	bh=/xBJjsSjTyjG/WPUzYI66QwIigLR/Nf80Oq0zm5NxBg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YWoxNWtJKOEBED1/I57MpPYZn91a6NsQlyFmeEQ2hOaWBDdXgUakSs/WeYUdYbfaumhFYDrjF5GDIFaXyyqFqkBE1BGgRiJVsxvxoDBzjwupderwra3pFdjq3GjJWtXqmaLrk0r7Nlbk5rnll39jzYIJ5uA4sm5pdpBUBAyY/6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nJoHHf28; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4807068eacbso54418625e9.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 09:03:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772039036; x=1772643836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p/gKDfNO0yZEaX4mw+sj25TM6DxomC6HSWL+mXYtDWw=;
        b=nJoHHf28GU1yMErPNdFcFsUBNKJ8GGJR+d4dK2B6l+fV2tQf+QoWO3Mho7/eXpwPoc
         mPsLlASu3BZEW78OlwIMeFZK28tfu6mYxOFsNpCOy2+sN3ND1zDjmUpBee2Xqw+r9NLn
         mTQpnExVeFvn9khNCrJ/AobwXga9fyTR1Xe2JX4vKZSN7P2P/T9PLGewdyeZgAIjfYgz
         V8Dw8t3jtNEBrmdsIweGsoSOZl975A46WelpptVGpHt+eWXD7w2nXa6iA5NV93Ienhaf
         TRATrdPaU3PycOOb/O+PgtC05duHhNTiQRrq0faoMzGt6OZKVb+ADtub2Pb7SWOgWhUM
         yp9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772039036; x=1772643836;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/gKDfNO0yZEaX4mw+sj25TM6DxomC6HSWL+mXYtDWw=;
        b=mWAxZQS1s9bPkk7pAAdVQB1J//sO5VlEDnf77ilmAWIz70NbCs4ia+gNVB5l0i7rt9
         NYwXXF7uqxn0KF7OhIRS5p/NKw7lSRcgxmPaAfPajy2AyXVT0qJnpMsHW1H3t8zMNJtP
         4bRxl8wI9PJ0vyqKwj57QYmpFbVDVuM189dmJbaDsSlHvWuvcWRPl6eGOBEDFVmjKdM5
         suU3W5QXTkJ5xyTX87pv81tyI51vRHiqv8B1cx0K3WGAV8zKivc0mEtO4mlravVY7v6k
         nwfDgoeMDBylWb5k3W/R9htdhYoPljGB4qBN1gMLq4IQncSa8hobqfh/aCB2eSX5JeXL
         Qrmw==
X-Gm-Message-State: AOJu0Ywvuv0hpmA2GqKQIILLnEPKnFJSOGW/Bte3CYlyajTF3mDdxRKR
	o2M1B7Bz5vNtbwf22U1FsGb+bD9eFZKo2GhNIUjAeLC6D0xBCgCixJRJf+ibdQ==
X-Gm-Gg: ATEYQzzcoICC8kNfgs25N48Co3gbL0qQDEoqccqe8Uqd+ShFIfj4+t4qrvmGwJnpbTU
	+hk+vbzqF22LGG13GDuJiOoE0MASsg3KBhE4bBOngMRWeMzrTGbx8X/aNEBN9qhC/6OsEgfkdSi
	9tCwqdPbjhlqaVMz+oMFLqiXl7f448v5lQJ9K1Z+WIoIURCNUGM2md08qzVjazC6rHVM9EZKCSd
	/R/hfTVy3iKYooDAbofF7wtHwXSiFDaF0ApmNv5K+FptzVCnVcUzUOXeayKhoR2k18RLQ0SVTaf
	5R88UOMLKSaLIzF9wOrH8k70kYlD/SsUzJt42qTcHo624SUw6xh3A7nfNmS3idEJAgzPRYsV/W7
	PtR5QEm3TlVQP0j6LWageHAS+MwtkSkFYFdVJ2/DGoUgLkQ0p3/7Q9BWs4nXAMzvr+DmIlAQpKS
	tUa5KTQwqvnVs4N5f0EB8EY7jSE+YhUtjUqQ8FlCRlECYasFnhlLDJhRnsgzzfzOYvqUuKLX1El
	To0djNp/IRqwdocgIhxH6JszObYMfypEv2T2Qj47VZ1pFx+jQ==
X-Received: by 2002:a05:600c:5486:b0:483:709e:f239 with SMTP id 5b1f17b1804b1-483a95dea69mr263172375e9.22.1772039035675;
        Wed, 25 Feb 2026 09:03:55 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70b3f3sm88276935e9.6.2026.02.25.09.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 09:03:54 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 0/3] Add support for Variscite DART-MX95 and Sonata board
Date: Wed, 25 Feb 2026 18:03:35 +0100
Message-ID: <20260225170347.77841-1-stefano.r@variscite.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-268482-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,lists.linux.dev,lists.infradead.org];
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
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5F8B419B2D6
X-Rspamd-Action: no action

This patch series adds support for the Variscite DART-MX95 system on
module and the Sonata carrier board.

The series includes:
- Device tree bindings documentation for both SOM and carrier board
- SOM device tree with on-module peripherals
- Sonata carrier board device tree with board-specific features

The implementation follows the standard SOM + carrier board pattern
where the SOM dtsi contains only peripherals mounted on the module,
while carrier-specific interfaces are enabled in the board dts.

v6:
- Order by node name instead of by label
v5:
- Fix newlines and nodes order
v4:
- Fix typo in spacing
- Remove vpu and cm7 reserved memory
- Add GPIO_OPEN_DRAIN to i2c gpios
- Move pinmux to eof
v3:
- Fix specific node names with generic ones
- Remove fixed-link property for SFP
- Audio regulator cleanup
v2:
- Add SFP cage node for enetc_port2 following sff,sfp.yaml binding

Stefano Radaelli (3):
  dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
  arm64: dts: freescale: Add support for Variscite DART-MX95
  arm64: dts: imx95-var-dart: Add support for Variscite Sonata board

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../dts/freescale/imx95-var-dart-sonata.dts   | 591 ++++++++++++++++++
 .../boot/dts/freescale/imx95-var-dart.dtsi    | 425 +++++++++++++
 4 files changed, 1023 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart-sonata.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi


base-commit: 40fbbd64bba6c6e7a72885d2f59b6a3be9991eeb
-- 
2.47.3


