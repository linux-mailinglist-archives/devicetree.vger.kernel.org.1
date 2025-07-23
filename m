Return-Path: <devicetree+bounces-199045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33343B0F22D
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 14:25:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97CC9968172
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 12:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 969552E888B;
	Wed, 23 Jul 2025 12:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="uMhjSf4Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1056B2E7F30
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 12:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753273459; cv=none; b=GpgNqsWVCRU7LKJnb/KGLsv/qNTvhMcLHEUISbSNcdFgMwN81FFiKUkL5NzmU6Z62CRBUarVLGq7npr0otjbKMu5w/ldQx8qHVWp7UfeaBvSiJ55iJLwtdfddZurx6nl77944jSxOgi+b3qmdcLwb/O4YK+foSgmtklMnVJs6kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753273459; c=relaxed/simple;
	bh=yZM9EJcl3Q/l1KYSeR3q04gZk0QOD30nAkEcOqu9Fe0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UhxIAy96+W9DwphkJdUW0imyjIsap1HGPwuZZevh66NgyLB59yG29gYLJXbkvlDFr8yW1Eg8bXvhzMW9Kpy65oJBFQPTFW8tlEUhPOGvoJUdlnwJQ5MsvprvJycxHEtoMXi5c+BoW3pxZ4yS9DiFpHZd3ewdeiq4guieOKFTuDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=uMhjSf4Z; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1753273455; bh=C3Sf3TjZd+mvtKJHnbLP2Cb4CrvYDvInYr+aLRUdZlM=;
 b=uMhjSf4ZhopE7OzFLpOWWoKf7tnluASInCuuxsn+IjxhDyt9X/by2c0AUKEEnQJCGpkOHCMzn
 pIlWugbqoDXU+q3SIgcMR9Y/QYXUJBn19zulYxryAbgVbpdPL8enVMvuAbaBFJHdKLVUdMj7ZxX
 8A7yMXzeNJ0uMxTXOgRzsXvkfyftShSXl5s5Q8+o77N/l+dW6F+EVTGI+UCIutDY2PntwZLHBwV
 4RUqfw0fsnC449TtF4p2aZlECAqXN3Ku1Rj0zGGVGNH1WsIcU6Dm+jUtFQyoKJ3tLnFyCAd9lWU
 KIA7xiaRpJlmJF8yk5cxax58CADoiPfXE/K4IOelmuWg==
X-Forward-Email-ID: 6880d469cb0ee86f9731a11f
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 09/11] arm64: dts: rockchip: Enable USB 2.0 ports on Radxa ROCK 2A/2F
Date: Wed, 23 Jul 2025 12:23:07 +0000
Message-ID: <20250723122323.2344916-10-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250723122323.2344916-1-jonas@kwiboo.se>
References: <20250723122323.2344916-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ROCK 2A has three USB 2.0 Type-A HOST ports behind an onboard
USB hub, and one USB 3.0 Type-A port.

And the ROCK 2F has two USB 2.0 Type-A HOST ports behind an onboard
USB hub, and one USB 2.0 Type-C OTG port.

Add support for using the USB 2.0 ports on Radxa ROCK 2A/2F.

The onboard USB hub handles OHCI so only the EHCI controller is enabled.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi | 13 +++++++++++++
 arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts | 12 ++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi b/arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi
index aedc7ee9ee46..aeced80f1ef2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi
@@ -286,8 +286,21 @@ &sdmmc {
 	status = "okay";
 };
 
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_host {
+	phy-supply = <&vcc5v0_usb20>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0m0_xfer>;
 	status = "okay";
 };
+
+&usb_host0_ehci {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts b/arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts
index 3e2b9b685cb2..a517dfe9930e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts
@@ -8,3 +8,15 @@ / {
 	model = "Radxa ROCK 2F";
 	compatible = "radxa,rock-2f", "rockchip,rk3528";
 };
+
+&u2phy_otg {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	extcon = <&u2phy>;
+	maximum-speed = "high-speed";
+	phys = <&u2phy_otg>;
+	phy-names = "usb2-phy";
+	status = "okay";
+};
-- 
2.50.1


