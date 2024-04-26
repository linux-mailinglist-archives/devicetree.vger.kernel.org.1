Return-Path: <devicetree+bounces-63005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EC48B3714
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 14:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2CF4284639
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 662351474AF;
	Fri, 26 Apr 2024 12:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zb1EK3Cf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5046C146A7D
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 12:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714134016; cv=none; b=rpdwEVo5WtK5XLz1dZCgl4okw/KTgITqXzXDURRdleLXRnKkG7AHDqsdwUPYNUIvX4aVDD77+XLS9jjjZf/Tcb/uHRrYdJiByYXI0CNaFSAub6tBxyhBydQ5/+zBtVwrbjw204NhzhSv4bitF6Znfo1FFBR2athQXEJURSEtj4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714134016; c=relaxed/simple;
	bh=R7zQTIZdvG02VCBq8bLB7RM5nOeAXTmdLzXWGj0scFw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=O08s7bi8yaXb1Ztotul34QLNxlod1Gw9Z4zJOf83+PP4Tw6ekSkh7BJxXm1elFxQmtbYJXbACq68T100TF731A3Z4FHwsA5ch9LPsXWCxnSZlGF8gtyoABCEbV6AztSaf18OOw9obi7lanktoNhDkAqUuRBmjNA6CP/7h9K6VS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zb1EK3Cf; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3476dcd9c46so1545878f8f.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 05:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714134013; x=1714738813; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WCHTamsKWOa2PSWA2iiAOyEQMuVi7F/H9xo5LBfeSLo=;
        b=zb1EK3CfhCl+fQjqFaKbRO04jEjst0jWqUjatOZQSNA+xVRQS2X7k8w0LgyS7Ghg+k
         SoKbynY/2HnZGD5gGYqs7ytONzCntuZ09ojJt+1SbxCCy7Bfbx6QP73n0vZruMddsIoM
         opAIeDfNTxKwtgbWi3bHIvpXHNAVjt6aU6om7wbi/IEZAcrkYjiGfCLbs1xjGlQ086UC
         IMS/yp2L/fMgpvPFWq2zBs+dSH/Cv5ZGTegd2X53VMQNY5P3IUTy7sIM4p45ZiifMUOM
         kXj6p81uhhjLKgTE2Bub+pobiivJrxHl86k+7CjckHPS5JLHTZuQZO2w5Mg46H9RW0gx
         4vQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714134013; x=1714738813;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WCHTamsKWOa2PSWA2iiAOyEQMuVi7F/H9xo5LBfeSLo=;
        b=Frq0gzhQ388TGYH+aoCbMHrswbUbYKC1Fla+aQZphpbAMh4svpnnVHwc2zAeJ0Hp/B
         wUvukdA6ZN24qoXEly0+xFFj+G77Sh1AIVhu9sEFaxrJ8UDFRP6qhUSoXqD+20fhrbCn
         koH0brJIcq/SAvoV3Xaa1ye+TKEWN9G2lo6Myt1rYOGPsdO6CyefRe0mcEnvy+DEAaWx
         guRccVoxs86ePiv5DsNLwKEux3EHTi+eDHAUSrX5j6KDcDMNJOn+cSSmA8jX3Kge+Obk
         6kffBG7xifq8tVaPxO5CL3t6TXZWo0GpIfEU7f+qPCX7GBOX1Ml6npwh4Pi/s5+Cm2J+
         0Trg==
X-Forwarded-Encrypted: i=1; AJvYcCUk/J3j07jybzVZhyoMBT9cLkaUQ7wRECX95Qd/LqYmBj74u6LGOKhcke7J2uNi1i3WaAN4EPMj6JV3YJFI6BZEP8SvEFiyVVW3iw==
X-Gm-Message-State: AOJu0YymSaHEKw8eIb4lz1ghmElZxKEIys+SOitvS+TV755/o9E0QPLO
	nKEY9DM//KH+kNzEPEDbwdfhn8f65b96Na68HWPNYk5pXTou9eqXN3Dq+S1qZl+VeF1BoKIN7+o
	ieXU=
X-Google-Smtp-Source: AGHT+IGykyOc3M8ynwChyDnZq7IZSW2Q3KnP2WV/KJ4TVvvg2h6K+hdAd40QyDlKrbfmVhpzBmI2zg==
X-Received: by 2002:adf:f60d:0:b0:34a:983:6b34 with SMTP id t13-20020adff60d000000b0034a09836b34mr1788556wrp.39.1714134012773;
        Fri, 26 Apr 2024 05:20:12 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:63cc:9bae:f542:50e4])
        by smtp.gmail.com with ESMTPSA id q2-20020adff942000000b00346bda84bf9sm22478146wrr.78.2024.04.26.05.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 05:20:12 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	James.Bottomley@HansenPartnership.com,
	martin.petersen@oracle.com
Cc: linux-scsi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/6] scsi: ufs: host: ufs-exynos: add EXYNOS_UFS_OPT_TIMER_TICK_SELECT option
Date: Fri, 26 Apr 2024 13:20:01 +0100
Message-ID: <20240426122004.2249178-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240426122004.2249178-1-peter.griffin@linaro.org>
References: <20240426122004.2249178-1-peter.griffin@linaro.org>
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Will McVicker <willmcvicker@google.com>
---
 drivers/ufs/host/ufs-exynos.c | 9 +++++++++
 drivers/ufs/host/ufs-exynos.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index 66e52c3607e2..66093a905986 100644
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
2.44.0.769.g3c40516874-goog


