Return-Path: <devicetree+bounces-205493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A0CB29323
	for <lists+devicetree@lfdr.de>; Sun, 17 Aug 2025 15:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EE1316DAF7
	for <lists+devicetree@lfdr.de>; Sun, 17 Aug 2025 13:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9ED7242D84;
	Sun, 17 Aug 2025 13:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="mfUsreZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F0423B61B
	for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 13:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755435965; cv=none; b=fZTWDhAcm7h+U2tR9d9Kf48Huo3YShdp3xDfgRrPeYAHXIqYjAvkLRhAmMNDm+np06ZsWZ1ifTUkT8GtotS/3RYZ8TqVS1DhJIKHEax/KQGFYmZgjZp3tTuhcBsAkcZHhhlcJ3KXqFC4Ae18c91ap300byy/KYHcDZPr2k/EQPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755435965; c=relaxed/simple;
	bh=3PVQz1Npck8Dwovy/OX7P/UR/4Jfxuhm/zBlVDMlZZw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=NFpWFgAO7FbNPtfYGxjJVYtinHi5/AVWPD1WnTmU7sgh4dwn1hua5COOP7vvS8tiLwqZT5gZJaPjmsLkhuyKz2lwVMVowBSzxEYoJdMfvZj7sObIk757cBNcmDARIgaL1dGB1NNpoQBiwm+GGPXkTOvFuSWckXFXi2ovzKx45N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=mfUsreZ8; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3b9d41c1963so1584665f8f.0
        for <devicetree@vger.kernel.org>; Sun, 17 Aug 2025 06:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1755435962; x=1756040762; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+00MvInGtT/2ob9Rq8Xm3oOT1gPpF55RwkoNwuBCzSg=;
        b=mfUsreZ8VrW7YFhDwKFrIaVQdi++g2JN4tAf7o3zqt6SOm/CmMxhuc+PlPCXDWjQP8
         RiSP05NKSZTKkfVdLf2Sc8DpxVGNhMuOCBhxMARo/dN4EJDga9oMQale8LYZZtWdH4kV
         Tv+4Ni3UZ+Zt8wm1WaF2TI2WBvGwVkgTGQXztGJEEWbcn6pkRqtgT0lBgC+gMitaGWSN
         cstWN6WLZifJrYLYUflw+Wdq8IyoyesAhdiCRUx5UhakpqWZ/zCqbJ2h05Stolx83Aqg
         p2z5k1j2Gab8I9ZG9gGbKffMfq8Fxe1/ZdrYkXbXIIVtDUCd22vCE/at1FqbL1ruTfEw
         Zc6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755435962; x=1756040762;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+00MvInGtT/2ob9Rq8Xm3oOT1gPpF55RwkoNwuBCzSg=;
        b=UF99RiVGTbzkuaJ09+4Sd04lByl5f79ZEx4LNU86j5PI3nHNdNVmwQqfbp1qItm5OH
         bucu7YXfAZo62ZJiOn+R6SRNoaoHRCvNvUG6znXeHdQ1zzbTOz6gfFrcZD3d06J7mc2G
         nmIYBolpdSGCTfR/GKFVQnBRa63k5t5BaBTxBAjZ71RPNDAi+OpCSHez1lNwdFXtZTsn
         Bf/OqPEohsNdUlLYtL4Q6og0VUI6O770pPZ5uFkUiM5010ciBlIdnRprOKcTibnjQ38q
         fP83hcwPhUYxm72mOzJwyW5U7nv8zldEZK8yEircxbMmOgm7GaMNQ6PstWukQkhZAsDT
         tGfg==
X-Gm-Message-State: AOJu0YwPGWpfSYPpo1WIazGp0FQE5cLKpFfsN1MZxRpNt+4dnoyn1be3
	QA08l0zoYkfX59jSgUIkythf50oeuNGg0iAWE8ZOkXxc/ov1nZ6cBAPRp8H0/1pFOiM=
X-Gm-Gg: ASbGncs9M933tA1h0WYHhHzmOx/CzVgRMOaT7fKKnPS0198NvbeugvvI+80C7t4DdnC
	y6XOHTstjpMD7z7JO2dLdGUrVu/XVyBO/mPRgCRPJhj2/jVO6lmtXPIv780JJkgvER7NWGDknsq
	4oPhwq3nF/Kw704ooUCGJcXYsC4WW8ExdER7cHGEgKYjVKMKt1xovgG0FFh7rW16cNMFRAUCcVJ
	9emxavCdTCKmw2/fD7wOrLWfwBP+L3NpPh56CD0wPt/wkR5MPztTN4A1cO6uBryHLy4a962TlXp
	3XKUGdyQjZbLZoj9ZhdTZqYFLVEl32EFXr0olC3gZuyV0uVEJ/ULcyOL9Yv//pryIXOQe+5vI/+
	mifY/T/OIVkLWivYQUwOdLkalpylrzfeQ9K1I
X-Google-Smtp-Source: AGHT+IEBquoYzqH1BGvf/UZy7kHktiJyWv/AzngI7aknei31lWrO45ZcaBJaFyvTvIKsx0U0NI0g2A==
X-Received: by 2002:a05:6000:4287:b0:3b9:16e5:bd1c with SMTP id ffacd0b85a97d-3bc6a55e8bfmr4038608f8f.31.1755435961484;
        Sun, 17 Aug 2025 06:06:01 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:b4c0:f0fd:db4c:31dd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3bb93862fe7sm9235729f8f.64.2025.08.17.06.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Aug 2025 06:06:01 -0700 (PDT)
From: Aliaksandr Smirnou <support@pinefeat.co.uk>
To: mchehab@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Aliaksandr Smirnou <support@pinefeat.co.uk>
Subject: [PATCH v3 0/2] Pinefeat cef168 lens control board driver
Date: Sun, 17 Aug 2025 14:05:47 +0100
Message-Id: <20250817130549.7766-1-support@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for the Pinefeat adapter, which interfaces
Canon EF and EF-S lenses to non-Canon camera bodies. The cef168 circuit
control board provides an I2C interface for electronic focus and aperture
control. The driver integrates with the V4L2 sub-device API.

For more information about the product, see:
https://github.com/pinefeat/cef168

Changes in v3:
 - removed vcc-supply property and example
 - fixed incorrect type in assignment
 - fixed cast to restricted
 - removed unreachable code
 - changed comparison to NULL
 - fixed indent in commit message

Link to v2: https://lore.kernel.org/all/20250811213102.15703-1-aliaksandr.smirnou@gmail.com/

Patches:
  dt-bindings: Pinefeat cef168 lens control board
  media: i2c: Pinefeat cef168 lens control board driver

 .../bindings/media/i2c/pinefeat,cef168.yaml   |  48 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 MAINTAINERS                                   |   8 +
 drivers/media/i2c/Kconfig                     |   8 +
 drivers/media/i2c/Makefile                    |   1 +
 drivers/media/i2c/cef168.c                    | 335 ++++++++++++++++++
 drivers/media/i2c/cef168.h                    |  51 +++
 7 files changed, 453 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/pinefeat,cef168.yaml
 create mode 100644 drivers/media/i2c/cef168.c
 create mode 100644 drivers/media/i2c/cef168.h


base-commit: 2b38afce25c4e1b8f943ff4f0a2b51d6c40f2ed2
-- 
2.34.1


