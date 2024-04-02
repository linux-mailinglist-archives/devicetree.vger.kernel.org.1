Return-Path: <devicetree+bounces-55632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FB1895CE9
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 21:41:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06D6D1C21D5D
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 19:41:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1098715CD79;
	Tue,  2 Apr 2024 19:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IENsSOWz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CE415CD71;
	Tue,  2 Apr 2024 19:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712086897; cv=none; b=sSCY0sNfVdOi3ppBNUwvhZEka9YfuWRayw2EvZbOzKnyM37GRysWYTH+DYOC+Bu5sYwqOiAD5rXXw7/2B1C5WGisotY4LO9GN0xfnVpATRssI3u2TbD4wTeYotcj+rhdLayCMF7P+lb5nresT12+AgT+WKcf9hTT2s14/vGiT0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712086897; c=relaxed/simple;
	bh=AlzlvtkAMDV7KUvmwVjh1TwImdHtkdU3hu52/h1hpEc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jWOWJR268MVoFm8taI7Le1o8g4RuqUPJ/50/0X4qj/5DYmQTkNVyjNBrtUeWvv2gPUBJbwQkYZrHzgapXuNTtxIv5A1W8n/WOoL05pF+0cuhfAscCH14LFkuAoHcy+QszYbP6pegQ7vWYEHn7xGG6500bkLL2w+UBDn1hRnTSCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IENsSOWz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D349C43399;
	Tue,  2 Apr 2024 19:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712086897;
	bh=AlzlvtkAMDV7KUvmwVjh1TwImdHtkdU3hu52/h1hpEc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IENsSOWz5vclac/3uoKzGDjDwBRQid5WIZYnXGOEcgoDLhtKtkJBkUNlXrKtq/kyP
	 AzEKUdYiTr8OIqye+P0yISXHMdhOTocuFvD4HT4g6mr8MZr0I2wvNDikwYw1QKK6kE
	 UCF8PP6c6Ryoo9L5WuA2/NqPyjkca8XJIiR5HTUdJGnEH9qE6gaHGtqocnx8r87Fkx
	 d6GOhotG/JcsMeAqYmUvc7ItJq7sDbkVGX3YTp0d27viE+DqSF13TrahSedMKdqROE
	 XjiF1kAZNPswLHhrcZGBKA5B83iprAO8Tr+y3tww3Vz2JwfATkFjBViXhyjJwTKqVJ
	 51Hv7k5f6M4oA==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 2/2] arm64: dts: cavium: correct unit addresses
Date: Tue,  2 Apr 2024 21:41:29 +0200
Message-Id: <20240402194129.69481-2-krzk@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240402194129.69481-1-krzk@kernel.org>
References: <20240402194129.69481-1-krzk@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct several nodes' unit addresses to fix dtc W=1 warnings:

  thunder-88xx.dtsi:381.44-398.5: Warning (simple_bus_reg): /soc/interrupt-controller@8010,00000000: simple-bus unit address format error, expected "801000000000"
  thunder-88xx.dtsi:400.30-406.5: Warning (simple_bus_reg): /soc/serial@87e0,24000000: simple-bus unit address format error, expected "87e024000000"
  thunder-88xx.dtsi:408.30-414.5: Warning (simple_bus_reg): /soc/serial@87e0,25000000: simple-bus unit address format error, expected "87e025000000"

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/cavium/thunder-88xx.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/cavium/thunder-88xx.dtsi b/arch/arm64/boot/dts/cavium/thunder-88xx.dtsi
index e29e878ee120..2e65ea715800 100644
--- a/arch/arm64/boot/dts/cavium/thunder-88xx.dtsi
+++ b/arch/arm64/boot/dts/cavium/thunder-88xx.dtsi
@@ -378,7 +378,7 @@ soc {
 		#size-cells = <2>;
 		ranges;
 
-		gic0: interrupt-controller@8010,00000000 {
+		gic0: interrupt-controller@801000000000 {
 			compatible = "arm,gic-v3";
 			#interrupt-cells = <3>;
 			#address-cells = <2>;
@@ -397,7 +397,7 @@ its: msi-controller@801000020000 {
 			};
 		};
 
-		uaa0: serial@87e0,24000000 {
+		uaa0: serial@87e024000000 {
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x87e0 0x24000000 0x0 0x1000>;
 			interrupts = <1 21 4>;
@@ -405,7 +405,7 @@ uaa0: serial@87e0,24000000 {
 			clock-names = "apb_pclk";
 		};
 
-		uaa1: serial@87e0,25000000 {
+		uaa1: serial@87e025000000 {
 			compatible = "arm,pl011", "arm,primecell";
 			reg = <0x87e0 0x25000000 0x0 0x1000>;
 			interrupts = <1 22 4>;
-- 
2.34.1


