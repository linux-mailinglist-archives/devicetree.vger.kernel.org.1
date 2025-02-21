Return-Path: <devicetree+bounces-149284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D70D3A3EFC1
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 10:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1AD217A96A4
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 09:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92877204097;
	Fri, 21 Feb 2025 09:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTgml/M9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AD11E9B21;
	Fri, 21 Feb 2025 09:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740129301; cv=none; b=IwNFGQuOapAlyM9xIJjibRuYbV6dW+WlPYHq+GRu8kvheN1lhYs7NYHDRNM9ix5Gql7fdQtrmgqk0S+TZ71VLMoEp7KwKDXd3A7uBepb9zO8ZTxq0r8TMRtm1WZ1QLFRnrJ5G/eAwBsC3QtKfyLfzmnYxXqid8UHkfvIF12+of8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740129301; c=relaxed/simple;
	bh=BV6VLJUzkK8pZ9XtIRWtZGZDINI77ELQvsoIDlsinko=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=c53jsNVnmcSruV/g5vLgv2dMzfDaieyyuPwJy+uVOdDfBh8y0cxjOKZygDHPoz1sIinCZnM7ss6Mx/B2DU5G0O2QJbTHe7+4nK3sHqOWnss8vYeK53QdxAzBZRY7kP6psSscBF/RlwwyS0vsH2RqhHifNgeJKWshx6/7hXveqTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTgml/M9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38FB4C4CEE6;
	Fri, 21 Feb 2025 09:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740129300;
	bh=BV6VLJUzkK8pZ9XtIRWtZGZDINI77ELQvsoIDlsinko=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YTgml/M9aEOmiCRD9I7H0HQTj6OOGm5IDQahjFQQc/16sBZm3AzsUeczoatVjjzX4
	 GJWovGRKv0ZbQBji5L13Pkc1XCptpVlq2SWCY84HnEyhyDTMcfYfiU3JLcTCYhm7Dp
	 Fa3uAl7WIhcmUKbkW0ZvhcoycXJEoDAaZZ9j5oJoF0ZVYYfdv82j4xZ+I7FrVh+VW2
	 1IbTX+Goo/SoZymon9fIwbIjV5i4z1zlcyYwnSSS+3jquZLwmn1R86HGd0rtMFFfNB
	 SByCP8N/uY/0QPbTbOzNM6RQOS90mH6iFy61DJwerDAjETB91gMXkln0YVKxEVAQGK
	 xCYJsrPcIKj8g==
From: Michael Walle <mwalle@kernel.org>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Jared McArthur <j-mcarthur@ti.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Michael Walle <mwalle@kernel.org>
Subject: [PATCH 2/2] arm64: dts: ti: k3-j722s: fix pinctrl settings
Date: Fri, 21 Feb 2025 10:14:47 +0100
Message-Id: <20250221091447.595199-2-mwalle@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250221091447.595199-1-mwalle@kernel.org>
References: <20250221091447.595199-1-mwalle@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It appears that pinctrl-single is misused on this SoC to control both
the mux and the input and output and bias settings. This results in
non-working pinctrl configurations for GPIOs within the device tree.

This is what happens:
 (1) During startup the pinctrl settings are applied according to the
     device tree. I.e. the pin is configured as output and with
     pull-ups enabled.
 (2) During startup a device driver requests a GPIO.
 (3) pinctrl-single is applying the default GPIO setting according to
     the pinctrl-single,gpio-range property.

This would work as expected if the pinctrl-single is only controlling
the function mux, but it also controls the input/output buffer enable,
the pull-up and pull-down settings etc (pinctrl-single,function-mask
covers the entire pad setting instead of just the mux field).

Remove the pinctrl-single,gpio-range property, so that no settings are
applied during a gpio_request() call.

Fixes: 5e5c50964e2e ("arm64: dts: ti: k3-j722s: Add gpio-ranges properties")
Signed-off-by: Michael Walle <mwalle@kernel.org>
---
 arch/arm64/boot/dts/ti/k3-j722s-main.dtsi | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi b/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
index 3ac2d45a0558..6da7b3a2943c 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
@@ -251,21 +251,6 @@ &inta_main_dmss {
 	ti,interrupt-ranges = <7 71 21>;
 };
 
-&main_pmx0 {
-	pinctrl-single,gpio-range =
-		<&main_pmx0_range 0 32 PIN_GPIO_RANGE_IOPAD>,
-		<&main_pmx0_range 33 38 PIN_GPIO_RANGE_IOPAD>,
-		<&main_pmx0_range 72 17 PIN_GPIO_RANGE_IOPAD>,
-		<&main_pmx0_range 101 25 PIN_GPIO_RANGE_IOPAD>,
-		<&main_pmx0_range 137 5 PIN_GPIO_RANGE_IOPAD>,
-		<&main_pmx0_range 143 3 PIN_GPIO_RANGE_IOPAD>,
-		<&main_pmx0_range 149 2 PIN_GPIO_RANGE_IOPAD>;
-
-	main_pmx0_range: gpio-range {
-		#pinctrl-single,gpio-range-cells = <3>;
-	};
-};
-
 &main_gpio0 {
 	gpio-ranges = <&main_pmx0 0 0 32>, <&main_pmx0 32 33 38>,
 			<&main_pmx0 70 72 17>;
-- 
2.39.5


