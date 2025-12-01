Return-Path: <devicetree+bounces-243378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EB0C974DF
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 13:38:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D1AB53431A8
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 12:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18415309F13;
	Mon,  1 Dec 2025 12:37:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="REck/zTJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C03A30103D
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 12:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764592679; cv=none; b=Uc+B6A6Hoh+vxOVw/IoEiFc1IjsalqVlAUcGO/3UdGg+1ONHrZ9Xw1FArIORArwuTlf5A2vrW48uX1dlNSnEbn7P6d18kqqYg1tcMJCXSH8BOneQSid7XkliimEH2dGWwAJgGI20mTUsTgMoJ3hJB/XeX9eBZJ70s2yGFJNGVpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764592679; c=relaxed/simple;
	bh=3Vvq8LPwxXKHOKoZ+a6kHlkt56selPRWjocT3g952Go=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=BjZPGBkNUqRaHJd4Jk3UPUaz21EngfzQXlUcGNMXdd9w8OHJXTsvWSCeDbxuIIbl+Ci4n/hEuI1Ju+R/on7JdHXeeWWhGR+GwWt+l88f9AWxZI6m5uKQINDWGepDuOtsfsRSLfLyLDmjGGJho9NGysXOSB0Q/gCD0bq+wPNGZGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=REck/zTJ; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47798ded6fcso22608575e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 04:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764592675; x=1765197475; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Th9QIGTGx5TubvrIKd4rYbZwHElm6Jjolg9pSmpCDxM=;
        b=REck/zTJqePa188rPcS/rLzyNHcL9vCzxPW0T8s60NuOLmFZNzxl4YlH84iJ+Byid4
         6MYR0h3OV0XAapcmguQs2CneqqgjqfWejEXhezEKoT/NspxU/sCQJEh+EO8VRVwzy7Ai
         shUvSjyVLLWWeNyXDy8cwUxA0jN9MM9ND5O8eN9NIRaMhmV6yEc9GbbM/5FlivIljJ8w
         nU6s8qgLF+Lce5FYDJH9Q1rKNBqKvNlN9FUgceQv+Wtci6zmRr+RWbbjETxh/S0GvGyy
         ed1dqWOjyeaMU8wmLq5JH8usi/viCFQ6VFLV6tOXw1SY96ty1rUbqeHbPQJAMNXQUUhp
         J1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764592675; x=1765197475;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Th9QIGTGx5TubvrIKd4rYbZwHElm6Jjolg9pSmpCDxM=;
        b=trVNHGDCE4D0ppKJzZewrn7be5M/LVwX/LFHm0NZ/V8RJEF7NKbcLwjOBgJSl1Kwsl
         B5cTC/+RmsTweSbXHj4TZpUOYZnffg8ag6xF/tz401BoGZ4YsDXNP3kKyBu0ryzOHrSD
         62cy1Ta7ulHLHjX4bpawXoRFmSWxbbZwBa2ovfx+yhMHE/DytLhMirQZsjRXSWkxGSTZ
         kHNip4JcWc2qVYvEnPvERYPY2Sy3XEy0tyaX6eOG/TH1Oeg6r6N3RbgrX0og3DqD+vxp
         hH3J0RYAFGR1LXgpHdiiMepYZHsFC/+8wENt92AenBvzaqLe3VAB/m8ESiUwLhPsiLJG
         FlIQ==
X-Gm-Message-State: AOJu0YxtFsvKTaMwZr+tJIHNJmE3yciAQZ4fRlNqWxjPIUbsOS3cTEjn
	SqahYqzX322KF7ZfBo3URDX6MVNXneK7PAynHDR1lGtQ1twpALzbYbLV
X-Gm-Gg: ASbGncvvYKIZDCyitO65sqZrY+deL3Stvas0ZRQwY6aPiZTAM39bnZmTMtEepSRVqaa
	/6hd/w91R7qOcaEPnWdJI5o1fhYIlHvrUgzim/GP1Ht9woYiVbwIb0q2CL6uCuWIfGCyAVogyqS
	VJwWTaueA3d6dGHkQ6V6zaTC6SENh/PmyUX3ur2uGJopjRioopYyrlDjRdZymnODiKwjO0yYMtx
	Url1miGzy94A5y9ZcdDb5V+4k78VWmXBwUUkpAOYGlUj9jaW+oxqzW9Ldb06xmK9bN13KW6KiT7
	aui0TP09hJWvaFymLnBF5rE+JPfT2YmCbrGeWACP8GzhHVrWDTyqsGlafA9z/13lbaQChkUGeuP
	mH89tTJRCdWi/gBKcohnC0cRNjJ/AEBZnperIMeZHxeIltSzT9RVrDkRngHnRY1H5aJd3L3xM2W
	LnehXVZUzCb1gJeixjdcL/rlsDC4a1UlXVAO4IrvtxIhszwZaTsSNTKO5rK/eLx2QkvPuoFrPk8
	w==
X-Google-Smtp-Source: AGHT+IHuS7ih0/r1wtiTtCRYhrtbZkOYclnmpf83ik6Tv1jMFCB/iqtIuG69FulsayoBVRSfhmATZA==
X-Received: by 2002:a05:600c:198e:b0:46e:33b2:c8da with SMTP id 5b1f17b1804b1-477c1133927mr378893455e9.32.1764592675414;
        Mon, 01 Dec 2025 04:37:55 -0800 (PST)
Received: from alchark-surface.localdomain (bba-92-99-175-128.alshamil.net.ae. [92.99.175.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1cac4fd7sm26232131f8f.42.2025.12.01.04.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 04:37:54 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 01 Dec 2025 16:37:54 +0400
Subject: [PATCH] arm64: dts: rockchip: Add overlay for the PCIe slot on
 RK3576 EVB1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-evb1-pcie1-v1-1-c62bba5c1167@gmail.com>
X-B4-Tracking: v=1; b=H4sIACGMLWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyML3dSyJEPdguTMVEPdxJRUYwvLRJMUU0sDJaCGgqLUtMwKsGHRsbW
 1AFzmF8ZcAAAA
X-Change-ID: 20251128-evb1-pcie1-ade389a4d590
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2800; i=alchark@gmail.com;
 h=from:subject:message-id; bh=3Vvq8LPwxXKHOKoZ+a6kHlkt56selPRWjocT3g952Go=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTq9qjM+691ivHks9cl6irvd3S+X5b8yzb0c/Wbn8kXV
 J+fCNi0t6OUhUGMi0FWTJFl7rcltlON+Gbt8vD4CjOHlQlkCAMXpwBMZIEsw1+5Xs2myvIjZp5G
 Zg+Mzn3R+X2u4btNSYuWg5DLtMXMx2cxMjzIdo88aLhfr3Zr9D1l2f+H4948v7/RWLmP55WDrXb
 xOUYA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

Rockchip RK3576 EVB1 has an onboard PCIe slot (PCIe 2.1, x4 mechanically,
x1 electrically), but it shares pins and PHY with the only USB3 Type-A
port.

There is a physical switch next to the slot to transfer respective pins
connection from the USB3 port to the PCIe slot, but apart from flipping
the switch one must also disable the USB3 host controller to prevent it
from claiming the PHY before the PCIe slot can become usable.

Add an overlay to disable the USB3 host port and instead enable the
PCIe slot, along with its pin configs. The physical switch must still be
flipped to the "ON - PCIe1" position for this to work.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  4 +++
 .../boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso   | 31 ++++++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ad684e3831bc..63198a618a2b 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -252,6 +252,10 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5-v1.2-wifibt.dtb
 rk3576-armsom-sige5-v1.2-wifibt-dtbs := rk3576-armsom-sige5.dtb \
 	rk3576-armsom-sige5-v1.2-wifibt.dtbo
 
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10-pcie1.dtb
+rk3576-evb1-v10-pcie1-dtbs := rk3576-evb1-v10.dtb \
+	rk3576-evb1-v10-pcie1.dtbo
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
 rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb \
 	rk3588-edgeble-neu6a-wifi.dtbo
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso
new file mode 100644
index 000000000000..dccf4a5debdb
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * DT-overlay to enable the onboard PCIe x1 slot, which shares pins and the PHY
+ * with the USB3 host port.
+ * To use the PCIe slot, apply this overlay and flip the Dial_Switch_1 right
+ * next to the PCIe slot to low state (labeled "ON - PCIe1"). USB3 host port
+ * will be unusable (not even in 2.0 mode)
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&pcie1 {
+	pinctrl-0 = <&pcie1m0_pins &pcie1_rst>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&pinctrl {
+	pcie1 {
+		pcie1_rst: pcie1-rst {
+			rockchip,pins = <4 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&usb_drd1_dwc3 {
+	status = "disabled";
+};

---
base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
change-id: 20251128-evb1-pcie1-ade389a4d590

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


