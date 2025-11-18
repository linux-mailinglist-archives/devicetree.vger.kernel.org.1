Return-Path: <devicetree+bounces-239621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E7EC67A40
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:01:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8AE5B4F51D6
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 06:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8FE82D8797;
	Tue, 18 Nov 2025 05:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wdg4zMlT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8152DCF41;
	Tue, 18 Nov 2025 05:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763445548; cv=none; b=I5FqNZRqqfYloF2oJLXeamYxALIoctMxKQlqX3hz88l//J3RmPSas9Wvgp0zpjtq3GSQlK/fjd07qU5In4OVnXKmDljvKrWIQhjx93e/FlnXiht5/gBN+7+VIyYaKbeOWu/WrocNHF7zKOmhnvto2P23eaGo4aaFgdjMKEBD+BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763445548; c=relaxed/simple;
	bh=qkadhoVgwtKGC7dxnnB7hY1uWxAE7LIEZwUFdYKyPa0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mtlr0j9voXNYBh0Q4AKyLL+0Enocp4l/5Eu1nNIAJD9FCXOyRz50Am9jJ9pGtZdtrrJBy5bsroAgSPzxvJrF5iMt8RDx6leVnNQFFzu43w2+UTSafVyzmWSHQzkHykF9Q/peYa6UD5edbpiJtiIcRygdOYjpSCXutmK6q+8PYsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wdg4zMlT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3103BC2BC87;
	Tue, 18 Nov 2025 05:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763445544;
	bh=qkadhoVgwtKGC7dxnnB7hY1uWxAE7LIEZwUFdYKyPa0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Wdg4zMlTLDo6PAT7CZFniOKbF7NfHIZI5CUSv3aLXpU+JzpLl9lU2OdyhEWk3o7Np
	 4nDTrrtabWQTKZN+7h5Mp0ERzKEtKP3xRY1WH4tzZ8x7htSPjD4VY5XmtvavVlVw7T
	 iJ78493lii2Onua1XYd1oG13W2SnPQaXmUp7vq0StnHHiaYe5Qg8W4Pw9hs4ogGhZ1
	 GEj0+G+GHSFyyUiovTt6eemk7SSF76wQr78iltx7FZy58HRXT7TD0vLNitxE2DFVYw
	 uoqxKK+bcOptNcnELmakY6LqsNHq5Y6AGDtesjBPgEcwkhSHixYp0rQWy68UXDyjel
	 BZAH1OcOIySgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C06CED247;
	Tue, 18 Nov 2025 05:59:03 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Tue, 18 Nov 2025 13:59:03 +0800
Subject: [PATCH v2 4/5] arm64: dts: amlogic: s7: add ao secure node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-soc-info-s6-s7-s7d-v2-4-38e2b31a88d1@amlogic.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763445540; l=856;
 i=xianwei.zhao@amlogic.com; s=20231208; h=from:subject:message-id;
 bh=jgUllk/cZ9b+GQwFjhTwGDyXMhwvUcYN6gknLaho5G4=;
 b=eDFAefrmRxqtUqUBcmCUro0E3fc87mJP+OA9n2hkjFQxuy9jzWsFQLJvhh2YULC3UZOvQvlos
 6A/9KYnM+ncBq43gG4CD36eCjYp5I0rIAalfIi4Qg6SqXvHyTiY1/YQ
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
 arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
index d0b63d3fc953..dd7e3de2a53d 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-s7.dtsi
@@ -221,6 +221,14 @@ gpiocc: gpio@300 {
 					gpio-ranges = <&periphs_pinctrl 0 (AMLOGIC_GPIO_CC<<8) 2>;
 				};
 			};
+
+			ao-secure@10220 {
+				compatible = "amlogic,s7-ao-secure",
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



