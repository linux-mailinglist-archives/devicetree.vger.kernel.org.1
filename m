Return-Path: <devicetree+bounces-262295-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMLVBb8JgmmCOQMAu9opvQ
	(envelope-from <devicetree+bounces-262295-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:44:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 81980DAC05
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 15:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33E4B3024A52
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 707763A9DB6;
	Tue,  3 Feb 2026 14:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KP9BQJdO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B7B3164D6
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 14:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770129601; cv=none; b=sjydQLSnylO8/S6yc9qsEK6AZcZuPJb+Oxf+57v3cbduK18clxb+VltvA7JrS3NWmieWdiTk7rh8JXmJVDuyzpkaPvnHB2//6YyBssxhZ7m6FVQbM8m+ykznhFXYdaPyz9zkpSI3xlC1fgwc7Vzcub7QV3PqUtdr0fm5FSyGSHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770129601; c=relaxed/simple;
	bh=TvRD3AjguO+xjUqd5XxbM4RKLrlp9TFG7KID5RJdo04=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=aqwIFHL/aqhoXIIXeY8hoIrhw6NY5Hq+t4mlHb08CP6ngOAvGaET9EGExCYy2VgYAn3Q/f+vFhxAC80sYbOF0t7u8tZjftouo+ia5KUseKOZqEhPqjc5HglF4dLFmPHm7O3Ucrmejku2ya+5KSyH92QFxHZbBbp/zmx2sy5iF24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KP9BQJdO; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-81ecbdfdcebso3127803b3a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:40:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770129599; x=1770734399; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fTGhqVzKjFBVm5+ZaNpYJl4UXsnqfPGrO5qDUt4Kj/w=;
        b=KP9BQJdOHPWJeFUh7hOlQ86M9Det5hi0b75JX7SbmW2UwuGAcHJsILdt3fiPehJiBX
         Q9jU/C+/Am6tBAP2B4K9YH5prZxxTKQk6FfcxLmM0tDZJ7yuN9EhfJYAxBEW9lU3GnUg
         628XfLTk7AJhVnIHfEd3kZRWOe/eqvxM7kOoKc/iy+vazRaqJAnjQ8yyN9CQO3U0C3C4
         zogI8uVPNnnwbAaBje/SS3KB4K733hKdmZFb9iEFnbW2fT01p5+ookaZMfi7rOHc6JNj
         +3VreNv7EGDanfllv75LdWjpIrhtu6dnnuQ8jhBdkljob70W0Sg6otR8DXVNdcKgKwMe
         90TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770129599; x=1770734399;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fTGhqVzKjFBVm5+ZaNpYJl4UXsnqfPGrO5qDUt4Kj/w=;
        b=pv/tl9Q3ymH5IP678qhZULvTY1kJsk+AUwirXYw3Vk1ME7Dlex9b566AV4+qobML3Z
         DRL6/EG1ebnmmrFU2lbi45Jt34xVbQd8MhrPIBIOAALgzEcskNPWcE23aer4gJiENPL7
         7ItwFvbtHGFfXBdWuF+b3Utq4ZbL8lv0HsDaiekJbWjpMKvMp0h0odtZ9uTbHi823NQd
         07mW/YCQB+iuEa2sb3vivA+rkMUogOrSZUBbd8M/gC3B/DEEVeiApl6GfOOIgaxNfMfT
         QCV9um0kHL4rSWPp9hzQt5N60m1kFw+v4Ku+6llRwarR1uIGgwuZaSnwNF481iy96rR3
         xcPw==
X-Gm-Message-State: AOJu0Yx5ZV1JwZn0SHyF2uzCBsV1AhcV+lb5sL2O0wvkSjK+OKUNLp+m
	A9KZZRzd4A2v7Wi5Iqdk7zcjOAcWzmzJN5FNwP7q0v9YazhY0mBnkPeAHtIkB1CQ
X-Gm-Gg: AZuq6aKjRw6oh0jwzfco7XX8IlMccXxzFiAuuFILjdP15qSkwIlJR876iVvj2ljtKIh
	5am3/PHQwU/+PTcfcrjFUDz19gB2ve2sQYwg41OIzuEeb/wTNBUGXxJyhi3Y2vJl6x0VWIH2woM
	FRxg1q6Xm9CVTq+KJLYIrBwQR+Is854Q4cuhT/vWgjhMA+nXS7BvvU8+EwynMLYNaHGCAIwqmrh
	1NiNm7hKHlol+sNryKkfv6rpsglmR+43uWLsObk6Ur8hPlfX0/RZaxAthqXRcvX5D/7d8DPYfMe
	fwL4mNuYXQ75Jjq++dFklcsBscrzGcLuf2hjJFvi2Sf+paf8Qsm8rqV0CSozcvkGYd9AtV4RZqF
	lFt+Tl1Iag+XSzpzE7WZqD0nTh/2eI2X6POAd9XAt3xgApNfxnF5IPQA+iflnr47BZ+OOLJri8B
	okRA98FZWz
X-Received: by 2002:a05:6a00:39a9:b0:81f:be3c:37e4 with SMTP id d2e1a72fcca58-823ab67bc4cmr13036552b3a.27.1770129599262;
        Tue, 03 Feb 2026 06:39:59 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b1ee89sm19810313b3a.14.2026.02.03.06.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 06:39:58 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Cc: linusw@kernel.org,
	stephan@gerhold.net,
	hns@goldelico.com,
	jic23@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v3 0/3] iio: add support for Bosch BMX055 IMU
Date: Tue,  3 Feb 2026 22:39:40 +0800
Message-ID: <20260203143946.301233-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gerhold.net,goldelico.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-262295-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 81980DAC05
X-Rspamd-Action: no action

The BMX055[1] is a Bosch 9-axis IMU integrating a 3-axis accelerometer,
gyroscope and geomagnetic sensor.

It supports SPI/I²C interfaces, and existing compatible drivers can
be reused by simply adding the corresponding dt-bindings for fallback
coompatibles as follows:

- accelerometer: bmc150-accel
- gyroscope: bmg160
- magnetometer: bmc150_magn

Changes in v3:
- Drop the Linux-related comments in the bosch,bma25 dt-bindings.
- Link to v2: https://lore.kernel.org/all/20260202110304.236320-1-jerrysteve1101@gmail.com/

- Changes in v2:
- Use fallback compatibles instead of introducing a new device ID in the driver.
- Link to v1: https://lore.kernel.org/all/20260129071105.389493-1-jerrysteve1101@gmail.com/

[1] https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_datasheet.pdf

Jun Yan (3):
  dt-bindings: iio: accel: bosch,bma255: add bmx055 accel binding
  dt-bindings: iio: magnetometer: bosch,bmc150_magn: add bmx055
    magnetometer binding
  dt-bindings: iio: gyroscope: bosch,bmg160: add bmx055 gyroscope
    binding

 .../bindings/iio/accel/bosch,bma255.yaml      | 41 ++++++++++---------
 .../bindings/iio/gyroscope/bosch,bmg160.yaml  | 12 ++++--
 .../iio/magnetometer/bosch,bmc150_magn.yaml   | 14 ++++---
 3 files changed, 39 insertions(+), 28 deletions(-)

-- 
2.52.0


