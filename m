Return-Path: <devicetree+bounces-36860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A79842E15
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 21:41:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 676AF1F26090
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 20:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F2A3762F8;
	Tue, 30 Jan 2024 20:41:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=grimler.se header.i=@grimler.se header.b="Aq0UQlvz"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1024871B50
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 20:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706647274; cv=none; b=bT4ECLbDPf6TgBgtHPAd++PZ/7FiSf1WZXz+MuN7d6cMZOyD3o7jBcV6UN0qhcOwwmVMbb+Y4oy/A8wKrPiU6mZnEnQSgNX88hs1WrImF0Ixefu+ZS3W3fvSyneoBwYVX5ziPaR6AiX+gyZss991D9FrE3AZTjasidMYKLfnAtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706647274; c=relaxed/simple;
	bh=+RHfIOYCokHUptccyiBZRvuJnCzYabw0CvXOcn+k8r8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tg6vpOooSu02VCLXsAzZWv1gt2N7rLbwalvSQGOvrzCpQORdtFgdtaR21qN3UK0g8OtD1ZIRhU5x4OHu4H3I16UttTB3Sx4eAWAECXvBRzrycyFsUcCsarpI1/YuCHfkbeqCA3fYKb+r/m+z2/oQ+62DuaPilXSvTGyYOEwiRnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=grimler.se; spf=pass smtp.mailfrom=grimler.se; dkim=pass (1024-bit key) header.d=grimler.se header.i=@grimler.se header.b=Aq0UQlvz; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=grimler.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=grimler.se
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=grimler.se; s=key1;
	t=1706647270;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y9OzBq6gWd0BJFvSgtjPyJwiO3ruOjewsWTRko4LLnY=;
	b=Aq0UQlvzNFD11kaNf3XHOfH/iW849kODjaOMj1v2yq3LLab8Mq3U+lkWK1AWAThc5HTzkc
	9G4kGMgpB6IquqkxcO5bYfwFFxxhE0M2Wnk2EG3NtoWVDIwSBsBZWgvuyl7CVgRN2/QGcM
	hLti9PLufMHq6Tf56sDcpP9MHv/4T94=
From: Henrik Grimler <henrik@grimler.se>
Date: Tue, 30 Jan 2024 21:40:41 +0100
Subject: [PATCH 3/3] ARM: dts: samsung: exynos5420-galaxy-tab-common:
 decrease available memory
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240130-galaxy-tab-s-cleanup-v1-3-d4e17857241d@grimler.se>
References: <20240130-galaxy-tab-s-cleanup-v1-0-d4e17857241d@grimler.se>
In-Reply-To: <20240130-galaxy-tab-s-cleanup-v1-0-d4e17857241d@grimler.se>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht
X-Developer-Signature: v=1; a=openpgp-sha256; l=1202; i=henrik@grimler.se;
 h=from:subject:message-id; bh=+RHfIOYCokHUptccyiBZRvuJnCzYabw0CvXOcn+k8r8=;
 b=owEBbQGS/pANAwAKAbAHbkkLcWFrAcsmYgBluV7fF6B01N24dpZiM46HwWy7QO86eVRtTi+9c
 Y6KjRqW2yiJATMEAAEKAB0WIQQsfymul4kfZBmp4s2wB25JC3FhawUCZble3wAKCRCwB25JC3Fh
 a8mwCADBSJIa2AFfO1WD6mWg8Brz+Yftzi3+6+Nwh7oTvciF7eaqquXG5yqubm18N8J9CRtxBuD
 UtYFZKUfDnE68P1FWNiGywdvNJ6bV6aVPaDeM4wsD4eG7zF4Wl5QCxzjoM1WYs9hkOe+2HTbEpN
 aTto0cpgaLNi1yrFuJbVCdwFbVFdMbmm5dvP61/eGCYtnhKCDb5FmzE+SnoszjaIgxOStr2a0kp
 Tu5kSLVs/Bb8J80waAvzNzZc0JK/Zeh9Q15dwrlk2phBIBz+6Sly1t+R8np+h+5FY2Mdcrv+Nyq
 6nM58l94DK86gXpjXdA1lkK++x4dq/1WskIxNu1cQMYcvdTh
X-Developer-Key: i=henrik@grimler.se; a=openpgp;
 fpr=2C7F29AE97891F6419A9E2CDB0076E490B71616B
X-Migadu-Flow: FLOW_OUT

The last 6 MiB are used by trustzone firmware, and cannot be used by
Linux.  Currently we are saved by that the proprietary bootloader
(sboot) passes available memory to kernel through ATAG_MEM.  Change
memory range in any case so that we do not have to rely on ATAG_MEM.

Signed-off-by: Henrik Grimler <henrik@grimler.se>

---

Similar fix was applied for the exynos5422 odroids in commit
6591a02e17e6 ("ARM: dts: reduce total RAM by 22 MiB for
exynos5422-odroidxu3"):
https://lore.kernel.org/all/1421842972-25807-1-git-send-email-m.szyprowski@samsung.com/
---
 arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi b/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi
index d569fac29b18..ac929e282c84 100644
--- a/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos5420-galaxy-tab-common.dtsi
@@ -40,7 +40,7 @@ chosen {
 
 	memory@20000000 {
 		device_type = "memory";
-		reg = <0x20000000 0xc0000000>;
+		reg = <0x20000000 0xbfa00000>;
 	};
 
 	firmware@2073000 {

-- 
2.30.2


