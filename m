Return-Path: <devicetree+bounces-123545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 490819D5114
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 17:59:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CFD471F26B64
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 16:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0936419D067;
	Thu, 21 Nov 2024 16:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="LNZ+IUTU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFBC1BCA02
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 16:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732208318; cv=none; b=OFCpaJNgutAEks3eeo2nUf/5gnP78hOGRE/b+nWm3YFtRy4lxYH0RhQmnWjYW/bX8V05h1baFXPsUsaMlu/gZSkRb1vrO7i5O3UjHECrcsMta+4i3h0FNUtDIKCij2XtTzBXP4bo27CCSpXqLGbRiqWfpI30U9gvbdxZXfA1jPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732208318; c=relaxed/simple;
	bh=abhX0e8c7pOXK+VqgphQUVBQ5sBLa4mph2cyW0j392o=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=ueU9cVOzmP2L3SNrY2+fy4BASj08R0Vhntr2btbSEP6AMXqb7q3CdvBFHwADn9elapcwxQYi1rf4czF0vj/zBGB9qVCGCCh5r9qbfMSr8zekfHCc5NlSGCHdgTgJ7qzcHoBUlBfgj+6mtvjsXS2e22gTBeDcNU3g8Q1bpdVH++Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=LNZ+IUTU; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aa1f73966a5so190565266b.2
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 08:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1732208314; x=1732813114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bv4wgISV7HkP4RZ5WKLIykwWASiXxKHjaIhIuwDJQRM=;
        b=LNZ+IUTUmCoCGKr065Iy/UutFnhkel56puHGON44iSiDL6obq9SkM30Hq8Tww20FHW
         QWcMELGfb2gi0QWuxbF98nChXWWgHG7zzNgtOXcWe9OxSdLJ02QiQeNX/50bRK4Y8UND
         al4kJP8YZgwVhqVGp237WW4ZqA5KOW/wbfX5reixyeYa2q5LkkRhqlw19L6Yrbkoj9Ij
         HWOQkqi3XAN0AEjmij4xid14kXpTw0ILDwXl72Zk9eBBLkt17iqbgfDe5mW4svpZj7DU
         Ax+7eDIhC1HP4dc+Mcj8aavXFdU/pfxZHM6OsoaUsJYRTFs7zymUuILlCl/dxtksMwx2
         PuwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732208314; x=1732813114;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bv4wgISV7HkP4RZ5WKLIykwWASiXxKHjaIhIuwDJQRM=;
        b=THIZA1/vkKmOqMl+dsBM4d29KxSiCPNjePGkF4YMq7FVtlDqUYP+7ALvmePmEoSwqM
         RBDVOuAkWbxfqZT+9UNHUF2Z1BeLLturQjvEtxW94vBDbCJpg8HCZobmcExhC8/7/9j/
         fduaeBNScfMP50+8plzvCupu+eoXvq9TXuJtdfmKtxdQyMRr02qpxynlXdo9tA5rM1Fb
         XtS9Le8E1uwum/9Gx/kH62tGrfZqx+0WWe34yIS/QV4dhqRpZTxjjl81dntUK4BMfKng
         MQ1aWcPL2Xi8Za7LnX/aSem2h1ivbqzaKqVWLJ2UBjbtB4S4bh4xF+sEhnOTAmJqN6Fz
         +Viw==
X-Forwarded-Encrypted: i=1; AJvYcCVTqaTTWT8IKPU+P9XB+wmITB0ok4tqgGCZrxFojFldeJCF0wYBe/NwZaayfgF8Bi97WE17P2GRLDJl@vger.kernel.org
X-Gm-Message-State: AOJu0YxM2TYAjy5PBRI7Kx34o63Qg4zeWpUjughoYfqlsNUc9D8bvSzU
	hzPr/tFdXCPciC0v622495m2Rzzl0g5r1vTGU2BlXipvuyuKH2t45rmZMFSeURLmXpkh9Pv9M6q
	AnrZMkLdW8nrQnYOJxUlSCSP7U8jn0bt1SDT+zNToVl8JqRhUrvmEI4y5NuB3D2E7XrSmIOiwhS
	Qpzu2XGIky/H5L7RcEmRCl8atY
X-Gm-Gg: ASbGncth7jGLl2XYuke7dC4E9RWw5zdMfKJ00d/SYF6FO7t2gsiRfpRtlOiOs2BzoW7
	SMR4v0UKgR1iAPJGBBF8ldjAjTps6dpx5OFipcosJtzlIPdbae+LzxSkDRu8WzQNoMM0CgVZBXe
	1uCyWLS91b/GgSPtbBUB0In/gxohMxxKb0pEmpWZC2LG07VYN3Z9OQ5jsj0QLwOJ0ajZV1dx+yA
	5Ba6j/+JTBo3E6BEdSzLm5I01sigw/+DcAxh+s4+teim5Cmk4+zFGx7j+Boic69mq5lYaPTErUG
	tvZYoXM3q4MPMDmE4AlR
X-Google-Smtp-Source: AGHT+IG8qI4Ldy/CPpK41Muah+dnkVTCgnCKbuDjqWU0JiNZ4vuj5vyaOAZBfib8+IrwqlaHQZFVtA==
X-Received: by 2002:a17:906:6a08:b0:aa4:9ab1:1982 with SMTP id a640c23a62f3a-aa4dd548167mr672887466b.4.1732208314370;
        Thu, 21 Nov 2024 08:58:34 -0800 (PST)
Received: from localhost.localdomain ([178.27.36.125])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa4f41536d3sm101502766b.24.2024.11.21.08.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 08:58:33 -0800 (PST)
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
Subject: [PATCH v9 0/3] Add LED1202 LED Controller
Date: Thu, 21 Nov 2024 16:58:22 +0000
Message-Id: <20241121165829.8210-1-vicentiu.galanopulo@remote-tech.co.uk>
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

 .../devicetree/bindings/leds/st,led1202.yaml  | 132 +++++
 Documentation/leds/index.rst                  |   1 +
 Documentation/leds/leds-st1202.rst            |  36 ++
 drivers/leds/Kconfig                          |  11 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-st1202.c                    | 510 ++++++++++++++++++
 6 files changed, 691 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/leds/st,led1202.yaml
 create mode 100644 Documentation/leds/leds-st1202.rst
 create mode 100644 drivers/leds/leds-st1202.c

--
Changes in v8:
  - Add change version history for patches

2.39.3 (Apple Git-145)


