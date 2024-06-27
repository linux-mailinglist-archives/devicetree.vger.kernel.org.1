Return-Path: <devicetree+bounces-80769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 508D691A5F3
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:59:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA870B27CBF
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38A3A14F9E8;
	Thu, 27 Jun 2024 11:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Pb43eTgN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB1414E2F6
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489581; cv=none; b=UI/b00a867tPh94wclwMKaN62bCWDWS8dOYM6IDKO5NB583+jfyOSTC1X2o1Z0o/6U5YWtVCgx7kb25qcs6K58laVOtGvHIp7TJvcv55TZxBibx1WRNd6XHPluExJnsDhRQynV2R+i+LpJfG5FKVZIrxcROlzrK9k21srsc/vNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489581; c=relaxed/simple;
	bh=anA5oYFGJ2+2TTOR+4xzpiZiQv1Xq5rAKQT0E0obUDY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=V7MxO9AJ7s9leO7r3aMw8t0np+qldOkCSDWlVtD4TzdQVRaqVoYMeIzzOmXEEeK7js4xwgMaCYOOFgJzNyB2UWqqSWDNbgXWjtONYpbsQ2smHOI+OMJGxgznXh7JD7kQ0kp3i2arf2TXzFXQlOXAC7TiolRyHCscYGuFIu/B0F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Pb43eTgN; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-424ad991cbbso15967645e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719489576; x=1720094376; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+OAKif13lnyPw2LmYH2U9f5LMUBn4yIkrRKzqcGvy0c=;
        b=Pb43eTgN/Jrff9QQI7XbB93igKa0iTcDCh7qV15sSIAqXEDUUZb1GOYp+p+2LVupoS
         IJi5lE01fll4YIUC7Gkopb0uBIzOZUs2cLRnC2yX1Qen3KGOK1GmDehoNVyNI+kdNG0H
         Q7oCowsqbmkGLB3gwfXqdKWj2sWmMgnoT9g4kLaU9u8kIUetWHTQ3rtHPIDFHRGqDKCQ
         qF1NCFwRJE3EqotVmVJUwE2EMZ1Lh+Iaj3kDACJC20RBTj02oxop9aOku74GqHcZLRzj
         VaNGt8f0pCUTsL3EV2UUPDi39HWjHsiiKUnEg5jQc2SMU2VhyEMo+MDVonKkr+VjRu5U
         vO/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719489576; x=1720094376;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+OAKif13lnyPw2LmYH2U9f5LMUBn4yIkrRKzqcGvy0c=;
        b=PJ7J3A8Kd+5Qx1L9V5RTYcKZxiuzd2ibaCZTo3kK1YZyTcFu3LK0VR44SRINkfMD1V
         6ivcuIZGzG3npnVG/KCD/u+K079PkQQive4oqFDvN1WQbj4KhU47/K8UfQu8YKrD0+R1
         AzTF2oyuYslyEfmmGdIYCmK2Ob4BSkKSc3zO1fOq8ygM2oBk6CAn3HNvKyH6bhU47wI6
         oZCuZEZlmLx0rDRtf4g+vr3a+iubHDtXR6Z/lAjYSBi70aLezgsCoZJcywOM1wvtB/K5
         aF38T/DDk9OnMzrCuzJYz0ItCGm7UsERbQEoCpKTV8hn0RRacMgyAMTSKYLndzNBclB7
         orrw==
X-Forwarded-Encrypted: i=1; AJvYcCUYLr3NEmex5vq/VswDx4nbIIDHyGDSj+hpfAXXUWpn8dc+A0gzQpIN30wEWdF4uqcQuKS2qfZG5r6Vx+DNrHWBeqcw2phgbtgs9Q==
X-Gm-Message-State: AOJu0YxySwbul36jJuMgRMC1Ya5RWg72ZlJH27PKQMWoc5yKqwGJe+w0
	k/FkOYY2YygeAMMV6Pa0poDK1u8/0xKIAgmSqDAUGdE8pbrzM05sLF6Rie6OOEo=
X-Google-Smtp-Source: AGHT+IGCSfOzVvWKWUPKel38jhHjOSvBykHlWgd/kqEry+wOrXMEP1r8dG8bEHq+9TLVoHrK4Bs+LA==
X-Received: by 2002:a05:600c:3b16:b0:425:52c7:1f14 with SMTP id 5b1f17b1804b1-42552c71f73mr28673795e9.24.1719489576191;
        Thu, 27 Jun 2024 04:59:36 -0700 (PDT)
Received: from [127.0.0.1] ([2a01:e0a:448:76e0:4435:7af:3956:8dba])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-424c82462a2sm63473585e9.2.2024.06.27.04.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 04:59:35 -0700 (PDT)
From: Esteban Blanc <eblanc@baylibre.com>
Subject: [PATCH RFC 0/5] iio: adc: ad4030: new driver for AD4030 and
 similar ADCs
Date: Thu, 27 Jun 2024 13:59:11 +0200
Message-Id: <20240627-eblanc-ad4630_v1-v1-0-fdc0610c23b0@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA9UfWYC/3WNzQrCMBCEX6Xs2UjSLgn1JAg+gFcpkp/VLrSpJ
 FIspe9u6F2YyzfDzKyQKTFlOFUrJJo58xQLqEMFvrfxRYJDYahljVLXKMgNNnphA+pGPmYllJU
 GZWvItQpK7Z3oyd998g636wW6YvacP1Na9ptZ7dH/xSIpdLDaoFeNQzo7uwzsEh39NEK3bdsPF
 JjFi7gAAAA=
To: baylibre-upstreaming@groups.io, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>, 
 Esteban Blanc <eblanc@baylibre.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openssh-sha256; t=1719489554; l=1754;
 i=eblanc@baylibre.com; s=yubikey; h=from:subject:message-id;
 bh=anA5oYFGJ2+2TTOR+4xzpiZiQv1Xq5rAKQT0E0obUDY=;
 b=U1NIU0lHAAAAAQAAAhcAAAAHc3NoLXJzYQAAAAMBAAEAAAIBALJZcW6pLD4ksSdWnXd5r65Ze
 5Qc5pH7+DmmbKJasOXeVYRPFEmnORS7pwhURG11AMVFmnCVYWj+wPYrbCEeM7XKfO4oQzc66kYB
 7y0RrFwjoWKofytjI026zV5b2pn1JAItgu0Ijth+TSa6KVOTSXqqiVzOTDM1WL0hAIIzpkhE3Vt
 AVJrFDsh/nWed9OpeSS+S6e3ZxyJtlnhqbVIemcDmjwMihtFgTKeJWlxP7KGY/RQKPF/Ef7pS+O
 AckOrxuqGKvpOiNVCmuQEUQM0+r4uvwtja4zRSl+huqW+g1nLyReoZPzFwfJWREd+89dtTJTXN7
 xmmFNdX6KzRKBLVw1RY/R3mhAd+MkrdiNaRNKj+LO1QIxPoW90cPG9WpdVDUZf1VxhdciB6Hlxn
 lfEDFuCxU0n5H+kC4eiZvw+c9D4xX7iVdjPTMEaE6GBQNnMncdljBwA5NVN8WcaUhnAQnq7qhcz
 85L2Br7MPqe3q3J/PHIe0nHO56j7tTY6cFFs/ckqcQSTJigh2rA7InN1d7GqZFLzlewRTGaCY+M
 93d7DCIuxTxJWRpVm7NW1FBeX6d00+dAcQ/dS+jmA3kcdRoWtH160jmmYYvOgrsQTcMIQrPtK+B
 rULRmmIvEIJMF5UfNmxruWmWn6MM/xeejTNszoKqrORpbr7q3BnkKt2y/KdAAAABnBhdGF0dAAA
 AAAAAAAGc2hhNTEyAAACFAAAAAxyc2Etc2hhMi01MTIAAAIAIHga1lplWJQgF9MHgXvlNtQg/xk
 rlzN1fxEY0ZBZOpyIV4qE8C4I4KWtk2qFo3GMxxIKhLA9h7J1tTENd4+ez6qfZUn2UJgmxnE2EZ
 rsrKgy9dSDl29fSB63JYuqV8+w0CfXZqW8uCZ9NXjHuOgbYO3gvMtSy6O9HRYDDVR6IeQVAWj89
 2Uex0zgZThdmjL8ZWmvuYCQNNSstH2zCIdrBKdM2hMROY895jc1IQxtYSweCR567rp5S9wKYMkP
 yvZi26amjqZ5Vt+fJmOXKnFLjPE5Re39eGTxtQHiopFrbXe6wQZN4AWMsALUWMj5tnT08pUwqTx
 UUuJvscg/jvMs5ICSk0e67czelDZPg+ehDiRz5oEOgkFuIiI4KO+h2h+Apus9iEqcxi1SjYB8cQ
 n9TNBbXrYEofEppE/wxrs3N42kNt6dBIo9qbY2R+e4XdMDEBbEJqWU4PkRaYTG0OSWQrhm27Klr
 +S3QAHrZEfyT+k+a6KdawW311P2U/R5iu1NBdWj44IqrMOyGTWhz2lBu7DbgIvaQYBfPOOBa3bS
 f2DQriTgOZoqD18TaM52xwokhPVzC9WjWdMtUaXoFJRMNRUovhAMzYlhOaF2/ExXh6EywZOr+mV
 nBW/vl4hWVaLsrElHneYzAt9LwQGpxplKTWnywC/0SUNvuA5N9i+9wJw=
X-Developer-Key: i=eblanc@baylibre.com; a=openssh;
 fpr=SHA256:LOxhPHcL6HLuSaOVHuI2Yq7hvD2blbngN1ohWi2rJOw

This is adding DT bindings and a new driver for AD4030, AD4630 and
AD4632 ADCs.

This work is being done in collaboration with Analog Devices Inc.,
hence they are listed as maintainers rather than me.

The code has been tested on a Zedboard with an EVAL-AD4030-24FMCZ,
an EVAL-AD4630-24FMCZ and an EVAL-AD4630-16FMCZ. As there is no eval
board for AD4632 the support can't be tested at the moment. The main
difference is the reduced throughput.

This series is taged as RFC because I think I'm misusing
IIO_CHAN_INFO_CALIB*. For CALIBBIAS the doc in sysfs-bus-iio says
"Hardware applied calibration offset (assumed to fix production
inaccuracies)" but AD4030 offset in on 24bits and I would argue that at
this point it's not just here to fix production inaccuracies. Same this
for CALIBSCALE. What IIO attributes should I use instead?

Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
---
Esteban Blanc (5):
      dt-bindings: iio: adc: add ADI ad4030 and ad4630
      iio: adc: ad4030: add driver for ad4030-24
      iio: adc: ad4030: add averaging support
      iio: adc: ad4030: add support for ad4630-24 and ad4630-16
      iio: adc: ad4030: add support for ad4632-16 and ad4632-24

 .../devicetree/bindings/iio/adc/adi,ad4030.yaml    |  113 ++
 MAINTAINERS                                        |    9 +
 drivers/iio/adc/Kconfig                            |   13 +
 drivers/iio/adc/Makefile                           |    1 +
 drivers/iio/adc/ad4030.c                           | 1081 ++++++++++++++++++++
 5 files changed, 1217 insertions(+)
---
base-commit: 07d4d0bb4a8ddcc463ed599b22f510d5926c2495
change-id: 20240624-eblanc-ad4630_v1-1a074097eb91

Best regards,
-- 
Esteban Blanc <eblanc@baylibre.com>


