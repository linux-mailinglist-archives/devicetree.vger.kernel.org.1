Return-Path: <devicetree+bounces-98610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED90966BBA
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 23:57:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46A841F23A17
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 21:57:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 658A11B5323;
	Fri, 30 Aug 2024 21:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="XvipLIwy"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98317165EE0
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 21:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725055051; cv=none; b=kBqnJ5JZQDyIPzIlzKCJJBPTRtVfhpUeUp8iUOUEw/aNCJ8s1MVt7pzQHtSOBUntRlistw8vKNwmIOLHHSrEjPyjnOZyBQcjuLPCdDTWu+C2x+UQ/u6728HAzT88GlgWPc0Bn3iSdHzIku9V/uWXvbNFsfH15+HPMpL+On2dymI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725055051; c=relaxed/simple;
	bh=GU/IBY+w5wDMjgMdS6QWNuKjLDhZlCEeiiFHqfde8uo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YXxl48vbVcYkF5RYXhQvAwurI28WQSPTqUK4Iz5xlTDfQD1EAtEsggeo+4gddjIqHD7vum9D1XESSXAkUHLhnbR7z5IurHf+2jaYHU9zU9KhiqtlBQykEWn0Gl4lzQyXRMWJsj7k0W31dL1VyDi5SIbLXhzioPqVzWd9cM5NryA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=XvipLIwy; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 3EAEF88D27;
	Fri, 30 Aug 2024 23:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1725055047;
	bh=BqIroqOm2GBvKoRexE68+wxWF9ucHmKK5SXsq/H2Vsw=;
	h=From:To:Cc:Subject:Date:From;
	b=XvipLIwyryi6u8M7wbVaECWXulLpN4Ei1/c8ba1bsAj5jsT2hGEv7s/EhBMhuz/76
	 JhDF78dwHBumSKTzK1uggsywzbhPXh6EHUoR1+y9ti/p3IbF8pn/tdgrciYFtrOzRm
	 xKhhdFOYhwLARWPCpJk5nnZDztMJUmmm9m3hlFiOiLm4e9mBJ9L7DwixfQ9hjquMRF
	 crwsNi5X4RGXZ7l1vMGKuH575ke72A2jYP7/jtVKB2BdHZP6oaEJp6e1mGGLMr7KWo
	 1SS3rjkQqKZVEJz8FyeaQ4fJCXfxCJdxqammlI86t06f+ZSaSdJFunndwfQNTwoWXW
	 crZXIKMdnvP+w==
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
Subject: [PATCH 1/3] ARM: dts: stm32: Sort properties in audio endpoints on STM32MP15xx DHCOM PDK2
Date: Fri, 30 Aug 2024 23:56:36 +0200
Message-ID: <20240830215701.103262-1-marex@denx.de>
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

Sort properties alphabetically in audio endpoints of STM32MP15xx
DHCOM PDK2 DT. No functional change.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
---
 arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
index 466d9701add0f..22a2a204433b5 100644
--- a/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15xx-dhcom-pdk2.dtsi
@@ -191,16 +191,16 @@ sgtl5000_port: port {
 
 			sgtl5000_tx_endpoint: endpoint@0 {
 				reg = <0>;
-				remote-endpoint = <&sai2a_endpoint>;
-				frame-master = <&sgtl5000_tx_endpoint>;
 				bitclock-master = <&sgtl5000_tx_endpoint>;
+				frame-master = <&sgtl5000_tx_endpoint>;
+				remote-endpoint = <&sai2a_endpoint>;
 			};
 
 			sgtl5000_rx_endpoint: endpoint@1 {
 				reg = <1>;
-				remote-endpoint = <&sai2b_endpoint>;
-				frame-master = <&sgtl5000_rx_endpoint>;
 				bitclock-master = <&sgtl5000_rx_endpoint>;
+				frame-master = <&sgtl5000_rx_endpoint>;
+				remote-endpoint = <&sai2b_endpoint>;
 			};
 		};
 
@@ -246,9 +246,9 @@ sai2a_port: port {
 			sai2a_endpoint: endpoint {
 				remote-endpoint = <&sgtl5000_tx_endpoint>;
 				dai-format = "i2s";
-				mclk-fs = <512>;
 				dai-tdm-slot-num = <2>;
 				dai-tdm-slot-width = <16>;
+				mclk-fs = <512>;
 			};
 		};
 	};
@@ -264,9 +264,9 @@ sai2b_port: port {
 			sai2b_endpoint: endpoint {
 				remote-endpoint = <&sgtl5000_rx_endpoint>;
 				dai-format = "i2s";
-				mclk-fs = <512>;
 				dai-tdm-slot-num = <2>;
 				dai-tdm-slot-width = <16>;
+				mclk-fs = <512>;
 			};
 		};
 	};
-- 
2.45.2


