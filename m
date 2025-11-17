Return-Path: <devicetree+bounces-239284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B59E6C6385A
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 11:24:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ABD224EB692
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 10:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3DDF2D97AA;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7VmZmxy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABDEB2D3EDC;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763374622; cv=none; b=kRStSjPtNaKchRNZGCuRwSbKdfuljLI5BA+klQkI1zW/PEBUdO0Nv/NB3P4j26Z5esOJMMf4cbLQW3liynn0iZRJaS7XAixrqgYrdP9ZaZt9XPRAZteOneTdr1kenHpD7TZZEYZf/e0p6qoKey6MaJUEUWtKR8+JVX2WonFnPcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763374622; c=relaxed/simple;
	bh=K/UsZ1gWQPrXE8Cmyyx1itR+TSnLgVk5ZkCZ5Z2VCCw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hVHvvJZfgb+bGz/TpeeCUrcPtwrV8l4D6V886Y7QcjrGNnamhjLx/vlqW0dRm9ReBy/F0sFrRNdRURMJ0cvSvbiUEAkMFs0mFc9v70+1R4O3VttNfRCvjfqsy9q9CiI9FilA5COvij/MGz5F7+wHJSmGeWAOISoRH8sefsOxVIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7VmZmxy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4CDABC2BCB1;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763374622;
	bh=K/UsZ1gWQPrXE8Cmyyx1itR+TSnLgVk5ZkCZ5Z2VCCw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=L7VmZmxyExLF7iJUzg1CUQ6ZCV1DC6AY7daQx1MHx/2bfEfoyiBurUWJBLmevLAFS
	 rdsXxCpXoAjREyozXGDU7GDhw4S4m7MxamMtQGIPZU6V2u6hv6HOQhkkzL5w308xHW
	 Q/+gbELPlGsP+H7lWxreGQoO+ETS4fJPAnkmg+2KcpPZrJejlKjXNvzYsLGxRhff6A
	 nivaMCxfYuGa1BAetdsO3WmhGLLXiRl9G+w4v9ScxUvV5whmdaS0HFAMHG8hISh66F
	 oXMj9weBMt7cUp4nIA3KLXbdo0c34YOBVyTbFO9f0+6mEWGgSoE7pVNs8F+HQB+lDZ
	 6kAg6rRKbpDPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41135CEBF8D;
	Mon, 17 Nov 2025 10:17:02 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Mon, 17 Nov 2025 18:17:02 +0800
Subject: [PATCH 3/5] arm64: dts: amlogic: s6: add ao secure node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-soc-info-s6-s7-s7d-v1-3-6ab8aab03dce@amlogic.com>
References: <20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com>
In-Reply-To: <20251117-soc-info-s6-s7-s7d-v1-0-6ab8aab03dce@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763374620; l=856;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=lkBjmJL/fA5SfT99KKhTn/IbIqqAL9gYKbERk/NBAp4=;
 b=FYmhOJ/d0S68YIdLSBInWtC9YJEKXdFbi57b3erbXkHqIpuCSdJd0K9gFOpoUI8tb6S8aSZef
 GtvVAPnAavyAQtfmmYIwta/BTNKo74Jzs7XkyvmTGSTyo8oyFLHSgOX
X-Developer-Key: i=xianwei.zhao@amlogic.com; a=ed25519;
 pk=o4fDH8ZXL6xQg5h17eNzRljf6pwZHWWjqcOSsj3dW24=
X-Endpoint-Received: by B4 Relay for xianwei.zhao@amlogic.com/20231208 with
 auth_id=107
X-Original-From: Xianwei Zhao <xianwei.zhao@amlogic.com>
Reply-To: xianwei.zhao@amlogic.com

From: Xianwei Zhao <xianwei.zhao@amlogic.com>

Add node for board info registers, which allows getting SoC family and
board revision.

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



