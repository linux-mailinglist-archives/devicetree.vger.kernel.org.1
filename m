Return-Path: <devicetree+bounces-253432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 813ACD0CAE2
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 02:07:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 644C7300BB96
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 01:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 852EB2066DE;
	Sat, 10 Jan 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cMzL0o8Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A69215075
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 01:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768007253; cv=none; b=MEfMgvOg0ZEsdNZ9fRybWrkS88/r2MEaei08hLEOtrDf2xTxErZNo6Iw/VFLl72VM9Apk/gORVGWGbvHZsA6QAukRcsplRbxovjT1GFKdytEt20tlzPcU3PDpVPSMpmei8LyVNQ0WG7IOvGeG1TqBNd/BPnHIXaYhcYAi/h9G5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768007253; c=relaxed/simple;
	bh=0/BepdELP0Zi3ioZhdhtHC86o8Zd3dXLZIGFVfkzQ1c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ND4KBBwqpYN9j73BLTNJzSi3kgRp+85iHBaLVj2HNgDDgMUNgvFJzPz2d6heOHSVkgI4QbJtAtZTd9CbUcPF/Z/xd6jHs0uno5NsFCLg323DEtMBtO211fFSODG7KXN7XFRpxWJizdOORK/JWKl5SIqfXSIojGzBHMAQt1jjMk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cMzL0o8Q; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47d1d8a49f5so31871785e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 17:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768007250; x=1768612050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3mRvqRARBlLlFVSu4cS3ROES8gW2l+6tv55cSmtfsrs=;
        b=cMzL0o8Q+YFgXI/e0vW/qdOkCmkn6ai2G4HHdz+TsNe3HuLT2VnmcLZBWwvmNsBrXR
         ompffJpiC0K13Kbc6naKsvgtiPjwYv7o4+KfxdN6AHlMJVOgsYCwsuQ5FGWAW5S4N2zt
         26xlgFa9sLHLdey8M0mKOKpTkEbZ55HD72iHPiDodETFVB89upo5rdFASK4cRyUFwbdU
         0yfL37GucVNnu6reoTho17NIKbrQzdL/aUXkUrfO5QrBGVMPNdU3axad4Pew2ibYvDv0
         eaLiprGC0x9D9cS7HfJkl2Fg2yZl9zwvo9ZalC8XPGRWZ6JoEVmArNUZNX8yV5GEB0Fn
         /PVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768007250; x=1768612050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3mRvqRARBlLlFVSu4cS3ROES8gW2l+6tv55cSmtfsrs=;
        b=qTmYsSR/rENavFayhZhzIa0xQ/m1km9KjoRpt/wGAOP/RAtt47lTdQ+abEDk4F9oue
         odWbX3T1NACOY6n9/pmqXzsHkiM+yKi/LUHSHyhYv28prgGXuamkIsclJMYwL59dhjlK
         QnyyPLWwW4uDl8xy+0a3KGFQJbhCidn6qUPGiiTkE8mcXHSpVOhID+67LvqQNqE7gRXn
         EKcJszn6db+g4evUspfe5EhQ75AnQVFV0D+7VRTdsuIsBLveELbDQ/6BH0Rn/hrHX4bW
         j/VpqxqVajKIPPeEe1v9uZWer1sc4ollXhVAjDK7xItRIbK9uHEYfLE0m7R3vyWRuWxT
         laoA==
X-Forwarded-Encrypted: i=1; AJvYcCW7pokaev7zNKQ9t6ZzeqvLHmz9xnrXx1SJTKwlx/lTzOx9K3gU4qaRDLJ1XzOiq51f0GzJQ/IE4crC@vger.kernel.org
X-Gm-Message-State: AOJu0YyVBhHq9lt6oBZL7FOJNTjkkry1/lE0ZGrOgf9YmHmLtOXGYdgM
	zpDK37JjWmdx0XDZsWrljZdT9uoRW/Yy/ThwpolbrAe8h6xwXDmV4ZhY
X-Gm-Gg: AY/fxX4m/d4MAH5aZCWLcZorSwj0EuwL9vLzyMrRRb2z3acYZN/QNOwoLfjs/HUc8OP
	N8SZTccI8gXpJU67q0Scculu1SAxbUzBDmMuZD1S1Vg/N4rdANmQnFW73COuD2AQeMNxwB6c7xT
	GZXTJf6VmG0/HO7k5yoqim2YTy5Hv1GzHCRQ+FOhIkABGvi2cb4i5Zy2GD3cy+Mfed/mQ9Xk0C+
	4rQN5RQMveF0MKVIic9SUZSFEZ62EWm2cYINmdLFZ0Q+KPADUlb4QjD4bVVN5O7UCxVxhqj2v5r
	aQww8wxZtueFfPkaHjbJqeFVAkf36GvON8s47lDEru2Cw0uIzK6m8E/HVG9yfUM8nxI1LowjRl8
	HWqwb3CmSG+INBJHRuH+xmS8WF59Q4QnmVWflKaOXmlmoJzwz3/vu/Lep/N1AYUSgtCRyiCPwFp
	U8XwY7QBUbMNCM2dFw0LfRNksaNItIEJByCGFkF7mIeDBsCnxLOxJeulOu1b9GUDVFvtdbUkdPz
	HuhZGg=
X-Google-Smtp-Source: AGHT+IEruxoVLQw+uvAQdMicgfFRe8XyeFbrLqGms3k4V0pLxVUBHW1PFuUJeUnVq2ysNptvW2pOWA==
X-Received: by 2002:a05:600c:83c7:b0:479:3a86:dc1c with SMTP id 5b1f17b1804b1-47d84b52e31mr128613185e9.36.1768007250459;
        Fri, 09 Jan 2026 17:07:30 -0800 (PST)
Received: from stor1.home.marco.cx (ip-178-202-227-016.um47.pools.vodafone-ip.de. [178.202.227.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8717d9e7sm71779475e9.8.2026.01.09.17.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 17:07:30 -0800 (PST)
From: Marco Schirrmeister <mschirrmeister@gmail.com>
To: heiko@sntech.de,
	ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marco Schirrmeister <mschirrmeister@gmail.com>
Subject: [PATCH v1 2/3] mmc: host: dw_mmc-rockchip: add rockchip,disable-runtime-pm quirk
Date: Sat, 10 Jan 2026 02:07:14 +0100
Message-ID: <20260110010715.1610159-3-mschirrmeister@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260110010715.1610159-1-mschirrmeister@gmail.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The FriendlyElec NanoPi R76S (based on the Rockchip RK3576) suffers from 
a persistent bus-reset loop on the microSD (dw_mmc) interface during 
idle periods. When the microSD controller enters runtime-suspend, the 
subsequent transition back to an active state causes the bus timing to 
become unstable. This forces the driver to drop the bus speed to 400kHz 
to perform a full retraining of the SDR104 link.

Investigations using the runtime_status interface confirm that 
preventing the controller from entering a low-power state stabilizes 
the link and eliminates the reset loop entirely.

This patch introduces a new 'rockchip,disable-runtime-pm' Boolean 
property to the dw_mmc-rockchip driver. The property is used to:

- Bypass the 50ms autosuspend delay during the probe sequence.
- Explicitly increment the device usage count via pm_runtime_get_noresume()
  to keep the controller active and prevent it from being suspended 
  during idle periods.

Signed-off-by: Marco Schirrmeister <mschirrmeister@gmail.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 25 ++++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 62c68cda1e21..d3e5c06d80ef 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -538,6 +538,7 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
 {
 	const struct dw_mci_drv_data *drv_data;
 	const struct of_device_id *match;
+	bool disable_rpm = of_property_read_bool(pdev->dev.of_node, "rockchip,disable-runtime-pm");
 	int ret;
 
 	if (!pdev->dev.of_node)
@@ -549,8 +550,13 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
 	pm_runtime_get_noresume(&pdev->dev);
 	pm_runtime_set_active(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
-	pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
-	pm_runtime_use_autosuspend(&pdev->dev);
+
+	/* Only setup autosuspend if the DTS hasn't prohibited it */
+	if (!disable_rpm) {
+		pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
+		pm_runtime_use_autosuspend(&pdev->dev);
+	}
+
 
 	ret = dw_mci_pltfm_register(pdev, drv_data);
 	if (ret) {
@@ -560,7 +566,20 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	pm_runtime_put_autosuspend(&pdev->dev);
+	/*
+	 * For boards with sensitive signaling like the RK3576-based NanoPi R76S,
+	 * we inhibit runtime PM to prevent bus resets during idle transitions.
+	 */
+	if (disable_rpm) {
+		/*
+		 * Instead of nuclear option (pm_runtime_forbid), we use
+		 * the "soft" way by incrementing the usage count to
+		 * prevent the controller from ever hitting runtime_suspend.
+		 */
+		pm_runtime_get_noresume(&pdev->dev);
+	} else {
+		pm_runtime_put_autosuspend(&pdev->dev);
+	}
 
 	return 0;
 }
-- 
2.52.0


