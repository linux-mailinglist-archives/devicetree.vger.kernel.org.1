Return-Path: <devicetree+bounces-277975-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGRiO5ZCvGlBwAIAu9opvQ
	(envelope-from <devicetree+bounces-277975-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:38:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F08A12D123B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:38:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 478B53041B91
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADDDE3793C2;
	Thu, 19 Mar 2026 18:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="geoL4BYP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB3530EF82
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945148; cv=none; b=kdSCbf3T2h+oU3RqWJODVfNAy8Oo4s1CpgRvzUvaa3qkSAYxNvMha+oRxY5rc6UpSj0wPf0LE4tw4ajTYguOnpCUEZypvU+xAmjd7EF39ILyEAiK7RST1NCKSctdhhFjd0qFln2LAzq06V3dECYkpVppNBT3j/bWEv29WkunYJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945148; c=relaxed/simple;
	bh=OWKWp+BLvNZUhhCwq6oRBWRIXjmiSR4NS463QO/TtVU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qHrXPM7lxuAZs6qywPAHPQPzMprbStSe9Chp7TlcEd27bIuejktTXMNoDXGR/2JsjivNyTJB4eC1NP9kx22YjuS9kC8lqS/X9Wf1BznMVOvpHJ7TURn+e7wBN4kb3ab5aCetCMDdzOZi4HlzkHKSYJZP3A0USInUIE4WjX55MGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=geoL4BYP; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7d7d50516e9so790110a34.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945144; x=1774549944; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KTByHItjyR7/RYBQwNnWdmqTMyR9cwK4/f01mIblYeA=;
        b=geoL4BYPMRN7D/gOiLOVYTPtRr7bJRl6QqrOHKMgTloFXrr2X1ZpQ6HBcIcQSyETiw
         r/vJYwSHooiWnsTmHJicAmT2wmSf6PvBdhIbV4WkyhR0yQNkvOd3MAgRcoAhSO8RrWKZ
         7imJgVmUmahBJW5+MHikRj0EX2m5M4oZydjYomqiMPfLJg2gvoE8SLEyvD7SiPy9zUoB
         JmzVMt0FT8Z49nlTyv5/7Q+j/zXYw4ClkV3m+Vu+DTKt8C+o2o+Vuje2NEovNnO5oeWy
         /88etarY+F/d4nJ9rvNU0CSBCZZkzbgzYebRwIvUPpidY41TriXYCSjNkVO85DO87ind
         P3RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945144; x=1774549944;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KTByHItjyR7/RYBQwNnWdmqTMyR9cwK4/f01mIblYeA=;
        b=iYzFT574zO4u4Y6Yw1CDKpuqGIKXWrZ0u1fEk2I4AB5M37V9TQEaGrY34tHmQWeGAK
         IK8T1+tt7CKPn4Qp2IDx9+0JwtqzzM8oPVK1AhHIkTm97rHrccodRJTcaPgKILEF5fZA
         H2O28xNHfIQLbEX8Thj5dqXNbBuo+Air/0TiXoGLO0ORUgjuIDmUwYqP2IlHHTJRVi1a
         aitdkg+UBEPvA4D5Xs1neQieo6XRoVsXFUMKp8PZfqO8YSQa1poROahRvzbs9StFpsyV
         K2WppZdfyejGsaL9wTBmpHzH6x3UK4QqKRmDYRnQh5CgdsyUfLs29TAyXqcj0PcdWh4P
         O3pw==
X-Forwarded-Encrypted: i=1; AJvYcCXV873NYxKMuONFBMn31vrurDYhbBnTYgRAEAvzw2Dh76q2PtnMtQR81WFca7v+9du+i1YHS/ZRl0ui@vger.kernel.org
X-Gm-Message-State: AOJu0YxPZIHcpxY7KUtzZW/gPfSIvTAzkOInBrhImPGESN5Oz+Rb9eGN
	bAcIAWXfnOdKtTb46q8Fzu7VnDMFwD2ZlM+wRH6D8KeBToeUGFqDzePL
X-Gm-Gg: ATEYQzynaCbcY+yVni/X9wblZ1E5ReyC4d98hpQyqOn24Uyhg9l5RIjXtmJPWN9Wme/
	ksogFCV8Y5llKWOoBjfJt0fx7vWZCFg0wqPSRUeXQPPq8aQUtEo9DfPUvXleObRWYTBiICDFhHH
	S7nfGTJtnbt9kk3SFcmEYFc1eHCnd9zecLeGpmaVGNU+3gWXIds5DTrJIbe+uK+U0bL6WlSXcKt
	PPufDJ2l0Zgk3YyH+IdcY3LN/eu1XYQ3pictFZBGQQFp6qZAY6UQHSaj44cTWL3977sLmTdGBWn
	Q1Zp6Y5SOlRWwjry+Uz7Y1hO+/vQ/5SPHRNu4iAKdGaGDB53Vbujcp1eIJRpRn0tR7CanO4lj3G
	VVSw+za09WBv4gTnQTzKez+8W8fuwA6ste//7GG5a4L40YDgfb0xhoxpQzveYwVpr2P0Z1qgNGR
	m5Pzu9YenucsvAJeKOgqak
X-Received: by 2002:a05:6830:6aa1:b0:7d7:d097:96e2 with SMTP id 46e09a7af769-7d7eae1c964mr190466a34.7.1773945143893;
        Thu, 19 Mar 2026 11:32:23 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d7eadcb11csm172193a34.13.2026.03.19.11.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:32:23 -0700 (PDT)
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
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 0/5] Add Invensense ICM42607
Date: Thu, 19 Mar 2026 13:29:36 -0500
Message-ID: <20260319182956.146976-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,vger.kernel.org,sntech.de,intel.com,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-277975-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[macroalpha82@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.813];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F08A12D123B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the ICM42607 IMU. This sensor shares the same
functionality but a different register layout with the existing
ICM42600.

This driver should work with the ICM42607 and ICM42607P over both I2C
and SPI, however only the ICM42607P over I2C could be tested.

Changes Since V1:
 - Instead of creating a new driver, merged with the existing inv_icm42600
   driver. This necessitated adding some code to the existing driver to
   permit using a different register layout for the same functionality.
 - Split changes up a bit more to decrease the size of the individual
   patches. Note that patch 0004 is still pretty hefty; if I need to split
   further I may need to create some temporary stub functions.
 - Used guard() and PM_RUNTIME_ACQUIRE_AUTOSUSPEND() on the new functions
   per Jonathan's recommendations.

Chris Morgan (5):
  dt-bindings: iio: imu: add icm42607
  iio: imu: inv_icm42600: Add support for using alternate registers
  iio: imu: inv_icm42600: Add registers for icm42607
  iio: imu: inv_icm42600: Add support for icm42607
  arm64: dts: rockchip: Add icm42607p IMU for RG-DS

 .../bindings/iio/imu/invensense,icm42600.yaml |   4 +
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    |  20 +-
 drivers/iio/imu/inv_icm42600/inv_icm42600.h   | 333 +++++++-
 .../iio/imu/inv_icm42600/inv_icm42600_accel.c | 497 ++++++++++-
 .../imu/inv_icm42600/inv_icm42600_buffer.c    | 240 +++++-
 .../imu/inv_icm42600/inv_icm42600_buffer.h    |   5 +
 .../iio/imu/inv_icm42600/inv_icm42600_core.c  | 795 +++++++++++++++---
 .../iio/imu/inv_icm42600/inv_icm42600_gyro.c  | 379 ++++++++-
 .../iio/imu/inv_icm42600/inv_icm42600_i2c.c   |  53 +-
 .../iio/imu/inv_icm42600/inv_icm42600_spi.c   |  59 +-
 .../iio/imu/inv_icm42600/inv_icm42600_temp.c  |  64 ++
 .../iio/imu/inv_icm42600/inv_icm42600_temp.h  |   4 +
 12 files changed, 2289 insertions(+), 164 deletions(-)

-- 
2.43.0


