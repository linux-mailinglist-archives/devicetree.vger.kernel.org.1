Return-Path: <devicetree+bounces-243658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FE8C9B00F
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 10:58:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6DEE83481A7
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 09:57:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B2F3101A2;
	Tue,  2 Dec 2025 09:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NrpEgUaK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDAD030FF26
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 09:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764669280; cv=none; b=Nqrwu1BY15Qa5C14kiRnRlxZV8R9WDVIqoKCgxOKOMi6/h3QLJdg2ZvX+ny4Z7OWO3BtGUwKjSkO0stp56iT7u3l72bWVkHNJarZSpSr2ubrkLq9mXv8MYMJ0neZ1OPIw8ClegicOZPMeZXHRwW8sftk7x29u+yEHMP/UZvkOcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764669280; c=relaxed/simple;
	bh=EiXesyPMoSc0xu7TjPVo5wefAUNtnNky3tjqoIW+AFk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=mSVYmT6tgx6/Y0LnSOPn6slThC4qcGqTd+6+lMTbj0TuPAprV3Nz4ZvrfK2JXhddtwWqKvCfpxla1Hhr3ARTEZOdsW/UuRT/57aZ2tC7IauUMjZHPUQbebR61fXWMD2mMtLKtZ87ufSUwC7y8fk6fiJB/DKL85TQ5Q6g8/3pM4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NrpEgUaK; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b735e278fa1so313572766b.0
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 01:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764669277; x=1765274077; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fmcXNUEO80mXAVYkIIIRpgbvGeVPZ2JwOkqQjxC/qNM=;
        b=NrpEgUaKRNZoe9Y8q/d64rw0uM4BlGEzh63YRzd9otkLbyfbxaqrbg0Xh3/ErOcBw3
         qqV1Xv7lVYFPNGne5npUCXZJVnrqtyMs5+90eDZJTLvv/GOtsyGoaLvV0eHTPjV+sO3F
         DC7BPGBdXPCcWrOuOcxEXEP0TizaLqCQsmk3AYz5Fwmb02XLmxgDL+7MoI6KRvqsmnFj
         k/FEQ04ybYFVCnrDiUb0Ql05YMn0xBRXTtU9HdAJvSxQXChpKEpddCFoTn2XzIdTyUCd
         rJg7i3YrslyyLV+sqkTomR8Uo9HpXQNR8tvD4InVWAYFAyPK5akW3sy96c/fSO6BsKh9
         KQrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764669277; x=1765274077;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fmcXNUEO80mXAVYkIIIRpgbvGeVPZ2JwOkqQjxC/qNM=;
        b=idSV7xn5D9FRjydPCW1cFCquMJi6MmAa+plA3EHVcXQIRq0L6cS6qqdK4juAwDL4wS
         g0nbwLSz9apJ/xGUTgPIYdNs4qDas4i0FWr11fNveTkcoaQ4n+RUcYC1WbxRN696aeeo
         yMi9l2pyQe2N2AtuMhb/FXWiMUsIdywKYkVSU4/2e3nrPszvKHk86Tcsd98dMYD8Jfzd
         3aWd+//OcN8yeSVKJ+jeTuDvjxLkzb8xqD0wUNCOTgbfBQ9BimPkPw6qjpNbAYRp+esS
         x9dX1Bcmlb1hnOkWgQ87IyOhimdlwq8oqF0LyPW34XTAxS/ukI7hVmVrwTNb+NDIzVXE
         Kb/Q==
X-Gm-Message-State: AOJu0YwlqV+aN88sKD3E5ANb+46gSDqDd093u9pfzlTo7Bjm6ZiO8DdZ
	kLfXiJ0/YooOOhZVjJ7PgPFZrtWz+M/JlHDmwjQ6he2qeh2a+7XkpyC1VAh4TeYAG+4=
X-Gm-Gg: ASbGncsLMh7icZwfFX4DgYHeGHg+zXyJZMs1ceKXLi8cndOgjSkx8OJbl4cu7yfqY2f
	/8EK1Bwe8En24Ue0TGDJLGr+wx4lJDgMap4lB1325eH74A5LXmw8UusY/CgdX4NX+T/sDTAWBHo
	+EKSHAkR9Zf8vpsRTBtf/5EWKpSIB99vHBOyqrhQyVSErHUIFXcLtI36grgRCnSa4GLoIBHpPQe
	Rwz9M9J7MXMnfrv2XCxKXYaMT95NIXAxZUaFvkNQt8+1PtrfOj6is0/w9q0VXqu5rIn9z9M9LNE
	W596k7XjaaKlMbM0oQKrhXLnbcyCYddPP2z9G7x8tvFjERx6p0NoDUXJf3pjoIJo8+gW0+lz9Ab
	M/VmTP5E0vy2DV/gFbfCi4Ls7t/bkdX++81CxhK4rux3O8iHNCY4I3EYKvrVwJ2cbp8z2OvouaD
	HVKNVVdF3Y6deuvqh3X/xeG0NUsZOK
X-Google-Smtp-Source: AGHT+IFJ63lxp3eqfF6B3HqtZfdhy6bpjHT9zOV3GMz4SeDzpuMwc0q+BDsBTOMbJgg/CZ2xByTBig==
X-Received: by 2002:a17:906:c10e:b0:b73:2df0:9fa9 with SMTP id a640c23a62f3a-b76c566bccamr3151399066b.59.1764669276496;
        Tue, 02 Dec 2025 01:54:36 -0800 (PST)
Received: from alchark-surface.localdomain ([185.209.196.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f51a9819sm1494466566b.25.2025.12.02.01.54.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 01:54:36 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 02 Dec 2025 13:54:31 +0400
Subject: [PATCH v2] arm64: dts: rockchip: Add overlay for the PCIe slot on
 RK3576 EVB1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-evb1-pcie1-v2-1-810693b1b72f@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFa3LmkC/03Myw6CMBCF4Vchs7amUwWBle9hWPQywiRCSWsaD
 em7W3Hj8j/J+TaIFJgi9NUGgRJH9ksJdajATnoZSbArDUqqGlG1gpJBsVomFNrRqe302dWdhHJ
 YA935tWO3ofTE8enDe7cTftcfoyT+MwkFCtsoY3RtEZvLdZw1P47WzzDknD9VrquJpAAAAA==
X-Change-ID: 20251128-evb1-pcie1-ade389a4d590
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3470; i=alchark@gmail.com;
 h=from:subject:message-id; bh=EiXesyPMoSc0xu7TjPVo5wefAUNtnNky3tjqoIW+AFk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTqbY/lOdT+2f7X5obnj38bezgrMH3WFfszl68h9d+Jg
 3G+035N7ShlYRDjYpAVU2SZ+22J7VQjvlm7PDy+wsxhZQIZwsDFKQATkbvHyDD565v1+aeZN6gq
 BIqeDb5mNnP5NPFfR7OK0sJdar+Ze9xkZJi31pDL3qBQ8tc3n9Ptv75NXSP3KtTp24Moni6xqPL
 bM5gA
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
Changes in v2:
- Added the standalone .dtbo Makefile target forgotten in v1
- Link to v1: https://lore.kernel.org/r/20251201-evb1-pcie1-v1-1-c62bba5c1167@gmail.com
---
 arch/arm64/boot/dts/rockchip/Makefile              |  5 ++++
 .../boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso   | 31 ++++++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ad684e3831bc..ecd2dd365e97 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -153,6 +153,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5-v1.2-wifibt.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10-pcie1.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-luckfox-omni3576.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-nanopi-m5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-roc-pc.dtb
@@ -252,6 +253,10 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5-v1.2-wifibt.dtb
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


