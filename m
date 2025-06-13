Return-Path: <devicetree+bounces-185840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90523AD96C5
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 23:02:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C69FF3B3032
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 21:01:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9596C24BD1F;
	Fri, 13 Jun 2025 21:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="jcSSCXPG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5F5226D0F
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 21:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749848517; cv=none; b=Zc+YQ6V28BZXh8+9iU/Ay2VljnOKxNFo+Kz5ac5vOXeZPlUZSPcm4v1N0wiNM2mVjML+TDktowXbfrkLwL/JbaZwr+W1TEl7adfddZvrhPW87vO0ONTiAX/Tx43LbYDmGL+5mqNufie2VgqMgzShLdSwskf+E3O0xaCeGEKL3DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749848517; c=relaxed/simple;
	bh=FnVVHXaWxWT/DQEvbDfL88dBI7zNVZb9QTeYiBMUa8k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WFNj+ylhEcsXzMor8kJerQcja7UxKvSakM6SnpyeEUH/8dV3sIRkZEFPffCr2kAPJ6S38PBOe4qAUzSGrWNYBtDbUfX0rNIqp8TQcFfo8U8zWegASuOyKyO9rm3prjzxVptKATebg9NiPBMeP4WihtWysPjUf1oaZBy+FaUGZxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=jcSSCXPG; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3ddc9872e69so9486915ab.1
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749848515; x=1750453315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/nSScsiqRBJeianI+qHcrQDt2tXUry1jim/akdgTKzo=;
        b=jcSSCXPGMAiVbSz7taIoQeT4nxA7J8KiQxPNvLtbdGBL4Nh3q4Odj7rvgnHIvwrtD7
         xWnBB2Btf9X2LYkIPFDCVWp0hvKU10KSwykrWK8M9F8xAAX9LpZuNULj2P6cfytIto9N
         IuylvxTB331kN8p6TQPDVVYbOhjrh2SpvvtTDIRYWK711YCDbWYaVhnfYpFOkV9m0P01
         XUw7/ljPssK6IjbxMmDh6s+V8wMYKNDSGa3QrDExeKDZZ43GVNKwFYyv5RopLjawUr2E
         WA4FwiwcMiNj5D+aaUbDZbUFqGQbrPRCIpOqS2KDeGfHJQ9uJPrCTLz9rzQxRCiEcBp4
         mhoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749848515; x=1750453315;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/nSScsiqRBJeianI+qHcrQDt2tXUry1jim/akdgTKzo=;
        b=AKho8XHjdT2b2K2H3sIVDeIGX5g8JY/WL9pYSy2Wmk13sAW26y3lJVebQSHeXP4ct8
         +KkN2Mb6/a1Tc7zRhrN2NRcEzkJ7SG/sM2WniUKDL+UKLBprZ9oty1wyn+4ekAANM0r7
         0Hl/0c8e84nQFm0rEQTkq/reee0iHlpiS65fQ3gDZ5cdT2Ku+DgUhn/zzCCFf4ex8Ru6
         u+GKfUneXmRn9wZpVVrqTFz2lqu1FYWQ5Rahd9iEC9QwgvzKAQKgvWo1BgzV8/lnbgXH
         oiK/hXilMITw1Mps53CDW09CwXWk3/HWKREmvrxArbKmZPmonBkXQFJ2nY9Pt1mRspOT
         2SBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwpxbTkKorlqN9B/kXdqwKAcuANyuikaEFpkyWO7gykL4+YBGHHPOM5ubaYL5LM1CWZQ3XcBKP58Fn@vger.kernel.org
X-Gm-Message-State: AOJu0YwIabn1mAwxkiRROAVGrVrEIWv6LoohrFeeNQ+Ll3sRDqf9bxov
	bupzSnhni1pmCX7e7ATRKzwszm9IQVTVpYmkNVY5lS88vKCbI5rYRTtl6srcPgdKI+8GExq7x6t
	WRtVw
X-Gm-Gg: ASbGncvRTaTR60jx7hR1EZ9AzFSvUVfSKJ/exaErbCLVwoDO/9e2BEjs5TxX5jQqmhW
	1WJmsqS+dHlOeSv2WLHaNw0Yz8wkPcuapAStuusns5DnhHdcY2zVIL03YpjjJm/Cujt26vJYnGn
	3kq3MpubPUeI3hK+pc1e3WcpmID+PsfSgRxO6BFmjZ4CBi+Q+j8Q5oKqPXH1AV5Blh2f3lEqAGJ
	A+4sBOiKNpZUhHrUdR0zdgFAxZseS566Wu4Z0kl807V0Md50Aul8wIqn+DOCSeBkARYr3RXecWw
	mJT9ZBBtrupYtGvErJfzIyYTyoBg+QlTVkPz6B0pZeq0optmw7X7cXp34CBrVvDUN+nn/6XbESy
	golb9PsbvNpH1dMZyZvYcy/Afvf8jn34=
X-Google-Smtp-Source: AGHT+IHDcIli2szJaJCMzYiSgz3vKDNO6J57pPYGeBj4TOdFPi4bGMhE8W4WUaTIJisML0Aw8vxewg==
X-Received: by 2002:a05:6e02:1a81:b0:3dc:7f3b:acb1 with SMTP id e9e14a558f8ab-3de07cc207bmr13106355ab.13.1749848514714;
        Fri, 13 Jun 2025 14:01:54 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de019b44b3sm4996315ab.10.2025.06.13.14.01.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 14:01:54 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] spacemit: introduce P1 PMIC and regulator support
Date: Fri, 13 Jun 2025 16:01:43 -0500
Message-ID: <20250613210150.1468845-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT P1 is an I2C-controlled PMIC that implements six buck
converters and twelve LDOs.  It contains a load switch, ADC channels,
GPIOs, a real-time clock, and a watchdog timer.

This series introduces a multifunction driver for the P1 PMIC as well
as a driver for its regulators.

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pmic-v1

					-Alex

Alex Elder (6):
  dt-bindings: mfd: add support the SpacmiT P1 PMIC
  mfd: spacemit: add support for SpacemiT PMICs
  regulator: spacemit: support SpacemiT P1 regulators
  riscv: dts: spacemit: enable the i2c8 adapter
  riscv: dts: spacemit: define fixed regulators
  riscv: dts: spacemit: define regulator constraints

 .../devicetree/bindings/mfd/spacemit,p1.yaml  |  86 ++++++++++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 138 ++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |   7 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  11 ++
 drivers/mfd/Kconfig                           |  11 ++
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/spacemit-pmic.c                   |  91 +++++++++++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/spacemit-p1.c               | 154 ++++++++++++++++++
 10 files changed, 509 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
 create mode 100644 drivers/mfd/spacemit-pmic.c
 create mode 100644 drivers/regulator/spacemit-p1.c


base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
-- 
2.45.2


