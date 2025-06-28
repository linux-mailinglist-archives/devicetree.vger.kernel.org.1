Return-Path: <devicetree+bounces-190722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 30810AEC7E1
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 16:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD4F8189F82F
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 14:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DB272586EE;
	Sat, 28 Jun 2025 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="OPH9awXX"
X-Original-To: devicetree@vger.kernel.org
Received: from out-184.mta0.migadu.com (out-184.mta0.migadu.com [91.218.175.184])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BE82254853
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 14:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.184
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751122175; cv=none; b=FRcYOatWUovUaB/QH/hnA8CV0GuqRUlUeN2yyjZ1EN5KD+027Peoi1AS0hUwS+soBqSbXzXKJq8NdHhRrnRw3vpihYBeE8mDLy1djdUqvXSVRi4TB/s+4P8SzrWw8QvjRGfJdAYQ/awR6I0qPJDBIB5AZUvAT3Pz+7+cN5rkQ8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751122175; c=relaxed/simple;
	bh=X9IwqQTo2UR2KxHZADqXVn1GLFGt+g0mnh2zbr2lFgQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M1Tc8WDaE7rn4ju1vL85of5IJKJDnIeNzpjPvZt845FGI+loQwFhrBMpSNiEad9TN+JFM+86PLLYf/Tb2qImw/gLzQghkKHhPQzV+9M3wH5+js1WXUns/hC1QAXnqhdYwuNVulLNCXzPKPYtIJK0vUdmYbowTsw1BGJog4laXfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=OPH9awXX; arc=none smtp.client-ip=91.218.175.184
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751122171;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TpHunI4Q5945yEc9hYc94Izz4fWB9Fia9hDC3kt/MFA=;
	b=OPH9awXXHy0qHBPky613yy557pwSFvvRjvIeVVoQ077ijb6IzrOAtqGUuV3P3Oo4SzZuJH
	24FJlLvBY06I57jnFa5hBHGAkm4Bt0UX3c00PqGNzR+tm7Hw6/KHV8IBq97mQSNDI3PJ+y
	4wGm1PdWhfnvfr+imV9e2gMdIKPAOOZm8+oPK0g74U/NyaHfBP/gstr7gNYn2nqZ2y0rhy
	LhhIyaqE8fRAbXcJqCgP+/JaOnff7vQKE1zv6TCN6m2oMqAHF2XLemjDdI6WuICEG8fYcx
	wMxP90BlPrjRwS/Ec879dRb9/edF9RHDnm3hP2PWr6auf0pwT8Uz0PnVu0AtjA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 06/10] arm64: dts: rockchip: Simplify mipi_out endpoint on rk3399 RP64 dtso
Date: Sat, 28 Jun 2025 16:32:40 +0200
Message-ID: <20250628144915.839338-7-didi.debian@cknow.org>
In-Reply-To: <20250628144915.839338-1-didi.debian@cknow.org>
References: <20250628144915.839338-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The only thing actually added here is a single endpoint on mipi_out,
which is already defined in rk3399-base.dtsi, so it's simpler to just
reference that phandle, which allows the removal of several properties.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 .../dts/rockchip/rk3399-rockpro64-screen.dtso | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso
index a26c8e05c13b..77973ae870b6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso
@@ -52,19 +52,6 @@ &mipi_dsi {
 	#size-cells = <0>;
 	status = "okay";
 
-	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		mipi_out: port@1 {
-			reg = <1>;
-
-			mipi_out_panel: endpoint {
-				remote-endpoint = <&mipi_in_panel>;
-			};
-		};
-	};
-
 	mipi_panel: panel@0 {
 		compatible = "feiyang,fy07024di26a30d";
 		reg = <0>;
@@ -80,6 +67,12 @@ mipi_in_panel: endpoint {
 	};
 };
 
+&mipi_out {
+	mipi_out_panel: endpoint {
+		remote-endpoint = <&mipi_in_panel>;
+	};
+}
+
 &pwm0 {
 	status = "okay";
 };
-- 
2.50.0


