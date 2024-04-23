Return-Path: <devicetree+bounces-62040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 398C18AF870
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 22:52:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA85A286AD0
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 20:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CDCC146001;
	Tue, 23 Apr 2024 20:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jiKN3Tn9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0456142E88
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 20:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713905431; cv=none; b=XyPuhmQHPkUiVqLvm2AvDJbmfq6fgf/dwePPWl4z58QhUKwvzZccFZqUh8xuRlY6MwosX2bc83eN5HDWbrWtcK2aN4fMFtqIu8/r1NRfffiqzZxyWoRMfZImeGugVrOjYGqbyI1WtDPKbA9Gb5ov8wDjD8VYlZ8nQGu8P0II0Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713905431; c=relaxed/simple;
	bh=Lo00QN3orvBLO9CxiZxmwFW61cBpMvV5omccjpwyRtg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ai5gDphw9oIMJ4hEKWPiHVSA5a4o3SC0UDie6BmSAbdD4H1rjNt0WW/lAOEFnD/A9o+I254qU7TP/qo38wukkQ/lYs1i1QpcunZ40cKJASKcwWxsMObMep/oaeiZA4MypZ2YxDdv8dxIowtmRzg/0OUsqvK/5OiNktBhiizcp60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jiKN3Tn9; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-41a5b68ed4fso21756425e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 13:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905428; x=1714510228; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cGiBT+3rLHUSe0fCpI84iZd1Y9xr9GwhBK0cp1D0rYM=;
        b=jiKN3Tn9fDU6XxBk5bKDdp+NPU25Bz5JfP+g/kyIIItPRCeyF9VqR40QfXm5R+rd62
         dAyCSerkrBk+Y2c54Qca6ZnM3iKtIhxzJensrXuojNthYC/IoukvxTqu3vk4EvKaYByl
         UkddAXb3GOq4Bx2xUQ0iZyxb2P151jRnD/ucOqNbq9Mm3D6zvpm0hqKjf4PzYS6LHGsE
         sNPop05yYi0y0M/5c6xvvcNtB9aP9D9+/SnDQUEdKhNpfFTqAjF5QgQ4jnjNYXZVgrLw
         HLiY8M42hbzBtUeY6+Jo5p1lEgieJ5WdsjzB572660O6LIkGAlFwvnBaasF13tOzKd8a
         i+yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905428; x=1714510228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cGiBT+3rLHUSe0fCpI84iZd1Y9xr9GwhBK0cp1D0rYM=;
        b=Dk57Wq02SmDSxmTBNPXGNBW284QLzDcXPWGjtNBhtmDElVZStgB0jlGSWFR88q6/MG
         2WVYu7x+fFO9GJc/zzTynEd4sNBi1Wy5BiNDL+QWA4SnuqIef2rOPg7f5RSB79PlHgfE
         xlJUKNHizd78uPWli84BbzMo6LJ6KiYifDUV3G+vLpVIdEsDAznpKEudfJj3AOqArJIm
         qCHzUkIIiEpTkg22C7SZswKr1Q4/ijCNMuhxP/NwpYXpGFSN0xdc8sMP6vLTSX/Tfnwy
         oVXmOt89sd81cMHBwBI+g/yCXBXY8AgGCVB6AxSZfAl3DP62OhwKveVxPZ2pZxXD0gcI
         PQgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUau2f412NJeMj9o1wvxQsV8ngJRH4T50pJ7jMf5bMyFYCtKFaqIws50kywcL61QrPwjeGHT3laJFBD+pvfsPxy1r6dYN8IroarXw==
X-Gm-Message-State: AOJu0YwCYEVMnaAoJfHLAe3u1Wqynvne55O/GbFMOWZuUIYQNZSBijrS
	ujWYYWgdGh9TjmqqjNOqvlsCN0B3bzfGuQRklngtExZW5MGDdkyXLw5RbogZwRk=
X-Google-Smtp-Source: AGHT+IHL5mvuUbvGZCICktnlBYSl7cADXkVWAtFQLYnmF6fq8UpOV1K4GnltJAFNCSkRygYaDLCnRg==
X-Received: by 2002:a05:600c:3ca4:b0:418:427e:21f0 with SMTP id bg36-20020a05600c3ca400b00418427e21f0mr321679wmb.8.1713905428013;
        Tue, 23 Apr 2024 13:50:28 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:27 -0700 (PDT)
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
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 08/14] scsi: ufs: host: ufs-exynos: Add EXYNOS_UFS_OPT_UFSPR_SECURE option
Date: Tue, 23 Apr 2024 21:50:00 +0100
Message-ID: <20240423205006.1785138-9-peter.griffin@linaro.org>
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

This option is intended to be set on platforms whose ufspr
registers are only accessible via smc call (such as gs101).

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Will McVicker <willmcvicker@google.com>
---
 drivers/ufs/host/ufs-exynos.c | 4 +++-
 drivers/ufs/host/ufs-exynos.h | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index e8d3302f6df0..66e52c3607e2 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -1186,7 +1186,9 @@ static int exynos_ufs_init(struct ufs_hba *hba)
 	if (ret)
 		goto out;
 	exynos_ufs_specify_phy_time_attr(ufs);
-	exynos_ufs_config_smu(ufs);
+
+	if (!(ufs->opts & EXYNOS_UFS_OPT_UFSPR_SECURE))
+		exynos_ufs_config_smu(ufs);
 
 	hba->host->dma_alignment = SZ_4K - 1;
 	return 0;
diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
index a4bd6646d7f1..0fc21b6bbfcd 100644
--- a/drivers/ufs/host/ufs-exynos.h
+++ b/drivers/ufs/host/ufs-exynos.h
@@ -221,6 +221,7 @@ struct exynos_ufs {
 #define EXYNOS_UFS_OPT_BROKEN_RX_SEL_IDX	BIT(3)
 #define EXYNOS_UFS_OPT_USE_SW_HIBERN8_TIMER	BIT(4)
 #define EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR	BIT(5)
+#define EXYNOS_UFS_OPT_UFSPR_SECURE		BIT(6)
 };
 
 #define for_each_ufs_rx_lane(ufs, i) \
-- 
2.44.0.769.g3c40516874-goog


