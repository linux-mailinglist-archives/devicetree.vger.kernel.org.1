Return-Path: <devicetree+bounces-48027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0782E86FC63
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 09:53:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38EEC1C21AD9
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 08:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE76B24A04;
	Mon,  4 Mar 2024 08:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="qsb3ekEo"
X-Original-To: devicetree@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52349199A1
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 08:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709541999; cv=none; b=KF44IvM1skM8T/vCaAKEifXmcowOMniScpeUaEeojpd4d5YdydQSg2QYsyJTCxVbYN4tm0gms3PabC524agBvXJDluo2Vtr+7ZFdbW/7iTUdbFRJeF/6chFFyEeSCrLdkt8T+naoWCjcF3lZmanLYQyHkEqqhx3AoJetly/OeBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709541999; c=relaxed/simple;
	bh=4yrGMDvfZ9+wFWFoQHVCdF6NRcyP2vDf9cQK0UPreuE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ugWzpc0K63AEid8oKsRZJUmgvmCO+YawPOOslOk/tDVzRI3PI6Ec8zEvSfMxxo+jfe7H2uhlM1z5Y4f2dZ8MLQgHzIcoYTw23kayxdvQUghpyB+/t0RbANJkkfOa0glA0qGnEqoVIrIUAMuoQ4TwA54DBGeQ5tI52hdJDuVN+0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=qsb3ekEo; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=/im0PfNw74+d2oHRPxe0VBg20WnXI5E5dX4laaUfGjc=; b=qs
	b3ekEoHliC0HokDfZFHQAZ6Qci+vj62POCI3UnrkLigZeNIFHxisQSlsLcVqtQl3ZiF4eDFqo4qpF
	5eRv2LBKZ84nrQ+HA3b6T1vlfXBxsinN+78MFzOnxnvP5T5UfmRpgWg91BFEILYAl7cqJGJ60Tn/x
	pAr5MJ+GGxvvtpb9hYQKI4ixHyv+gl/yBUz+Tu9PmfFKITzoyi1g5KcW8wBrczcq5RaNHF1W7ig7O
	PkJFFXD0UyvzCsZ45BicG1WaYXoDe4Jwj6L/dDTF23FiF7HCpjwfq59KBnTJaCaVzBOFI0GYblc63
	M1gJX+F6hrBIeOMNfs7r4byL7iW0AcgQ==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rh3xm-00Ercc-Pg; Mon, 04 Mar 2024 08:46:22 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon,  4 Mar 2024 09:46:11 +0100
Message-ID: <20240304084612.711678-2-ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1462; i=ukleinek@debian.org; h=from:subject; bh=4yrGMDvfZ9+wFWFoQHVCdF6NRcyP2vDf9cQK0UPreuE=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl5YpVyKWkqJ+XYrrPILxhXJLzu3+lqUe07dKSE DJVTb+H9LKJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZeWKVQAKCRCPgPtYfRL+ TkfwB/9OEwVLPuRfXHMa79cH2RyS1gKFPEzOCbIZCxP/4+z14rScVrdyXrhAYdyFnBqM+KkrMih syJUAmdoeSLct5tuvFmCWsh7NHILU6aF28FtAnUSJkBMlK69ZvZYah0oK8HrktTYXCNQMa9O0Q+ wXvICBrKUyNp6JOvd/5a1YPyCFfNxPTp6lNTkmLmyRIQxIHGHJGuQCK4P+I8mG5IZQYMK+EC435 jPweMB8vz+OKrp1h7Owl1//JaNtp97Ecbdov5LlU4Cnv/m5BCjJ8usOnTMdNCOuuV6VmtkMXw4m JbKsBPux+6TsSME3hS+7xDrCOO1jW1U7tgEZvuihAx55OfxE
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

While it requires to have the right phy driver loaded (i.e. motorcomm)
to make the phy asserting the right delays, this is generally the
preferred way to define the MAC <-> PHY connection.

Signed-off-by: Uwe Kleine-König <ukleinek@debian.org>
---
Hello,

Andrew already pointed out when I posted the patch introducing the gmac0 node
that rgmii-id would be the preferred way to setup things. Back then this didn't
happen because this change broke reception of network packets. However this
only happend because I didn't have the right phy driver loaded.

Best regards
Uwe

 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 6a998166003c..36ad48d46bc1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -20,15 +20,13 @@ &gmac0 {
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy0>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac0_miim
 		     &gmac0_tx_bus2
 		     &gmac0_rx_bus2
 		     &gmac0_rgmii_clk
 		     &gmac0_rgmii_bus>;
-	rx_delay = <0x2f>;
-	tx_delay = <0x3c>;
 	status = "okay";
 };
 

base-commit: 67908bf6954b7635d33760ff6dfc189fc26ccc89
-- 
2.43.0


