Return-Path: <devicetree+bounces-242289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B072C88FD1
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 10:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B96833A2705
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 09:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E3622E611B;
	Wed, 26 Nov 2025 09:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="H8x72dJK"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFE62DECA1
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764149836; cv=none; b=WG9TFhu3l1Dj6JNLq4DXpyEpakHvk35uJFUZi7S2cgdo/OFRDbFfqfl0J92yjfEBh4bqF5qDI/UEW7gAl/y8xBwGsT5X1AjjqL8wD8cXImQUdAcuO8nxT7fKeSXepiks/bD7w9Xdc9vitJSoKocN2okhYDVtUShR7dLlMGR5l7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764149836; c=relaxed/simple;
	bh=dIDXNikMuhDRV3XGrayjUd9ekWdF8D2ACPRzy6JmUhw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type:
	 References; b=aVKanH+MFzfN67IwTO+LOsQSCmPFjHCtolE4kjBO4Gbb7kc8d6hkId+e6XdFWLbu8PqrOtjukZ59Nqb4id/zzkldZaGORM4Wijof5xYJr+tI+K4uFZMjiy+YgcR+OL/Udgro3Jp+xfRqoKNW87Ne+47i6lSwGez5tQkGKOU7xTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=H8x72dJK; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20251126093704euoutp02d9bdc1ccf9d8671499b369c38fcee9e2~7hOs94uAX2750327503euoutp02P
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 09:37:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20251126093704euoutp02d9bdc1ccf9d8671499b369c38fcee9e2~7hOs94uAX2750327503euoutp02P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1764149824;
	bh=sV8WG4SkgwrY0nwCduAZGrd0no09VEERUkkk2n6nQxE=;
	h=From:To:Cc:Subject:Date:References:From;
	b=H8x72dJKncV+uCZ/3i71zjfLZYOhR1lOr4dvHuhd6Ogqv+lEipR2I15w+n6wh3jRZ
	 68xesQvrK/N0i5/AKypevNX7kpM85nKhib9llSvMqKVQUygDXxiiy9AU1vJbYrlZHF
	 UgThHkMzdHVhngcgHHqhST1RvS6CwPnzzRcS9kMM=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20251126093704eucas1p1b93e5c1240c11622e901ba6feb660ca3~7hOspOmUw1897318973eucas1p1C;
	Wed, 26 Nov 2025 09:37:04 +0000 (GMT)
Received: from AMDC4653.digital.local (unknown [106.120.51.32]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20251126093704eusmtip29af044886ae9c8430448a3a57527c292~7hOsV_sS_1006810068eusmtip2d;
	Wed, 26 Nov 2025 09:37:04 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Alim Akhtar
	<alim.akhtar@samsung.com>
Subject: [PATCH] ARM: dts: samsung: exynos4: turn off SDIO WLAN chip during
 system suspend
Date: Wed, 26 Nov 2025 10:36:52 +0100
Message-Id: <20251126093652.3101226-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20251126093704eucas1p1b93e5c1240c11622e901ba6feb660ca3
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20251126093704eucas1p1b93e5c1240c11622e901ba6feb660ca3
X-EPHeader: CA
X-CMS-RootMailID: 20251126093704eucas1p1b93e5c1240c11622e901ba6feb660ca3
References: <CGME20251126093704eucas1p1b93e5c1240c11622e901ba6feb660ca3@eucas1p1.samsung.com>

Commit 8c3170628a9c ("wifi: brcmfmac: keep power during suspend if board
requires it") changed default behavior of the BRCMFMAC driver, which now
keeps SDIO card powered during system suspend to enable optional support
for WOWL. This feature is not supported by the legacy Exynos4 based
boards and leads to WLAN disfunction after system suspend/resume cycle.
Fix this by annotating SDIO host used by WLAN chip with
'cap-power-off-card' property, which should have been there from the
beginning.

Fixes: 8620cc2f99b7 ("ARM: dts: exynos: Add devicetree file for the Galaxy S2")
Fixes: a19f6efc01df ("ARM: dts: exynos: Enable WLAN support for the Trats board")
Fixes: f1b0ffaa686f ("ARM: dts: exynos: Enable WLAN support for the UniversalC210 board")
Fixes: f77cbb9a3e5d ("ARM: dts: exynos: Add bcm4334 device node to Trats2")
Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
This fixes the following issue observed after system suspend/resume cycle:

brcmfmac: brcmf_sdio_htclk: HT Avail request error: -110
brcmfmac: brcmf_sdio_htclk: HT Avail request error: -110
brcmfmac: brcmf_sdio_dpc: failed backplane access over SDIO, halting operation
brcmfmac: brcmf_sdio_htclk: HT Avail request error: -110
brcmfmac: brcmf_sdio_dpc: failed backplane access over SDIO, halting operation
brcmfmac: brcmf_sdio_htclk: HT Avail request error: -110
brcmfmac: brcmf_sdio_dpc: failed backplane access over SDIO, halting operation
brcmfmac: brcmf_sdio_htclk: HT Avail request error: -110
brcmfmac: brcmf_sdio_dpc: failed backplane access over SDIO, halting operation

Best regards
Marek Szyprowski, PhD
Samsung R&D Institute Poland
---
 arch/arm/boot/dts/samsung/exynos4210-i9100.dts          | 1 +
 arch/arm/boot/dts/samsung/exynos4210-trats.dts          | 1 +
 arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts | 1 +
 arch/arm/boot/dts/samsung/exynos4412-midas.dtsi         | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/samsung/exynos4210-i9100.dts b/arch/arm/boot/dts/samsung/exynos4210-i9100.dts
index df229fb8a16b..8a635bee59fa 100644
--- a/arch/arm/boot/dts/samsung/exynos4210-i9100.dts
+++ b/arch/arm/boot/dts/samsung/exynos4210-i9100.dts
@@ -853,6 +853,7 @@ &sdhci_3 {
 	#size-cells = <0>;
 
 	non-removable;
+	cap-power-off-card;
 	bus-width = <4>;
 	mmc-pwrseq = <&wlan_pwrseq>;
 	vmmc-supply = <&vtf_reg>;
diff --git a/arch/arm/boot/dts/samsung/exynos4210-trats.dts b/arch/arm/boot/dts/samsung/exynos4210-trats.dts
index 95e0e01b6ff6..6bd902cb8f4a 100644
--- a/arch/arm/boot/dts/samsung/exynos4210-trats.dts
+++ b/arch/arm/boot/dts/samsung/exynos4210-trats.dts
@@ -518,6 +518,7 @@ &sdhci_3 {
 	#size-cells = <0>;
 
 	non-removable;
+	cap-power-off-card;
 	bus-width = <4>;
 	mmc-pwrseq = <&wlan_pwrseq>;
 	vmmc-supply = <&tflash_reg>;
diff --git a/arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts b/arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts
index bdc30f8cf748..91490693432b 100644
--- a/arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts
+++ b/arch/arm/boot/dts/samsung/exynos4210-universal_c210.dts
@@ -610,6 +610,7 @@ &sdhci_3 {
 	#size-cells = <0>;
 
 	non-removable;
+	cap-power-off-card;
 	bus-width = <4>;
 	mmc-pwrseq = <&wlan_pwrseq>;
 	vmmc-supply = <&ldo5_reg>;
diff --git a/arch/arm/boot/dts/samsung/exynos4412-midas.dtsi b/arch/arm/boot/dts/samsung/exynos4412-midas.dtsi
index 05ddddb565ee..d694730efb9b 100644
--- a/arch/arm/boot/dts/samsung/exynos4412-midas.dtsi
+++ b/arch/arm/boot/dts/samsung/exynos4412-midas.dtsi
@@ -1441,6 +1441,7 @@ &sdhci_3 {
 	#size-cells = <0>;
 	non-removable;
 	bus-width = <4>;
+	cap-power-off-card;
 
 	mmc-pwrseq = <&wlan_pwrseq>;
 	pinctrl-names = "default";
-- 
2.34.1


