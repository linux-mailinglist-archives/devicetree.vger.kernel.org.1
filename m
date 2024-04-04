Return-Path: <devicetree+bounces-56322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F69B8987C7
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 14:33:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 16F7CB2AF85
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41AA7136662;
	Thu,  4 Apr 2024 12:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cdnR94Ie"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8372513664D
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 12:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712233656; cv=none; b=hfOnFTl7bN0VCOkO57WlNMhkxmatCnlwUSCTcwqXAPpKRopV4KvD11lFhG2HGfeM9RNq5QqhEQJQXIJgNomu5PclFnLMO/VwYv3O5a8/eAkkCynwszWwmPH8nLZvMWYjV0FGHm586I1JFmvm6H70dl09HyCs8RxpGQTVjE1mg98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712233656; c=relaxed/simple;
	bh=6E4PP5FfeLNXR6MMeKA2Ut8lL0g1LcQs4+c0K06ivCU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P1tVpS8/44J+XDPfuq17DoY3bF6m5JiTtN+2cUJr6g+CGaVNTEiEDRPOdUKHdPmsiKDBBbODnTT4zAFlJr9nuX2M8WFW4ULHdesT93xZJXQ0Tq+2jeeTr6k5gA7IIMuY6wTYn8ydjpzhABBEWK0rRBlHf75KnLruimWcklxWka4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cdnR94Ie; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4162c11acf7so1654665e9.2
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 05:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233653; x=1712838453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BekuFHDEQz3MItNlFSbu6RpX09gKsg0FByp3fiEppHo=;
        b=cdnR94IeBlsUbQb8jyNe7g2mSQ/NXfeR6aUnmb+mGuScdAiefR0QNooz2xyyvYKY8S
         m9VmZUa+VbjP8RXKfCHtR+ZNcrcVy1W73UWVIWtmpq2fpSo5+2TkedmT1JPU10xy4zx4
         YVd1fHdffQ9BEIVUqf16OYPxEox/CYkaOsruHNQzUSFAWKFSXs0BGx6wm5WZ67MjDyeS
         +BRc6RKUefTq9cn0FHPctDESkjg1/cb0tlBLv8jGdL/Lpzv5UM+D3iNuj0vWBWGR1hL5
         lyl2mSlnkdqP8x/eK3GKd4PIu8kn5YrwVvGOir2wBlJwWqfXxVzyitTrJQdwJdBVLTtN
         3qXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233653; x=1712838453;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BekuFHDEQz3MItNlFSbu6RpX09gKsg0FByp3fiEppHo=;
        b=G/SKgLxjl4/S9Ocqj1iBIdj7HsdspyO/KWoI4M3Izv90AzpaeVB813MAuX706MVAFG
         j9tOLEaK1Hu6yDQ6fw1M1U3fnybFxRfPvPf1soK7uvZLyF2Jlvb0K0NO6keBsOlZ+LHc
         byU0vXHqRr6Xj73nQU1Ez+JnH57Evw/dFY8gccV+eJVtb/FxN1zzDpkJSvMk1OIMn4m5
         HZZajKTt4SW6IJvnnXr54ZU6BcK/VyPb9ke9m3yzhizMfLHXFyoF0krnn2J3OwkW2zUQ
         8MsZQo28EuxC3QAE+DCoFlaGisz3M1tyLrHNW+mVOZdx5RpVrRNz2vYkBZ48d1koK5Da
         fSxQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/fA5LDUxb+Vx9MMEP1ELBS8+Mm3F4Knn8taoUJHHOrntLaRxKo+aUJir6YN7QxzSNpB/w0eW79rhyRoXcGIhPZwQPbbwJx63u/Q==
X-Gm-Message-State: AOJu0YyBIMYxQhR9YuNP7RWLU/jjtHOzJti4lNuTJ/D2freCHVQjdWz3
	C4hpA824QWxXCHA9uoD1aEAsr4BrYPUCXL5mN9OuBYUvn7lt+oSDysS389ATe08=
X-Google-Smtp-Source: AGHT+IHo0UA4VkLq9YNMWVrdRmiVEAsMxBZeIPEoAivlBSwwv6+wNOZwB+W4FPP8qAuWikZ3EcwZ2Q==
X-Received: by 2002:a05:600c:54ef:b0:415:533b:1071 with SMTP id jb15-20020a05600c54ef00b00415533b1071mr2319673wmb.19.1712233652986;
        Thu, 04 Apr 2024 05:27:32 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:27:32 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	chanho61.park@samsung.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 14/17] scsi: ufs: host: ufs-exynos: allow max frequencies up to 267Mhz
Date: Thu,  4 Apr 2024 13:25:56 +0100
Message-ID: <20240404122559.898930-15-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Platforms such as Tensor gs101 the pclk frequency is 267Mhz.
Increase PCLK_AVAIL_MAX so we don't fail the frequency check.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
index acf07cc54684..7acc13914100 100644
--- a/drivers/ufs/host/ufs-exynos.h
+++ b/drivers/ufs/host/ufs-exynos.h
@@ -116,7 +116,7 @@ struct exynos_ufs;
 #define PA_HIBERN8TIME_VAL	0x20
 
 #define PCLK_AVAIL_MIN	70000000
-#define PCLK_AVAIL_MAX	167000000
+#define PCLK_AVAIL_MAX	267000000
 
 struct exynos_ufs_uic_attr {
 	/* TX Attributes */
-- 
2.44.0.478.gd926399ef9-goog


