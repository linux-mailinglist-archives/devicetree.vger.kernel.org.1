Return-Path: <devicetree+bounces-110641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 551BF99B534
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 15:49:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A0769B22187
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 13:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F07C318953A;
	Sat, 12 Oct 2024 13:49:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="eSZg2bNW"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59464154C03
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 13:49:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728740952; cv=none; b=YljknnXzrC8WMfkXFBsdHrENskEuUhMWW1bIFSQBOcQPVCX5iUDdwVsPXxMPudRnUf41piYWJNBd6oFstSwA2rb+cBHwVIbpUFuM9tsF/npNAE0WJxhG81YKAUheAF+i5qd9WOsPdXoI+QQAt8VgoMqM1yuQoul5XX4SaWjXCUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728740952; c=relaxed/simple;
	bh=1w91/2dbsoce4Fpc1+XDvYQTbOif9Vxu4gqesm56VfY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=phpGZQKfHHg1MuUAbb7BuSs9UWCyEnLIz8tVqjCq0ivImOLAbunXt9YtKU0uzMqlS2GRp7qgGZk1B1FcxQE0Nd4Mg2C8mINyI0KxcD4Nonb4twr5bKujuBsgotULTjM174vSJMxgRdyG1GV9INFbq50oI59Mf2nBt6ROUkzlMdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=eSZg2bNW; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728740918; x=1729345718;
	i=markus.stockhausen@gmx.de;
	bh=GYj5Y8dYhOKGETE0dKfWIyajVQoJN4CpNoHfjXbDEw0=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=eSZg2bNWfIOZ/GwPF5WKUmEib+CiafTTHmabaYMmpS9aIXBTt/gMabrwcYgvUFHc
	 vFpllSAbKmzIK2+ZI6JDMzt4tUYGS22kAin5B+RfTxNLJYZCVtU4S/SmiyhYvRN2e
	 i+5rOtZkumtxrH1XyaxFykUm5fNCJmpFBy2q+qFmqqqkU4zg+UofeXYNya1xvdOdf
	 e0OXtd5ZpKxCeLomQKoEWJ7CKB8mlU1gmX98uylbHo5C7W1BPWDUDTd1fBglHECYq
	 yaZl1mQTDvgWv9C6/u9lRalS7FXL5fvoekUvM5tBBKQlmjzL51XMscSaJDQmkuv9f
	 iOxmI1Q2UWLhoAMcbA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MJVDW-1tEwRi2yUa-00JZeS; Sat, 12
 Oct 2024 15:48:38 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v3 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Date: Sat, 12 Oct 2024 09:48:33 -0400
Message-ID: <20241012134834.1306992-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241012134834.1306992-1-markus.stockhausen@gmx.de>
References: <20241012134834.1306992-1-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:xPlqO6n/Cw0yXYnx4nmw5uYX2LUN0f8/ahCnFjTfIsppaB24i1h
 o5ilD3MEXm2yBtsXgBfSwdWEv9+bkv9gekGBtKV9ZzYEf2Ne9wUWzdVetxKH4K3v5nPq3lf
 SoxGl53rtjkweVRzuxWSLOYYXeGZYE41giDd6I5sboIjyO65zFsmcHK7ts+dO7NeWcswPmB
 dm5rxXEfZzceD8olLzK5w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:vw5mg7WeZQw=;e9lhV4cdZ7dGzOthZEypc9Rjbpx
 ZzE2ubHcng7Qi6MiG33eU19D+wqkkHELvUEJi2q1Ob4WMXN57H3+yCzV2GXefRBPh6MFfmjQI
 oBanb5Wt/dta3cTfMFjYo+2VJHlgF9NIpCWsoqHCv/MFAwDODLzTApqo99hYjYItrExm+7AjA
 LTh699sVdNp/o2fFiB7Dxzv8uWNCCpH/L7HpyBlRMHOfZoMpFgUsW1LwFFBOPMtHRQkwaB8mR
 lwqXpsEo+jNIYj+U8QNINRA329zzTUUPorrxZDje8+YsGx9/44+uSOV8BvRY0T4ckIRoiUzJY
 tQwl99xRfcuF2VPzpmFBgHL551O8VyRa7MnYKc4OdhTI5CPw5zn3yeeu2EAVskohtU8kGJc7Z
 J7YgosHoBeRBasEywSSQU6CjkOpCWJiPGZhftOl3W16dqbM/8Pfyg5SCM2IxguNNo2fayUJIJ
 q1ZGa96y/nA2I92MxJALRa23T+dVjpLQuaK2bUQOHutf/w+mkc7wX9EfGSoe6KfL/ae7R2nFG
 nLG4xouS9yzeJ3UjNC7JmxRc7d3qhoE/M9LL9kAxxedYDu8tf04Wl8hTpOtZL21F++vKM7SK/
 pplJpMPAHVl/tyu59uCDwmI/v/nx+ufHsXRdPZ6HgzqWUbs5ZzIoq7Aq4k7NDWXbMZTPeJpgH
 azu7JlH2alV6EQ60wzaRR8rEzkebgckj3mojGvBbaCOBFzBZZ0W2SjI1EgHBZ2KRX4HfALU3a
 At5mKperEWp/ItH1tmQmfeGocB10h60UlMvQwFiCEg9QQl990wuSHMydYyzQHPSLJFoy9jFxN
 /0LSB5He8DrF/uguurlv0UIw==

Add bindings for the SerDes of the Realtek Otto platform. These are
MIPS based network Switch SoCs with up to 52 ports divided into four
different model lines.

Changes in v3

 - renamed to realtek,rtl8380m-serdes.yaml
 - removed parameter controlled-ports
 - verified with make dt_binding_check
 - recipient list according to get_maintainers

Changes in v2:

 - new subject
 - removed patch command sequences
 - renamed parameter controlled-ports to realtek,controlled-ports

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
=2D--
 .../bindings/phy/realtek,rtl8380m-serdes.yaml | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m=
-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes=
.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
new file mode 100644
index 000000000000..c1deef8ec63c
=2D-- /dev/null
+++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/realtek,rtl8380m-serdes.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek Otto SerDes controller
+
+maintainers:
+  - Markus Stockhausen <markus.stockhausen@gmx.de>
+
+description:
+  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL=
930x
+  and RTL931x series have multiple SerDes built in. They are linked to si=
ngle,
+  quad or octa PHYs like the RTL8218B, RTL8218D or RTL8214FC and are one =
of
+  the integral part of the up-to-52-port switch architecture. Although th=
ese
+  SerDes controllers have common basics they are designed differently in =
the
+  SoC families.
+
+properties:
+  $nodename:
+    pattern: "^phy@[0-9a-f]+$"
+
+  compatible:
+    items:
+      - enum:
+          - realtek,rtl8380m-serdes
+          - realtek,rtl8392m-serdes
+          - realtek,rtl9302b-serdes
+          - realtek,rtl9311-serdes
+
+  reg:
+    items:
+      description:
+        The primary register memory location. On RTL83xx devices this is =
the
+        address to the I/O register range, on RTL93xx devices this is the
+        address of the MDIO style command/data registers.
+
+  "#phy-cells":
+    const: 4
+    description:
+      The first number defines the SerDes to use. The second number a lin=
ked
+      SerDes. E.g. if a octa 1G PHY is attached to two QSGMII SerDes. The=
 third
+      number is the first switch port this SerDes is working for, the fou=
rth
+      number is the last switch port the SerDes is working for.
+
+  firmware-name:
+    maxItems: 1
+    description:
+      An alternative name of the SerDes firmware image file located in th=
e
+      firmware search path. Set to "" to disable firmware loading.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    serdes: phy@1b00e780 {
+      compatible =3D "realtek,rtl9302b-serdes";
+      reg =3D <0x1b0003b0 0x8>;
+      firmware-name =3D "zyxel-xgs1210-12-serdes.fw";
+      #phy-cells =3D <4>;
+    };
=2D-
2.46.2


