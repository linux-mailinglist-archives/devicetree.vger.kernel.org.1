Return-Path: <devicetree+bounces-36469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF997841522
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 22:24:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2BB41C22C92
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 21:24:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32BDD1586ED;
	Mon, 29 Jan 2024 21:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="bOf4iwfW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F23157E87
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 21:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706563443; cv=none; b=TDb6kGN7Mgisd89G5hrkZkTQS+uCEAmBkBrAl7YdGGbaGU6H9etzCjXqpSK0D7cEJ9SnoMNm2Of41Nt7aShdC8G1EJe4MNWKRP7ozdVp5gYuhwyo6u3CPS1CohPaIH6NuFFWaEpflg5Yh3eC9mV2YI9HIRoAwaLXHZuaL/aBC0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706563443; c=relaxed/simple;
	bh=GlrNaF+y+j+1HhgAvWni+MuqU1fevfBA3ErLcO44YAY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=S5eBxRA96H5ifEMYVe791B+TdeUf1RcxrBbRbBGf+vWZA2WHXBiNKQ4SD3bf6dItNxhx2Pd4GK0PswPTzcn+M94Myy9agCIIBeyxBQJfo3ZAzgQ2+6B7P6o7jHUbUWqaqSR4HuucEjaf5NZNnrbedZrSOrtgztIaPOhYnKN9PII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=bOf4iwfW; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=adASpJY7Nmq+Nz3UDqRYg+KRkDudZYgsA7/Kke8jZTg=; b=bOf4iw
	fWG21fnRcm13dC+ASiLMZmMQKolzuDRv6g3NyXyyxUrwNM1c9QV1QG6fTdF+hBV7
	B7E9DGMbOA3qGCn5pfaZm4QCxyZSeutJepCrNpy3+ouaMD4Bbq9GiNgQe7+irTSV
	NI92grQg8jNDG9gVEjCqO8kq2ZSzdh9zsN/z03d5Os5MsC0i3OOR2xL060GqAtNK
	lOshVpPMJpmkJYm6SS5pL5R9bZqA3dovE2P04/9plcAZQ+tuIhpADGvwqIQW2+cJ
	XNsSvrD0A8L8d/0XWWs+rJrSLWJXURJTQgOlxfQgI1anV/SNwBmGmHXBJ8kRVRDG
	pHuuMjIJ7jHGFcWg==
Received: (qmail 2612118 invoked from network); 29 Jan 2024 22:23:56 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 29 Jan 2024 22:23:56 +0100
X-UD-Smtp-Session: l3s3148p1@gOlkQxwQdudehhtJ
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/2] arm64: dts: renesas: ulcb-kf: adapt 1.8V HDMI regulator to schematics
Date: Mon, 29 Jan 2024 22:23:49 +0100
Message-Id: <20240129212350.33370-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240129212350.33370-1-wsa+renesas@sang-engineering.com>
References: <20240129212350.33370-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It is named T1.8V in the schematics. Also add properties dcoumenting it
is always on, also during boot.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/ulcb-kf.dtsi | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
index c8dc06f0dfed..6b6a0a8bc1db 100644
--- a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
+++ b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
@@ -32,11 +32,13 @@ hdmi1_con: endpoint {
 		};
 	};
 
-	hdmi_1v8: regulator-hdmi-1v8 {
+	t1v8: regulator-t1v8 {
 		compatible = "regulator-fixed";
-		regulator-name = "hdmi-1v8";
+		regulator-name = "t1v8";
 		regulator-min-microvolt = <1800000>;
 		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+		regulator-always-on;
 	};
 
 	pcie_1v5: regulator-pcie-1v5 {
@@ -154,11 +156,11 @@ hdmi@3d {
 
 				pd-gpios = <&gpio_exp_75 5 GPIO_ACTIVE_LOW>;
 
-				avdd-supply = <&hdmi_1v8>;
-				dvdd-supply = <&hdmi_1v8>;
-				pvdd-supply = <&hdmi_1v8>;
+				avdd-supply = <&t1v8>;
+				dvdd-supply = <&t1v8>;
+				pvdd-supply = <&t1v8>;
 				dvdd-3v-supply = <&reg_3p3v>;
-				bgvdd-supply = <&hdmi_1v8>;
+				bgvdd-supply = <&t1v8>;
 
 				adi,input-depth = <8>;
 				adi,input-colorspace = "rgb";
-- 
2.39.2


