Return-Path: <devicetree+bounces-95832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AF195B6DE
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 15:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06105B25634
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 13:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A567F1CB32D;
	Thu, 22 Aug 2024 13:32:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from muminek.juszkiewicz.com.pl (muminek.juszkiewicz.com.pl [213.251.184.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97531CB315
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 13:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.251.184.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724333556; cv=none; b=I/BmETevofSP+EusxoJH86LNGXImgPonabNMQ9LjjWLNI4kw877lZZ8kMFnoxJpab3z83WEhv58nI4xduWl9YeHmLGuH4zCbVheDz84nGvFfW2d6g7MewvkCzFgeYxE4hqGHlTRP6SMFDHO/EG3DAIOUK5nwrsy3aIMABpLa3ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724333556; c=relaxed/simple;
	bh=eY/Ib0/fAcPDomzfC0GHqlFUoJAeqKwRUIMD65H+8L0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o1P8dbWxQ/Z6nRCDesatMVyOn13lhkMHDSPjhyLXqV1XkpGlVLzXsUzj0nC2GjK0c0VDD9ugMdBA7O6oaCL2jEibv13v4Ukgqlud69d8BR/XeSpju9r/cbDR/ytCaeNd+Mcvvq8cI+0jOvIjfsiRarJFbmvF2FLHUfMIRc/Ll0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org; spf=fail smtp.mailfrom=linaro.org; arc=none smtp.client-ip=213.251.184.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=linaro.org
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 1D692261998;
	Thu, 22 Aug 2024 15:32:30 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id nJOEVAYzmaH7; Thu, 22 Aug 2024 15:32:27 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 82C7226018D;
	Thu, 22 Aug 2024 15:32:24 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Thu, 22 Aug 2024 15:32:10 +0200
Subject: [PATCH v4 6/8] arm64: dts: rockchip: enable GPU on NanoPC-T6
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240822-friendlyelec-nanopc-t6-lts-v4-6-892aebcec0c6@linaro.org>
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0

Enable the Mali GPU on FriendlyELEC NanoPC-T6

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index fcea11ff2af2..74dc1b490ca3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -296,6 +296,11 @@ &gpio4 {
 			  "", "", "", "";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;

-- 
2.46.0


