Return-Path: <devicetree+bounces-64889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8958BB555
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 23:14:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC5231C213AE
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 21:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6AF47A6C;
	Fri,  3 May 2024 21:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="t81/V0Ck"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FA22EB1D
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 21:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714770848; cv=none; b=kG1DXz73CqkK18rqrcGia1oIDMnRtIXNnlXj8Av1309srbHyWYmdpo4RkfFAdCou6yTSoxPxrHlfYHU3t+yka8wppeP+pnBK6iRuuiZaXoArR3OJt4ggrjxE227vB4KynM0EgZIounF8rx9U9wWjeLvbwUn8dVIE1y0ZKHc5pyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714770848; c=relaxed/simple;
	bh=E8fSfPDanWKhY63OGzNYEeZVAK8ZOVmfz2dJ0kcur2U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OVI+q+OSvDMFUsJ+LIq0mEZ99bnxASPFSobG7vApUJKJhlZAmmvAvhChoSDt/gFhkvXHTfjln/IbaZbPjqneUXKEcr99rF3oNhtmrxudijc7wkeoEKXkOSlx6E5UwAdxYqC0iiFN8UamNTrt8uBHHI1azkW9yl2s4Gt/yafvOT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=t81/V0Ck; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1714770836;
 bh=IEtiYMrqhyG7VeKkvj3sxxLLjVBj8CFwUTkak0hK3lE=;
 b=t81/V0Ck3Ab0yo3Oy8IUXyk30C2Fx6ctMxyovFDDfJgIGuqCCFX9iq1BGWYQ6N/k9muvxTdI9
 RNrWubygr/CutmsO/RddrJq6XhR6lWN8Qapd2mBVTuFCP40IpamzDqOv5GmedNm8cSdqfo5djSr
 iO9hMTdR72lBxP5QeJkkHXcnZ+T93qvUosnheBhSFZuWbqSWHza/aUBj5Pvc6IeG1RkB3dlAsFV
 wVgZqd3W7M8Tr0LDnQ0cMQwBelWfJYnZSdCeTwLf9zKEI2vTyFROfS3iSOX7XTt4ii8w+B4aSf+
 5Zk8d/M0fPseTc3W+EMu1RiWUE7H3oGrcSliUWQBJvhA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 0/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Date: Fri,  3 May 2024 21:13:39 +0000
Message-ID: <20240503211346.1834868-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 663553905f172f3129915380

This series adds initial support for the Radxa ZERO 3W/3E boards.

The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
computer based on the Rockchip RK3566, with a compact form factor and
rich interfaces.

Schematic for ZERO 3W and ZERO 3E can be found at:
https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_v1200_schematic.pdf

Changes in v2:
- Collect acked-by tag
- Add to Makefile
- Add patch to fix #sound-dai-cells warning

Changes in v3:
- Fix devicetree spelling
- Sort hdmi-con, leds, pmic@20 and regulator@40 nodes
- Change to regulator-off-in-suspend for vdd_logic
- Drop patch to fix #sound-dai-cells warning, similar patch [1] already
  exists

Changes in v4:
- Change compatible of vdd_logic
- Add vcc5v_midu and vbus regulator and related vcc8/vcc9-supply prop
- Adjust clock_in_out prop for gmac1
- Add cap-mmc-highspeed prop to sdhci
- Add sdmmc1 and uart1 nodes used for wifi/bt on 3W
- Rename rk3566-radxa-zero3.dtsi to rk3566-radxa-zero-3.dtsi
- Rebase on latest mmind/for-next tree

[1] https://lore.kernel.org/linux-rockchip/3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com/

Jonas Karlman (2):
  dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
  arm64: dts: rockchip: Add Radxa ZERO 3W/3E

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 464 ++++++++++++++++++
 .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
 .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  85 ++++
 5 files changed, 599 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts

-- 
2.43.2


