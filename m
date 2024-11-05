Return-Path: <devicetree+bounces-119223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB129BD93B
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 23:57:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EBDD1F227D2
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 22:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8411C21643C;
	Tue,  5 Nov 2024 22:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="qdTytCw9"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13371F80C4
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 22:57:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730847434; cv=none; b=sDjigNvoVaCo7DvHOsK0j7St/X0NdhECz1eOT7J4QooTaM6HhgIsYfyiiEBygL1cnIgcvOkv5X0Wzo5W5oG2+C2rTzPhW4Cdp53LQIMKPOItfiYDxQopQyFJcDpf51ONaiM8jmMDECHLTKW/ZWG0nqOQ3iaRLGgxm47AE3DuIbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730847434; c=relaxed/simple;
	bh=SKuMRajw20hsFLFwWDU4LonUR/nJn9r53rV1YXD0Rq0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=btwxI4kYv4OGf9ksS3UgbuVZLCCGCoeuE34QCBX8Kgg6wc6Gh8Txziq/6mtQEGwERGnd5c+zli1rnJeCKkM4VXYoDuRhoC7zV1d+8dDjuunM6sbGzX95kSX3tEQwl9LRTzGcyPf37HBQnVBLZSjm6nYnMsjk6aiFjXIq1pUp0DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=qdTytCw9; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 73B4089048;
	Tue,  5 Nov 2024 23:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1730846870;
	bh=ELy6ICW2TEmM6hKJfcyhmgjGc/1ElUN1EwN/EW7ULAc=;
	h=From:To:Cc:Subject:Date:From;
	b=qdTytCw9HYDNNCpo/hKZmctyr8xs//XHJDpyDtGWf0bzAUZcRplGLXX/fP4trdvyN
	 E1lgAnqr2WTz4A3wE6csTdn9vWBHoFGdKCB22uaTUEBtUJ0P+0co6NU2IKPE6ZByZQ
	 oQKqWPXmhpebNQnk/WPGw5pqE/x9bmdKtY5NlsbWOysVU+uw9+uAknyt/VlITqx/Iy
	 MjGGlZR9SKVl+ASW1rCHdA9Dt4JAvQ7yM48uE/s2jrOuIfAbZlC962cnP9G5PeCrzb
	 ldR9sK85NgqEsN4ug8UFGb0WoQoJnwVwz2ZPRKxte/J0b464ZAHtDeqy8yxc6HLVdO
	 tAvouHy3XVz5Q==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: Increase CPU core voltage on STM32MP13xx DHCOR SoM
Date: Tue,  5 Nov 2024 23:46:22 +0100
Message-ID: <20241105224728.147384-1-marex@denx.de>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The STM32MP13xx DHCOR DHSBC is populated with STM32MP13xx part capable
of 1 GHz operation, increase the CPU core voltage to 1.35 V to make
sure the SoC is stable even if the blobs unconditionally force the CPU
to 1 GHz operation.

It is not possible to make use of CPUfreq on the STM32MP13xx because
the SCMI protocol 0x13 is not implemented by upstream OpTee-OS which
is the SCMI provider.

Fixes: 6331bddce649 ("ARM: dts: stm32: Add support for STM32MP13xx DHCOR SoM and DHSBC board")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Marek Vasut <marex@denx.de>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
index 07133bd82efa6..8630de147a52b 100644
--- a/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp13xx-dhcor-som.dtsi
@@ -85,8 +85,8 @@ regulators {
 
 			vddcpu: buck1 { /* VDD_CPU_1V2 */
 				regulator-name = "vddcpu";
-				regulator-min-microvolt = <1250000>;
-				regulator-max-microvolt = <1250000>;
+				regulator-min-microvolt = <1350000>;
+				regulator-max-microvolt = <1350000>;
 				regulator-always-on;
 				regulator-initial-mode = <0>;
 				regulator-over-current-protection;
-- 
2.45.2


