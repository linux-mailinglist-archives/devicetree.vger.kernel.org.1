Return-Path: <devicetree+bounces-131754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6199F47BF
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 10:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7695163FB7
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 09:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 601AF1DEFEC;
	Tue, 17 Dec 2024 09:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mqEUdgU+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1568493
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 09:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734428450; cv=none; b=O0Q1WdDvH9CTk4Bxeo/wMzic5bbabrK+/Vm54FrBKSDA1tEshnzF+qbItEUMQeYCfN2bxaCdPylGnEMO2eH5IaMvusi5NxYYHEceIV6L8UbIktGJSE+P8IKiP5khovzBrRhq+VbXid7DqlYYRwtmLu3w/FTuZKtDZ6ZFw0Yc9Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734428450; c=relaxed/simple;
	bh=aqXs/GouKrhkgUshCq7lvESEEVCZFwMG74JU0NNq6zY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lXctnTBKVl7miwoCLx85GC2qzXcw0BbmZuOqWR2gAMLEi+6XW42m9sUUmWTz2H1py29loMrjxwshE17jEIvt+HLuhmrw3uHHsiOAJdKeQolkoFXyK73PF/XHSLwOKwGmNkVoNmCVrAqJebYk9mwSlQLlKlBl9mymUOeZRSiorow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mqEUdgU+; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-436202dd730so36171785e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 01:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734428446; x=1735033246; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aB5cdeadV6hCwOqHqkeqnFHRRPrcOXD6QhSaEDTifao=;
        b=mqEUdgU+XAfy8aseV+697NbN+JzY9Pbn8Iis4Ttt98OYEvNGSJ0k3DEQ8ePWDFgCIr
         qgMZDrlkR7PWKtKPZstU8B3YcrCG4243dgx6xJHUTbDPOX87vwPYswxNvGLrRd6iWNqT
         JG2y6er5cMx9cdeA+VfSJSjtkHdR+XtB9tzt77dfhz/e4HkVXpOxyeIbJAEFY7ASuW2v
         ETm5PUUgITD2fBhR80KAOJf+ogL1wHcw1fTKTQ2Fm5TXMIpRQzodb5r6nVvBAn6h0rXC
         6iEIXlqZwhzUjL0cXhXWayaTj7H61id80lokQivrKuZSLXdvpIFQ77p7SjcZIQDjEncF
         sVjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734428446; x=1735033246;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aB5cdeadV6hCwOqHqkeqnFHRRPrcOXD6QhSaEDTifao=;
        b=SdN7zehYxkSoqJQnvxxdsplDU2udluQNtKJOF8h35zVvkOXCuVTFJXQb4wqlRelbhO
         MAINdV/MvWhsdJW9xUYr+wPsmylHkl+M/ZyeEmrDLb+6NSrIwHv5Bn4P86yaOLvbB8AQ
         76CQrHbr7E3uyNJ9zS+4ujbA2rRJQpM2+gXm5iqQ9oggsnT7irI90s2c0z8NTAgNekiS
         8leU68Nwo7U26p/Qqyzz1U1+8wpJV9h/M/oZqnvBb9U0j4MWMWSrWmLaiVKr7YspYRuM
         wtoGM8u48gKyvhiDlJbxRc/rpONINp1RNYa4tLvQ/O57ZfQ1wCL1hJN69aZTNZoG6MGa
         DEFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSxMzFftonxP0qb2gyTV6uq4jlGROkVF3ievqp43xtFZuU2FX/RQJqPau4ScZHP7m13F0wTebVAu1r@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl9mJ+lBu3hMSrgzIVIncJXcWjt/Kpj7bmkShWx068eDlfJAJ6
	6HqfSHrrisRQsnaBTQ8Q7Q7W/oXnHJbs3Tlmg2jSOMnjb0RJt5xP83u991J5l3U=
X-Gm-Gg: ASbGncuPef8k6uKFAwKhz/hSKpJ9xhiigpTbWWaRU+gy+/ybsNFtKPOA/zVXyUs1JVa
	AiyMWY01HriRtng2rTGflKxxFEMODnkwWh3paepUkgHxX85TQWC15D3+Q4F5OWmkpwpXkeVNaX/
	igqxPmBDD8x8rDCOuRkyD2QdPlDRBzOWfpXpJyuJ8O33veZ9q+QmxzvtsTLwO5iANyiAtkTuD0X
	CowjrhnJn6gtnDRuZ82B9iqCIv2msvJ58A3J6jqJlVcwv0C2eER+mqgDNDd/n6mjdOgxIDCQ7A6
	ovfgJ5iTaXyG3CJhXXtg/Fuh7/Gsk6Mp2w==
X-Google-Smtp-Source: AGHT+IFMPzbTWt1HkiEeugGyD0NbWrhqAxmzfxWPK1THCAUhCbVkXXzIU/nWMBLZuXZL1MeTGXgAYQ==
X-Received: by 2002:a05:600c:1906:b0:434:eb86:aeca with SMTP id 5b1f17b1804b1-4362aa42b9bmr179229525e9.10.1734428445814;
        Tue, 17 Dec 2024 01:40:45 -0800 (PST)
Received: from ta2.c.googlers.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4362559ec46sm167475755e9.20.2024.12.17.01.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 01:40:45 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v5 0/3] mailbox: add Samsung Exynos driver
Date: Tue, 17 Dec 2024 09:40:19 +0000
Message-Id: <20241217-acpm-v4-upstream-mbox-v5-0-cd1d3951fe84@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAARHYWcC/4WNQQqDMBBFryKz7pQYItWueo/iIupEBxojEysWy
 d2beoEu34P//gGRhCnCvThAaOPIYc5QXQroJzuPhDxkBq20KXWp0faLx83ge4mrkPXou7BjY+p
 baZQynaogbxchx/vZfbaZJ45rkM95s5mf/VfMQqHSrh6o0b2z7vHi2Uq4BhmhTSl9Ae8VCC67A
 AAA
To: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, peter.griffin@linaro.org, kernel-team@android.com, 
 willmcvicker@google.com, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734428445; l=2295;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=aqXs/GouKrhkgUshCq7lvESEEVCZFwMG74JU0NNq6zY=;
 b=V0N28bPBxuwqNn8Aji3OUsPBTYyftNw2zGFwhrQtFnRXAbFk6Vu1sP/bEGYpyY70C20d7sHhs
 +kce7NAcQ6WB7fLRsit3nSg+U5MV6iSAwYQfNKjAq0WnWq6fHwq51BH
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The samsung exynos mailbox controller has 16 flag bits for hardware
interrupt generation and a shared register for passing mailbox messages.
When the controller is used by the ACPM protocol the shared register is
ignored and the mailbox controller acts as a doorbell. The controller
just raises the interrupt to APM after the ACPM protocol has written
the message to SRAM.

Changes in v5:
- fix dt-bindings by using the correct compatible name in the example
- drop redundand "bindings" from the dt-bindings patch subject
- rebase on top of v6.13-rc3
- Link to v4: https://lore.kernel.org/r/20241212-acpm-v4-upstream-mbox-v4-0-02f8de92cfaf@linaro.org

Changes in v4:
- rename bindings file to be based on compatible: google,gs101-acpm-mbox
- specify doorbell or data mode via '#mbox-cells' dt property. Update
  driver and introduce exynos_mbox_of_xlate() to parse the mode.
- s/samsung/Samsung/, s/exynos/Exynos/
- use writel instead of writel_relaxed
- remove stray of_match_ptr()
- Link to v3: https://lore.kernel.org/linux-arm-kernel/20241205174137.190545-1-tudor.ambarus@linaro.org/

Changes in v3:
- decouple the mailbox controller driver from the ACPM protocol driver
- address Krzysztof's review comments

v2:
https://lore.kernel.org/linux-arm-kernel/20241017163649.3007062-1-tudor.ambarus@linaro.org/

v1:
https://lore.kernel.org/linux-arm-kernel/20241004165301.1979527-1-tudor.ambarus@linaro.org/

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Tudor Ambarus (3):
      dt-bindings: mailbox: add google,gs101-mbox
      mailbox: add Samsung Exynos driver
      MAINTAINERS: add entry for Samsung Exynos mailbox driver

 .../bindings/mailbox/google,gs101-mbox.yaml        |  79 +++++++++
 MAINTAINERS                                        |  10 ++
 drivers/mailbox/Kconfig                            |  11 ++
 drivers/mailbox/Makefile                           |   2 +
 drivers/mailbox/exynos-mailbox.c                   | 184 +++++++++++++++++++++
 include/dt-bindings/mailbox/google,gs101.h         |  14 ++
 6 files changed, 300 insertions(+)
---
base-commit: 78d4f34e2115b517bcbfe7ec0d018bbbb6f9b0b8
change-id: 20241212-acpm-v4-upstream-mbox-948714004b05

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


