Return-Path: <devicetree+bounces-62042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A57E8AF877
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 22:53:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 67940B2908A
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 20:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0016143879;
	Tue, 23 Apr 2024 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D+ha/ERu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F059146D46
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713905434; cv=none; b=BM6sLNvxDD6RI3yCeuVm6q58ghQGLLElBxINkuEZZkXWQ0nXICVsHnsUJoMqzrrUsbSItjNoFUNSQ4ti5mi72Q+a8B+LWVizKkNp8tPSFaI5yJuhRod98kp5P7hOBjRRSWx8x4T0c1kzBY/HQ1bis1fiZI7zwhmb0G3RJT7l2aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713905434; c=relaxed/simple;
	bh=PMGdNnxS+u6EuMG3EBK442Fl1ePQX3CaF6GlOMeIhVI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IedbQWBwG7TOl7Csfx2Hld35omByvai2LLa5m8BNsjd1W+zyxoN6wG01m7S/x3rytrBMmnk+S36N2x8w/AfCkPooJsXfztgQ3LplqcyWPMdb+gvQ7BmgjNRrd7M3isI3VAVJQ2uqmVtXLDoUM1jXihpYRD+VBErVKR5XHsmsVkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D+ha/ERu; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-41a72f3a1edso20061335e9.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 13:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905432; x=1714510232; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s/GoVzExBpe8QxX9A9OVe1Uavi5SgYLv/AxKVNUl0KE=;
        b=D+ha/ERuZPze70axK+sIkgjvR2RQnq886MFd5toHxCObFk5521BzLv3dedKHxmIBkJ
         5o7Be0dzbDoIKoWL/mvrKwc4Hd9gsrnCmMTn29ossR1F6+TcvRx2w4KG5BGYB/rZRd3s
         +t2N2N2WB3IZpO2mOzIX7I92LUgSN6A/nJ1l7rW8FaEB8qGov03UbjZkpPEyy7q8OA63
         AlVF/xLAuWThWIRtLJo6cCAtAsRGaJP0elhUEqOEvxcaylIPLLqDvKFn/cqUavU4ZF9V
         Zu6BNQam9ZHm8ZyaKA5h5g5XN8f5LB1/gqOJVeCvO0jTcau17xvgCMnQh7zE4+OrIZQT
         yuFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905432; x=1714510232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s/GoVzExBpe8QxX9A9OVe1Uavi5SgYLv/AxKVNUl0KE=;
        b=s8pZw21INOLgd2zrvXAqPCRe+X3Priw86OdTgxzW/fVpOmY1CFImFwEwO8XjIfyHOg
         1nwA0pZVZO+9g/LW5SDc2J3tHiv2vy4w+xgvO7J2dBCb77acyqBc0RlgTMudF4TDwvqu
         kcpOlcQqtUdvHgzHB5Pu2ZbotNub19hIhuiL+p1X6Zj8Z3NY4I0DeIvLzq0yYqX4qAyT
         BKHAmorgy10azm8IPUCPohO95Dwb/VBT78ESUxh5Pz+NjNwLwkygig2vnPA5+Q4MKxKk
         bGXUYF6tdwJYDQVwcv9eHym7TP+26la8+5IiFNXYMLk7byAqnXVdZIVYQ6DSnyIax/FS
         ABhg==
X-Forwarded-Encrypted: i=1; AJvYcCXK1/UxxoP0+XmGLLlCn0mClyII2PpP/tzwE4vB8T7YYpikcTo2er2ikuLnAF1/u56oNMCDn6AFiblNvduzXTdCh84/6gLs8P8i6w==
X-Gm-Message-State: AOJu0YyX5jyAHAfvR5SaczF6rbaDI54DMSln+tMJ4eXjvGZSKj5zm559
	awzqrEBLuToeQlQHkle1FRdBbCLOCh2PDiUNQtIIbSA+I1cJQeh4lGMbO3SVX3E=
X-Google-Smtp-Source: AGHT+IH6z+0zlU25050wMvD0vuxotNnh43coyHQIMqF5YmCpBQNXBCfzRnt18Ll4b9pvC+KY+bIGQA==
X-Received: by 2002:a05:600c:4590:b0:418:f991:713f with SMTP id r16-20020a05600c459000b00418f991713fmr263623wmo.23.1713905431899;
        Tue, 23 Apr 2024 13:50:31 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:31 -0700 (PDT)
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
	James.Bottomley@HansenPartnership.com,
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
	Peter Griffin <peter.griffin@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 10/14] scsi: ufs: host: ufs-exynos: allow max frequencies up to 267Mhz
Date: Tue, 23 Apr 2024 21:50:02 +0100
Message-ID: <20240423205006.1785138-11-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
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
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Tested-by: Will McVicker <willmcvicker@google.com>
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
2.44.0.769.g3c40516874-goog


