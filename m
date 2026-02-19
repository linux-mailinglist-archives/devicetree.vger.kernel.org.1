Return-Path: <devicetree+bounces-266625-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PbsK9DslmmxrAIAu9opvQ
	(envelope-from <devicetree+bounces-266625-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:58:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5AA15E047
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 11:58:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E2A6301C140
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3932311C31;
	Thu, 19 Feb 2026 10:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k0bzfLvW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FFC23ED6A
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 10:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771498701; cv=none; b=TKbDIr0l8vGGZLaWg9Z8FDY3UKdBzLKFvDwJcF5BYgSOYDcvs/KnnllR97i7CTFQkPrgb3a7ZwoQQd9wgR0sW3GiLApNFub/FPq+D/AaaoMeY0MRqVwiHy2xRJgR2lVRGJmjUBBUh4+iWJDc7XUJYXJ46fkqNDR1NTbiefG2bow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771498701; c=relaxed/simple;
	bh=ebTF1mxRuRbEMfCXsEhC+1kuXZq8lsTGyec/Gn1f1nM=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=DVz8BYmgNIHuw3XBPP1/hq1vPoTmeTfZ+RLyaR+d0ZQF/jV8UkdwyDAadIZ+5iWaKvWxhC0QQQKq9gGi69v92BUbk2R1PumBnS3xXTp8Romghw398OOXd6xEkRSHUxX9mwMto43iNAS75pxqX4hYB+tEky1fap4rxqytc+knDL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=k0bzfLvW; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-824a9348603so310274b3a.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 02:58:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771498700; x=1772103500; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G/7O24tyd9TUIJH/y4lCMB+20ztHqv0kDPFofLytYGc=;
        b=k0bzfLvW3xRw7c/uz0xev6KTjnlKXTVvxtoZRaj/AQqDuB0d70Lv+UEiQeb8trp0bf
         Hy4BqpgWDkoXFwma03WI7YjTO+F9WgMIanqexrhd2y6GKEBvtEyMgq0sHUD9N117m7zr
         GURPjoueH8RQXc05H1wN3AZpqQ3hKY43a5s5s30LnEgfrH/zy50oQF+sGmVQK2NrZ7GH
         DwJdHfl4wbzsZquMt6nufkPn1UwnS+4RBMDe2JQ6qey6iCcUQw9BFhz68G3ljBo+pKoL
         QNQ/I4Knv0xiQiir5li2yjycMDBw1VnsFoiz1hQ5dfH6Dmxx/r3fB9GCB4gXIC8VmR6U
         iLfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771498700; x=1772103500;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G/7O24tyd9TUIJH/y4lCMB+20ztHqv0kDPFofLytYGc=;
        b=nQvgX35ZvAxHbegNBjenAjbv6yfuOtrZSLveQcQXc7PAExSfwSAfV31rDuCsp2e7V2
         8w5K3Fu3YKs+OjlRzcBNpBeFOmM/g3Nap2CG4B/OE5fCgiDh30i4RGBN0DEgu4Ddc0BD
         cJsXzvn3BRKbdbf9+PNRbIOvhzX/fUV0sw9IZqHxUnnlZSIaTtSh3Ndtkwkb9psZqL2E
         j0oe0z+5fYD//gLNO9qfynCBV8VFV4rkyR0UA0hG17363maQnxrGZKxitDIU2U/EK7/a
         DQ6iQ+s2XervqIRMekjyEOZt8e3ALm3P0BPKT4cV8aTOtzsLqk1fyQ1zcdydgVY5JcHT
         gdUw==
X-Forwarded-Encrypted: i=1; AJvYcCUvlHCE4Pt2oN6Uj7yZH41o66k+OJBYZJpS/XVDRfLAzVs0PfsS/8WQr3gQWGu1df/J/c+8ZrIy/JAa@vger.kernel.org
X-Gm-Message-State: AOJu0YwD+kHuXx5tU11JOHTUlqKLv/NmQx1xxc1GFEjkn7rmZjrCR9V3
	ZvhC7ZZHmCcPLJgYT3kv64PFEbHoI9m1MSIUb8yQK+MXpNia4txnCVdo
X-Gm-Gg: AZuq6aLZFa2BI4rqGPhXyWKfQ3nSmuA8df5N/vV9gcI/wmHI9CZ8vgAJC7ipTB25FIi
	0oFPSLyqDTSTx98ZZzWRuIpyO46f73plWSEVicHw/hQ1BfelJi4FIR8gEBhwbaavYoghVB86tlR
	nAkTZlrFYmHsZUhAVhReoKnTm5bBY0/PFTUZWqQWXbiwEItx78aAh+Fyjn+lRBAiWV1atjsqfrK
	ifzmDhxWZS6fdTLwmROLOyPRhGvvysIcmPKUuLDxTb4YB2dbsovSNdjKL5ACAfAb1AsBsIuZ9F+
	uHJcFf8JqLxhxufJHT2Oz6HU19A7LVKbdBkt+xXhrK71yVWjNbuEidmsOaK+9TX87GDbdVSP5Fd
	EeDY8Jy9F+jN9vqqUTYO3gjLa8mg7rhG13KkSq+InNtLrIAfAWv4qei+vHV4NApiiTd7Gy3ea6R
	sDZ5eCTgHJyxL/vNDLrjK9/jF9pyK5NOAV6TgkRVIh0v+X9Q==
X-Received: by 2002:a05:6a20:43a8:b0:38e:9405:bf03 with SMTP id adf61e73a8af0-3946c85b2edmr21512508637.35.1771498699529;
        Thu, 19 Feb 2026 02:58:19 -0800 (PST)
Received: from localhost.localdomain ([2401:4900:939b:3231:1953:3f2f:aba4:9c8a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aadd9e8sm164339745ad.74.2026.02.19.02.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 02:58:19 -0800 (PST)
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
Subject: [PATCH v2 0/3] Add support for Infineon Digital Multi-phase Controllers XDPE1A2G5B/7B
Date: Thu, 19 Feb 2026 16:26:27 +0530
Message-Id: <20260219105630.11929-1-Ashish.Yadav@infineon.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266625-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infineon.com:mid,infineon.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0E5AA15E047
X-Rspamd-Action: no action

From: Ashish Yadav <ashish.yadav@infineon.com>

Hi ,

These patches add support for Infineon Digital Multi-phase Controllers 
XDPE1A2G5B and XDPE1A2G7B.
Both controller supports Linear and VID Data format for VOUT using 
VOUT_MODE command.
The configuring both loops/pages of the device independently is not 
supported for VOUT_MODE.

In case of vid mode, NVIDIA PWM VID vrm_version is supported:
Vout = 5mV * (VID-1) + 195mV

With Best Regards
   Ashish Yadav
---
Changes in v2:
- Link to v1: 
   https://lore.kernel.org/all/20260202080355.53061-1-Ashish.Yadav@infineon.com/
- Address review comments for driver documentation, pages with different
  VOUT_MODE, Indentation.  
- Created separate patch for core changes.
---

Ashish Yadav (3):
  dt-bindings: trivial-devices: Add support for XDPE1A2G5B/7B
  hwmon: (pmbus/core) Add support for NVIDIA nvidia195mv mode
  hwmon:(pmbus/xdpe1a2g7b) Add support for xdpe1a2g5b/7b controllers

 .../devicetree/bindings/trivial-devices.yaml  |   3 +
 drivers/hwmon/pmbus/Kconfig                   |   9 ++
 drivers/hwmon/pmbus/Makefile                  |   1 +
 drivers/hwmon/pmbus/pmbus.h                   |   2 +-
 drivers/hwmon/pmbus/pmbus_core.c              |   4 +
 drivers/hwmon/pmbus/xdpe1a2g7b.c              | 120 ++++++++++++++++++
 6 files changed, 138 insertions(+), 1 deletion(-)
 create mode 100644 drivers/hwmon/pmbus/xdpe1a2g7b.c

-- 
2.39.5


