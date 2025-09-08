Return-Path: <devicetree+bounces-214506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA770B495DE
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 18:45:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D99671B22FF0
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 16:45:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A11522EF669;
	Mon,  8 Sep 2025 16:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JnRI1xnq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D72211A14
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 16:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757349898; cv=none; b=NfIRGJ+BhWQAclonV2uk6lS1VPGrxFnblugv9Srh/n8hOrQc51wpj78suP1Cz8dZXsXjP1LARMADBUZ0XoqXOLA4okgvxU5GV2qpnZNBxhj4t6weFDql3XP/diqafpAjstahDH8lwZMmVnfTwAo+kX6LAVv4uVKceY0O3q5Ud/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757349898; c=relaxed/simple;
	bh=eNMOk6yX33mnpYcf2JxGWNrXNRaPQCRWV/mLtQ3MjA0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Y+eSaHVKDKcpGt5X5ijYdVRRVU+Ia6gZ6ueNqJ9+rfnZCaejlD9EpPXny3E3vAOgbEcYD9dArKqsToPYR2pC2R/zMPlbqC+jkhy6nfR0btCo9BNRHq/lCEbZajrPccav8Al7l4PXHZPbX5HN/Yhne5f1kFhlu+DbacFOCNtjB/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JnRI1xnq; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-52a80b778e7so1410625137.1
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 09:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757349896; x=1757954696; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FTDiYUkL2CUr9l6jV622a3f8KP7BPruwWZ5gte8PmvI=;
        b=JnRI1xnq9CdKS9r7vOI2MB5hrKm/dYMbYeDLPoaMJCa21uNhSKkOQOsus6yMOxHjaK
         1YG46jCKusvopEHv+VZRwLJvwAp4RgDZVPYzKvE8dfue8maoK0UcaRIO8CI24mDr3L6z
         wFiOnBMTM+Xo9N43osyZtJ4m48YY63xzfEr1OcSPtD2QkLcYYFRKv3XIZ5Tzz8f0n5NU
         J3I7kerCeSMMSgOuuHg6krrM5MyY7G2Y19PbxNOf4tJjX/O6cH4wLJOECeUOC/im+8Kj
         87b3ZpTz2O+Hd5kwk2eNI8tWLBQSq7q+xGxWtjWuvNkwLNV/iMLe00gdFVQG5fvhPO6J
         FF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757349896; x=1757954696;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FTDiYUkL2CUr9l6jV622a3f8KP7BPruwWZ5gte8PmvI=;
        b=duLHOYnpxh3lrJE2SJJ+H0d2OUOPJEPsud7JNj6B5IZ1sKG1aKqwZFaaREsuOz5uDm
         D/DJLitYv36znB2yDAtsn40a+Cw6XIsDOwwMjPepbL0N2kUUTpH+74R9n28ISrP1xd02
         PpTyK1knxOflYJ5/eHNeFsPQtwWd9SSO9VUXjt4N+AE75NoSkvuWMlr4uYDeTpv6Xti5
         HJxWIwFLodksJTSi2QAzERQ3QgFdtx1iVwFB4rlvlQyGs0yaAVMm0nYU7FjV+w6lVf/r
         1Yha4tVibQkX2MAa17zGHJfDvMUU6ffaez3ygcupzDTEmrq/U8oaT0xxh5PqwqB8C7NU
         56Mw==
X-Forwarded-Encrypted: i=1; AJvYcCVNtNJsqY1Y/Z5askqs1ViUj9xmKLsfHEUHgqiUgzBWUidtneycygvgP6pMs4wqKmCHgH8jcRmK7Xd9@vger.kernel.org
X-Gm-Message-State: AOJu0YzAdbc9pM6TAC5of6rzl8h47bzdTuMy2IptfNZWnRcPLaaWJ53N
	3IPmRDUAcYgkYj/mOOC1ml1MC/jiMxbBmGpnUK4emP+U77BNTbkKM4s+
X-Gm-Gg: ASbGncsgy0Yt4GuHn5SAF2UZG8GI64xprtgMDj0eFZchB9V95vSyR770ho4cwhBwMAJ
	DHM/vU9zA5EC82MaLawaoh363mmlRAAs8YRgRogvFPQ/SgWxDM4IcHHkP8gr6szbfPvAn/Q+wlW
	1njCg3wYXkv6CFDS6vA/fj1U5W0OnSXzWyEHjSlyc8w/Fa3cbMtIBuyWUcuVzaA0z1kB4ifdfFa
	qgoP4DOoLOh2qFdj3WB3f1KqiA21HoQJKRpnTNlaWUBbl8VwAFBy0TLJTUhNng0MxATnpCIStCJ
	JsGKVCBVvrScrk/fkzxDd+2Q7d3M296ZmeswvZMOdq1tHEoeQFSixpR/rdkW1oQIkGV0R8BHdQs
	pUdp9MbZoYNUywrr1D/wI7sZaw0ky2QXn7EgV
X-Google-Smtp-Source: AGHT+IEaTNiP+f9nKLoXBeh5yoJCXM8uvjtKSeIiQ7v3ifbHJ4bT4AcLveiBFitDVMsUfEgSA1p9QQ==
X-Received: by 2002:a05:6102:ccf:b0:51e:92cc:6e6a with SMTP id ada2fe7eead31-53d160d3f9cmr2416721137.33.1757349895788;
        Mon, 08 Sep 2025 09:44:55 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:c727:aee6:b2e8:7953])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-52aef458d62sm10689214137.3.2025.09.08.09.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 09:44:55 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: dts: imx6sll: Use 'dma-names'
Date: Mon,  8 Sep 2025 13:44:31 -0300
Message-Id: <20250908164431.67052-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

'dma-name' is not a valid property and causes the following dt-schema
warning:

dma-name: b'rx\x00tx\x00' is not of type 'object', 'integer', 'array', 'boolean', 'null'

Fix it by using 'dma-names' instead.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
index 8c5ca4f9b87f..704870e8c10c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
@@ -309,7 +309,7 @@ uart3: serial@2034000 {
 					reg = <0x02034000 0x4000>;
 					interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
 					dmas = <&sdma 29 4 0>, <&sdma 30 4 0>;
-					dma-name = "rx", "tx";
+					dma-names = "rx", "tx";
 					clocks = <&clks IMX6SLL_CLK_UART3_IPG>,
 						 <&clks IMX6SLL_CLK_UART3_SERIAL>;
 					clock-names = "ipg", "per";
-- 
2.34.1


