Return-Path: <devicetree+bounces-263059-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOKZON6yhGk54wMAu9opvQ
	(envelope-from <devicetree+bounces-263059-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:10:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 417FFF46E2
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 16:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A6083020A53
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 15:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 895644218A5;
	Thu,  5 Feb 2026 15:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fra0zjtu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515BA41C309
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 15:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770304067; cv=none; b=g9fB0smg2X4rZKEDqtfw1mBBBH/xoTdBnPbGNMamdy/NvQw2RTUmr0HAB/4ZFxf5fEH7tFf/zPtYQtoCHiratfobTGoFmVYdRu4T0vQFmivRCauKlCe6TA2zXUtBJ4M9F+165rB0SFtTpW7ZtDJTFWLt1I1ZOXQJm+5XfioOxDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770304067; c=relaxed/simple;
	bh=fqTz05JeHTFypfG0U1BlGozBV2lG3rX8sQTfDRxWegg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=DBPH37cjntdz24yXB9OLE68+3Z1XzCVzIQvQz/O3Id4Ot6F1d0zh8CsQrykyanU2uJARWvMfsgJ3tVaQMf65CmZhLBHYOKR9QrkQqNwUqCw4DBdDPW7MN7ATAccDPrBMA6NFyLlyNQHZSGuFNXzhED3R1ruNTIE36z5JhNmyoxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fra0zjtu; arc=none smtp.client-ip=74.125.82.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-1249b9f5703so1663421c88.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 07:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770304066; x=1770908866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dF+tb1gguJoM1jCSGUZAY+vHVI+6s3nIhtyjPFjvk/4=;
        b=Fra0zjtuYE6gorlSpxnwNjeHjkRjSjyvRbhYedoGDUg1inN5QBkTHPX0hIP6xOyw3T
         oVIlpEHofGT/mnjDc0Ek71aGIsi32Zt6awxzu81+FHcUIiEwxRSh4l0ME7rdqJsBweRX
         SUeCYDWnKAGBaCW9ObNu+X0HF+6CPuNbAGnlW0snHkXXaHWaE7dJlHQsLSu5i5eD8XLq
         OLEAyPZM17vgwJ4bgrDglBmBIAEQy3csheDFeYoJBD8axEJst1iLLEEYsc2OK658KoVq
         EK00QMUOgukHHqlZmxl2i7o1N97BKfowBqfYBFhu/Jccc0HbSmdztQg25XYIU7jzNsRM
         Q3nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770304066; x=1770908866;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dF+tb1gguJoM1jCSGUZAY+vHVI+6s3nIhtyjPFjvk/4=;
        b=adQjoK8ZC4iE27Gp+26n3O/b56wNXm6kabgeUWQkFiIrAL277HOIKQ1rOkk1/Rr9Q9
         zYcXhSqa0IbC3vtgUL3HNxsKb5lDaJgoxk7Jw1Td/WIcQAsUn8PIEq2bd7pLtYwRQUw/
         a+zbUbCUT75wlaC8191gc12rGW7mddDXUYc4gMKv0axuW28WktAxx3zd9l7r+wpIntsn
         R/qjYMQGKfLh+9HXB62O7yBt26+CRR3YTjj3+2u9Q6K3dZ1bSu50UoC5EHfufb4m2T8G
         zgW4uSc6XPJ0ZsJSSn1ISKpTxIn23m/c4EJRogxzBfADNrl+uFH0J2XGBh/52zErHswl
         jJNw==
X-Gm-Message-State: AOJu0YwpTv5Hkjb/Le2D5hom9Dih3f/O+l5gCzoV+x+WyG+8km91UXTW
	Flx4xHNRF916CM/HrUr8nBUgGriYTGlLXWXYvB19cuaavKeCNS9nOAf50OlMRbvZyPY=
X-Gm-Gg: AZuq6aJ1KnDr9Rw5LOzo6IHXoEmlggW9Ukfw5i0gUudFaVge+4X056aX4Rt94cY6pxD
	5Jt6mryH8aE8WGLYz/CjwdSF/GbCnobwjwVlyMex9l0wvmH7quTuPDmnNGMG2qR1a+2fs3DZRUK
	k88mw2O6hTxZTrWfCYBZEf05IO3o0sFTTzupUALp4cgORrJiwBmJ2GodGnvkLqG8a5wzj3cNU5m
	XSUqWykCR/To+WM6Frs+4Tdi8puYps10UiDb194bR8/Usl+SlKXF/X2LtVfKU8N2mlZvIXBeivm
	Gulzh2cPdYmsk9PnQJdH2+Qcsmbxhc5J0isEdyMSEypS3EBXu1Jr82DktQwVjhcGcGxZ1Sde0aH
	3XElrkZJmer+pl+Ci17O/tNIHcibF6FIepbUVVNDD9QDuDFCf3kV3TUfhB1QXgkhctVOszm3TxT
	uXL4YXlPJU
X-Received: by 2002:a05:7300:6418:b0:2b7:857:db6a with SMTP id 5a478bee46e88-2b832979ecdmr3268252eec.21.1770304065550;
        Thu, 05 Feb 2026 07:07:45 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-126f4e04467sm3909693c88.2.2026.02.05.07.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 07:07:45 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Cc: linusw@kernel.org,
	stephan@gerhold.net,
	hns@goldelico.com,
	jic23@kernel.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v4 0/3]  iio: add support for Bosch BMX055 IMU
Date: Thu,  5 Feb 2026 23:07:27 +0800
Message-ID: <20260205150734.525947-1-jerrysteve1101@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gerhold.net,goldelico.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-263059-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 417FFF46E2
X-Rspamd-Action: no action

The BMX055[1] is a Bosch 9-axis IMU integrating a 3-axis accelerometer,
gyroscope and geomagnetic sensor.

It supports SPI/I²C interfaces, and existing compatible drivers can
be reused by simply adding the corresponding dt-bindings for fallback
coompatibles as follows:

- accelerometer: bmc150_accel
- gyroscope: bmg160
- magnetometer: bmc150_magn

Changes in v4:
- Please replace underscores with hyphens in the compatibles.
- Link to v3: https://lore.kernel.org/all/20260203143946.301233-1-jerrysteve1101@gmail.com/

Changes in v3:
- Drop the Linux-related comments in the bosch,bma25 dt-bindings.
- Link to v2: https://lore.kernel.org/all/20260202110304.236320-1-jerrysteve1101@gmail.com/

Changes in v2:
- Use fallback compatibles instead of introducing a new device ID in the driver.
- Link to v1: https://lore.kernel.org/all/20260129071105.389493-1-jerrysteve1101@gmail.com/

[1] https://cdn.sparkfun.com/assets/b/9/1/f/4/bst-bmx055-ds000_datasheet.pdf

Jun Yan (3):
  dt-bindings: iio: accel: bosch,bma255: add bmx055 accel binding
  dt-bindings: iio: magnetometer: bosch,bmc150_magn: add bmx055
    magnetometer binding
  dt-bindings: iio: gyroscope: bosch,bmg160: add bmx055 gyroscope
    binding

 .../bindings/iio/accel/bosch,bma255.yaml      | 40 ++++++++++---------
 .../bindings/iio/gyroscope/bosch,bmg160.yaml  | 12 ++++--
 .../iio/magnetometer/bosch,bmc150_magn.yaml   | 14 ++++---
 3 files changed, 38 insertions(+), 28 deletions(-)

-- 
2.52.0


