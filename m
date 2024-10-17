Return-Path: <devicetree+bounces-112512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E2D9A2888
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 18:24:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 458A81C20D37
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 16:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77F721DF250;
	Thu, 17 Oct 2024 16:24:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="DDCv7+c2"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81321DEFD9
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 16:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729182287; cv=none; b=QsCZlTDmLVJUfk/5QJzO4UuNcPwmMEq6Y6C7XCYVLEZBuHiKvWhrdXv3mPHFotpWye7/ZHYoQGml5YkS6yLc0ie+ikielXTtF0chbsGh55Gts1cE0R+CmmzmWD3YeVSo+QOVmf8uH1n3ycj6HK0MION3g+RAdKbjIFTLZhWviZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729182287; c=relaxed/simple;
	bh=UMyhSD+vALuWnXG9JpXTQtCNx+Akei22D3/a3pX/JuU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L97cGuVFYnjm0VAg4YiJCL1L6YZPfP+XF1Pfi61D6f1d85F6ge+RBi/QU733781CwrbgkO0ToO+MUHoXIUFxiiskDOKiLY8ZYVZ5tmTIBjSO8OWcmRZbcuodvKmsUUInul6VZmBH5RqMsjZ0DjlicDrdUAHx9ImibSQeKmnX7xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=DDCv7+c2; arc=none smtp.client-ip=212.227.17.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729182250; x=1729787050;
	i=markus.stockhausen@gmx.de;
	bh=rsEM6pkScqZXc/O/H2irSgUFn1YqF4g1ahj+Fr45UGk=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=DDCv7+c2RTw8al8joLfoBHXEQVO64Boml3H/5CSRdKVuYJ8J72rz5SnkAO5R4EjE
	 tkm9kiTblYlMV+nnSQtoQvCCKYOw98DZAYbz9lvzuSuxaNhaOAByyzF/FBb9M9gjp
	 Nnle8bzF/znS8GwdUX2DyBS++RZwNSIMUhLMMpjgqrsB2NJ5a6pr+J7FaLVql7poy
	 JlNz+6BB/OlYnYXdLbOrT9ln+CbbKPq2FdDNN7ccIYRs0qcJO28/eg+YzBfmopr4c
	 QmPN61CSeyiNOKzi/3eqL+kDH9IHppoEHD3kkAvmf91/e32Rc629nsQ7/R1H7Ruah
	 T3x2h+mN/TY/8bBaug==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MBm1U-1tDX2U3CGq-00C9aA; Thu, 17
 Oct 2024 18:24:10 +0200
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
Subject: [PATCH v5 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Date: Thu, 17 Oct 2024 12:23:59 -0400
Message-ID: <20241017162400.3881609-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:ynSWfNF+bgGXXq5q/SucCt9nhqR25RtffNca/Yt+jhxbi7+UMlj
 UuJgBiXCZyKyJeaehEL/583rmLFWtwXbnJDVlxpdwBDzo9boLAlwci5/ymzQjOueEFkdnOA
 w4nggjS5y1CT867zlWxPByqS13f36G/s9td6ZImp/zbkcQ/JCIntnYTDWCUOkd4tDXbcOy6
 14CwsQJnM7n92iYZmMS1w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:7BjoQXa/BMk=;na65O8nDDrqa/omJMiPItQxExXp
 dmUK3NwCCXC9pJgTneOsCzblIBn0sPxJqXUbK3E3YzvUI0DN1rftq/zgdsNQH+28Np9DXneqX
 WhENU7GJH76MDm+KfhJ0rkS7FbX3HWR1lWzivexG7qZAD9jmBbSfA8fpDZa4lW3V9vZXQ9UGi
 sWG+wTFfkvZUXzAOuZ5iKtvdvX2cR9pCVmUYAhj7gsCSc0OGPz0YeTKwnv9vhniIzlzsadlwB
 f/6bmjrgqJrDtyCyT8aEoNrxEbJ6QTYtGaTSu/08UKLXE4du0nvQs9y7Cb2/8HtpmF2alBcT6
 aji/a1hXvIn/xi6RCmOzckC7zy5P6vnclZEeY0cqVNKWNP8zWMVBnbBK4q8/J6IDowMfHflF9
 21tOg54pA2PqGt+14YvlStBNdTEQ5nBhTdUgCVQKIfo+WoMWKn2fZCbzebPgOb+ABXjBDNZd3
 nHg7zcCOCJsFHyEtel4PPUShgc8dT5eefWfGgaKBTcvGUjsBXKkr+iB3gX8gwtwAFQcPL36+S
 gOAz85eW++Gt2uIUZt9JpsblZdYgYL1zTAMm51fg+RXetUIMikRtpCuo28VtMZ3bs6So4Ca1j
 b6J7mBLc9uxdwBQtr4/XEW8ktvVwuOMY2M1KoWUonw78/nXB2jqB/pj31KLObf41Q8/YvnNuU
 Ni3JYinEw6ztt3nQxWtC+bwpzXhAV1kr7VAypHMfZdK2IFrYCqHfH8e2i3YSe9eZBGJVzbHhV
 pipx9npB7c/8ZVc0K29d1JLOQBv/2EAfE+kdK2nAHTh0Q0lydznJiH+4wdN0dO/3njtDpJjtA
 MTrBJAf9EjdYg9ycfw7x5azg==

Add bindings for the SerDes of the Realtek Otto platform. These are
MIPS based network Switch SoCs with up to 52 ports divided into four
different model lines.

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
=2D--

Changes in v5

 - drop nodename
 - drop items from compatible

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
=2D--
 .../bindings/phy/realtek,rtl8380m-serdes.yaml | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/realtek,rtl8380m=
-serdes.yaml

diff --git a/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes=
.yaml b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
new file mode 100644
index 000000000000..13b11c011153
=2D-- /dev/null
+++ b/Documentation/devicetree/bindings/phy/realtek,rtl8380m-serdes.yaml
@@ -0,0 +1,59 @@
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
+  compatible:
+    enum:
+      - realtek,rtl8380m-serdes
+      - realtek,rtl8392m-serdes
+      - realtek,rtl9302b-serdes
+      - realtek,rtl9311-serdes
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


