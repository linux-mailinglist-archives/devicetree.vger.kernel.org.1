Return-Path: <devicetree+bounces-56970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1F589B375
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 19:56:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EE921C2095C
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 17:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 838FD3BBD6;
	Sun,  7 Apr 2024 17:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ISsNHBQI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356203D38E
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 17:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712512592; cv=none; b=WAqtYbrf5wZNfKdfkfVP5sWQKl3eYr4IEmyIF9NED2o/d2tJ2Vo4CTQT1pSOgwzVRyq9RMI0jCGmjEDe15svDD9JExEPF2vByZ8jQPo3wgkIVZxwoXvMzuAU7Yaz0s7sXC3Ga4VqQijkPjzc9g7DV10iNrh1quztHJ/yXg3Q72U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712512592; c=relaxed/simple;
	bh=ictLLqQwGiIfCcjRm9YLYj0/AmfJSDKvKosh5as4Eq4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oBhdKIduwu9dBaO5sYdSAvei9Om4LhP+CmMQJClWtqc2ohISTRlhLivPCTR0efSM62wdHCSC64WkD4mBAYBwGpkMSgbKTnY6S6kY11MadN5flnDHqCXAdwI4IoGMRAjIfewtlRh4dC9L539xem7kC0oEf9Ah/tbEYDqV77ZcAFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ISsNHBQI; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712512587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=f5Jw1TP9e/00pRBHBUER+O5BjO8OkjYZAyYWioClWTw=;
	b=ISsNHBQI4TjeZZ5WgEiLqbTJwL1HRg05wrZOioI3Lb2wCIedrSb6I6Ebb+p/yOtaadc4zN
	1vyGHfraSkxYAqKi0BP1HrD3yJbg+eToN3cPsR62qnQs20iTDl/vVigC23mP0D5KlaXp6x
	MDx1LSGJJBZ+8q7f9fQjyc/Bp+XmJT77Yg7ZhM2pf9Qi2Hn4PLaP93igLqN/olEZ4Xwb72
	T71pQBlMdjjol07Cx3D8/lgpkE4O+tdwnEsw9cbApRXK8WPLX2YJC6GgjbkPFIstGjJTGl
	fW/v924249sGoDHHg+c8i5eixorWZS1rk6T4OmEQjVjOBoz7uetsHC8ugedJ4w==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH] arm64: dts: rockchip: Designate the system power controller on QuartzPro64
Date: Sun,  7 Apr 2024 19:56:24 +0200
Message-Id: <c602dfb3972a0844f2a87b6245bdc5c3378c5989.1712512497.git.dsimic@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Designate the primary RK806 PMIC on the Pine64 QuartzPro64 as the system
power controller, so the board shuts down properly on poweroff(8).

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 67414d72e2b6..22bbfbe729c1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -456,6 +456,7 @@ pmic@0 {
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		pinctrl-names = "default";
 		spi-max-frequency = <1000000>;
+		system-power-controller;
 
 		vcc1-supply = <&vcc4v0_sys>;
 		vcc2-supply = <&vcc4v0_sys>;

