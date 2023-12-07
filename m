Return-Path: <devicetree+bounces-22707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DE980888B
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 13:55:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71A60B21BD2
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 12:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 438C53DBB4;
	Thu,  7 Dec 2023 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="frMcO/nW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E790D5C
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 04:55:04 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50bfa5a6cffso732844e87.0
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 04:55:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701953702; x=1702558502; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JA5daNbyCgwvSSjCzYxa9vhAfMiSd1k1ygkW4K36+HA=;
        b=frMcO/nWF4DLLzVNQsY/qbLRXyYtOtyXGSUta37YDdqoD/D+52KWAGVmgVytNOCX/F
         IVgP4e20n6ac5Cuyj3cT5lJbIbdinThLBTbOtK5gCXjVQ31iHcqzVj9LCVku9SVOX429
         T8hZpqSihA0gwyGX2B5RBeNN4wpqme2A+Vjmnw2fjnTWPgaKDOLZXK2azPZN1tYhQQUP
         0/cO5nPUQwYeZXMj7BZQuksCzO+oT7nG0yx71jFqN5XgWH/6QS+c6yoj3ZDuEIf9Ddv8
         ttHZssy2rSHmfsv1tp7pkI01Mwr9Yd5ud1Pd05Np8NKdYOhAIXGyaC6NOAMvr74ni6oU
         l1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701953702; x=1702558502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JA5daNbyCgwvSSjCzYxa9vhAfMiSd1k1ygkW4K36+HA=;
        b=GOlbSlxLfMWyZV/Vt6MdhJiQ0W79pd8XjlZyQWjtLGc3a5iD6yhjeg8nE7NK/uSOht
         A6Qhytotc1Xniw1AyCD4o6IlYo2M8fVp+IJKtD7ucxqiDVpuK3gnQ/bjUMmEqEJF3+v3
         fJY6fZiPbpJ9jG7gPpruclCcnvY7lu1+uwdgpT0RKKCo7rZobeKGq7rDSJbd89FoXKbX
         OJdigpN/g1jMyhFMA8PFoUlt41ofBRYtl9qcCdQQViFZeI7m+LjV+MuvOrfvt5t9A9Gz
         ECxHGKQODpo9Xx5Yw9F8FvRKzBA2kSZjq3+RvI/GOc7VImrqzOPxulO4XXYtf/XC05ZJ
         hcqQ==
X-Gm-Message-State: AOJu0Yz2NszO3iM+dLbDinrfC4aaVAXhR73/u07azy/++O//LuJhvuX0
	ldP8S8Vlx2K+eNLqC/euzirT8Q==
X-Google-Smtp-Source: AGHT+IGViRtvlpdiCs1SPsFLcYgzGmJHBhF3Is5KUCBEwYegCA67nn8Q3E4ww4emr+dFf1lSoaEOAQ==
X-Received: by 2002:ac2:58fc:0:b0:50b:f084:7c8f with SMTP id v28-20020ac258fc000000b0050bf0847c8fmr1365742lfo.111.1701953701726;
        Thu, 07 Dec 2023 04:55:01 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id cf30-20020a056512281e00b0050bfc6dbb8asm163659lfb.302.2023.12.07.04.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:55:01 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Clark <robdclark@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	freedreno@lists.freedesktop.org
Subject: [PATCH 0/3] ARM: qcom: drop 32-bit machine Kconfig entries.
Date: Thu,  7 Dec 2023 15:54:57 +0300
Message-Id: <20231207125500.3322229-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Kconfig for 32-bit Qualcomm arch predates DT and multi-machine
support. It still defines ARCH_MSM* types for some (but not all) 32-bit
Qualcomm machines. The MSM_IOMMU driver has a strict dependency on one
of such kinds.

With the DT support in place, this has become obsolete quite a while
ago. Replace all 32-bit Qualcomm ARCH kinds with the single Kconfig
entry for the workaround required to be enabled for some of those 32-bit
platforms.

Dmitry Baryshkov (3):
  iommu/msm-iommu: don't limit the driver too much
  ARM: qcom: drop most of 32-bit ARCH_QCOM subtypes
  ARM: qcom: merge remaining subplatforms into sensible Kconfig entry

 arch/arm/Makefile          |  4 +---
 arch/arm/mach-qcom/Kconfig | 41 ++++++++------------------------------
 drivers/iommu/Kconfig      |  2 +-
 3 files changed, 10 insertions(+), 37 deletions(-)

-- 
2.39.2


