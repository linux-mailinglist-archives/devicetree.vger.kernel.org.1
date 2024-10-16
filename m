Return-Path: <devicetree+bounces-111800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C429A00F0
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 07:49:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DB651C21AA3
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 05:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B81BF18A937;
	Wed, 16 Oct 2024 05:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="mKRke4i9"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6464318C01F
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 05:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729057762; cv=none; b=GQUl+xlmLBCzwbcH8ftCorfiCsQOMSJ65vpNIBmLwqSAIBGeUjj/DbJJhIW9tZA+3hcLdzr8vlLc3J93/B11yXVHNMZ8EsNp1ZTWrcoqnYSutqRfEh0a1z/dCsedD8UWnai+mepwMBqa+yOme9fkkgR0bDlFSyoYbMXNUYyFGT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729057762; c=relaxed/simple;
	bh=PTqB2zOd7VLC6NVwDaisJNO5gWp7eNKEBNAkNxMHMIM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YKcLKheqmlJ6+bUMSeMHfI5Ad+Od94i8XPXFKE+dbgBjoq9yybIxNNycRHApGxD9iohgnNOgvGrJC68voSXR4fcWN0PP7Fj8/IbT4ef39M8qOe6m5EzOQTu0fNgiss5SKMsUV0UQrcVMyWbJbU55BMSXADoDhvodPDO7vHaE61E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=mKRke4i9; arc=none smtp.client-ip=212.227.15.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729057726; x=1729662526;
	i=markus.stockhausen@gmx.de;
	bh=qthnaC1xlaCtP5TW+VejwMu3QW+t/nNgz4ogd/9IRFs=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=mKRke4i9PJ0GhfCC6CeKwRuV//1SK3El+6/JlOv9eGDM18/Z8rAKvjoqvcOv2KF4
	 jED3RCajXNtApX1sZvHE/ytOZz9b13s450e2DbWRb5uA0BZoBpwQmBWJTNcIwo5uA
	 UpCb1XYmJfKvD0w8J+FFLWBQInME+nR7wgAu8eJ9UA282PeFlYFKF/zoiCZy4LRRm
	 QK1LIdttx6qWkABwQiphmSp9OImVNJac4W7PXFvD/oo67XRG5RQSfY9/WvN5PC/gF
	 +R+fmtd0RtH/+bCN7/8Ue6tpFybSEmbqY+YNFpWOu0i1ie35jLoSYXmk3KNLku72U
	 0fOqxEFsmgt0Wj5yMg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MnaoZ-1thkIF2WPd-00bWuv; Wed, 16
 Oct 2024 07:48:46 +0200
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
Subject: [PATCH v4 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Date: Wed, 16 Oct 2024 01:48:41 -0400
Message-ID: <20241016054842.3435609-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241016054842.3435609-1-markus.stockhausen@gmx.de>
References: <20241016054842.3435609-1-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:2hiNAriYrzpr/L4Tnrwtq2AxQxprpW4k6//bYn0vmeiWZ6kj5VH
 ws8JGtOX+ONRrKhKr9DUOvGwd/ngYrC1J+ySESU9uGBRcH+8WgbZ6BNA/x+5CrCictE1tp0
 Wq5vAtD6vlLgzkeUU4QcmLbszYlLazKmZDyOWgyjlrHzu4XC/M8NHYqwKHwcgMtGfuFvVS4
 arZyw5jQsgCLIDijbNLpg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:rQIo/1Wvy4o=;rIjP+sS5ukg3i2kl5GBuuhO2r7q
 Loo7rA0YeD/iCNckyU5rMwHoVi8tOUdbuKXD5C/u3y7GbMfcw5fZ+2yYNTVB0G+vZjwhrqJw2
 HUREMQQxtuyl4hr4iM9JGiEdWu4uBdnmZ9t05tIIyr8QCrKwxNo2dERPlr80S/ZAYvpsftXW1
 w8nzexjU2UTOcWebdaruj22i4AKDYoqCQY0wmCuUUGqE+7vu0OYzaUhateknYLNFnjLmQtU7Z
 yeJVO4Sn70wbAr7sMjci0ENNrOZY52S1PtOWLFfaI/WEVKHM4IGV4LmEuleVJzLPFpdPSp4p/
 J1Sbeplawg4QsI3i8GYDRqTOOYhlHXmBYOlajgtYhIJlo5wuQMtzAfvyrdKVWF5C9/0/X0nak
 3odfNPnqYTg5wpvWi1GJWHLJeoiViBMTAw+gCoBL51Gcm79BwAleUCSX3bxl4+kmCW4Zrclkj
 1vUnJlKw3IcGDAta4aw5L2S3aVu2u4gPlQeCD2quNcTnN6Sm+EwnV/MkuogKZz80a+O+nGmEz
 2hbyG5jYqL17xZbgaU0JOTMdTqyaLrfU8fDUtNfD/fPbXqm4UhGvEwAOobwj7udAImH8JrJXv
 7Vr+D2Kejroe2UEz3FUKH88NL59izkCsffz9pKTIqHLINIsub1Nh2/2nM+YsYMaotA2AltCYV
 9SYOaQM09UE24SLiF/xmJzHciUez58a2hVxCQ9Iu5IRJLubJlt9g5BvbieDeLrllygqZDw0Tv
 pTdIMQZsBijXZ1OEDsWDY4yCccPg4x1JHLRv+ogNwE8XqCQYBihOdt8A6hCg+BC+PzTD7+WZa
 XAy1jXHlmCO/cHe+qa8cpMyg==

Add bindings for the SerDes of the Realtek Otto platform. These are
MIPS based network Switch SoCs with up to 52 ports divided into four
different model lines.

Changes in v4

 - fixed addresses in example
 - missing firmware-name denotes "skip firmware" instead empty string
 - fixed reg porperty

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
 .../bindings/phy/realtek,rtl8380m-serdes.yaml | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m=
-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes=
.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
new file mode 100644
index 000000000000..8ccb3a34b221
=2D-- /dev/null
+++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
@@ -0,0 +1,63 @@
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
+    maxItems: 1
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
+      If present, name (or relative path) of the file within the firmware
+      search path containing the firmware image to patch the SerDes.
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
+    serdes: phy@1b0003b0 {
+      compatible =3D "realtek,rtl9302b-serdes";
+      reg =3D <0x1b0003b0 0x8>;
+      firmware-name =3D "zyxel-xgs1210-12-serdes.fw";
+      #phy-cells =3D <4>;
+    };
=2D-
2.46.2


