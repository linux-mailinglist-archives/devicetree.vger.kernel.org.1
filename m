Return-Path: <devicetree+bounces-33353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F285383307D
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 22:53:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7D151F23A07
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 21:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1974C5822A;
	Fri, 19 Jan 2024 21:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="d1fFTy3+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF61958229
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 21:53:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705701199; cv=none; b=Rm1cOS9hmSb2v+cdsVB/i0qSfjdeKiROmVQRufW+qpS6fxrteBND3XqNk9l1+93TMXBdt1U+tKtM3VSLCHB2xWR09fvKqF8W9KycCL2vromp955zgSsvzDavsjn5sZlIzGtx2AU5we3QX1FTZ483DEUF9Amx1v54++SzhGDljY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705701199; c=relaxed/simple;
	bh=kuXhR6wlh1gQbz7VydCEdodgqDYwLlDJ6XYiIwYaPSM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VJ9hKGyxBrggQ4NtYREg0IHQ1gVgb9M/sqlwQEvKoHzMsLaZM/1pRCAUq42Y4BxsaYPiRiWy/faP9rU7v4ALjdOzyiQGMFrp+oMx47GUCl/beDPQPtg/BdLsJmWDlxaEcAbKmZtmaPSerD4QoacB9OmD7aLGzoKoJVwVxcBwl2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=d1fFTy3+; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6daf21d1d5dso220574b3a.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 13:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1705701197; x=1706305997; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e3iQb1vl+tt2av6kIa+SOa0cwuFC4+nUXcEhLuomvqc=;
        b=d1fFTy3+b5Cbt1AErBBDwAomtevoG7JHB++DfJVuzvM8kyWrCTbPsPZgAVAnRCgRWr
         Xkv+6gA3ykMDE9Gp8BYiPF8Nv74O9+SsNTWtLR1XyKm8cm+6klyUykwRyDswozzbRG/6
         kEMza2E8O0nLtjkoj0llKM2rfOVLBwOU1GG6M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705701197; x=1706305997;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e3iQb1vl+tt2av6kIa+SOa0cwuFC4+nUXcEhLuomvqc=;
        b=fPZaHcMc5THlx14OQRvnpDF99Mgl8VNj3WH/pM2RB1Ebd3me7OBRfyjLDVS+VbEznf
         lSyX0ODUYmWVjWANyTvuh4Crv5Ki2pixOFkqInUxiScXwGrF46RjesmpDAxXfV4w2f/m
         tFDEd9TTo0y/EIYbNocGpmskF4t/in6dRm159AJHoTZL36CCyTcD7Xa6/rPBCfzzBLPL
         jOLKc7FFo3VS4pc98SQ7dybYvCGAqfxx7gZzvP22ILNCykWnZkyCsiANPwFZqeAozXzv
         WFRYLSzbe7WeDyBipB7csn8Av8kxhNXauVfnfHdRy6eNcIi/1j8xQS42xji2kiIFWeCl
         226w==
X-Gm-Message-State: AOJu0YwUi+ZUXMeasYzeXXQ4Hj/rcCW8zAJsDb+GvZxLep+jsNa+qZ6M
	HxhM5OfEQvaKADTVFB/tLOw8qVLbaayAU2pO8OJZAjvxeB0s7BeReOAJCRSWtg==
X-Google-Smtp-Source: AGHT+IGJOeudGh/LDX95kyvunwaEN6ukvUq3VCgqlAc5PFouWEfgKBcnQl48s8FXBeJr0q/DMf/WWQ==
X-Received: by 2002:a05:6a20:9586:b0:19b:20e7:d6b2 with SMTP id iu6-20020a056a20958600b0019b20e7d6b2mr905782pzb.3.1705701196949;
        Fri, 19 Jan 2024 13:53:16 -0800 (PST)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id 13-20020a63194d000000b005cdb499acd0sm3891325pgz.42.2024.01.19.13.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 13:53:16 -0800 (PST)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id 8AC30898; Fri, 19 Jan 2024 13:53:15 -0800 (PST)
From: Markus Mayer <mmayer@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>,
	Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: [PATCH v2 4/5] memory: brcmstb_dpfe: introduce version-specific compatible strings
Date: Fri, 19 Jan 2024 13:52:27 -0800
Message-ID: <20240119215231.758844-5-mmayer@broadcom.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240119215231.758844-1-mmayer@broadcom.com>
References: <20240119215231.758844-1-mmayer@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce compatible strings brcm,dpfe-cpu-v1 through brcm,dpfe-cpu-v3
to the Broadcom DPFE driver.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 drivers/memory/brcmstb_dpfe.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/memory/brcmstb_dpfe.c b/drivers/memory/brcmstb_dpfe.c
index a7ab3d377206..a44a70d028f6 100644
--- a/drivers/memory/brcmstb_dpfe.c
+++ b/drivers/memory/brcmstb_dpfe.c
@@ -924,7 +924,20 @@ static const struct of_device_id brcmstb_dpfe_of_match[] = {
 	{ .compatible = "brcm,bcm7271-dpfe-cpu", .data = &dpfe_api_old_v2 },
 	{ .compatible = "brcm,bcm7278-dpfe-cpu", .data = &dpfe_api_old_v2 },
 	{ .compatible = "brcm,bcm7211-dpfe-cpu", .data = &dpfe_api_new_v2 },
-	/* API v3 is the default going forward */
+
+	/*
+	 * Match the DPFE API flavour based on a versioned compatible string
+	 * that tells us which API version the hardware speaks.
+	 */
+	{ .compatible = "brcm,dpfe-cpu-v1", .data = &dpfe_api_old_v2 },
+	{ .compatible = "brcm,dpfe-cpu-v2", .data = &dpfe_api_new_v2 },
+	{ .compatible = "brcm,dpfe-cpu-v3", .data = &dpfe_api_v3 },
+
+	/*
+	 * This "default" compatible string should no longer be used. It has
+	 * been removed from the binding but kept here for backward
+	 * compatibility.
+	 */
 	{ .compatible = "brcm,dpfe-cpu", .data = &dpfe_api_v3 },
 	{}
 };
-- 
2.43.0


