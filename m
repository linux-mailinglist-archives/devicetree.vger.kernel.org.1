Return-Path: <devicetree+bounces-13862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD1E7E0E5C
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 09:52:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B91D71C210BF
	for <lists+devicetree@lfdr.de>; Sat,  4 Nov 2023 08:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65D99C154;
	Sat,  4 Nov 2023 08:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="P+a7nJei"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464F68472
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 08:52:25 +0000 (UTC)
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CC1D1BF
	for <devicetree@vger.kernel.org>; Sat,  4 Nov 2023 01:52:22 -0700 (PDT)
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 202311040852203bf5f2cb8cbf9712f3
        for <devicetree@vger.kernel.org>;
        Sat, 04 Nov 2023 09:52:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=KRsaZaotDzBqRLlyM/Wzg+W2fZv67OoozB01SLJHNHw=;
 b=P+a7nJeiwF5LvaBfye56+FlE2wo6GUaqCB1JVay6Fh4k98wv6oJ+s6Fzd5rvqhhgGqbPVc
 OXvPVoV8AvhKOudR+t4qZgabkpNwLJKen88Pf4rzIzAxIeQuWyvtM7IR32B2I+Nb7o8SiqBt
 OrjF5tija+ZySecWon8PjD2l5p+dk=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
Subject: [PATCH v4 1/5] arm64: dts: ti: iot2050: Re-add aliases
Date: Sat,  4 Nov 2023 09:52:15 +0100
Message-Id: <1edbc1b56ed4ff2256d7afb7db3cab4b3a423692.1699087938.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1699087938.git.jan.kiszka@siemens.com>
References: <cover.1699087938.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Lost while dropping them from the common dtsi.

Fixes: ffc449e016e2 ("arm64: dts: ti: k3-am65: Drop aliases")
Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index ba1c14a54acf..b849648d51f9 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -14,6 +14,16 @@
 
 / {
 	aliases {
+		serial0 = &wkup_uart0;
+		serial1 = &mcu_uart0;
+		serial2 = &main_uart0;
+		serial3 = &main_uart1;
+		i2c0 = &wkup_i2c0;
+		i2c1 = &mcu_i2c0;
+		i2c2 = &main_i2c0;
+		i2c3 = &main_i2c1;
+		i2c4 = &main_i2c2;
+		i2c5 = &main_i2c3;
 		spi0 = &mcu_spi0;
 		mmc0 = &sdhci1;
 		mmc1 = &sdhci0;
-- 
2.35.3


