Return-Path: <devicetree+bounces-231019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A427C08AED
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 06:32:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 51F8B4E2271
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 04:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B1A261B8F;
	Sat, 25 Oct 2025 04:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d0qv2fnc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85FB263C9F
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 04:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761366764; cv=none; b=AHMghNPr7SsNSU/pEK8W6vAvUTMi39uMlJbJqcn64wqoBvzKMwdozH9YpeaiZuAqZwBgF2/wCFSXY0i0qEGzwQz2I/8wBmi+LBtBHFis2Lv8cH2ItZReWBAXGKIRYduMpftu9VPbxxfhjEQcMBA4/7GnP8XDYVDjGKE/KlDzqes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761366764; c=relaxed/simple;
	bh=JFlSRxXwWBQ3XACpCIXATa+zwXHpyzhtFajoU+nnbIg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dUabEoWY86NRzQ1lORKaDjHcJBehz6VbSvQD/Tn1HU26gvipX2D8EOamOIOTw5fU3NmB2EyqPO9EbCHbLDnzqpNVzSiVeAViWDJ01S2zTShTH4Zd2PcIrWgRcsOPO79JBE9sUgs31zo4FATEJs4NhZDGP0YLAYGPDa8hv3lEWMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d0qv2fnc; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-591c9934e0cso3978773e87.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 21:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761366761; x=1761971561; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i3+BmyLOtp7xUTMRQtQMY1TWwM+wvGI7ScMcGnjI6fc=;
        b=d0qv2fncNLrQWksm/Kj+aDzfPcFi280b/vHBqmfbPUYAPe9VIHu5mFSd1EnS6qX50A
         bs09pYFYEWVUvj5VtpQzthJUcX4JvPzxQhdc/TBgTZJAXlCajzzZTae6v38fn6JlYcfE
         o2IbEM19U86R1Jp+cECN/C5YpkIfxc/adSehpNUhVTTqezDgsFv5oUTsF2Q8OJIL2CGy
         eEgFHfN/exVu2ahSsDgSBuLIx82sFDXouAsZEYbSkQ0K8oVK9LI72CYEJr8EOlkhnYx/
         e356HZkn09YG0vnHTDnAudvLEZgpTfGS2LG5zTy45NTfu6Wy/vjKwk04ZswuJmjhQd/Q
         cTiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761366761; x=1761971561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i3+BmyLOtp7xUTMRQtQMY1TWwM+wvGI7ScMcGnjI6fc=;
        b=e7J6r7CjHu0tyfJiv4F8BOnloxbQduSQ+bCejfaten/8yuwI07IZfKPA9AMEvEAMwq
         bQC5fvZwl/qsoxgs/6Fe04UzWyKJ5GIfUV+ML7Yhnmh4ko1BYtocRW+9x9EXHLzHyY16
         ANuqw3+W7FhDlcQgGemIPgG3h4nyrrXKldQ1xhk84HkBU4xtY2nyMFsjcenO+AMMv9zs
         CBFI/S7hpjtjpmCCxHdQ4X53P4Jb2Ba5K8jGphGuS2M/wjk6urTwMwAxXJErZHNmeQZu
         mG3ebwYwUEkKu2g8fayzngf7+6fJCGH8UdlCWjMbrsnR4sg1Sk9VRYDcfWEJ9x9bnCjj
         sbjA==
X-Forwarded-Encrypted: i=1; AJvYcCVJsHWSX31zltLiRRIY0wcw8qHIjiWHEhIe07sOekEj/1uiuy1xWmAiDqiricsG6VCNTtVouQUJPR0B@vger.kernel.org
X-Gm-Message-State: AOJu0YwWlETpNn1eucauxeafgiIOpmyC+h+NDojosncBd0sWx2YlpvsN
	I2CXiJGKNarlri8+u9/jgEs9dMurDfWuQGVOXw5LpdVvIKIVMda9/RUo
X-Gm-Gg: ASbGncshZ8SFnLNbhmDpYvwziPcEFpAt+wOp+QH+TsoGcRggqEEP3Vst3dzdT0t5N2L
	gVjn6ORA6sZB0KNq15olWSWEnUqqvy3TbkbXGc2JxSpThtaKaoyxgIHoYd3Py+WGdP+mzIUkCNw
	CvnD/A7LzZ7jafO9fhlciEi5R3GffiLYiPRqNnF9cxjKsL+tCoO/Ij5A+4+WWqzHVk3CTSvSt1+
	afhmYW7OatnapRrIjPE3Nx9Ra42PVcOrluoGqYKXKQ9bGa0P1MOH7Hcog1BkssCsaPPRnN1PFkJ
	4u27aHKt85UXNTTNr6MLNP9X1BNQFzn14f/tR0rOg9EZoHTJ1wxpC+kyHatvnCU/BNo5mpyxbc4
	nIAUuZFS5Iv8UmiYFHSHAXQynHB9T0DufxapDhoErGV4vj/eoM8Q1qwtbgM+5D/bnFQ==
X-Google-Smtp-Source: AGHT+IEKvrwo7BMcvdLr8sMnPaVHb2OI/tgnv1kSKzQDgd1sc7jso2BrG2SWkbje2QobtPqCs0yKQw==
X-Received: by 2002:a2e:bd17:0:b0:36c:2367:b3c1 with SMTP id 38308e7fff4ca-37797a58f18mr88205231fa.35.1761366760931;
        Fri, 24 Oct 2025 21:32:40 -0700 (PDT)
Received: from junAIR ([176.106.241.81])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee0ca7a0sm3409241fa.33.2025.10.24.21.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 21:32:40 -0700 (PDT)
From: iuncuim <iuncuim@gmail.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>,
	Yangtao Li <tiny.windzz@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andre Przywara <andre.przywara@arm.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/6] thermal/drivers/sun8i: replace devm_reset_control_get  to devm_reset_control_get_shared_deasserted
Date: Sat, 25 Oct 2025 12:31:26 +0800
Message-ID: <20251025043129.160454-4-iuncuim@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251025043129.160454-1-iuncuim@gmail.com>
References: <20251025043129.160454-1-iuncuim@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Mikhail Kalashnikov <iuncuim@gmail.com>

The A523 processor has two temperature controllers, but they share a
common reset line. Make it shared with the shared variant of
devm_reset_control_get(), and also simplify the driver by switching to
devm_reset_control_get_shared_deasserted().

Signed-off-by: Mikhail Kalashnikov <iuncuim@gmail.com>
Reviewed-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/thermal/sun8i_thermal.c | 16 +---------------
 1 file changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index c02c398b0..aa496e1ba 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -344,11 +344,6 @@ static int sun8i_ths_calibrate(struct ths_device *tmdev)
 	return ret;
 }
 
-static void sun8i_ths_reset_control_assert(void *data)
-{
-	reset_control_assert(data);
-}
-
 static struct regmap *sun8i_ths_get_sram_regmap(struct device_node *node)
 {
 	struct platform_device *sram_pdev;
@@ -391,19 +386,10 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 		return PTR_ERR(tmdev->regmap);
 
 	if (tmdev->chip->has_bus_clk_reset) {
-		tmdev->reset = devm_reset_control_get(dev, NULL);
+		tmdev->reset = devm_reset_control_get_shared_deasserted(dev, NULL);
 		if (IS_ERR(tmdev->reset))
 			return PTR_ERR(tmdev->reset);
 
-		ret = reset_control_deassert(tmdev->reset);
-		if (ret)
-			return ret;
-
-		ret = devm_add_action_or_reset(dev, sun8i_ths_reset_control_assert,
-					       tmdev->reset);
-		if (ret)
-			return ret;
-
 		tmdev->bus_clk = devm_clk_get_enabled(&pdev->dev, "bus");
 		if (IS_ERR(tmdev->bus_clk))
 			return PTR_ERR(tmdev->bus_clk);
-- 
2.51.0


