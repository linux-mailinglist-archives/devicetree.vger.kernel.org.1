Return-Path: <devicetree+bounces-133117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C789F9469
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:33:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7C6C166479
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 264AD2165F9;
	Fri, 20 Dec 2024 14:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kvP7GSDb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271D521638B
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734705181; cv=none; b=h6gbPt7hA1n2Q08x0uuRq1CRbpLwQuXlGw6zvxC5hXYKEibYb48Ic4KNdTKTPd1tPqSdNnZP9yp449SKh1t29MJvuINJ+JkUsUdw0CzT8H1VYkFsfoW7jsq3rp8eNGD8eJZ23CjMgUNueXPlc2H9LZoFYyTmvp/+1ZwMyMtXIYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734705181; c=relaxed/simple;
	bh=kZ+FzEPGUMS4phZ2Jtk/FUZScTynx9S1UuCttKbGgSI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BzKaJsr5f03u0e+eIoapHAcesvKE73MVmtee76S/MBIfOumlD40gc/uoZGhhxe96BapbB+O2Fek8HqvY0tM6I6nCbsyxjyUnAOwiITHHVssoKni0wzaS+YHz74KmERYkFp2h/9JmwtK9vpUEwnm6WzZ7dzu0dOEQsnD3W/YYVK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kvP7GSDb; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-385de59c1a0so1291639f8f.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:32:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734705177; x=1735309977; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PJ1G9FJURC0vj+02+bBkZMtqPIlFDTc13cpNiilTLfU=;
        b=kvP7GSDbQyj5g78hSrga927FUGQvbzdtwS2GwOewckmJQvHNJ2q4mJNGK0TPcD1xHy
         XohVmLfFGmQptuC/HnrZeJnsi4VLvgT9PLpAcD0kR+n2IeSKX6QnPfk0/tNi+3CATK6Y
         hwhmyjA87cUjm5YnfYlJlyTtc+MmjVUdyWiqCHwCo3EoQP8pkkq5A9jW9QV7g2EsNEHn
         ycUr70Lf14NKr5sJdydq4sWHHJqCZW64i5ZGUtIgZrN3/o8oV3wt3+3IIHQ6uQpvbz+2
         NEZuKb+x4w3H9oojt/TffxBEsoknyLnmNwAug7sFVWJqGiPIQkM8UzOHO0GZeEQGqoeQ
         9O4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734705177; x=1735309977;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PJ1G9FJURC0vj+02+bBkZMtqPIlFDTc13cpNiilTLfU=;
        b=nUUJLI68Sd+sNrkikxO5l6lnwhpytm6ACCDB7df88cINxNtGT4Brm30kQ1M2+pYAWL
         /Ncg5cpgAkEe5SAzJqvUl5OdDyUPAIWSl3tGal1W1VCV5tgglKjGQbcLZwtHtBpoGVjb
         MsijfH3XowNE9uDOVUqrcOHKo+0Ukzk8TRQ35zx/cbLNKW+CvK9zSgJ36NcEYLy0jIre
         1NcqSN4YnaJyFe/0ff/Be1VbSw/aUiUxQhYIcaE6GJQFSnO4La7opdfWXJQ07meROmX4
         9YGzVSNBtIjYons4rZvZg8m7Cb0OkioQq4TlCH+QxrB/k2J2KsqDQnlTqUbJiACttZHB
         y0KQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRA+JCjehGJCDYlP5OX2BsMBWKnwFGMnFlrOHrLkQRddT78sIFMXTRpFp/9FUe2+CFadfqqai5tThk@vger.kernel.org
X-Gm-Message-State: AOJu0YwbqA3kgiTZwqRx0hXwN4lPEYSze4g6QLgFHCwkfUsixlkWfRtg
	14rOGYQHipvgVdSRk0GTtuqOLZ314UQhRwM8hwMBqwfdRCiIeyTZs45ybNLsi2c=
X-Gm-Gg: ASbGncuHQOi4qUESCu6IvwdRZ9eVOTk80e1ILn6ZFjGHqYuoA4kUJcdAkewtfgpsRUk
	C8ZsatzNw32xfR7bEQ7NYaiTKqLOUCFry8Pf6z0Bb5j4QmLme7kWuSOZWGqN83b1snyZ9+megW0
	geX1kCH6wuqAzKTSngXdZDiuR95oHcSgArPYF07KTz3TWF3vqk1M2e+I81fcHDmBt6Yq4/E8tJh
	ndDCZYuwAnUYWh8OJPRjc7zae+b4u0kdJB5v+986kX0psuFUExt+81+Xo4xOLzJNM6YuwtJkDTX
	h34XR4ZbdrNKOul55yJyQJ/B8pf+oVTXaQoY
X-Google-Smtp-Source: AGHT+IGT+SD3LglrI8lzDg2St6Rzhi0uZfTSjC4sOCIiRM/aFfnWVpMxZlH0WgmfXqA82J8sp1Q7tA==
X-Received: by 2002:a5d:5f4f:0:b0:386:3329:6a04 with SMTP id ffacd0b85a97d-38a223f5b4cmr3017171f8f.39.1734705177371;
        Fri, 20 Dec 2024 06:32:57 -0800 (PST)
Received: from ta2.c.googlers.com (130.173.34.34.bc.googleusercontent.com. [34.34.173.130])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c829235sm4140321f8f.15.2024.12.20.06.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 06:32:56 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v5 0/3] firmware: add Exynos ACPM protocol driver
Date: Fri, 20 Dec 2024 14:32:50 +0000
Message-Id: <20241220-gs101-acpm-v5-0-4f26b7fb3f5f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABOAZWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyTHUUlJIzE
 vPSU3UzU4B8JSMDIxNDIyMD3fRiQwND3cTkglxdAxNzSyOjxCQTM1MTJaCGgqLUtMwKsGHRsbW
 1AHcQTY9cAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1734705176; l=3939;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=kZ+FzEPGUMS4phZ2Jtk/FUZScTynx9S1UuCttKbGgSI=;
 b=yMaAPSs4Bon5tzS2JaDecaGvCVCJEdNL/EhW5qKtZqVzxAdmmCG82r0aPlO9FvRTDy+ZY5hjV
 kCUpU1JlK8qBuafy3FFdKW4+Gbcqss4DKi6Z4txnfv/QdMxYr47jg/E
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Alive Clock and Power Manager (ACPM) Message Protocol is defined for
the purpose of communication between the ACPM firmware and masters
(AP, AOC, ...). ACPM firmware operates on the Active Power Management
(APM) module that handles overall power activities.

This protocol driver provides the interface for all the client drivers
making use of the features offered by the APM. Add ACPM protocol support.

Changes in v5:
- depends on:
  - Link: https://lore.kernel.org/all/20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org/
  - it uses the newly introduced mbox_request_channel_by_args() API
- dt-bindings:
  - drop redundant binding word from the commit subject
  - remove extra blank line and update example with by complying to
    #mbox-cells = <0>;
  - drop Krzysztof's R-b tag as the example was updated.
- driver:
  - channel identifiers are discovered at runtime, use
    mbox_request_channel_by_args() instead of specifying them in DT.
  - don't call mbox_free_channel() for PTR_ERR or NULL channels.
  - introduce common method to init xfer
  - rename guard name from __EXYNOS_ACPM_MFD_H__ to __EXYNOS_ACPM_PMIC_H__
  - stop exporting devm_acpm_get_by_phandle(). We'll export the symbol
    once a client is introduced.
- rebase on top of v6.13-rc3
- Link to v4: https://lore.kernel.org/r/20241212-b4-acpm-v4-upstream-firmware-v4-0-3f18ca64f1b9@linaro.org

Changes in v4:
- rename bindings filename based on compatible
- bindings: drop nodename
- bindings: drop mboxes description
- bindings: remove initdata-base prop, and define it based on compatible
- bindings: move additionalProperties after the required block
- bindings: drop firmware node from examples
- bindings: drop unused label in examples
- bindings: rename node to power-management
- driver: switch 2 macros to inline functions for readability
- driver: add checl to avoid shift overflow on these inline functions
- driver: use ktime_to_ms(ktime_get()) to record ktime
- driver: use the default non-relaxed IO accessors
- driver: remove atomic handling
- driver: remove stray of_match_ptr()
- driver: move header in include/linux/firmware
- driver: make sure to, from are 32-bit aligned and count is a 32bit
  quantity before calling __{ioread, write}32_copy
- driver: reject IRQ channels (not supported yet_ at the top of do_xfer,
  instead of when waiting for response.

Changes in v3:
- decouple the mailbox controller driver from the ACPM protocol driver
- address Krzysztof's eview comments
- add ACPM PMIC protocol helpers

v2:
https://lore.kernel.org/linux-arm-kernel/20241017163649.3007062-1-tudor.ambarus@linaro.org/

v1:
https://lore.kernel.org/linux-arm-kernel/20241004165301.1979527-1-tudor.ambarus@linaro.org/

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Tudor Ambarus (3):
      dt-bindings: firmware: add google,gs101-acpm-ipc
      firmware: add Exynos ACPM protocol driver
      MAINTAINERS: add entry for the Samsung Exynos ACPM mailbox protocol

 .../bindings/firmware/google,gs101-acpm-ipc.yaml   |  50 ++
 MAINTAINERS                                        |  10 +
 drivers/firmware/Kconfig                           |   1 +
 drivers/firmware/Makefile                          |   1 +
 drivers/firmware/samsung/Kconfig                   |  14 +
 drivers/firmware/samsung/Makefile                  |   4 +
 drivers/firmware/samsung/exynos-acpm-pmic.c        | 224 ++++++
 drivers/firmware/samsung/exynos-acpm-pmic.h        |  24 +
 drivers/firmware/samsung/exynos-acpm.c             | 805 +++++++++++++++++++++
 drivers/firmware/samsung/exynos-acpm.h             |  15 +
 .../linux/firmware/samsung/exynos-acpm-protocol.h  |  55 ++
 11 files changed, 1203 insertions(+)
---
base-commit: 78d4f34e2115b517bcbfe7ec0d018bbbb6f9b0b8
change-id: 20241220-gs101-acpm-047922ab4654

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


