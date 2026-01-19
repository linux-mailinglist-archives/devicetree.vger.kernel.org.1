Return-Path: <devicetree+bounces-256739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9540DD3A2D4
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:26:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 544EA308125D
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 09:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEDB735503D;
	Mon, 19 Jan 2026 09:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BoLLPcSm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420D3337110
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768814559; cv=none; b=NlN1KHvKyuKpo+EBp5zRNWIT1DM4zr/DrXrrY0Q0oE0Z0VWyT7cS2FdmSTc9mLUGB152pX1diRIT/wJvSAm59dlW0bFaAUpGZIMxANZz5cNsj0mGTgZh5W7lK//X3x6ZzQHwS2ccNaCGnUI57JfBtwtk4ZPhN/7s9yCiK9ML59c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768814559; c=relaxed/simple;
	bh=Q5L1vRcMlZIpl7txxOw3lzUvlYNyoF2f3P4G6tmb3IU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=YqLenvHSX4vtjnMhDxJQ1VgjQpkkcl/xrXlcX6s1/xIYdBDmzcoZel5CA9ba26f57JOUCSVtDiD2zX/xcMY2mGYoLV+6RTAEgTRjz8xG6RPZaWb6c7k185f+VQFZSvAfuZgnghmsZVEnisVZe6aQMZxzUFvGB+8A9oK5y3Yne2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BoLLPcSm; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-432d256c2a9so4044297f8f.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 01:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768814556; x=1769419356; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a1TGTP9bNu4UHfSQMVaG1aEb1WfL6DST40MmwW/KTbs=;
        b=BoLLPcSmfeQr40mG9cahGSWYvdVyCkxnHgBb7Q1vQtsxhYd9eZL3R5zpjysJ3wCdO6
         YgxpR8epFEvLyTDW5posQfDHbohtbtbRPoVfI03lcne9gOhKU61EDAiwXMy10exKhySh
         g6VjiCaL6RI4jpSA0N6tmhpgE0sfOw0t3bGfryTl+cFLOBLvKWWj5/2PY80eC+BQlHx2
         D4bVL+WgBg+C/lIXi+BJPdFUu/X+b5BJPetZAP3Byq1L2x9CceIwHltWioZs9gCOJTD7
         Ef8CWk29GV+l6nkz7eOlbc4Nq1Hiz4VcjgCN5E+a5Bc2UD0Y2I02ecJTf4ZWgFZ/xIIt
         KpFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768814556; x=1769419356;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a1TGTP9bNu4UHfSQMVaG1aEb1WfL6DST40MmwW/KTbs=;
        b=QN9lxlNbsLUis6FpKn/oHqISMgVXwwYZL2cE4vXGqBmANFI/QXVXj9LpPonNVTPXsU
         kFoEave6uabBUWuNv3rnHt+p04fdTQaCgx5CTzdTZCZgY/7vpbt9cxBy/IzAQ67MiTZz
         9T49n4pFZWtJlb/zhXajLdwqjV02Dsz0czMun6xDFOmV7nEcrKwAL7VAs4Q3KOjCQc8z
         07oVs5w0RYfZNo9clFv7bwo+VJqGDPLLnZZSbGqEgyZ2Nig/1JRg4xyTQKhlz76GzQ/p
         1IZgJTmvdXfwz2azNS7AW70y3bVYqlsdbWBZp0x6HQdxWY7DIR6r3Gegzh6WuzvUYHJD
         5Qgw==
X-Forwarded-Encrypted: i=1; AJvYcCUiGp9HOpG1OxlIDxLbmU3frjgar62ITbB/4h7R8OHaBTng5NV7Z6eSASXDWglahWgS20CKvX9VOoov@vger.kernel.org
X-Gm-Message-State: AOJu0YynU6tsUb67eFS0kF7ds1PHDXqOqI9GWsfxYHRhcWNKd89Fn/o+
	TRqPJX6yxEuAxNSMxW4sENSKrPo9Qbz0tvOlS6b3jYCk5kOeUZFDQDXt
X-Gm-Gg: AZuq6aJ+OODbmitgS9/EHWnW0wWFcGDaWTZABnozyvk3Lf/KCvmBli3FMyLdlCj0Uaf
	VdziTy9XRCuEIpb4aIFWSkg7fvr4FWm6XuES3v9OBfh7U15NS6yr2Xzm2IKX2CoP8j1u/GPBxhj
	5KdYsoiRsYjLbeHZ2iaABwmG5b5nZ6ebZ9S2BafP638e+/HCDQvARnKM+/UjqGZcBhX0wIgoaFZ
	Xg+f7c7/mvZDjBpCUj5sX6eIgoH0M9K250rlvmdDVAjUCZy775SH0+1+94t39IGiylzgID4pF6I
	a3y/mlrCFCmAKN0In0TpIy+0uoHdi08U82Ke/evuk6Kcok1NwbBEgKpWY1POkaf5a0YLhHQ4/IG
	XxMJQIIeBv+f+TYXQFJIhuYSsr72XSnokpyezllzus3nOEGz69LKzD31c4nqejr+ZFo4WpHvxdk
	xkNlb4pxyinDOOtHQ8VQZI/l/aDzmC7QZf4glk2fGadLbaFhiQvVUIGHCYiR1c/L6qK4Wmex69I
	Q==
X-Received: by 2002:a05:6000:2306:b0:434:32cc:6c86 with SMTP id ffacd0b85a97d-4356a039819mr13103624f8f.14.1768814556321;
        Mon, 19 Jan 2026 01:22:36 -0800 (PST)
Received: from alchark-surface.localdomain (bba-83-110-134-52.alshamil.net.ae. [83.110.134.52])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356996d02dsm22113042f8f.23.2026.01.19.01.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 01:22:35 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 19 Jan 2026 13:22:26 +0400
Subject: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on
 RK3576
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com>
X-B4-Tracking: v=1; b=H4sIANH3bWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0NL3dK0Yt2i4hLdtLSkZIPUZAuLVANzJaDqgqLUtMwKsEnRsbW1AKC
 VxLdZAAAA
X-Change-ID: 20260119-ufs-rst-ffbc0ec88e07
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: Quentin Schulz <quentin.schulz@cherry.de>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3764; i=alchark@gmail.com;
 h=from:subject:message-id; bh=Q5L1vRcMlZIpl7txxOw3lzUvlYNyoF2f3P4G6tmb3IU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTmfr9z0OzeiQfiskqxnP0RL1N4F7mxMF4OqUgu35l3e
 /YKsZW8HRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEx1bAbD/6I50yV3xV3vE7SI9HdKsisNjiz9La7tYf7EfFr0o0g/HkaG5ucJ8v5
 6rTtqNlzUcMqa5uBT7b+zOOL6lqJt34UFtuSxAAA=
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

Rockchip RK3576 UFS controller uses a dedicated pin to reset the connected
UFS device, which can operate either in a hardware controlled mode or as a
GPIO pin.

Power-on default is GPIO mode, but the boot ROM reconfigures it to a
hardware controlled mode if it uses UFS to load the next boot stage.

Given that existing bindings (and rk3576.dtsi) expect a GPIO-controlled
device reset, request the required pin config explicitly.

This doesn't appear to affect Linux, but it does affect U-boot:

Before:
=> md.l 0x2604b398
2604b398: 00000011 00000000 00000000 00000000  ................
< ... snip ... >
=> ufs init
ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=[3, 3], lane[2, 2], pwr[FASTAUTO_MODE, FASTAUTO_MODE], rate = 2
=> md.l 0x2604b398
2604b398: 00000011 00000000 00000000 00000000  ................

After:
=> md.l 0x2604b398
2604b398: 00000011 00000000 00000000 00000000  ................
< ... snip ...>
=> ufs init
ufshcd-rockchip ufshc@2a2d0000: [RX, TX]: gear=[3, 3], lane[2, 2], pwr[FASTAUTO_MODE, FASTAUTO_MODE], rate = 2
=> md.l 0x2604b398
2604b398: 00000010 00000000 00000000 00000000  ................

(0x2604b398 is the respective pin mux register, with its BIT0 driving the
mode of UFS_RST: unset = GPIO, set = hardware controlled UFS_RST)

This helps ensure that GPIO-driven device reset actually fires when the
system requests it, not when whatever black box magic inside the UFSHC
decides to reset the flash chip.

Cc: stable@vger.kernel.org
Fixes: c75e5e010fef ("scsi: arm64: dts: rockchip: Add UFS support for RK3576 SoC")
Reported-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
This has originally surfaced during the review of UFS patches for U-boot
at [1], where it was found that the UFS reset line is not requested to be
configured as GPIO but used as such. This leads in some cases to the UFS
driver appearing to control device resets, while in fact it is the
internal controller logic that drives the reset line (perhaps in
unexpected ways).

Thanks Quentin Schulz for spotting this issue.

[1] https://lore.kernel.org/u-boot/259fc358-f72b-4a24-9a71-ad90f2081335@cherry.de/
---
 arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi | 7 +++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi         | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
index 0b0851a7e4ea..20cfd3393a75 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
@@ -5228,6 +5228,13 @@ ufs_rst: ufs-rst {
 				/* ufs_rstn */
 				<4 RK_PD0 1 &pcfg_pull_none>;
 		};
+
+		/omit-if-no-ref/
+		ufs_rst_gpio: ufs-rst-gpio {
+			rockchip,pins =
+				/* ufs_rstn */
+				<4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 
 	ufs_testdata0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 3a29c627bf6d..db610f57c845 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1865,7 +1865,7 @@ ufshc: ufshc@2a2d0000 {
 			assigned-clock-parents = <&cru CLK_REF_MPHY_26M>;
 			interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
 			power-domains = <&power RK3576_PD_USB>;
-			pinctrl-0 = <&ufs_refclk>;
+			pinctrl-0 = <&ufs_refclk &ufs_rst_gpio>;
 			pinctrl-names = "default";
 			resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>,
 				 <&cru SRST_A_UFS>, <&cru SRST_P_UFS_GRF>;

---
base-commit: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b
change-id: 20260119-ufs-rst-ffbc0ec88e07

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


