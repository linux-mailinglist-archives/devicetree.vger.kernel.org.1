Return-Path: <devicetree+bounces-239622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E9BC67A3A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:01:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4317D3645B1
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 06:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 106CE2DCF6B;
	Tue, 18 Nov 2025 05:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrorHZpI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB242DCF4C;
	Tue, 18 Nov 2025 05:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763445549; cv=none; b=c6WT1rbWQtKre16FT0UtY3U5j6TplEX+cL97TahnZhg+IuwUmetF42phOc4iOqGnU6S3q35S106jg26NzMgJTrpS2YxKeb6AtbkBPupLO7FIs0eW6RaNv7ksCov0iI+YwnSBtoWcRCRdjtzKCyT4XWo1oyY0S2fwcjHpkFqNHCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763445549; c=relaxed/simple;
	bh=93XnuD8OKydVSI/DK2r4MME+7UjXY/gqTm0Hz7nSjyU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OSD6RbiQemUgpFPZvIlDp7xg+nbjSCkGbs5Ygbc5I0EfAZZ/3zTfhAHYtRQ9mscWNidsQyQx0xO+YZYtjYzwfaWAslN00dn5wvK4hlRWDcUln0RGT4CCbw5vN/ai5pSiqP2PAsvznWTYQjBi/vjwL4PlJ7grcqSJXBxZ3KK1Svs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrorHZpI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7130CC2BCC4;
	Tue, 18 Nov 2025 05:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763445544;
	bh=93XnuD8OKydVSI/DK2r4MME+7UjXY/gqTm0Hz7nSjyU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=XrorHZpIbkIObOhik3tY2uB/yHC7HcDdBlkj/ByubV/qB/PZZnrD5xfwPiHD33Zd6
	 woPp6y7E1ltG+4n9JVt7eiPp6Jar0p8LiOqKEvFtnmhMK8qBlbTWVo85xzb4Exhmn6
	 8CVNIihx2FRpd+/gBpLPqTTlfVqG6yZMIeyQ30FaiYLUcOgqetDJap1vhF8wGvPTkW
	 pc6MKHUB4xlg6VDUodt9VL4V8+PrjlCeNSVHR8E3xwq13SXho5x+wF9PhTIcyGhaAE
	 VKUSJNhi0kydWvyFsKqDOBnBotikLQ85qzmhR4pXd23YTedSfI1KkYSjRqp5RHpOcX
	 hIuQqYUYOkZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78031CED24D;
	Tue, 18 Nov 2025 05:59:03 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Tue, 18 Nov 2025 13:59:04 +0800
Subject: [PATCH v2 5/5] arm64: dts: amlogic: s7d: add ao secure node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-soc-info-s6-s7-s7d-v2-5-38e2b31a88d1@amlogic.com>
References: <20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com>
In-Reply-To: <20251118-soc-info-s6-s7-s7d-v2-0-38e2b31a88d1@amlogic.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763445540; l=862;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=H+K4E15iswq/do49khTt9ccxoAu/8Vn3bdBkB4g+s84=;
 b=Grf6DQoOin45f+OEHqR7HGs3XKJxSXgN2zqeVwRh3Fv2qVgFLE+BkSlT2ASranK1EZgAFmnDi
 XAadOSLc76YDK0+9m8LQE3CkGVfBqPvmKX4R6slLD4S+gWMXMzwRhOm
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
 arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
index f1c2e91ec6c5..e60167af0390 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-s7d.dtsi
@@ -194,6 +194,14 @@ gpiocc: gpio@300 {
 					gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_CC<<8) 2>;
 				};
 			};
+
+			ao-secure@10220 {
+				compatible = "amlogic,s7d-ao-secure",
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



