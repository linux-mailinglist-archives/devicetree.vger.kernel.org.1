Return-Path: <devicetree+bounces-178178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D9DABAE76
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 09:31:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEA9F3AAD27
	for <lists+devicetree@lfdr.de>; Sun, 18 May 2025 07:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 856B21CCEE0;
	Sun, 18 May 2025 07:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="UtlT4AUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7B7EA921
	for <devicetree@vger.kernel.org>; Sun, 18 May 2025 07:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747553511; cv=none; b=gpYK4FEVOKLStsl+4UfTMR4zoXPEdPkI309U+r0eUeH2zVToZKJcJtbKSaUR/eQWDiyBjCSRIjQWkskrDVC7PwkNSFmMIC7xKC2XxOb6Kt+CunnWU7h0dVAA57QS8dB2JRl1WovoNsJFFd9vYltSDyEEQ49WZZs/aRY7DY8PF5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747553511; c=relaxed/simple;
	bh=yibOFi7W+UFdEejdQ0ymCnUrV6cO9wwr5UA+zVHyFLk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ednREBshedsbXaXdG/FDNNZbgY42MTnvgQ0lLpgh1veU8rKGZYdeSQqhg0p6Hh+/cbaAnPDIkiuwD/E+yOTywEnJXMfBp9tzcxN92ChE2Bl888/5UiS0AzdEYpQA+9O0HZCW6kAz8cOdwutQZS3p2Q3bHLSA0WSA7hSGm7GMBKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=UtlT4AUo; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1747553501; x=1748158301;
	i=markus.stockhausen@gmx.de;
	bh=aV6NP2gSdDuiPAIZK/rjgySaehsWdCc8DrznNMKgPQ4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=UtlT4AUoGwcIg0FFUykNkqEvM+lb1m9gTuC7fjSBKMTlhvbaUykVa4sYrNqB6qAt
	 v63dBJNTpj9pmtRugpLnSlepCMv2yVgzBFOpAYeEmjjtBmlyDZYUQRdz1lXDh9QHH
	 CA1nGq4ybgemZarqObpQu0bJAMm5FvyXLxlEYu22Ncr9MfyjSnzLdaAqcelmUsobP
	 ChZB5QmNQVjn/aLBKLSc3OjsQlM5GyDQfaOgmcTzKZecSQllQkE7ChHoP2mw8/NkK
	 sd39jCY56+n4Olf7NEFbTHeHRUsid/fSUwYKEbskFj59jtD3apnEzBKYR7wWfBkGR
	 2eHUaKOYzKqabzbPLw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mnps0-1ujbvC3io6-00mspa; Sun, 18
 May 2025 09:31:40 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz,
	daniel@makrotopia.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Date: Sun, 18 May 2025 03:31:33 -0400
Message-ID: <20250518073134.3357015-2-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20250518073134.3357015-1-markus.stockhausen@gmx.de>
References: <20250518073134.3357015-1-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:iniZKDFhDDnQ8l05MrlGUs9uHEXc+p9YqovdOZSxExiCKGMim5I
 qnugEUEa2gxfMMxSuXz3MyCL+rSgJ2UrT5R8YGp73V9c3rvX14zTeLXAXgtpsVos0AC+jOw
 pjlop4dqaC7xJ0mkKrLQ1jYaadJP+dPGvWXupSvraao8d1o/jJVFehP+8VkUtnw3/MFKgl2
 qku/9wvYsdaws2dPVJ93w==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:HgrpHvJkeEE=;D2/LtrfvijBK7Ot8V2oTN5t37Tp
 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
 amrgEEjJ4gp6LR7QaPGEG8=

Add bindings for the SerDes of the Realtek Otto platform. These are
MIPS based network Switch SoCs with up to 52 ports divided into four
different model lines.

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
=2D--

Changes in v7:
 - none, resend because v6 got lost

Changes in v6:
 - add Reviewed-by

Changes in v5:

 - drop nodename
 - drop items from compatible

Changes in v4:

 - fixed addresses in example
 - missing firmware-name denotes "skip firmware" instead empty string
 - fixed reg porperty

Changes in v3:

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
=2D-=20
2.47.0


