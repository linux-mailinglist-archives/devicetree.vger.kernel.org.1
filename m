Return-Path: <devicetree+bounces-286236-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABHhHPXS12mrTAgAu9opvQ
	(envelope-from <devicetree+bounces-286236-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 18:25:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A39B3CDA45
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 18:25:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0AE703042E2C
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 16:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E640E3E121D;
	Thu,  9 Apr 2026 16:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="W3WtiRWC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0613B8950
	for <devicetree@vger.kernel.org>; Thu,  9 Apr 2026 16:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775751860; cv=none; b=gjsl857z9bJiAIaDSzc3z1SiHwfd1sDARtoLcfj/6Krx5lFpW3haCSj2So9nsqxJOYqfTsHAx3XHWQzZIYPXmiTnalOYhXy9voxH+7TBklcoOsL5reFI+Q3Omfd8SlLcedXWs40h/x4aq8zJ5j/BFIOsutoe+HW5qqYy0nJF9r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775751860; c=relaxed/simple;
	bh=FHqavf4x2LMnpKhwYIAJLhWWLpu5loE7rr7KuHjSJBs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q7YjRv+Bwo0NjrfpzwlfMjidheRrUBnDWwVuMItTp/rkt6BYx5k0R29fcttAt1WYtCZVL2JXgAqRDWyeQz38z+dGANZzbT9tf4kEukoXQCTyaTuC1uq2KjIbL6JilyVotGZvKvaXf1lnoblitCqCuAu87StbNrBMfR6VKneIZoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=W3WtiRWC; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1775751851; x=1776011051;
	bh=MyqNqpuNtgV8td1byNhhPh0LwJSSFfPtn7H4KgGMCEY=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=W3WtiRWCUQMsjfJgajIHTMq2Qmaa8uqUIuw6M7Jj0STqXFJ2Apgtyc34+FDHpGXtQ
	 xgvfJLGuU3w19OUVS1mhYbFBUqA5vSNKqPCYWX0TJKXeGgCDylACcNSe3O09ulN7qs
	 t38hAQmHa44z42R5al+v5JN4JPhW0mjCeUf2LnBFd0m51k/wT4+r3DjyHGeKJZbr3e
	 8ctDfUsxtNsPLsuY/kosLUv2AqbDovsdAFg7vguG1WWlazftTsze5CFTJbsgvFuCNf
	 emKn/vxs6eQqFAcDIqqON6Z1iVa4k0RMeUKWCNOF1eMyoVs5xznCaK/cIuYPjCR1FW
	 Y3ZnfYhiR92rA==
Date: Thu, 09 Apr 2026 16:24:05 +0000
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Hardik Phalet <hardik.phalet@pm.me>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Brigham Campbell <me@brighamcampbell.com>, Shuah Khan <skhan@linuxfoundation.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, Hardik Phalet <hardik.phalet@pm.me>
Subject: [PATCH 2/4] dt-bindings: iio: magnetometer: Add binding for QST QMC5883P
Message-ID: <20260409162308.2590385-3-hardik.phalet@pm.me>
In-Reply-To: <20260409162308.2590385-1-hardik.phalet@pm.me>
References: <20260409162308.2590385-1-hardik.phalet@pm.me>
Feedback-ID: 166659585:user:proton
X-Pm-Message-ID: 56cf74d2e6e82df571b58112540e55c2da1541cd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286236-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hardik.phalet@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:dkim,pm.me:email,pm.me:mid]
X-Rspamd-Queue-Id: 6A39B3CDA45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the device tree binding document for the QST QMC5883P, a 3-axis
anisotropic magneto-resistive (AMR) sensor with a 16-bit ADC that
communicates over I2C. The binding exposes the required 'compatible'
and 'reg' properties along with an optional 'vdd-supply' for the
2.5 V=E2=80=933.6 V VDD rail.

Signed-off-by: Hardik Phalet <hardik.phalet@pm.me>
---
 .../iio/magnetometer/qst,qmc5883p.yaml        | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/qst,=
qmc5883p.yaml

diff --git a/Documentation/devicetree/bindings/iio/magnetometer/qst,qmc5883=
p.yaml b/Documentation/devicetree/bindings/iio/magnetometer/qst,qmc5883p.ya=
ml
new file mode 100644
index 000000000000..84fec10d8b9a
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/magnetometer/qst,qmc5883p.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/magnetometer/qst,qmc5883p.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: QST QMC5883P 3-axis magnetometer
+
+maintainers:
+  - Hardik Phalet <hardik.phalet@pm.me>
+
+description:
+  The QMC5883P is a 3-axis anisotropic magneto-resistive (AMR) sensor with=
 a
+  16-bit ADC. It communicates over I2C (standard and fast modes) and is
+  targeted at compass, navigation, and industrial applications.
+
+properties:
+  compatible:
+    const: qst,qmc5883p
+
+  reg:
+    maxItems: 1
+    description: I2C address of the device; the default address is 0x2c.
+
+  vdd-supply:
+    description:
+      VDD power supply (2.5 V to 3.6 V). Powers all internal analog and
+      digital functional blocks.
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells =3D <1>;
+        #size-cells =3D <0>;
+
+        magnetometer@2c {
+            compatible =3D "qst,qmc5883p";
+            reg =3D <0x2c>;
+            vdd-supply =3D <&vdd_3v3>;
+        };
+    };
+...
--=20
2.53.0



