Return-Path: <devicetree+bounces-109488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB015996889
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:21:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D36751C22FAB
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4115A191F7C;
	Wed,  9 Oct 2024 11:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BbffMFq8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A5C1917F4
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 11:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728472912; cv=none; b=OMqCDm9EvuMKtldXtowtg/Xs8tI+mXIIWeVvs4cySNce31Z/v06yrE0yJD9xLUbvqtUtWS62h5uYowEVod2EM2+aalrhj6sSsM5EBg4Htb81rwInxUj2cZYyrDtNp8WxFK9FbrKDIG32yNQPEA5Z9F4ELabMyhsUTXQrCooTFos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728472912; c=relaxed/simple;
	bh=8Ta2irAJVrZFbYoIJnnVMRr5FuTvKb6h0nr7nS2ZqFM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ftr4iSz69AlKiWUppi/FGjutJfx3HO/uKD4beJLNl9rWoZ0hg2T9LlLYfelNKZ1ggCi/hcDz8ySLx+Znml/Cq+6ZgKo0/wDdBRdzp/9UVCfPdrFV4jxjRYQFfxLpkpfFOuLMkkXiTqiL3qwb9Y4MM3A2wy5n6gIekU3b7QeWKu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BbffMFq8; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42cb57f8b41so89713325e9.0
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 04:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728472908; x=1729077708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w8bEMX39HCQ7oypxWwVa6yTzZiCgPg5rGUasi0elpSc=;
        b=BbffMFq800NiTAFBtMnXJz5xwy/BkiVTbbexynvvhl2p2jwSrSBFN9xEFW1VylLr33
         8GarsTABEQZF7FYlCBYd8tor4RMnVmdZknXPwvsD35E3xb04a/d8xkQKfH27x3cZbBM5
         KPJiiLYlC7JO/Z4oS4xqpViIUI8S86AXeYf3R2XVV6LDZBWghhV9dJcWr/O9EA4t0jFl
         ok23zZi7pVUAqi/5ZKO5lsdQpQxzDMJr4ouwU6Xm3NV4MuiVdGRCjulU8S6uWjUTz974
         tDnMVbPKKKSQ0N7qD9Tb8N4058b+hbh+x5IcLkgv7oyui6mx4QLBb4XKsOqlnsrSi5Vh
         h+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728472908; x=1729077708;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w8bEMX39HCQ7oypxWwVa6yTzZiCgPg5rGUasi0elpSc=;
        b=TutnAct7+Ei5YLdtSPuqm7J42cEZYs5SmJ1bQPq1+yZdQfeTnllEhzYhEO4wEo0Ds4
         93/lHxYExFyZGkGHFULbRxkruGocZLat8rci54xqjfhzhYGoPg6HQAHhnNFRMOC9nOXD
         N7RAnTbkwzn/O7b8oHV1rxX6kIJ7gyxaLJj/EIroGs5StnM907r80wkk/Pq0nd6BOisI
         3DZftJERSfYJyEmDSgRIKQOYZ3XrxIWUjgXUJn2su3jX0XVt3m7fTEwwsIeEJYBl35nV
         fVtaMyYzVSzCPKjuIIRg+6e3yZC8mq+UeD5c8K26cMaFaIsfukB27vclqW/NhBnVz71D
         u8Bw==
X-Forwarded-Encrypted: i=1; AJvYcCXxDmusDaZDs75v5t8zeEeHvWoaRGjy3mHKPy7yY9Af7SqKRUFz8zlyzgDzUXmgV+2TwwzQnbS7DCtJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwQXfxkH1E0FHiT2eU0/3MqyPCIKJkvP4LqRvJ/yRy1tHNwhQmu
	mPs6xTv3idW09vtv6kN8k96d95hVx9SmDInWdDX8V3jXdAvqYjQO4nBZZs/fxDc=
X-Google-Smtp-Source: AGHT+IFlsSsUBahib/8ngPAeagyTEBcN/biFoRNJET9VKN3gwYg6BtDzYVe/x/rkxByCtgvcRZdRrg==
X-Received: by 2002:a05:600c:3551:b0:430:570b:4554 with SMTP id 5b1f17b1804b1-430ccf04213mr20828715e9.3.1728472908472;
        Wed, 09 Oct 2024 04:21:48 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.65.7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4310c3dcdcbsm12331445e9.0.2024.10.09.04.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 04:21:47 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: alim.akhtar@samsung.com,
	James.Bottomley@HansenPartnership.com,
	martin.petersen@oracle.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	krzk@kernel.org
Cc: tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	linux-scsi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 0/7] UFS cleanups and enhancements to ufs-exynos for gs101
Date: Wed,  9 Oct 2024 12:21:34 +0100
Message-ID: <20241009112141.1771087-1-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi folks,

This series provides a few cleanups, bug fixes and feature enhancements for
the ufs-exynos driver, particularly for gs101 SoC.

Regarding cleanup we remove some unused phy attribute data that isn't
required when EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR is not set.

Regarding bug fixes the check for EXYNOS_UFS_OPT_UFSPR_SECURE is moved
inside exynos_ufs_config_smu() which fixes a serror in the resume path
for gs101.

Regarding feature enhancements:
* Gear 4 is enabled which has higher speeds and better power management
* WriteBooster capability is enabled for gs101 which increases write
  performance

Note further patches in a separate series will follow to enable
UFSHCD_CAP_HIBERN8_WITH_CLK_GATING once the phy hibern8 interface is
settled over in [1]

[1] https://lore.kernel.org/linux-arm-kernel/20241002201555.3332138-3-peter.griffin@linaro.org/T/

regards,

Peter

Peter Griffin (7):
  scsi: ufs: exynos: Allow UFS Gear 4
  scsi: ufs: exynos: add check inside exynos_ufs_config_smu()
  scsi: ufs: exynos: gs101: remove EXYNOS_UFS_OPT_BROKEN_AUTO_CLK_CTRL
  scsi: ufs: exynos: Add EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR check
  scsi: ufs: exynos: gs101: remove unused phy attribute fields
  scsi: ufs: exynos: remove tx_dif_p_nsec from exynosauto_ufs_drv_init()
  scsi: ufs: exynos: add gs101_ufs_drv_init() hook and enable
    WriteBooster

 drivers/ufs/host/ufs-exynos.c | 73 +++++++++++++++++++++--------------
 1 file changed, 43 insertions(+), 30 deletions(-)

-- 
2.47.0.rc0.187.ge670bccf7e-goog


