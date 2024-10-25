Return-Path: <devicetree+bounces-115657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3939B038E
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:14:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1DF1D1F214FB
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 13:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8B601CDA36;
	Fri, 25 Oct 2024 13:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R4EYUh8R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876511632E7
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 13:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729862091; cv=none; b=lNIZ+b5/yOvv6JKSYfusf7R10k6LtxbtbfmOdlTa4D57dh9YJSJ7clRNGjyXev+oq4VEfC9ZaGeks/hlydxC4p7o39U+pgyrTd0VlkSrReYqBVtZ6lup4+9t7CIkolhmdWcrJHLmvdMXd0WEorDZFZ9eY+YBBN9wc/FegpFQhTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729862091; c=relaxed/simple;
	bh=ZwDNgPLe3JseppPOXSDpV9E+7gvgETuHHerjXax3kFk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HozOH4HF6dAtLBjMKd8U6630hDbpNbal731G82FFKWyHrEQhnL+6tHOPUkrZ8fNJHQMwGqoBs1NZv5eUl+2NPYJXwwsBmzzcoXs97urZEpFIiksytCYBHIr9c4Qh5jhJSosS9URplRkq2AtAjiv2OBz9YxGc2fmbVZOK2CZwggA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R4EYUh8R; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43161c0068bso19984185e9.1
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 06:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729862088; x=1730466888; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6vAbSDgK0b1SDTMA/GPAVlnGTwcx5lchK0srsbvvoMo=;
        b=R4EYUh8RCBfXSUxtsxryBMFdYrhAU17tE4Updv8CoV1AUxZCr9d1yQWTLLlXHiCkq5
         nxtPoGwgn0Z96BcVhgY399Kfh9arN3SCtW5wVBtL5BUPaRWXvZ6vMdFc3vzi+D3ZTEeu
         cttF/q5WM8S/57x+cXg6WOz9x1rsb30IWZSx2s58EZ8T90Ht8v1D2CkIq/pVcsG77YyU
         dTDiUpbDpOyQb/wu0QftoJVZQs4NwNY9JoVGBG9bOIijiCnzfAuJg/Ux66McgBH+NUkV
         N24759cQA/q9tmFJ5qn6C38/vg2JWuoKjjA1ncvKMY1H0f4iDR6CX2b6rm8deLhODN0i
         2brA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729862088; x=1730466888;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6vAbSDgK0b1SDTMA/GPAVlnGTwcx5lchK0srsbvvoMo=;
        b=kElK8EUUkG7mPSyqKBYX+Pf/v7bqJ8tLGuZF0cdmvLQCAmNwm727UPOGJVWiuQ5p4+
         MINrNklEo9IqkAKi+vTWL5r1xnGMocGcDbBo+63gNV2tUOmV7eQ11muQAsQOAZwl72+M
         2c4tKWC/GYdtbIegbYgjmx9xPLkh84GWG7m4mV00VoGKwbceEvTINL0MMTGtF4jOmHi4
         N90vdbj/H5QID60OFeRfCT8oVusbW3nVztcp0192Aqqb4lyxFNQYEwgE2pTQvh/pPKqw
         sR2eJFXmDSJGbG2Z/7IXRJEoAZd3W4/0LT6WJRW4ATqRg1jxGk8H7hei9RhJGrMMR64b
         N08A==
X-Forwarded-Encrypted: i=1; AJvYcCUK6+RIuQCWGSfVNmdLZcCgomkukanJvveErvOQiqgxcd7MHqgZ/oFfNVl8YOAnAR84XJI9w9eZUJqc@vger.kernel.org
X-Gm-Message-State: AOJu0YwjtPBdGHuwQSPK42mTRyaXxPytdW/povfrcjmC9MHv1bufoG2m
	PBSp2ZJPvVIKhdcE/0OzJrod6HthimVMVxtEIXbKCKHfQJR6KR9Lx6XC96eI2Bg=
X-Google-Smtp-Source: AGHT+IFHcTwJLU6dRFhjx0/7uuUyXfb0Sw0nQJJsfub37C8aAlLQ3WhmzctGx6Mxs5zTAXbGyd3rng==
X-Received: by 2002:a05:600c:3b90:b0:431:5ba1:a513 with SMTP id 5b1f17b1804b1-431841fdca7mr89863325e9.10.1729862087824;
        Fri, 25 Oct 2024 06:14:47 -0700 (PDT)
Received: from gpeter-l.lan ([145.224.67.228])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4318b58b6bdsm47616685e9.45.2024.10.25.06.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 06:14:46 -0700 (PDT)
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
	ebiggers@kernel.org,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 00/11] UFS cleanups and enhancements to ufs-exynos for gs101
Date: Fri, 25 Oct 2024 14:14:31 +0100
Message-ID: <20241025131442.112862-1-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
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
inside exynos_ufs_config_smu() which fixes a Serror in the resume path
for gs101.

Regarding feature enhancements:
* Gear 4 is enabled which has higher speeds and better power management.
* WriteBooster capability is enabled for gs101 which increases write
  performance.

In v2 of this series additionally I've added following patches 8-11 which
add

* Clock gating and hibern8 capabilities are enabled for gs101. This leads
  to a significantly cooler phone when running the upstream kernel on
  Pixel 6.
  Approximately 10 degrees cooler after 20 minutes at a shell prompt.
* AXI bus on gs101 is correctly configured for write line unique transactions
* ACG is set to be controlled by UFS_ACG_DISABLE for gs101

In v1 I mentioned the phy hibern8 series in [1] that is still under discussion
however further testing reveals hibern8 feature still works without the additional
UFS phy register writes done in [1]. So this series can be merged as is.

[1] https://lore.kernel.org/linux-arm-kernel/20241002201555.3332138-3-peter.griffin@linaro.org/T/

regards,

Peter

Changes since v1:
 - Remove superfluous struct device parameter to exynos_ufs_shareability() (Peter)
 - Add patches 8-11 (hibern8 fixes, WLU support etc)

Peter Griffin (11):
  scsi: ufs: exynos: Allow UFS Gear 4
  scsi: ufs: exynos: add check inside exynos_ufs_config_smu()
  scsi: ufs: exynos: gs101: remove EXYNOS_UFS_OPT_BROKEN_AUTO_CLK_CTRL
  scsi: ufs: exynos: Add EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR check
  scsi: ufs: exynos: gs101: remove unused phy attribute fields
  scsi: ufs: exynos: remove tx_dif_p_nsec from exynosauto_ufs_drv_init()
  scsi: ufs: exynos: add gs101_ufs_drv_init() hook and enable
    WriteBooster
  scsi: ufs: exynos: enable write line unique transactions on gs101
  scsi: ufs: exynos: set ACG to be controlled by UFS_ACG_DISABLE
  scsi: ufs: exynos: fix hibern8 notify callbacks
  scsi: ufs: exynos: gs101: enable clock gating with hibern8

 drivers/ufs/host/ufs-exynos.c | 126 +++++++++++++++++++---------------
 1 file changed, 70 insertions(+), 56 deletions(-)

-- 
2.47.0.163.g1226f6d8fa-goog


