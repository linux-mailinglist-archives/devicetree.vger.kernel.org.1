Return-Path: <devicetree+bounces-49398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8EE387648D
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 13:52:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7301B282F65
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 12:52:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 189FC1D545;
	Fri,  8 Mar 2024 12:52:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190b.mail.infomaniak.ch (smtp-190b.mail.infomaniak.ch [185.125.25.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D17A1AAD7
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 12:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709902347; cv=none; b=AD3Ita1CWCSFYPorsHLi1dU8VxGH9kS7yEzneagnrB9SgE5/ZL499Vi9Iq2kUuBEWs9nt36kPHjxY04g4cfRc7ZA/8S3isosPYJxXGFzsxkV7u/C3I9yigOT47FzgsHf6yYKFz26SD1jtqgKIq/VIndkPyiIP4qjn2HrHoa2kto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709902347; c=relaxed/simple;
	bh=aqrD/Cge+/rUwjlnDV5JnmAzZubCbxI3etTc0cf5Xyk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cH+5AiCCOsWBNTSaAv9DwDH0cm/E8OjDkl2HVKxlskz3sv6sUS8kusoRpZ7exUog4pK79sEPXuVh1VhkPfM9ZuDE7CohzfBbgtB3xIOniqjrQQ+etzlRVl5Jszqv1FdeImAs4hWXTJyPXGTxjIQWmqxeEmqoIYZ7PcZKCF0Y80Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TrmKD6D1tzmYw;
	Fri,  8 Mar 2024 13:52:16 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4TrmKD1rMbzMppDS;
	Fri,  8 Mar 2024 13:52:16 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 08 Mar 2024 13:52:09 +0100
Subject: [PATCH 2/3] arm64: dts: rockchip: enable internal pull-up on
 PCIE_WAKE# for RK3399 Puma
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-puma-diode-pu-v1-2-2b38457bcdc0@theobroma-systems.com>
References: <20240308-puma-diode-pu-v1-0-2b38457bcdc0@theobroma-systems.com>
In-Reply-To: <20240308-puma-diode-pu-v1-0-2b38457bcdc0@theobroma-systems.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Klaus Goger <klaus.goger@theobroma-systems.com>, 
 Quentin Schulz <foss+kernel@0leil.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-Mailer: b4 0.13.0
X-Infomaniak-Routing: alpha

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The PCIE_WAKE# has a diode used as a level-shifter, and is used as an
input pin. The SoC default for this pin is a pull-up, which is correct
but the pinconf in the introducing commit missed that, so let's fix this
oversight.

Fixes: 60fd9f72ce8a ("arm64: dts: rockchip: add Haikou baseboard with RK3399-Q7 SoM")
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index a51ebb8f8b80f..2484ad2bd86fc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -416,6 +416,11 @@ &io_domains {
 	gpio1830-supply = <&vcc_1v8>;
 };
 
+&pcie_clkreqn_cpm {
+	rockchip,pins =
+		<2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_up>;
+};
+
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&q7_thermal_pin>;

-- 
2.44.0


