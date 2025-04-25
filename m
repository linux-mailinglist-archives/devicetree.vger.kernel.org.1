Return-Path: <devicetree+bounces-170732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BB2A9C35D
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:26:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 979FD166109
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 09:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02AD42367A1;
	Fri, 25 Apr 2025 09:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="bvGmNe8W"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta0.migadu.com (out-181.mta0.migadu.com [91.218.175.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCFB1DB127
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745573193; cv=none; b=mZvQVK8CQzOQp98lbny6o5p5YJQMBjwSiGI1OE9Zj3LDFL3QyHOyUiyZhXDpRRxdsFGwnzcVs93GWFvMn+A+FZue+jy2PZkRRIztlUfE/RSJ2WIUU/VOoD9RF8c5Ru8LrgsF3ahnVVbU0SX3l1ZO0ZFnzGCRKr5OpizQ79poN2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745573193; c=relaxed/simple;
	bh=jvwRCIJ196biEMpRdCmp/xe7J99TNTyUft3H4KEdtkI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OXR9whgwAbqiCO+jXiGKvnnD2lm4Zmc/7j8hlhpTE0i8BGAF0OPuegEEIj8wSV1FKX7bjkoh+lWlwA/dyBe4Sq2mzSgfPJohm9Ni7vrgX5XTPLR+chns1m6PZYljKF2MG+kz4RLb565NxnBANur1XY9PtzKU9+HKS/gcEdD0lJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=bvGmNe8W; arc=none smtp.client-ip=91.218.175.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1745573189;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8IWFeZwQkKxKDNc32b6AQqa8Tbi3kqSkUWXHW/RB4xQ=;
	b=bvGmNe8WywhaYqVBAc60FF65NJltCetdn45FTsqiGHTawpD83xmIccx1HDuMIWO422PudS
	W8gEtY6zLaoi/ndbRSwl2eKtGbjZJ+4pZVFDhvfu4OlsqeaJXPEa/SNsXuU1wF0jPlTL8w
	GoFg8PldKlrGcFUf97TPFhaGFjmxazLKlqdthMljYv2adSmBSMcRe7BXVkmNS1gAzSYIUu
	8Qftpj18dvKi2px1HdAlYOwEfU5jppXUGG+FbPhr1b3KE3RU+i9vqRFM4WRjlCxR9TAYe3
	GQZ/F7zTEhATo4fAY1kE6ZPA3Rgq2yLIAgN4glzpJfKg+p4dGncJVelOI4u4fg==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Dang Huynh <danct12@riseup.net>,
	Johan Jonker <jbx6244@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 1/4] arm64: dts: rockchip: Add vcc-supply to SPI flash on rk3328-rock64
Date: Fri, 25 Apr 2025 10:44:41 +0200
Message-ID: <20250425092601.56549-2-didi.debian@cknow.org>
In-Reply-To: <20250425092601.56549-1-didi.debian@cknow.org>
References: <20250425092601.56549-1-didi.debian@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

As described on page 6 of the Rock64 schematics for both v2.0 and v3.0
the SPI Flash's VCC connector is connected to the VCC_IO power source.

This fixes the following warning:

  spi-nor spi0.0: supply vcc not found, using dummy regulator

Fixes: e7f4e924f46d ("dt-bindings: mtd: jedec,spi-nor: add optional vcc-supply")
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index e550b6eeeff3..5367e5fa9232 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -343,6 +343,7 @@ flash@0 {
 
 		/* maximum speed for Rockchip SPI */
 		spi-max-frequency = <50000000>;
+		vcc-supply = <&vcc_io>;
 	};
 };
 
-- 
2.49.0


