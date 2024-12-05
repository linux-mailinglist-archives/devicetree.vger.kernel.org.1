Return-Path: <devicetree+bounces-127634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DC79E5D7D
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:41:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 957EE16ADF4
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBD162EB1F;
	Thu,  5 Dec 2024 17:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BjAd+k/z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DC4224AFE
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733420503; cv=none; b=fi9fkJtufotGc8FuL7USEQsBIO7ro+LfIKNZd6ObgTOGLlDNrajw3d6Y35bf1IgeqFLWycVU2w7iv/MoVjyTYv8TnGNJVDp1oeOx6PhEYLa3o56JcOT7WAERD5FpJYo26E5Czixm7N+lsYeayfHKj6ssiKKwvwOr3cT8Fg6Hhjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733420503; c=relaxed/simple;
	bh=w7e0/IyXpIggJ8VXljhBP/mmkdf4tDpn/Mub91QUKx0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mls7iLglrmL9KwkQFEvqrwoVlRqvb/pfwF0nMT/dZSBRas5lewQkBh/CHFLyjDjvxNt0LdS5WmF97IWFStZ9sA53Sgm+r0q3UGA735tq2+P+sMgPJgNlvLYcQ54KVNQTKEMpAJ1eb1zy7i8cFEraowul93DuOi1+K8w+dvPZw4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BjAd+k/z; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-385e1f3f2a6so688213f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733420500; x=1734025300; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v3MPhJwBD5oTf6iFoKflaMZpBPCePKADttJt9GkyJFE=;
        b=BjAd+k/zGtBX/rCrz61pDYfSHeVcLopqaIgoFkQjmI2hWJmVHb4cVeqzpHLDa9Pkij
         zyvO3Hatsq6pcQJXtFeZuN6JbiKjJ9brAHydK72cmjTHTrF2rNnIDVn5zTw8wl8OVOrD
         GR07sHC9xHryyUe/g1IdEZI5d/liZF/uJkze/q6SV63AWdgDHt0IoCxcI4m+isNos7xa
         I9TKt5ofuKYqEbY7VL3zTeYxVzLlOjdUk7ChmDhURMs6dEG+89tDX08fRF+lju/It9J3
         nQUg7P+ZCrYVj/vjdwmbexGHHnK2xoc0ZZBbg3/FKtTt+yyBg0xJ4sdz7TIe/8V9x97l
         L1JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733420500; x=1734025300;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v3MPhJwBD5oTf6iFoKflaMZpBPCePKADttJt9GkyJFE=;
        b=SiKjqiBejteXfxGjUiwo6VCv/JX9Dp7R+q62KazRWtDMjlKYIohVUSRqJ9+2TPSEfA
         gTvhw9+/rUCZT16dDKt2hb5dGotUhZRyYArapDghlXWfu+dnVt9dCgDlcXJHPbyD2Y7+
         STgU7UVfghSKAJSIs/A6Adhnn0cty2kI4nqcDZHWOqrYaxAsIKRdZWgE91dYVN2GL2Xk
         mYvTVbq7ZKWW+QUhrwPhxUpyANk6248H8a76/oFcz0Zokvl6sGpVnrK0X3JBsgNxTNzf
         MGBhpDkLMFmvuTvqn11Bw3ext3g5I+mpsFtZCIvyNoBdyO4GycFPSc9O4j0C5RP9svQZ
         FkIg==
X-Forwarded-Encrypted: i=1; AJvYcCW5nLJ5QxXDNFTz68VFpk1P8iHYkxd/ac1yKE9LjwmNtEd8CvzGU2VTiNmuv/fSNMmmOIN7PGOye2uS@vger.kernel.org
X-Gm-Message-State: AOJu0YwAtY5/W92JbXKqYDFodtRYZonk4U/Sv1LPdU1PX3no6x0nyXdY
	XyRpah2smrHd5XAb87UbX2E5jyHWepTG5L7K9p0ETONF0spfin0DU9aFM2CLgY0=
X-Gm-Gg: ASbGnctWpbCza+U/jfCzUYQ6GiuFEjKLzpIy/pXRRoDL3KeiXroNL2MDij6UT7LqJUV
	gueJ0aVf/Cia2qvopWH6eoUkuVOksQ36rdaogsKnKu7iH/gjorVeBd4at21kmWKpmZH4rPNvfEw
	SdJP4IDx5c3ZDRSG1Wcu75IAFp0ByzQ2J2nkYkCnQI+LdZJREahE6ch8SPBrd18wcYn1c7wOk7e
	09U/yt3jkkKn56KKUJ3HuIME6sebbWS/xGZLHKyaE15NWpmRCqmVnx9yTswSA/JKXNoPk8+2jIJ
	NT9wkTJwEcTbqHqNxvHXV7DfqaOAZ318
X-Google-Smtp-Source: AGHT+IEBZW6n47Yt+s6/TKyzpIN2ITI79WuAEcEJdI/9mAZaVb2ao49SofvZn0pUcMMqVpV+pvnJ3A==
X-Received: by 2002:a5d:5f45:0:b0:385:f607:f18a with SMTP id ffacd0b85a97d-385fd435f13mr9178585f8f.55.1733420500330;
        Thu, 05 Dec 2024 09:41:40 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da0d6961sm30318525e9.12.2024.12.05.09.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 09:41:39 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: jassisinghbrar@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	peter.griffin@linaro.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 0/3] mailbox: add samsung exynos driver
Date: Thu,  5 Dec 2024 17:41:34 +0000
Message-ID: <20241205174137.190545-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

The samsung exynos mailbox controller has 16 flag bits for hardware
interrupt generation and a shared register for passing mailbox messages.
When the controller is used by the ACPM protocol the shared register is
ignored and the mailbox controller acts as a doorbell. The controller
just raises the interrupt to APM after the ACPM protocol has written
the message to SRAM.

I mark this as v3 because it is a continuation of:
https://lore.kernel.org/linux-arm-kernel/20241017163649.3007062-1-tudor.ambarus@linaro.org/

Changes in v3:
- decouple the mailbox controller driver from the ACPM protocol driver
- address Krzysztof's eview comments 

Thanks,
ta

Tudor Ambarus (3):
  dt-bindings: mailbox: add bindings for samsung,exynos
  mailbox: add samsung exynos driver
  MAINTAINERS: add entry for samsung exynos mailbox driver

 .../bindings/mailbox/samsung,exynos.yaml      |  70 +++++++++
 MAINTAINERS                                   |   9 ++
 drivers/mailbox/Kconfig                       |  11 ++
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/exynos-mailbox.c              | 143 ++++++++++++++++++
 5 files changed, 235 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/samsung,exynos.yaml
 create mode 100644 drivers/mailbox/exynos-mailbox.c

-- 
2.47.0.338.g60cca15819-goog


