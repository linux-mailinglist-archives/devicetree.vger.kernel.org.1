Return-Path: <devicetree+bounces-324870-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PvGEEhSPUmqWQwMAu9opvQ
	(envelope-from <devicetree+bounces-324870-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 20:44:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A231874282C
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 20:44:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=QZD5Bcv5;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324870-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324870-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 677FD3011056
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 18:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFA4E2DA757;
	Sat, 11 Jul 2026 18:44:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700A52E736D
	for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 18:44:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783795471; cv=none; b=IpxBp95xZFd3CNbQmZVGyGEVpOWBJj9xj81UlJBgJgYmSeD2Msl2mOF/bZ7aSujXxADpe2Yi5sgimoqShtypTNH9SsQ0YgGwYuHXk5Mpih232oQ/HzxQc3v9+QVYxGxw//PkK+u0RQS2CnVF32TlDoOau3fjmKIh0ijd7rt+uPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783795471; c=relaxed/simple;
	bh=lle7Rmg8FyTcC/Q7qALF1mUEHp6zQifQpVs5AdeIRxs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fLJi9CirWIQp4Mi9IVgSB7BgOy3xxVhqOFk0FHfwgchJdNBycHRiTeM/e7DuUReVRlSX7XubXV+3B2C+TLvxyoOZmvQEwKipvBD5NOsgH6h1PcEZ8wTrhUWLOYPTV5Z6eqznDLg9UBF/41D4wDBL79XWEyYZLC/r5RMxbkjNNtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QZD5Bcv5; arc=none smtp.client-ip=209.85.221.46
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-471eeac43bfso1910311f8f.3
        for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 11:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783795468; x=1784400268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=VV1uOthI82FI9Ppe5ViOKmESWKdCAT2lJ4bCDUnYmLI=;
        b=QZD5Bcv5VfWFa5KI3BNtp8BmC/MZ4hmCcpstj56OC1fRs3O0e2RVlTAZ0PM6AAviLg
         exXzY7OKayaF/IqiaSv5j28UTJSS8JHRdkBD+JdDwXxADZKasx2bd3jQdqy2vRYg2gGG
         F7FEWFefSZVKEtb9f0y1z0tjrGQOMHQvKIglVX3NFPCTtGh52ShZUoIqHJ6yANkqNIE8
         Qpd7uiK8rkc9m89SNXTEFh7SZTcTkk4ZSg+boBw6Fe01PerhRsW9QEy4qSSNRBeHZ5iy
         ViOK35IFbRM7OfxqSA7K/+f2GTL/ZFxot2HGkEthh0wSMi+2X55Fh/rTt4asYywcffuf
         kq9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783795468; x=1784400268;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VV1uOthI82FI9Ppe5ViOKmESWKdCAT2lJ4bCDUnYmLI=;
        b=Vwc9IOWMBl2CT2LWUp4QT1rTQbJDnQi/S7yUOBBqIoYb6T17cNV7kkO+Q7UWTbVUT6
         hbWWuwv7l0zT9aFkEoWpjQVKX3MYZAJ+DJsgEsnKVXZ7ZQsfyaLwXw6A0o7ygaa1cPor
         IbNia3SWaINFovo9mMMzEeB2zxwqucfR+we++O1ueHHxWIp3xmvjDeJeS9LNTxWrG7IB
         Vy5WsR1PQqn/noVhJG6ESxK7jW3kmWYVQfTLec5F2A1LOS7f0JiwlTDW03NIAUBrY6F5
         6/xhQ6gAMoUq1TdvlPwuZToypkN1b0+n9zxdy0FWvKJcGH7eZ2PTk+lvpd7k1XAjIOgz
         6zLA==
X-Forwarded-Encrypted: i=1; AHgh+RpHDslet4SUPttK0e/2vj3jr7Rc0YRKuCFtGIorsLAa3qNYu33H+mMBsmoesYHOJnqHlRI5QpM6C464@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmd8iwAk4Z46mEXRBq/X7kO9/lpUVep/ke4/lvfoP6aul+xKnW
	xK7HJntw0EAv3V+8AuevqhRllq3dOoLyinB1XSpsCLCCAE8Jnt0Lp9ZZ
X-Gm-Gg: AfdE7cllho5Guh7pI2trtt9WPGW4znYruWofTLGyc4iWEnRvXt17Qt+AnodJaC6X9LF
	M5+ccPwbHD5TRi1h3l5oPmxx9AtpcY5J+NP05i6y5UvpdZepFlSYI3BCxqzR1buKvUR3pO4+gCm
	fj/mU5lwzlnzVGz+9iArYWmH0vuXDPukhQm6nsbzZunUzxgsXLh4g/5KSgmuYIvr0aY4x7k3iNF
	YYrew59B6DDkbu/ke07LE7NLXuVDPE/9MDr3QglvCMsGF3A3ybJnrIRdhKTuy17IdZaJKgKK5oA
	BJ1NQ+NCXslR2+0PGUSLp/Wbn0vrq612KVIsUATEq8JDGagRn5PdXFew9j0pc0bwpwWA13TGd6o
	67KcDXhxXlNrga1By5NvEiX9nt4Ivv0JJNr0wpVlRCnISTYxKxAHdpjzP1mIy79fd3ES1kPu0Sr
	Bm09OZGmVWMHDSUrvuFG+ayKXPOhjOW4oiCm2SkHUWxpkuCYg=
X-Received: by 2002:a05:6000:2510:b0:475:f0c2:75ac with SMTP id ffacd0b85a97d-47f2dd0fca7mr3711208f8f.61.1783795467710;
        Sat, 11 Jul 2026 11:44:27 -0700 (PDT)
Received: from MSI-LINUX.kielce.vectranet.pl ([2a02:2a40:27ec:2900:e6c9:27be:161c:632d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d780csm70825745f8f.11.2026.07.11.11.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 11:44:27 -0700 (PDT)
From: Jakub Szczudlo <jakubszczudlo40@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	antoniu.miclaus@analog.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlechner@baylibre.com,
	duje@dujemihanovic.xyz,
	jic23@kernel.org,
	jishnu.prakash@oss.qualcomm.com,
	jorge.marques@analog.com,
	joshua.crofts1@gmail.com,
	krzk+dt@kernel.org,
	linusw@kernel.org,
	jakubszczudlo40@gmail.com,
	marcelo.schmitt@analog.com,
	mazziesaccount@gmail.com,
	mike.looijmans@topic.nl,
	nuno.sa@analog.com,
	robh@kernel.org,
	sakari.ailus@linux.intel.com,
	wens@kernel.org
Subject: [PATCH v6 0/3 ] iio: adc: Add support for TI ADS1110 to  ti-ads1100 driver
Date: Sat, 11 Jul 2026 20:44:11 +0200
Message-ID: <20260711184414.1013686-1-jakubszczudlo40@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,vger.kernel.org,baylibre.com,dujemihanovic.xyz,oss.qualcomm.com,gmail.com,topic.nl,linux.intel.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324870-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:antoniu.miclaus@analog.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:duje@dujemihanovic.xyz,m:jic23@kernel.org,m:jishnu.prakash@oss.qualcomm.com,m:jorge.marques@analog.com,m:joshua.crofts1@gmail.com,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:jakubszczudlo40@gmail.com,m:marcelo.schmitt@analog.com,m:mazziesaccount@gmail.com,m:mike.looijmans@topic.nl,m:nuno.sa@analog.com,m:robh@kernel.org,m:sakari.ailus@linux.intel.com,m:wens@kernel.org,m:conor@kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[jakubszczudlo40@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakubszczudlo40@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A231874282C

Add support for the TI ADS1110 to the existing ADS1100 ADC IIO driver.
The ADS1110 is pin-to-pin compatible with the ADS1100 while providing
higher resolution and an internal voltage reference. This patch series
extends driver support for ADS1110, updates device tree bindings and
Kconfig text, and improves the overall hardware description for the
TI ADS1100 family.

Tested on: Raspberry pi 3b+ with 7.0 stable kernel

Signed-off-by: Jakub Szczudlo <jakubszczudlo40@gmail.com>

---
V5 -> V6:
- correct for loop so it will be more readible and return error when iterator matches array size
- fix SI unit letter size
- correct using available_data_rate_hz array when using ads1110
- bring cast to char* back
- Link to v5: https://lore.kernel.org/linux-iio/20260628194341.66752-1-jakubszczudlo40@gmail.com/

V4 -> V5:
- Correct pm macros to be more generic
- fix variables ordering in new functions
- delete unnecessary casts
- add unit to variable names
- change array name so it will sound as array not variable
- correct get_vref_milivolts so it will check if not negative value returned
- delete unnecessary short read check in i2c receive
- Link to v4: https://lore.kernel.org/linux-iio/20260622221550.374235-1-jakubszczudlo40@gmail.com/

V3 -> V4:
- make fixes patch the first change in the series
- correct error handling when short read
- use ACQUIRE macros from pm_runtime.h in new functions
- Link to v3: https://lore.kernel.org/linux-iio/20260613190957.654798-1-jakubszczudlo40@gmail.com/

V2 -> V3:
- clean patch from unreleated changes
- divide adding support for ads1110 into separate patch
- add missing changelog
- Link to v2: https://lore.kernel.org/linux-iio/20260607183542.368184-1-jakubszczudlo40@gmail.com/

V1 -> V2:
- go from creating new driver to extending ADS1100 driver to support ADS1110
- Link to v1: https://lore.kernel.org/linux-iio/20260527164312.355729-1-jakubszczudlo40@gmail.com/

Jakub Szczudlo (3):
  iio: adc: Fix incorrect reading when datarate changed in single mode
  dt-bindings: iio: adc: ti,ads1100: add support for ADS1110
  iio: adc: Add ti-ads1110 support to ti-ads1100 driver

 .../bindings/iio/adc/ti,ads1100.yaml          |  10 +-
 drivers/iio/adc/Kconfig                       |   9 +-
 drivers/iio/adc/ti-ads1100.c                  | 147 +++++++++++++++---
 3 files changed, 137 insertions(+), 29 deletions(-)

-- 
2.47.3


