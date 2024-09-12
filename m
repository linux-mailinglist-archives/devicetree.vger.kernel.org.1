Return-Path: <devicetree+bounces-102368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D87B976BFE
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 16:26:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B3DA2846D3
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 14:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7601B9858;
	Thu, 12 Sep 2024 14:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="UBSs2qF3"
X-Original-To: devicetree@vger.kernel.org
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6621B983A
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 14:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726151181; cv=none; b=iGPOkRkHLVeYVoLF2Mccnbd2W+7yWUBf5tAFK3mGr4xiJbki5s/Mzlaj0+htHExGaomYvUWaJnZYLfGnmpM98BWgCogOOR5ZWxUtusHFI3NCdFdKIiPWg7V8vDcM19oFPc1OgOEoyIU7QaX1XZJjsmQFy9fE7NFKtsE62dvpuPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726151181; c=relaxed/simple;
	bh=O52ssyD7ALtqCtZg1swX9DhLAIImi9FBWThsLl7IaxI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HTOze7XUOa95IEMxkmfDI/EbtwKtHTWuQKt/+BtGyxsrxYlv0GQVVbvq1N+kgwP3tu6osWdGco934a3oZzp9exYGGZ0UPi9KZKUuNYs3dnNt/rEJ0EseJyrktwR3/lji5frfeg4nxHVnsrAa1cz62CvZE2No7k8rG49uNPESICc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=UBSs2qF3; arc=none smtp.client-ip=44.202.169.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6004a.ext.cloudfilter.net ([10.0.30.197])
	by cmsmtp with ESMTPS
	id obw3sHGwPg2lzokm3sjiz0; Thu, 12 Sep 2024 14:26:19 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id oklzsyl7dks1Pokm1sJnXg; Thu, 12 Sep 2024 14:26:18 +0000
X-Authority-Analysis: v=2.4 cv=Ud+aS7SN c=1 sm=1 tr=0 ts=66e2fa0a
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=jOwBCQwwsqbqoLW4yoUA:9
 a=j__mt3AifRkrCLMinO4U:22 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=RyxZ7dJEpL0KSF3krujUDmOJrfvECrlisXCbyNhBHAg=; b=UBSs2qF33ZqudvUjR87fx1fzSF
	1C57TQe1LSZYs9f1XRLo7AE8TbJbtOzNYKYoMsKP6mE+rEyjHQ2flGy5Sa1qJTXZF4SOY7sItLFSx
	6WFp3f5ZrJM/tjc3lAAyl88NCndlYTQ6k4OPMqXzsZA+eqRAz40YymcjYoHNYkEOXu/TR6tAxT0lH
	pIPV+EEdbQ25H1cyxabxgKaGWfZMG9ibLlnKup2J/Y6cM449w8S3jjJNIWm5QsMo5rLcKVZbVceim
	iVkMPx493It0qWQ7SUBGNS6ehcg7Ea55IWwKbJJYla6gSW1Hv1D0K4aOyS1C2vvRglHS4RG9N8bkZ
	BNLdtNyw==;
Received: from [122.165.245.213] (port=41006 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1sokly-003n4z-0c;
	Thu, 12 Sep 2024 19:56:14 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH v3 2/6] ARM: dts: rockchip: Add watchdog node for RV1126
Date: Thu, 12 Sep 2024 19:54:47 +0530
Message-Id: <20240912142451.2952633-3-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240912142451.2952633-1-karthikeyan@linumiz.com>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sokly-003n4z-0c
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41006
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 28
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfLmzlMFTrkKqiRFDHApxEVisih2TeGl6oOxjhpLaN5uD+YUh6cRTHYGqbcOLUZNNYV2LZGE9nHwbM6n/zIySxs7clQfxfkmF4/ISBR/b3kthZTqrx5BD
 bw3/9eXzPaL9B542qnmxdoTtFcskGnx/OWAUGOfD8f+Rjcf5K87OYgMj6b+6GYYebuV90NmkvQqPhwNJZo1UKrscj8wHIJGRO0w=

Add watchdog node for Rockchip RV1126

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v3:
    - add watchdog compatible string
    
    v2:
    - no change

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index abf442804d27..22a22bcad04b 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -544,6 +544,14 @@ timer0: timer@ff660000 {
 		clock-names = "pclk", "timer";
 	};
 
+	wdt: watchdog@ff680000 {
+		compatible = "rockchip,rv1126-wdt", "snps,dw-wdt";
+		reg = <0xff680000 0x100>;
+		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_WDT>;
+		status = "disabled";
+	};
+
 	i2s0: i2s@ff800000 {
 		compatible = "rockchip,rv1126-i2s-tdm";
 		reg = <0xff800000 0x1000>;
-- 
2.39.2


