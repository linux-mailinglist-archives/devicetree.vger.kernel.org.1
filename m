Return-Path: <devicetree+bounces-240034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 043D1C6C78E
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 03:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6C53C34A15C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:55:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D76B2EAD10;
	Wed, 19 Nov 2025 02:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoeQcEws"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522102DF148;
	Wed, 19 Nov 2025 02:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763520747; cv=none; b=JQMi1OO9aaBqEdTjOjPpx0mRpt0NPLtQcLT5+yiAdfBvGm7Mav3g4g3Mic8EDy9OBAxCIF7etDBVITXn3acOD0nXOjW0t7wKvHjmGdcrlbJyjMh1EUzU3i52ZZzuG2CdUnvEUoV+XLxo/6bUkRE/MXZUq9yzh2i+oQ0tc3PM6dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763520747; c=relaxed/simple;
	bh=/WTbR6DFSOWhHERikzjfb8p0kwLhSc245pW9kNAqvvY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QVx9G2qvNfduTRsJj/Kgi59hi5tCP4ZdYb4DBpHcC4kg3XWELlUQKDbzpiKAnKwZw01kOFUbejiTBMdQb4l1cIXo62NnPJ8WCqxn2iHtsTaeBhGemi46ms5e/6CspCvcTY7jsAscoJneVtc9+3Er1FODLQbTGkN4vi8dnMazLZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoeQcEws; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 715C3C2BCB4;
	Wed, 19 Nov 2025 02:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763520746;
	bh=/WTbR6DFSOWhHERikzjfb8p0kwLhSc245pW9kNAqvvY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=OoeQcEwsnLRcMim9kaoRTvnguWb2bIkkNhhDwpUpknlO/XCJa48+N9dp0Klsz8FG7
	 yZwWv4CLfvABbSTPkGoppGRc8SPunh1Dhrxn7xks8RWfbmisDDoLV2coQSrzlQcDo5
	 ml0ArM/clhFjAkyKtDZuNdPHKeBq0xJcLAt2PCeH7RPiniiE6yr1J3538GryVb6Ss+
	 mvj03+NC2rwmBxBLSKhVaSkSYrueDA8dwUNeMyT/wUC8tFwEp4GyocnNrwI2FhFcpH
	 HRg5YsDvpRDqUn3DizfFnhW8KSXySajUUXIa8uFR4nASqtcT+Bbws6hhtoq/RC8YQK
	 3PEvmmkj5Nifg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E26F9CF256D;
	Wed, 19 Nov 2025 02:52:25 +0000 (UTC)
From: Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>
Date: Wed, 19 Nov 2025 10:52:25 +0800
Subject: [PATCH v3 4/5] arm64: dts: amlogic: s7: add ao secure node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-soc-info-s6-s7-s7d-v3-4-1764c1995c04@amlogic.com>
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
 bh=+3haljXxhzc2NOx8QvAzzjWJEf9qGwOFiodaJKirBq4=;
 b=Scbx5PsMwbJqHIstRdPKW+JbcJyfiJXaIsDvU9EyJukHChxCoOyAENPjekNGdufEF/XrwpvFy
 CTf47lJRuyLAV/VMV9XXoDPVwWSrFoiHjU1Pbe1Nz6YqpLEw9nT3kjm
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



