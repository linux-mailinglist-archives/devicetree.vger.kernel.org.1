Return-Path: <devicetree+bounces-267982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNMDJuHSnWk0SQQAu9opvQ
	(envelope-from <devicetree+bounces-267982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:33:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 186E7189D2D
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:33:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0E938301E9BC
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD20637D139;
	Tue, 24 Feb 2026 16:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I79bVtoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86CC53EBF36
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 16:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771950813; cv=none; b=em94nu94Z9LWLh03+40TyYgRb4xeUSNMHDc4VQ+4+Cmhd9mUxK/bVSyQfhogEuxq08xE7z7AjkmKc0js9TMWz7DGJztUA+sZly9M8g83s9Mk1R/eA2zaqd+32DayPt3RjbyZs63hkj8n2ScNpCo8FflHXG6oACsQM5iTbCO6CxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771950813; c=relaxed/simple;
	bh=k06iNkdUqRcIsezgbNOaN8EjnwaSbxKzgfH0Vnq0HC4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Rzer5YaR6Uke5S1dhQx6GL7wGVVGcCxclOQAFxP5WNDjAuNZM2XuAOsR3OjlkJqj0nA1UhieBY3aAi3EMGMttEpAW/Mi/fP0ycY1KVnV6aaPydK++FumpuKo6XIogAHXQIdux2QHHGn+Pc6o2RL7IOft8lM1Ylvsv3NQD9viBJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I79bVtoV; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7d19bfe1190so4917110a34.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 08:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771950811; x=1772555611; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bU5k+6sNB0KTbcFvy5Ke25ujYH5KIYZfLNb1U8JEui0=;
        b=I79bVtoVWLYL8XQAOfIbV0o2Anyvtpqzi69bo+9Zs6tA8cOyfyhVoeCNp505Q6Clyd
         4T2rqyRHn+4zpuF3ALmcbYW5eDkYFg9wVqA/5pgINjr7vl60drXlNHd90iI0H82hGUtM
         YrwMLSgXlJwzFIUJ4oqhw1JRhClR6OBwBTrd0muof/zIVPq6kWDooRmHPYEwJBrXURy3
         9hbMAp9Ouu73K4nJKejGhGzWgIonCeBDKWDXCd6fOHI2bQkIH0uqEbCBE2LhgBcANIQv
         EWkzU1vjKmuOsYwEZEoBjV+YWlg/7cggcezRQ48wPtzHyElHnzIaWfJb+nnI/2DEqkbC
         tmDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771950811; x=1772555611;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bU5k+6sNB0KTbcFvy5Ke25ujYH5KIYZfLNb1U8JEui0=;
        b=vDyMPA81XtNHD/nZK3U6ReJhIyMnTOpFuYMLV90e1JKET9PoFKRXroH7RtuDNFbRPI
         HJNPfTonZuAUZa2hrnKszIOyd/mHnzv71UBPPBqvUJTmJdOd1xNpD5KkRKxVpKI5MOAm
         l6vIGw96qo8jovoACU3Ruwkd7KzaC3NekTgbasJsUksNMSqVHGTTdOE7JCRcPUDtuWOS
         JVs2PHhFEM0sxPrGO6GmxWsFtkXUDlILO6GfnfraPffEOKx6sKLy2aHsfZ5Pu/tNnDoF
         +syjfKp7bQl+ysH5eq0Ml+Q9ziaxCBp92Yf1YGgysWsnoguvkKi+XILy+wUcIc2PRY/f
         cw/Q==
X-Forwarded-Encrypted: i=1; AJvYcCW7KyvcJ3Zih+nF/4DnVNRCZ55/mMQKLq8LZfh8g4QA9IIRhOMrsPuu5uluk5PHlaVoxrtgGNZmG7Cn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8nOF+kxAqURZddaIwLmBB00jeyFbU+/GrMEWfICu3lhtErJJT
	ZaOupLzB9mXGwVvgMK/boCNlPonP0OVtBiWJ28kNfka3VGRy51YbQEDr
X-Gm-Gg: AZuq6aI2mZumgi9eUxaYCJr9mulGZ8JIp3w2WoG+mJ9CS7ZcTioLZcPBSpaEJjbwyd2
	MRFoP+bhf7mU8fBgo0eYn24BksIJHRQ/XK8sQPvT0O5K+o7+5ESlGTc2EcIUG6sU6UBsCGftC3V
	zGsRbMugUi1SIJbE2E4OWE9ui2bSHRNewxle8qDJlUo/NuSPpiqXzHAoRau7nrWaWR4hB9sh3ur
	FJC/okvwUEruF/04Sq5Z/lEFTAYEzjMCbXZVGm1ejX+NTIE+2o/eMR42R/rhdk7Os4HsStNgqhX
	bbekTkYJ1aHArelT1h5Svf2h/KM/UbuPbZ1r9rNGvfc+5t7TQFjulOnMoec28vIqW3aqfpWLjQK
	h9+GgWP43sc892CX/jCLwbRjn9s3ktD0qNq3/Wq1rqZ4CJaMPoNz61x41trnTlEbQ5d5ZxYqula
	nLrHlkxcCyWScgMgroWi5a
X-Received: by 2002:a05:6830:7317:b0:7c7:62d0:b462 with SMTP id 46e09a7af769-7d52bdf6f21mr8759906a34.6.1771950811307;
        Tue, 24 Feb 2026 08:33:31 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52d0725c4sm11060130a34.25.2026.02.24.08.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 08:33:30 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Invensense ICM42607
Date: Tue, 24 Feb 2026 10:31:02 -0600
Message-ID: <20260224163109.370930-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,vger.kernel.org,sntech.de,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-267982-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 186E7189D2D
X-Rspamd-Action: no action

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the ICM42607 IMU. This sensor shares the same
functionality but a different register layout with the existing
ICM42600.

This driver should work with the ICM42607 and ICM42607P over both I2C
and SPI, however only the ICM42607P over I2C could be tested.

Chris Morgan (3):
  dt-bindings: iio: imu: icm42607: Add devicetree binding
  iio: imu: inv_icm42607: add new inv_icm42607 driver
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42607.yaml |   92 ++
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |   20 +-
 drivers/iio/imu/Kconfig                       |    1 +
 drivers/iio/imu/Makefile                      |    1 +
 drivers/iio/imu/inv_icm42607/Kconfig          |   30 +
 drivers/iio/imu/inv_icm42607/Makefile         |   14 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  472 ++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_accel.c | 1025 +++++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.c    |  566 +++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.h    |  100 ++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  |  811 +++++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_gyro.c  |  578 ++++++++++
 .../iio/imu/inv_icm42607/inv_icm42607_i2c.c   |   93 ++
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   |  100 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.c  |   82 ++
 .../iio/imu/inv_icm42607/inv_icm42607_temp.h  |   30 +
 16 files changed, 4014 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
 create mode 100644 drivers/iio/imu/inv_icm42607/Kconfig
 create mode 100644 drivers/iio/imu/inv_icm42607/Makefile
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_gyro.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_i2c.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_temp.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_temp.h

-- 
2.43.0


