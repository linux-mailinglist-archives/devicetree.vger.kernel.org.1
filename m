Return-Path: <devicetree+bounces-286234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIhrKELT12mrTAgAu9opvQ
	(envelope-from <devicetree+bounces-286234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 18:26:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1516F3CDA8E
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 18:26:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C3581302C317
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 16:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20D063CEBB8;
	Thu,  9 Apr 2026 16:24:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="LkJOUiUl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-244121.protonmail.ch (mail-244121.protonmail.ch [109.224.244.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653FD3DBD63
	for <devicetree@vger.kernel.org>; Thu,  9 Apr 2026 16:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=109.224.244.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775751843; cv=none; b=ulfyTyurjht3BurrNa3LG2pSoIcq+MQRRGjFN4WnCTKOegIE5FGyh2MqqNUWmk+SC6Mki9BSNiL9f3s+8FCyhFxvVz2udgRSU4Ap94RWREfjtuLQYHEi156rLqSoZL+UGN684Vj+gwniLiG2kxcYgS/EGeUEt1ECAVNmyuiJCyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775751843; c=relaxed/simple;
	bh=NOLBsWb1UEgcwN1zO96wDZDNdUUsAbH5wlEcUETSEkg=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=n2pLCqrRaj654zydtq9bVogg0iG4eMsG94gJIQ9XYRLrShd2WXV/l3CddI6E8O3E0KlqO34cx7SKc//m9HEdOJIsq/WSFCrhGies2lEyhsAXsTHQ+/JAUqFc4/j+bmU61zbn3tLYZ+67MOPOMDkDQ8RDEnLNtF/vLfh6R1yXz/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=LkJOUiUl; arc=none smtp.client-ip=109.224.244.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1775751830; x=1776011030;
	bh=P1y9CsmR0lT8aryOEbQahzPNi+Lv9pGRP43rGVLL/Bw=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=LkJOUiUlYWJlsoUXyaEAdKAHFy9OBZykoNEDwsbLzmW/cFphMFyQ176SsDaE8fq5s
	 VRrSnw0L09SwHv7+AqQPAmAvARN0Da1EKZYehjntDraTbtAgnlCsdtfpvrv14cfYV7
	 TsXqLZYy0GaekqIcKCX14rr3sq5CNURZOSNOpeB1DDBzxT0cJIHcad3yAbccAweAov
	 CTAOtkexFMxnmg/a8uwbYnx2RtF9+16EaZK8iitBgyCATgcxkYdTh2kQiKE6DK9DiK
	 vMi7u6/Ev84ftNor2ROagy3d/vjkn/qbCerrtGXFqmH6bTIAXzHTPNFamQN154s9al
	 Ghg9RDAhiC7eQ==
Date: Thu, 09 Apr 2026 16:23:44 +0000
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Hardik Phalet <hardik.phalet@pm.me>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Brigham Campbell <me@brighamcampbell.com>, Shuah Khan <skhan@linuxfoundation.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, Hardik Phalet <hardik.phalet@pm.me>
Subject: [PATCH 0/4] Add QST QMC5883P magnetometer driver
Message-ID: <20260409162308.2590385-1-hardik.phalet@pm.me>
Feedback-ID: 166659585:user:proton
X-Pm-Message-ID: 562626e2cc90d3abc72c3aff791bd9ec3705ed32
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286234-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hardik.phalet@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:dkim,pm.me:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1516F3CDA8E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds initial Linux support for the QST QMC5883P, a 3-axis
anisotropic magneto-resistive (AMR) magnetometer with a 16-bit ADC that
communicates over I2C. To my knowledge there is no existing upstream
driver for this device.

The driver supports:
  - Raw magnetic field readings on X, Y, and Z axes
  - Four selectable full-scale ranges (=C2=B12 G, =C2=B18 G, =C2=B112 G, =
=C2=B130 G)
  - Configurable output data rate (10, 50, 100, 200 Hz)
  - Configurable oversampling ratio (1, 2, 4, 8)
  - Configurable downsampling ratio (1, 2, 4, 8) via a custom sysfs
    attribute
  - Runtime PM with a 2 s autosuspend delay
  - System suspend/resume via pm_runtime_force_suspend/resume

Regmap with an rbtree cache is used throughout. CTRL_1 and CTRL_2
bit fields are accessed via regmap_field to avoid read-modify-write
races. The STATUS register is marked precious so regmap never reads
it speculatively and clears the DRDY/OVFL bits unexpectedly.

The init sequence on probe is: soft reset =E2=86=92 wait 1 ms =E2=86=92 dea=
ssert
reset =E2=86=92 configure SET/RESET control =E2=86=92 apply default ODR/OSR=
/DSR/RNG
=E2=86=92 enter normal mode. This ordering was determined empirically on
hardware to produce reliable, non-zero axis readings.

The driver is placed under drivers/staging/iio/magnetometer/ with a
TODO file tracking the remaining work before it can graduate:
  - Triggered buffer support (iio_triggered_buffer_setup)
  - DRDY interrupt support
  - Self-test implementation

Patches:
  1/4 - dt-bindings: vendor-prefixes: Add 'qst' for QST Corporation
  2/4 - dt-bindings: iio: magnetometer: Add binding for QST QMC5883P
  3/4 - staging: iio: magnetometer: Add QST QMC5883P driver
  4/4 - MAINTAINERS: Add entry for QST QMC5883P magnetometer driver

Testing
-------
Tested on a Raspberry Pi 4B running a mainline kernel (aarch64) with a
GY-271 HM-246 board connected via I2C bus 1. The chip was confirmed to
enumerate at address 0x2C via i2cdetect.

The driver was cross-compiled from Fedora (x86_64) targeting aarch64
and loaded as a module (qmc5883p.ko) with the Device Tree overlay
pointing at i2c1:0x2c.

Verification steps performed:
  - Chip ID register (0x00) reads back 0x80 on probe, confirming the
    correct device is present
  - All three axes (in_magn_x_raw, in_magn_y_raw, in_magn_z_raw) return
    non-zero, stable values when the board is held still and change
    appropriately when the board is rotated
  - in_magn_x_scale (and Y, Z) returns the expected fractional value for
    the default =C2=B18 G range (1/37500000)
  - in_magn_sampling_frequency / _available, in_magn_oversampling_ratio /
    _available, and downsampling_ratio / downsampling_ratio_available all
    read and write correctly; the chip responds without error to each
    valid setting
  - Runtime PM: after 2 s of inactivity the device enters suspend mode
    (MODE =3D 0x00 confirmed via i2cdump); the next sysfs read correctly
    resumes the device and returns valid data
  - System suspend/resume (echo mem > /sys/power/state) leaves the
    driver in a consistent state; readings remain valid after resume
  - dt_binding_check passes for patch 2/4
  - Kernel builds cleanly with W=3D1 and no new warnings

Hardik Phalet (4):
  dt-bindings: vendor-prefixes: Add QST Corporation
  dt-bindings: iio: magnetometer: Add binding for QST QMC5883P
  Subject: [PATCH 3/4] staging: iio: magnetometer: Add QST QMC5883P
    driver
  MAINTAINERS: Add entry for QST QMC5883P magnetometer driver

 .../iio/magnetometer/qst,qmc5883p.yaml        |  48 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   7 +
 drivers/staging/iio/Kconfig                   |   1 +
 drivers/staging/iio/Makefile                  |   1 +
 drivers/staging/iio/magnetometer/Kconfig      |  20 +
 drivers/staging/iio/magnetometer/Makefile     |   7 +
 drivers/staging/iio/magnetometer/TODO         |   5 +
 drivers/staging/iio/magnetometer/qmc5883p.c   | 819 ++++++++++++++++++
 9 files changed, 910 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/qst,=
qmc5883p.yaml
 create mode 100644 drivers/staging/iio/magnetometer/Kconfig
 create mode 100644 drivers/staging/iio/magnetometer/Makefile
 create mode 100644 drivers/staging/iio/magnetometer/TODO
 create mode 100644 drivers/staging/iio/magnetometer/qmc5883p.c

--=20
2.53.0



