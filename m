Return-Path: <devicetree+bounces-326534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BYvqCjadVmqF/AAAu9opvQ
	(envelope-from <devicetree+bounces-326534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:33:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0F0758C17
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:33:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326534-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326534-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 904B630398AB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFBC4427F9E;
	Tue, 14 Jul 2026 20:33:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from h6.fbrelay.privateemail.com (h6.fbrelay.privateemail.com [162.0.218.229])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33D74156CE;
	Tue, 14 Jul 2026 20:33:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784061235; cv=none; b=TKZONqs8VtaKCygo02EZjTDiQfY+nOE/sKtRDSvYjAviv0k+MlVy3PCCFhWttDF4sQwlEmXK3UD7wvhgUjp+mGbaTrBUTC39M2PKO2EjbOm6PQpO5qxz1Lne0mnoRqeW0gw7VRx+RgNtrI2Bepg4mXMyvsXVC+InA6nVOqI0Mkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784061235; c=relaxed/simple;
	bh=vpOSmILnVlOjzQDd3adunMrb8V2vgwHdO/qrml9HiL0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N5eCvs1kh3UAO204G1ezrFtdKX3b7HvIz2nqX9Do7+8clglSdLAbIjZ0m8ERpFE/rpGTU1tajjs6JdTF4iMfqybPjusmGpCz/2NqMFSazadI9lB3U5iHXkMK+JOLNEjeVW0HH/xjj5nJq8A75uDXjGrcWEqqzZRVBL1Dl/HGpgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=catcrafts.net; spf=pass smtp.mailfrom=catcrafts.net; arc=none smtp.client-ip=162.0.218.229
Received: from MTA-11-3.privateemail.com (mta-11.privateemail.com [198.54.118.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by h5.fbrelay.privateemail.com (Postfix) with ESMTPSA id 4h09rS2CCxz2xj7;
	Tue, 14 Jul 2026 20:29:12 +0000 (UTC)
Received: from mail.privateemail.com (K8S-PROD-WORKER-13 [87.215.145.39])
	by mta-11.privateemail.com (Postfix) with ESMTPA id 4h09r06kgKz3hhTD;
	Tue, 14 Jul 2026 16:28:48 -0400 (EDT)
From: Jorijn van der Graaf <jorijnvdgraaf@catcrafts.net>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Jorijn van der Graaf <jorijnvdgraaf@catcrafts.net>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Siratul Islam <siratul.islam@linux.dev>,
	Luca Weiss <luca.weiss@fairphone.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] iio: magnetometer: add support for QST QMC6308
Date: Tue, 14 Jul 2026 22:28:40 +0200
Message-ID: <20260714202842.340293-1-jorijnvdgraaf@catcrafts.net>
X-Mailer: git-send-email 2.55.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326534-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:jorijnvdgraaf@catcrafts.net,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:siratul.islam@linux.dev,m:luca.weiss@fairphone.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jorijnvdgraaf@catcrafts.net,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_NA(0.00)[catcrafts.net];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jorijnvdgraaf@catcrafts.net,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B0F0758C17

This adds a driver and DT binding for the QST QMC6308, a 3-axis AMR
magnetometer found e.g. in the Fairphone 6. The series is based on
iio/togreg.

The chip is a sibling of the recently added QMC5883L but is not
register compatible with it (different chip ID register and value,
data output at 0x01..0x06, and the range field lives in control
register 2), so this is a separate driver; its structure intentionally
follows qmc5883l.c. The QMC6308's 4-pin WLCSP has no DRDY/interrupt
pin at all, so there is nothing to hang a trigger off; reads are
polled from the chip's periodic measurement mode (its one-shot mode
has no specified conversion time to bound a wait on), with runtime PM
dropping the chip into its 2-3 uA suspend mode between uses. A
software-triggered buffer mode could be added later without breaking
the ABI.

Tested on a Fairphone 6, where the sensor sits on a bit-banged
i2c-gpio bus, using a byte-identical backport on that device's
7.1-based kernel; on this base the driver is build- and modpost-
verified (arm64 defconfig, W=1 clean). Testing covered the chip ID
probe, raw reads, every ODR (10/50/100/200 Hz), oversampling ratio
(8/4/2/1) and scale setting (the same ambient field reads consistently
across all four ranges), the mount matrix validated against Earth's
field by pointing the device at the cardinal directions, and runtime
PM verified at the bus level (the mode register reads back as suspend
after the autosuspend delay, wakes on read, and accepts configuration
writes while suspended). The FP6 board DTS will be submitted
separately through the qcom tree once this lands.

Jorijn van der Graaf (2):
  dt-bindings: iio: magnetometer: add QST QMC6308
  iio: magnetometer: add support for QST QMC6308

 .../iio/magnetometer/qstcorp,qmc6308.yaml     |  48 ++
 MAINTAINERS                                   |   7 +
 drivers/iio/magnetometer/Kconfig              |  11 +
 drivers/iio/magnetometer/Makefile             |   1 +
 drivers/iio/magnetometer/qmc6308.c            | 590 ++++++++++++++++++
 5 files changed, 657 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc6308.yaml
 create mode 100644 drivers/iio/magnetometer/qmc6308.c


base-commit: 2e2f2de7532cbbc2269de8be20ec709606c6e79b
-- 
2.55.0


