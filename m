Return-Path: <devicetree+bounces-159972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C5EA6D2F7
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 03:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CADF43AFF21
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 02:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 153036F30F;
	Mon, 24 Mar 2025 02:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b="quo6wPGG"
X-Original-To: devicetree@vger.kernel.org
Received: from va-1-17.ptr.blmpb.com (va-1-17.ptr.blmpb.com [209.127.230.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E711EC8E0
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 02:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.127.230.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742782239; cv=none; b=qsTsxu4oyfrqHkNwBWLgX+nkzP6Zgo3x09613yucyV7NI/gL9M3p89J+r9OE+F7NYVBpvTdQuB1zgj98hm6InTIvHu2D8QaBz1Aqh+ZL7Ma15TVOtQphdmFrfm4MJHNbhwfV/b2HoL9T4r6rpD8r/43yWMR+L1pf/JEEobbADRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742782239; c=relaxed/simple;
	bh=033tZL8LYKIbpjhcTCdCfXtvCyYOA00Wn65D5T7jpE4=;
	h=Subject:Date:Message-Id:Cc:To:Mime-Version:From:Content-Type; b=emQRxaijtTDLrinsAz07WCoNUjmRMsuESJHu+pAJw2lfyZSL72WFj4zEEMGTgzdFr4eQ2XOldUL5lHTyZYkq1xnU5RFRpP7HJwBPqspAJk3tHfEYMqTP2WDmesOFm0Aaf6sQTgl8y1xWb625NXR+U9gNpb/rvAspPDP+rrc/MT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io; spf=pass smtp.mailfrom=deepcomputing.io; dkim=pass (2048-bit key) header.d=deepcomputing-io.20200927.dkim.feishu.cn header.i=@deepcomputing-io.20200927.dkim.feishu.cn header.b=quo6wPGG; arc=none smtp.client-ip=209.127.230.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=deepcomputing.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=deepcomputing.io
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=s1; d=deepcomputing-io.20200927.dkim.feishu.cn; t=1742782226;
  h=from:subject:mime-version:from:date:message-id:subject:to:cc:
 reply-to:content-type:mime-version:in-reply-to:message-id;
 bh=MHPZt36x34vKdZAyw073ovIPsPHQlX62Odd0waj2844=;
 b=quo6wPGGLhcfyASii/E/Jvy8gO00cdYWvQB6/vYC0FoQLmipXB44NDbn3wYc29TBEdU71T
 Tv+iMGW1ntm8Iu88PHVj9OasAiFFYFmopCTpFA8BK432Dupe9/evlVE/X98KJKYURqJBPg
 KVSrja/BuL1dQLMKjhJZgFptjpWwg7PzThhJwJqXvNDYpV4c6GFHjEnQ88T4V4R80nm8dG
 ZZT0AGSPKvOMh33Enb403LseM03sjzg6rX2tpRZgjwElDOtWaQKdcO+9zkvfZBaRL4ofxi
 FVZam48ocRnozQtLQ4HW6H6LukkeYv2cqf5dG469+6imC0raGzgKyPh6/a0HHQ==
Subject: [PATCH v2 RESEND] riscv: dts: starfive: fml13v01: enable USB 3.0 port
Date: Mon, 24 Mar 2025 10:09:58 +0800
Message-Id: <20250324020958.2235802-1-sandie.cao@deepcomputing.io>
X-Lms-Return-Path: <lba+267e0bf10+8cbd95+vger.kernel.org+sandie.cao@deepcomputing.io>
Received: from roma-MacBookPro.. ([61.141.249.154]) by smtp.feishu.cn with ESMTPS; Mon, 24 Mar 2025 10:10:23 +0800
Cc: "Paul Walmsley" <paul.walmsley@sifive.com>, 
	"Palmer Dabbelt" <palmer@dabbelt.com>, 
	"Albert Ou" <aou@eecs.berkeley.edu>, <linux-riscv@lists.infradead.org>, 
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, 
	<sandie.cao@deepcomputing.io>, 
	"Maud Spierings" <maud_spierings@hotmail.com>
X-Mailer: git-send-email 2.34.1
X-Original-From: Sandie Cao <sandie.cao@deepcomputing.io>
To: "Emil Renner Berthing" <kernel@esmil.dk>, 
	"Conor Dooley" <conor@kernel.org>, "Rob Herring" <robh@kernel.org>, 
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
From: "Sandie Cao" <sandie.cao@deepcomputing.io>
Content-Type: text/plain; charset=UTF-8

Add usb_cdns3 and usb0_pins configuration to support super speed USB 
device on the FML13V01 board.

Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>
Tested-by: Maud Spierings <maud_spierings@hotmail.com>
---

Changes in v2:
- Remove space to pass checkpatch.pl.
- Add usb0_pins and pass test on board.

 .../jh7110-deepcomputing-fml13v01.dts         | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
index 8d9ce8b69a71..f2857d021d68 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
@@ -43,9 +43,28 @@ GPOEN_DISABLE,
 			slew-rate = <0>;
 		};
 	};
+
+	usb0_pins: usb0-0 {
+		vbus-pins {
+			pinmux = <GPIOMUX(25,  GPOUT_SYS_USB_DRIVE_VBUS,
+					       GPOEN_ENABLE,
+					       GPI_NONE)>;
+			bias-disable;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+	};
 };
 
 &usb0 {
 	dr_mode = "host";
+	pinctrl-names = "default";
+	pinctrl-0 = <&usb0_pins>;
 	status = "okay";
 };
+
+&usb_cdns3 {
+	phys = <&usbphy0>, <&pciephy0>;
+	phy-names = "cdns3,usb2-phy", "cdns3,usb3-phy";
+};

base-commit: 38818f7c9c179351334b1faffc4d40bd28cc9c72
-- 
2.34.1

