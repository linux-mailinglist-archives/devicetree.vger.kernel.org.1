Return-Path: <devicetree+bounces-234533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B0BC2EA2E
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 01:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 17BA34F3077
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 00:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08DFB200113;
	Tue,  4 Nov 2025 00:33:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b="SgrADH5w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86F6F1367
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 00:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762216406; cv=none; b=MNqWvbkIoksRc4ylvz87S+Aa2kjwKm2Ycye1uWmnzFDEHYjE92l8Z70gE9ym6UJbBGK4DA59/I7rkPbf6NoZh7Bc0tglirVgWk7YHYWM7bmqOJ163bpl605eiO8Ma56bVFPS/14D41qm/GWidi9q6JuLo26Ztfdkc2Cks+nqw+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762216406; c=relaxed/simple;
	bh=TcYju8n2wQ920cf5z4H9pMb0Z3+C7so+Lr81+sHREOc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nYHyMkInT6VvW4fUTR50OhFLP7Xq4T6+hPywizpxvBL1+u1qZ8I3Cfe3GeJDNVllPTu6dVGyUIQBp0+hP6JdBGvKJisrAg28YHSlPca5lOBTip3n8yZOhIBz7sFhzeWeYwUnzoBr2GqvD4pJnfhTPRlooxud+NfBiwFiHdXQUJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net; spf=none smtp.mailfrom=dpplabs.com; dkim=pass (2048-bit key) header.d=reznichenko.net header.i=@reznichenko.net header.b=SgrADH5w; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=reznichenko.net
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=dpplabs.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b98a619f020so2097006a12.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 16:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reznichenko.net; s=google; t=1762216404; x=1762821204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HXCqgHkp/y6Xvj0pMaw2k9PHANDsHwn/e45azlj4aMY=;
        b=SgrADH5w4yXGc36mKpk81GvbjPUHRY5rwD0u7yX4bfWqHMSc1o6YUY1VBu8ZVLPaTp
         DYxQDzzwSLlrR7NGLnozsnaL8E6bgnv5XdMY3DDsDFC+Q1PcqNmJtUyuQWNXiEnbXCdb
         kxHPxgOYwjm4wtaCklx6hY8ki0Uk8fxDoGKDGeeRY19sQM5y7YIMmMiXDw0COKhmlIp/
         KP7Q307eoUpsYoNbDjQUzyFbSjqj7FfQ3RCP8pu0ugPGSeE9mtFZq9xhvACXq1x/4EnQ
         m1CaTr6E0UQrZ73zShZzHqjQaf4QPIp1JzUOY5rkAi3zq7dv6LBjyCsWGIJDSmTH72+c
         gLxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762216404; x=1762821204;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HXCqgHkp/y6Xvj0pMaw2k9PHANDsHwn/e45azlj4aMY=;
        b=aHhQ4XgTP1XGPA37ZW8USTls3hmnL1N3C2wJ+lCid1pnwyZTcV1UX7AdVQcx453k6t
         49lxb/eyDDcahJKfUWgHGlM/EPW7fPi94REUi/Rs/550IvpsBvvVSxa+InUgQJiMDUJY
         zbtSGJqMp+EBiJHXWEi5XpBzwH2ZycI/uUzjg8flYyX3nO+QRyvMQ0wPv3JCpON6yzYI
         75CypNQ2aiU6BNCxizp4oDeipjTute46/406uciVRSCBoTrlwMRrF8Gc8L+4oS5YN7q5
         7JMztJe4/P44/IkS7fK47sYADtf2gyQG4PDNFFnH9jocOLVu0V6UTLIbQzXWFzgvGpKQ
         m06g==
X-Forwarded-Encrypted: i=1; AJvYcCVDSOrqEmGKXZwu9E40eFr26/+lH61/LiVuDcfH0L0yH5H/rO6ymDdAB9vpI/9JtspdfBn5jmrMpV1V@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh6xMtuxbJLnwiB5YHMo5RXCDdSpIkZziTUyb9p1naWSGJAHRF
	HJFjzOp7+v9TVUdzyFruQtsO+UJZoXaMPVuXbJAkrqTwIYCQhXWszNyJxMsjlKldpR8=
X-Gm-Gg: ASbGnctIKJekN85ahTOia18mxA37OU02igIylvBwEgKvc+gQZnm4QR2o3QVfB9Yo9xU
	1G2xxeMlBHKuOrrHfm/b2nGhfPBMHp5UEXnMPTYmjU6OPjeSurVaGqIZwWJqLMbi8GaxBSJwzor
	ak1MIxTup/23NOca0W9QOONcLmMEzLRhwu7OnINfS51PFJTm6fMD7Onhh4/cpo33gr/QcfSH6x6
	MAZGkKlfwBiJO5KXoiDMLfSTvPvK0MMkNC+/dZZv2wClINxLlu/efP2eEGVhfm8JPIW5wKHxO26
	MqhMn7Af3v8RUHvjYEvLHGvUZp1xayYvjJ54IcIQLGYbpHkBN5KMIjEb1d9Eut169VZZX6zzF27
	eOVAwJpz7qv50wHTl7oSMk6bBy2qidgBRWLZzuLlOlZtf59SNPROaP+VVK9NYRjo94v73YOxa7V
	wwm1nsjuZNmvzXJDMbrA==
X-Google-Smtp-Source: AGHT+IG5K9xuPSs6yLpF1b4AqM9fFQ4oDhiSJtrDt8p9KL3Qz56dNNylWn90xNwGiCETSOBSEA0SjQ==
X-Received: by 2002:a17:902:e749:b0:295:7f1d:b031 with SMTP id d9443c01a7336-2957f1db28cmr98709205ad.52.1762216403710;
        Mon, 03 Nov 2025 16:33:23 -0800 (PST)
Received: from z440.. ([2601:1c0:4502:2d00:6127:c8ee:79ad:a4c2])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba1f9615c9dsm360123a12.36.2025.11.03.16.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 16:33:23 -0800 (PST)
From: Igor Reznichenko <igor@reznichenko.net>
To: linux@roeck-us.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net
Cc: david.hunter.linux@gmail.com,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org
Subject: [PATCH v3 0/2] hwmon: Add TSC1641 I2C power monitor driver
Date: Mon,  3 Nov 2025 16:33:18 -0800
Message-ID: <20251104003320.1120514-1-igor@reznichenko.net>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the ST Microelectronics TSC1641
I2C power monitor. The TSC1641 provides bus voltage, current, power,
and temperature measurements via the hwmon subsystem. The driver 
supports optional ALERT pin polarity configuration and exposes the
shunt resistor value and update interval via sysfs.

Tested on Raspberry Pi 3B+ with a TSC1641 evaluation board.

v2: https://lore.kernel.org/linux-hwmon/20251026065057.627276-1-igor@reznichenko.net/

Changes in v3:
- Updated devicetree binding to include optional interrupt property
- Added shunt value clamping
- Changed limit attributes from lcrit/crit to min/max
- Improved limit handling to preserve register content,
  (current limits might not round-trip exactly around extremums due
  to inevitable rounding)
- SATF flag handled properly
- Misc. small fixes

Igor Reznichenko (2):
  dt-bindings: hwmon: ST TSC1641 power monitor
  hwmon: Add TSC1641 I2C power monitor driver

 .../devicetree/bindings/hwmon/st,tsc1641.yaml |  67 ++
 Documentation/hwmon/index.rst                 |   1 +
 Documentation/hwmon/tsc1641.rst               |  87 ++
 drivers/hwmon/Kconfig                         |  12 +
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/tsc1641.c                       | 748 ++++++++++++++++++
 6 files changed, 916 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/st,tsc1641.yaml
 create mode 100644 Documentation/hwmon/tsc1641.rst
 create mode 100644 drivers/hwmon/tsc1641.c

-- 
2.43.0


