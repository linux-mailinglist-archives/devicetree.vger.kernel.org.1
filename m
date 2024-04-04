Return-Path: <devicetree+bounces-56321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 204A98987C3
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 14:33:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97978B2AD64
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3FEC135A55;
	Thu,  4 Apr 2024 12:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="evVkrYTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE92012BF1C
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 12:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712233652; cv=none; b=NiNcfN+5HQjF80Qmq+1FIoknsO41ccEFJa1xmax0dD2bpwwWpjQqX/6cRFjyAkl3nthkAYkc1BrEtBEsMHVpZG2ZHQlCToF8P1v0GUtu+WQZlOehr+fHHE7kxeTB+AHd14968SWznaCgBIFBjW+/+9Azkua4pbAJwB47i/ASRA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712233652; c=relaxed/simple;
	bh=DpPQtX3Zqi2fd+m1VzltDJ0XBt3U5O/P9UnDTdTvH9A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q6ct0/xnfkZN/9Fic9LktDDITBopDoPCJg65E9zSuT2QedWSy6gTO2PfXB1JCUGaYbVrvUYyf/vB0SQyS8xxqpoYDFvYzR2IO2ZjTXwMa3NvkiVs06i4RmtNYry8EBAKJO6Ux7dOpaPlSly9iPLOxu/z8xWMaRjFffXgotsytC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=evVkrYTZ; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3436b096690so1572581f8f.1
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 05:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233648; x=1712838448; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hCoibUgVXrDhj6Ie2d9/sHJBy2MlyQN1DiiH4mHtSsU=;
        b=evVkrYTZdU6Grw8YVzTk0CrNoK9x9DjywkXBBgQvVEZjSVkUYExR0dtNHIQhC8/Lmn
         4EO1QW9OzDZ1JGFfs6x10RIzr9ldNOsqhYTrYL9X3ZRuR23rrZ64/vAM4Dz34JeyQ/bN
         RG832rMPGeN5AZQvUwbDmehHNE9fgdiiPvz7Cn5FGZHy/cMhEeWqfeq6js4t/INq6dDQ
         0cHQDAcG5gUhWNmwFrSbaO4yUp8s2RSEBRfMvRcCnseCPHwCjtLKWsJD2xeZNoMI6T3x
         T6H1Y7mJGNXfPi0Ej/ILjVKTQ8zHLUf8eQTwHCYRcCXc5pZ09LFNqr4FbqbboZ2krQC/
         mEnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233648; x=1712838448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hCoibUgVXrDhj6Ie2d9/sHJBy2MlyQN1DiiH4mHtSsU=;
        b=QfQbQsQhTFZNo3/Kd+BJnxkNIOS03osZLBfot8d9FxtH5ftBRObwR7KPupIN2rlaHf
         8BMisMLrDy5WL/UBpzFmfVMFX2DrCpPsabDMAJwlDd8ntaAnOVzHj8CKBdgGqc0grW27
         m836vz62yMIVhsLmy1KwmYWMZcO/ZdVwQvK4RVmlUQmzMA950unFnidxdpClnnG7KmUF
         Cj5Y2xXRRXhCtd1rCo0Y8gyHWAkcgN/WTVPU7w3EcJx/r1jmg+oSLfdUKzyk5hx66ftd
         BGzuWS3WkvfJtQ+shxTKTz4S445mwqIDDv7undKpgBFIo1CZRVBhjw07SszjyX7tvelc
         0hTA==
X-Forwarded-Encrypted: i=1; AJvYcCXHrq3H1r8kAVO8egA9qwRVaV1ppIOb/zQ0e/7nVIzCiPpxJ+3F7sGisN3ZZxOMbeBsmgaxd84GEBCsea5lhh0uCcL2AKDBp4lJuw==
X-Gm-Message-State: AOJu0YwkegL+2lHEqYeTfy4ZKhEqavR34mje/lqDNp9gfy0jbt233Yvi
	85TPTZxIw2mXiFTm2J5POrHiVnQ/TvWtjqZhiQ/7pKl4r9xAY/klANvh1SJ0VfA=
X-Google-Smtp-Source: AGHT+IEUfAM9zfc1fEcONBjRrQZRgm3rufWc9YdQbrZ/Uj7Mr8B0aLztpGDLAE0O3aOZeWldQ4nn4g==
X-Received: by 2002:a05:6000:23a:b0:33e:710a:b699 with SMTP id l26-20020a056000023a00b0033e710ab699mr1951763wrz.9.1712233648344;
        Thu, 04 Apr 2024 05:27:28 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.27.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:27:27 -0700 (PDT)
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
Subject: [PATCH 13/17] scsi: ufs: host: ufs-exynos: add EXYNOS_UFS_OPT_TIMER_TICK_SELECT option
Date: Thu,  4 Apr 2024 13:25:55 +0100
Message-ID: <20240404122559.898930-14-peter.griffin@linaro.org>
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

This option is intended to be set for SoCs that have HCI_V2P1_CTRL
register and can select their tick source via IA_TICK_SEL bit.

Source clock selection for timer tick
0x0 = Bus clock (aclk)
0x1 = Function clock (mclk)

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.c | 9 +++++++++
 drivers/ufs/host/ufs-exynos.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 7b68229f6264..1bfda9c75703 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -50,6 +50,8 @@
 #define HCI_ERR_EN_N_LAYER	0x80
 #define HCI_ERR_EN_T_LAYER	0x84
 #define HCI_ERR_EN_DME_LAYER	0x88
+#define HCI_V2P1_CTRL		0x8C
+#define IA_TICK_SEL		BIT(16)
 #define HCI_CLKSTOP_CTRL	0xB0
 #define REFCLKOUT_STOP		BIT(4)
 #define MPHY_APBCLK_STOP	BIT(3)
@@ -1005,6 +1007,13 @@ static void exynos_ufs_fit_aggr_timeout(struct exynos_ufs *ufs)
 {
 	u32 val;
 
+	/* Select function clock (mclk) for timer tick */
+	if (ufs->opts & EXYNOS_UFS_OPT_TIMER_TICK_SELECT) {
+		val = hci_readl(ufs, HCI_V2P1_CTRL);
+		val |= IA_TICK_SEL;
+		hci_writel(ufs, val, HCI_V2P1_CTRL);
+	}
+
 	val = exynos_ufs_calc_time_cntr(ufs, IATOVAL_NSEC / CNTR_DIV_VAL);
 	hci_writel(ufs, val & CNT_VAL_1US_MASK, HCI_1US_TO_CNT_VAL);
 }
diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
index 0fc21b6bbfcd..acf07cc54684 100644
--- a/drivers/ufs/host/ufs-exynos.h
+++ b/drivers/ufs/host/ufs-exynos.h
@@ -222,6 +222,7 @@ struct exynos_ufs {
 #define EXYNOS_UFS_OPT_USE_SW_HIBERN8_TIMER	BIT(4)
 #define EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR	BIT(5)
 #define EXYNOS_UFS_OPT_UFSPR_SECURE		BIT(6)
+#define EXYNOS_UFS_OPT_TIMER_TICK_SELECT	BIT(7)
 };
 
 #define for_each_ufs_rx_lane(ufs, i) \
-- 
2.44.0.478.gd926399ef9-goog


