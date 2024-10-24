Return-Path: <devicetree+bounces-115093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CED9ADEDA
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 10:19:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1D2B1F21968
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 08:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3904D1C07C3;
	Thu, 24 Oct 2024 08:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jp2WD3Rz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3362E198E9B
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 08:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729757847; cv=none; b=WsTKgQzdVR2TkYKJrqSvwehlsyWqInUx8A3/1c4chKt7cT36JA1ZwYoqrwOVjwuEjoXB9JHt2eIlqd9iKAwygkqZkVICPTgQjbXzxgy2b6WDVW5z7BX8Zs9lDaJ0+1kIYOWNlt4KsTpoN3Z4UZUGr+bNodTKxqbn5yJi4Wramn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729757847; c=relaxed/simple;
	bh=5+PPddUOggBcLzUgVM4JAjl8yf57Cfb1Vspg+FOHcvE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bVkU4QHmJ6menlxk1G//KHK+1Im4NQcbDMk88N9JIttbvsj2wyDCAYJJIySUO09ALwAGSKj+clBYoD4kHYVuCNVx3HuMTBBkGXbSFLsIw5uri57qHeKSzVjkCjYEG1+pCBlRXzXTrJv5UX34O3kGQk7eicBV1uLyg2jEr+CwzSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jp2WD3Rz; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43167ff0f91so6280235e9.1
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 01:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729757842; x=1730362642; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4dTM6QAgU0iBX1/55GNjACOUfUPsURXI/ZYFo7NvddM=;
        b=jp2WD3RzYsD/rrhoPjzwKAVbbI96vp2o/tRu0Shs0cKzwzcabClhxJClIP4D4N6kDY
         ztHVvD5/1zFbdY+1u1oCG9SqcF5Yt6SoINRVZnytD0Ja/lUk+N1ii1cVjXYjUqq1bsUf
         BbQrkWDiBt/U3GmXVXXX4ADGiIE3jewLW4Famp9N/b+GNPQF7P19Ybscqb7Uzeu3YEA2
         C0Kmprc9/HFsJgrMvdqUIW610j67EFYgXq/phh3g2ACxbWA13veZh5PMalGpK3J2M3+G
         Oww9eu0GAggky/0Kx6GOY5PMH1dE6zrgsS9xoa41WY3AUfu0+Z6I5aVor7+58TtF4Mfp
         yDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729757842; x=1730362642;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4dTM6QAgU0iBX1/55GNjACOUfUPsURXI/ZYFo7NvddM=;
        b=K8YMwiyWqmShGokufJ1yatr0Ar/iMXVmYiVbvp1j+gHlg70LhsWbG1WM+a3wwRVQHC
         qtYZlyCjuJH7mlWKd0GkkHpYYSUXKaDNrrrjrzoWO7A0buY8M+LGe5d/nFXEJ/fv7tne
         fyMdo/uzJ3umV7Rf/6II44KP22fg+BUUx/u9IHRrZbzoqONCSL1NCTZs4a+p/o7LpFPZ
         wUFvwoY2toN8zDIBt9I//dWWQIN/TydeQXtFMJ5ov6fTYtObmBmURBELHfneFxf5tbN8
         FJyvjYAet2PXrh5Z4r1L2GRdrTJ91Qj/+ExHnHblMg3LRkVbwNAJoHUUPfOFuZAzpdtM
         bTxA==
X-Forwarded-Encrypted: i=1; AJvYcCW85AXRRnE1A3b5CQ+bb0hdECRJGvbs/it9S8kGUElsPz7YomF7/z+Eem+kyy+l3MQcL8xB9DoaN/zR@vger.kernel.org
X-Gm-Message-State: AOJu0YzC6trwPl2F2cK9O6u9YwGEMX2qRJCPUYkYV+skc1S3u0xzfVSQ
	DF5MbC3kDm9V0TBQeK1iB+ny4FNYbRupG1cbehynLeAD+V7unkMkhBn2C1cD9mo=
X-Google-Smtp-Source: AGHT+IGRnp0CPyE9Lu8MiPJUC8cE2tOabAKZQUMJoKtx0sHKMX+8ebn9dBSN/PK5Xm3LKaO9EFz3xQ==
X-Received: by 2002:a05:600c:3595:b0:42c:a8cb:6a75 with SMTP id 5b1f17b1804b1-4318415f707mr48674225e9.17.1729757842561;
        Thu, 24 Oct 2024 01:17:22 -0700 (PDT)
Received: from [192.168.1.64] (2a02-842a-d52e-6101-6fd0-06c4-5d68-f0a5.rev.sfr.net. [2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b93d53sm10828922f8f.70.2024.10.24.01.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 01:17:22 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Subject: [PATCH v3 0/4] ad7380: add adaq4370-4 and adaq4380-4 support
Date: Thu, 24 Oct 2024 10:16:55 +0200
Message-Id: <20241024-ad7380-add-adaq4380-4-support-v3-0-6a29bd0f79da@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAHcCGmcC/42Py2rDMBBFf8VoXQU9Y8Wr/kfpYiSNGkESO5JjG
 oL/PWObQuimXQzDncWZcx+sYslYWdc8WMEp19xfKOi3hoUjXL6Q50iZKaGMFNJyiK12glakgat
 ZguH1Ngx9Gbk0McgWgxDqwIgxFEz5e+V/fG654PVGb8btyDxU5KE/n/PYNc4jaNc6kFZKHxBiU
 Mkn5YwXwodgQSGlyF71umaTE+ZHjl6uRidqxvW+bfXehuQAukmzReOY69iX+9p6kqvHPwtOkgs
 eFUo42OSVce8e7qfsC+6oxAqf1AtQ6b+AagFam4Cqe4zpF3Ce5ydvb9P9pQEAAA==
X-Change-ID: 20241015-ad7380-add-adaq4380-4-support-14dc17ec0029
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>
X-Mailer: b4 0.14.2

Hello,

This series add support for adaq4370-4 (2MSPS) and adaq4380-4 (4MSPS)
which are quad-channel precision data acquisition signal chain μModule
solutions compatible with the ad738x family, with the following differences:

- pin selectable gain in front of each 4 adc
- internal reference is 3V derived from refin-supply (5V)
- additional supplies

This series depends on [1] which fix several supplies issues

[1]: https://lore.kernel.org/all/20241007-ad7380-fix-supplies-v1-0-badcf813c9b9@baylibre.com/

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
Changes in v3:
bindings:
  - remove item from channel reg property (should be part of V2, but get
    lost during rebase)
  - remove unnecessary () for channel property
  - keep consistent quotes

- Link to v2: https://lore.kernel.org/r/20241023-ad7380-add-adaq4380-4-support-v2-0-d55faea3bedf@baylibre.com

Changes in v2:
- fix commit messages and documentation about the gain: pin selectable
  gain instead of configurable gain
- add the enum of available gains inthe binding and array of available
  gains in the driver as ad4000 series
- in the bindings, remove item from channel reg property
- in the bindings, merge additional supplies and channel properties inside
  the same if branch for adaq devices
- fix comment as suggested by Jonathan in the driver

- Link to v1: https://lore.kernel.org/r/20241015-ad7380-add-adaq4380-4-support-v1-0-d2e1a95fb248@baylibre.com

---
Julien Stephan (4):
      dt-bindings: iio: adc: ad7380: add adaq4370-4 and adaq4380-4 compatible parts
      iio: adc: ad7380: fix oversampling formula
      iio: adc: ad7380: add support for adaq4370-4 and adaq4380-4
      docs: iio: ad7380: add adaq4370-4 and adaq4380-4

 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 120 +++++++++++++++++
 Documentation/iio/ad7380.rst                       |  18 +++
 drivers/iio/adc/ad7380.c                           | 149 +++++++++++++++++++--
 3 files changed, 278 insertions(+), 9 deletions(-)
---
base-commit: 8bea3878a1511bceadc2fbf284b00bcc5a2ef28d
change-id: 20241015-ad7380-add-adaq4380-4-support-14dc17ec0029
prerequisite-change-id: 20241004-ad7380-fix-supplies-3677365cf8aa:v3
prerequisite-patch-id: 6127a52d3b14e82d1a6081c7e504d0e4eb323089
prerequisite-patch-id: 7dee57142d0d12682b0be3b62f1c16851aeac069
prerequisite-patch-id: f737e56a372cd91e5fac651a2063b06827f9aa21
prerequisite-patch-id: 7c8d5fbde82810057630b95e12bb2f6576da6980
prerequisite-patch-id: 972bdbf06bafa7c56f604dbe8eb7d236aadaad99

Best regards,
-- 
Julien Stephan <jstephan@baylibre.com>


