Return-Path: <devicetree+bounces-240033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 37269C6C788
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 03:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BADF03494E4
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 583ED2DF6F5;
	Wed, 19 Nov 2025 02:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MqwETRBR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3017D2DEA9B;
	Wed, 19 Nov 2025 02:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763520747; cv=none; b=QEmWHa9SGoyXfnpjkigmE7dI0dlnp9ib9nP7RGqH1/Y5Z0QIUJ8zEFuDWf5n9hWPSfhq58Xe8hGQOmyJaOpFGZjXFwmVz3R6a0V8yCBu0rS0xuJYbLXRh08mvbi8Z1oJOM+4Wu4Vp918Yqxa9+a0b1LvCbA7eW4E+C1ppyrxQyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763520747; c=relaxed/simple;
	bh=KFGyrQh93ivdhVyvrOG6wXqJIaFFQnK/RBZGtIK0bf8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FMrX+c7shc9rFipY31UQTimxJA9I6ScWz+Zb00WhLtLWAGeh1bv5AjCt/aNKEOZpetJ6ecPE7mdpK3vM+ZcPzqOUQfAV5sspZUppCIHpz1zBGU94XAOl1HYRvyqk5NXddfQrnvcx6/1qLE2nxmUPQ+sk5+vZASe4orx8OoFvslg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MqwETRBR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46EB7C2BCB8;
	Wed, 19 Nov 2025 02:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763520746;
	bh=KFGyrQh93ivdhVyvrOG6wXqJIaFFQnK/RBZGtIK0bf8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=MqwETRBRk5sHmRufIPnx15j7+h8yl1Rcbv54ztf/Q2pmrFxvm1g9VjJlqMdWxdB3t
	 EIiUbVdr57FnW6proG7NgBLfXYUX6pdAzxqaPtiLr3OvJQQFzFbTmubY8wiEBY5GKZ
	 dvSDDD8wIMAK/SO6R4C7+H4V7IUcmAp3ilSJ3FhATMLeYpPoTRtaVruydMKY4sYtp/
	 RNHrYe4/mr2xPYISzji+OrkYdXAgTqMv8b/BuUEXkkvm8l9nHAt0J4BVIVF1YW642a
	 maP8ofNJIt+KrWdNX1ehGVe5Kt1DAQgnHCDwrgQXya5ogbQl80PEiIHuAmUopTRmLX
	 6z8akzELcZ3cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E49CF256F;
	Wed, 19 Nov 2025 02:52:25 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Wed, 19 Nov 2025 10:52:24 +0800
Subject: [PATCH v3 3/5] arm64: dts: amlogic: s6: add ao secure node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-soc-info-s6-s7-s7d-v3-3-1764c1995c04@amlogic.com>
References: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
In-Reply-To: <20251119-soc-info-s6-s7-s7d-v3-0-1764c1995c04@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763520743; l=913;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=Radwg8hYK+TMvojVUY9r/2XXC2WELdJKWA4Bk2N59s8=;
 b=MGnG/vtgtGjQCDohwEB4pkdfIDdx3n/2tFmD+oKhf8/tNiMYcFZ0HzlC0grUIPf1MMXkTKcwd
 30KL0EfV1D3Dfq1aB+9lnh1SXQXtKhd/Y80YHX1ZLIqcT+ahZBugiph
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add node for board info registers, which allows getting SoC family and
board revision.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi
index 0dca64a2ef9e..da3e607aea85 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-s6.dtsi
@@ -199,6 +199,14 @@ gpiocc: gpio@300 {
 					gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_CC<<8) 2>;
 				};
 			};
+
+			ao-secure@10220 {
+				compatible = "amlogic,s6-ao-secure",
+					     "amlogic,meson-gx-ao-secure",
+					     "syscon";
+				reg = <0x0 0x10220 0x0 0x140>;
+				amlogic,has-chip-id;
+			};
 		};
 	};
 };

-- 
2.37.1



