Return-Path: <devicetree+bounces-132370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C289F6D10
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 19:20:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C8ECE188AFDF
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 18:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAD71F9F5E;
	Wed, 18 Dec 2024 18:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="vkhqPFhR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C671FA16E
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 18:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734546009; cv=none; b=ZHoIeWe0yKV1jS0TGnf1//m85nmrAyCs3KsJcWb7rVUAtWje7fUYfef/CUg6FMP3wHi3P9tXtMICimVb7cQxXkRJsL3t/onSXj7wZTET+vSGtHKn+sllZlvqADUip6zrnrkG+4IZsiuv+jKfr7OwJxeD0xSSvy47f2Ke3J9tppo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734546009; c=relaxed/simple;
	bh=SKp1CKZ98gVj4Qino0z5TkrMc+vypYi8YZCNpacKhDk=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=J9OSSB/hWSv+iCYwpuvof+WP8CkM/U/H5PlKuXNW1V1Wx8TO8FS7i4lV337oM1NGxEpSCpGqYw62zhY/HUfI0YOSGbYfgL745mTydy3BWtH1B91Qg3KeruFm47v1l84y69QsYv6iao1q7LD6p51YuCkrARm/DN6+TxnMlEjNIHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=vkhqPFhR; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-aabfb33aff8so401666b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 10:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1734546006; x=1735150806; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=KqzSrENGtWAR2a8C7yFu2HrvrWChqZbyXIZeob+iejs=;
        b=vkhqPFhR3CidX7AHvF6rimxu1Hrvs0EUaWW5En7t2YOSHkhIkvGcvuyPGZIvWMnzsE
         fn3+4qfDhIMDEF2ZWcBUeisOWeLI5fr2nw+6PDk8fS6BZAv5dW9oQitzD3DP1NndTc6a
         k597FMWss0YVud5eNfmXSo/a+mdURs9csaCTXinywdX/FKgzU7JiOKxI7r47Fii6VOVx
         lbfdzdPYKmg/m4cLfyy3qi7zRtkTXySFF88imBYgcw8FeR+Z+ahXd8LFhECDe/unqc7g
         rVGV1Uwi57ICg+HjvaGpYWANcLvN5yyHrcUa3qQid4s0f+emS+AwhsyzVt/4WYMTlyOB
         NHUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734546006; x=1735150806;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KqzSrENGtWAR2a8C7yFu2HrvrWChqZbyXIZeob+iejs=;
        b=j4em73eZKtGEbvqo+9vBKVelj7kf43vKnIsPVvTNgJXtYEZdbscIQb/ZrNSuT4E46X
         inXIia1qWtNgTeGrP+kv8Zo0bqVJ0haeBYUgkEMDMsGZt9kbgqz3gfblet3HSMJZSx9M
         6htkqiNF3eRwgzqCeH05EgDAVgIiOpZ9F1GYEhUjBk2hy6dQByuZ5QeDfeEAhag1q1mJ
         tCdeMiGAVXB3Te76VX+kYZNuntSifhuQSITffk0pSUNVP3eBwSnqJQq+mKSImAVMXv1o
         a0B+fE0hGG9aqBWrBve004wQC0YMH7zeWCJP439k0h5KHxaq/XHb3mkvGhCGNzxPrIgG
         A0dQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgsp3bgL6IRvqrPcDsxnVYBNAKDmKxhePHfdzRrvUGt1VG4oSdOtXLz6fAImqsTOgr5z5/qeYu9+mZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxMvUchAscywrfgtrkAsV9CHgU47DSubuNlQaV/9EGAab5Yv1Hi
	KCQhOnaaaX2VSP5KzPNHqgIcK8d37KxRxWPNF31IJXEfF9qWXvGj4Hgu1Z6bCKjAedQCjdbAzRS
	VL2ZdgXoMjbTUggsI/n7Y06ork7pZjSpH0mPnb2kJY9JR0HRX4v1PN0a5g8gDjJOiBq/EDov+61
	XzfQqGwBsf5l/qOYSGQz0CjZnS
X-Gm-Gg: ASbGncsxrazV48I5YbKXnmQtAK5RlETXxemk5hm77snuFTZ4ETQKB7C60FgKfxwp2r1
	l7VeSZxYBg58ksA/226phg+Q2twYEnRUhp9kHU93cf49iBs0k6cRH27ZqX0zpPKJgiuj53jtZU1
	32vmL3NfEKH7OG+bd2AEl6T2RTfqUQJyS0s7qcEB/fuWHrsELq2uWVJfV8bF0z/PNbxvKP6Sbyk
	kmdjH3WzRx9k4+EfXneHYMa7wwirhBgS7RxYHhEuvncCYye6MLbWqrzYXJOUlFmbgevhViriqd4
	mVPpD2aGKj+2ZrfLTzZXOq5xDAOvodt7
X-Google-Smtp-Source: AGHT+IGH27YVpJ1+J4fUBlkUj1WKWmKOKWswJoi0bT1rgk6g/F0vJQWolR2+mDloUleXio5zmRansQ==
X-Received: by 2002:a17:907:608c:b0:aa6:6885:e2f8 with SMTP id a640c23a62f3a-aac081bdeb5mr26504266b.28.1734546005232;
        Wed, 18 Dec 2024 10:20:05 -0800 (PST)
Received: from localhost.localdomain ([178.27.36.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab96359fdfsm584825066b.93.2024.12.18.10.20.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 10:20:04 -0800 (PST)
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>,
	linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH v10 0/3] Add LED1202 LED Controller
Date: Wed, 18 Dec 2024 18:19:52 +0000
Message-Id: <20241218182001.41476-1-vicentiu.galanopulo@remote-tech.co.uk>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The LED1202 is a 12-channel low quiescent current LED driver with:
  * Supply range from 2.6 V to 5 V
  * 20 mA current capability per channel
  * 1.8 V compatible I2C control interface
  * 8-bit analog dimming individual control
  * 12-bit local PWM resolution
  * 8 programmable patterns

Internal volatile memory allows the user to store up to 8 different patterns,
each pattern is a particular output configuration in terms of PWM
duty-cycle (on 4096 steps). Analog dimming (on 256 steps) is per channel but
common to all patterns. Each device tree LED node will have a corresponding
entry in /sys/class/leds with the label name. The brightness property
corresponds to the per channel analog dimming, while the patterns[1-8] to the
PWM dimming control.

Vicentiu Galanopulo (3):
  Documentation:leds: Add leds-st1202.rst
  dt-bindings: leds: Add LED1202 LED Controller
  leds: Add LED1202 I2C driver

 .../devicetree/bindings/leds/st,led1202.yaml  | 132 ++++++
 Documentation/leds/index.rst                  |   1 +
 Documentation/leds/leds-st1202.rst            |  34 ++
 drivers/leds/Kconfig                          |  10 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-st1202.c                    | 416 ++++++++++++++++++
 6 files changed, 594 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/st,led1202.yaml
 create mode 100644 Documentation/leds/leds-st1202.rst
 create mode 100644 drivers/leds/leds-st1202.c

-- 
2.39.3 (Apple Git-145)


