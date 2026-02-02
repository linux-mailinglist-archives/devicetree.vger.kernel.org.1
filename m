Return-Path: <devicetree+bounces-261682-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMJuAchbgGlj7AIAu9opvQ
	(envelope-from <devicetree+bounces-261682-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:09:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 665FAC9848
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 09:09:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15E143002FBC
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 08:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 801B530F932;
	Mon,  2 Feb 2026 08:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jT5SRtLv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC9B2EBDC8
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770019464; cv=none; b=VRfVnDidzr0VdigNfs2idS3zG7oLfMQ2EVwofxh+tVgPDKu/SWzlHGwR/z0U0R/9+VIhGJiBC+7/u9sLFVcK8wZxCp9NC9GOgMv4tqy/O2zvLBzKMteighr+bcVueKfAck9DDV9AIAgGxyRCRKNaV8/2OU1HuRXWdNvB9VASLcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770019464; c=relaxed/simple;
	bh=qgLBIL+tVd3BOMTOJ5P2zLXCeOGKusAisKau5Fwy83c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nl2qt5S81sEa9jUPF3ddP9hIEYN2bDUdZOTSUn5QiPlTd0Gju259GiaeYahh0RQrIena0WSSorkC61KSP17MJU6eJHfAGXYd7lMdQijjJ94SZVfE7B6AGALVBtNbZbA0ilcqNdXaC9bOTGsf3WQqTusHUd+UQB2keJHxPQdtTBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jT5SRtLv; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-8230c839409so3256232b3a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 00:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770019462; x=1770624262; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eUsxoJZPqPWehI4oczzdZcvy6JNiZ6yXW1G8GKE3HQ0=;
        b=jT5SRtLviOyp3cuyXm2oFgnjlyHAgmaKrE/pOFFavu59NZnxguH2dJYqerQ4MHYM2u
         uuObUeq3s5YwwEukhitVQ2TfCgqI9yVCueNtVUXH/VGACuH6jGhnA7JStmqWrVlEyDvH
         HY2ieawEJXryhhlX4FL6JPeYrztJch/uwBfIvStIsatxYzuPHKaAVzH2iDDH6yM4IAH2
         I81+zL7GPILMvK7m8QKj8CnB9WX51jrQVlrFvmXhcFd3b1ezT6x9qnm+YaTCnTdBCjmz
         Vxsrqv1yp7JJ2IshYXAsHXVPx/N0a2W0wapVii9sUxOXcAdDmNUWjvai5rsfThlz7Poe
         1bwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770019462; x=1770624262;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eUsxoJZPqPWehI4oczzdZcvy6JNiZ6yXW1G8GKE3HQ0=;
        b=XovZmo98rb+zQnbUQ8E0NShoONS3cZDayO8ZVo+zunRIm3MDy12gPL50wuTd9s2Up9
         CKfBjCW7HMx0ndF7kQ8e38mkgv4d5GERImUJ4oNIS3oEF+YwOX5qcA0JJFlAqlT7Z9YO
         1+60HicxWLFm6hS+NbCeXIjihDnsSVLJ6B9pZd0NzeVybJUxGL9OzvVLnqxCrLcENUua
         C5cctsHGW6W7F3A8a8q7HW2FOmbfz341zIBYIBQi+gpXnEUVC1xLBzWVmHFUzNtMQ+ma
         /2yM/ICrP9JGB+5RBoc3d5PZwOPk03Z8DIr5JRhd1YIHnj/jCsu+elmdFziiDx5TES8L
         IMFA==
X-Forwarded-Encrypted: i=1; AJvYcCXT4dbCz2QBfhM+D5nqqMIYPvTGePSKDhPQu1nOnfYtsa+QQkfqKCE8eT6phmUJVR6an87gfclKV12L@vger.kernel.org
X-Gm-Message-State: AOJu0YxgsNVR9tr7fmylKiY6BRcSB0w5fcO0afOl0ftSvsLM6fDQ/ZfB
	Swf0AQH0/rdOX8C5KvC7d6DPh2Gzxy9bwisaJ18oqcQG4w9HBpBJ01Oc
X-Gm-Gg: AZuq6aJ6qwfLnbxZm978ES+/eINKthXxekJ0+KxsfPLOxriEfl6XWZtI9kCJ9+/T/YR
	nfxbMziC5EZbwdv7KOB33FiwyWxMLCs/jfuGP88Vtsxm1ObS/mOVD8vw8emPTsZ7619zAc1svBx
	mqXUBzphTDW+gn9G893+Sj77ftC44U0ffR1xXFbUodmn7mrD+u4DMtuIAoY8czNq1B7PtEVdfl0
	5nM4JgIe2UTzHUJeF5sBxz7agceO6g+63RuoA5qxHTxS06QDwN+jtGtIaWeQwHTWGMDeXTzUATR
	xMOPSym2CRF7APGCBvGTBFDH/d/H8B0JbzcEm0Ixg/yyvv+/jO7zybKCL8nemMGGorAmTOPBQy9
	zRBsepqqdieJI/BOmc1xWq/eUAxL39QQg4JagX8tQTHsNHdDMETS9oJnLOQK6RMgFoEHeV96KYL
	Yp3ziM/MTe2BRvqojgD52Lw0WwgHCbGhCiOQ==
X-Received: by 2002:a05:6a21:9082:b0:366:14b0:1a3b with SMTP id adf61e73a8af0-392e01a7bfbmr10651804637.73.1770019462403;
        Mon, 02 Feb 2026 00:04:22 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:61bf:a770:ed27:c783:3591:cfc1])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642a3356b4sm13596938a12.17.2026.02.02.00.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 00:04:21 -0800 (PST)
From: ASHISH YADAV <ashishyadav78@gmail.com>
X-Google-Original-From: ASHISH YADAV <Ashish.Yadav@infineon.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ashish Yadav <ashish.yadav@infineon.com>
Subject: [PATCH 0/2] Add support for Infineon Digital Multi-phase Controllers XDPE1A2G5B/7B
Date: Mon,  2 Feb 2026 13:33:53 +0530
Message-Id: <20260202080355.53061-1-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261682-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infineon.com:mid,infineon.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 665FAC9848
X-Rspamd-Action: no action

From: Ashish Yadav <ashish.yadav@infineon.com>

Hi ,

These patches add support for Infineon Digital Multi-phase Controllers 
XDPE1A2G5B and XDPE1A2G7B.

XDPE1A2G5B controller supports Linear Data format for VOUT using VOUT_MODE
command.
XDPE1A2G7B controller supports Linear and VID Data format for VOUT using 
VOUT_MODE command.

In case of vid mode in XDPE1A2G7B controller, NVIDIA PWM VID vrm_version 
is supported:
Vout = 5mV * (VID-1) + 195mV

With Best Regards
   Ashish Yadav

Ashish Yadav (2):
  dt-bindings: trivial-devices: Add support for XDPE1A2G5B/7B
  hwmon:(pmbus/xdpe1a2g7b) Add support for xdpe1a2g5b/7b controllers

 .../devicetree/bindings/trivial-devices.yaml  |   3 +
 drivers/hwmon/pmbus/Kconfig                   |   9 ++
 drivers/hwmon/pmbus/Makefile                  |   1 +
 drivers/hwmon/pmbus/pmbus.h                   |   2 +-
 drivers/hwmon/pmbus/pmbus_core.c              |   4 +
 drivers/hwmon/pmbus/xdpe1a2g7b.c              | 115 ++++++++++++++++++
 6 files changed, 133 insertions(+), 1 deletion(-)
 create mode 100644 drivers/hwmon/pmbus/xdpe1a2g7b.c

-- 
2.39.5


