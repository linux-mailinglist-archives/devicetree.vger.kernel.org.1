Return-Path: <devicetree+bounces-288465-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qP+EMhpY5WkYiQEAu9opvQ
	(envelope-from <devicetree+bounces-288465-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 00:32:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A5E425AB2
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 00:32:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 683223012CD2
	for <lists+devicetree@lfdr.de>; Sun, 19 Apr 2026 22:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC725311C2C;
	Sun, 19 Apr 2026 22:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="dZYC5gCp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-106121.protonmail.ch (mail-106121.protonmail.ch [79.135.106.121])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B7A30DEBA;
	Sun, 19 Apr 2026 22:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=79.135.106.121
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776637966; cv=none; b=r9AbfzCcw7vXYuQMxYJJI/UZQ34KKSDInatl1PjqTwhp87uFHUnbaAABqdb8hhJqqAdSFIc1tg8uxpE33hdQbauAagx04KNdXx8MAcDYZHIgTPXiPWb1RpbKqEvuj5fkHh6Snbx9kwD9eeQtaaoyhaFMxAeRrQJB/DA5P6NQdC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776637966; c=relaxed/simple;
	bh=h4m4u0qkmJAER5pKaCfe8t7x9hCuAS05rfldDLVor6A=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=s1376OSiC+V3K8eNRLAU8OYpgnruE1crKnSZbfF0tThJBbveIXv6zrM+lvhXdTpq+mpJaKGRlzF0XUNc5gSm2+bqCKjx3tPdtSPmrtR6ATj6Xjk0/t+rnyEy2DUMoKI0xs560AeTNfHg23/nHua/7i8d65vJZA/UQbXl/pLPblo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=dZYC5gCp; arc=none smtp.client-ip=79.135.106.121
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1776637957; x=1776897157;
	bh=yvoexbK0dmENpV9aFI3G1FiFeiAaZWAdXU+Z85ZXwl4=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=dZYC5gCpz7XagwRQ+epVGiUMV+0q3SE4SSgkSIXsmIQ8GdUeOyFivfKVjP/qx+OAK
	 Y/Hqc2FKK17BBFM+7nD1YHw7BGCPdDINt8ITXhPN1irmNa3lfI2VnJOY1J/N3CbZXX
	 YiqMBeeiA/Mi9eEPTisvmGqGZjHUc6DW9mG9ldkqd0veNI/3hl5rd0w7hX/Hikbt2l
	 Xt/7GIZNTGnnP1w4O9pRbV82sfcl3QbrR9zrWUIfs9pfKOhmIiiESXOn0hdOVVoyO9
	 3Y5w4TASzk7Fr3EX9jZAfsg72pdTAuCEUgkCl8ywoTBwOQsWgb4q2XiSl0wv2vPZft
	 ADUj/7o7Y3LKg==
Date: Sun, 19 Apr 2026 22:32:32 +0000
To: gregkh@linuxfoundation.org, jic23@kernel.org
From: Hardik Phalet <hardik.phalet@pm.me>
Cc: andy@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dlechner@baylibre.com, krzk+dt@kernel.org, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, me@brighamcampbell.com, nuno.sa@analog.com, robh@kernel.org, skhan@linuxfoundation.org, Hardik Phalet <hardik.phalet@gmail.com>, Hardik Phalet <hardik.phalet@pm.me>
Subject: [PATCH v3 2/5] dt-bindings: iio: magnetometer: QSTCORP QMC5883P
Message-ID: <20260420-qmc5883p-driver-v3-2-da1e97088f8b@pm.me>
In-Reply-To: <20260420-qmc5883p-driver-v3-0-da1e97088f8b@pm.me>
References: <20260420-qmc5883p-driver-v3-0-da1e97088f8b@pm.me>
Feedback-ID: 166659585:user:proton
X-Pm-Message-ID: 0c087ad38cf9953db3d14364c90a411258dbab38
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288465-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,baylibre.com,lists.linux.dev,brighamcampbell.com,analog.com,linuxfoundation.org,gmail.com,pm.me];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hardik.phalet@pm.me,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[pm.me:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,2c:email,pm.me:email,pm.me:dkim,pm.me:mid]
X-Rspamd-Queue-Id: 67A5E425AB2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the device tree binding document for the QST QMC5883P, a 3-axis
anisotropic magneto-resistive (AMR) sensor with a 16-bit ADC that
communicates over I2C.

Add a MAINTAINERS entry for the QSTCORP QMC5883P devicetree binding.

Signed-off-by: Hardik Phalet <hardik.phalet@pm.me>
---
 .../iio/magnetometer/qstcorp,qmc5883p.yaml         | 48 ++++++++++++++++++=
++++
 MAINTAINERS                                        |  6 +++
 2 files changed, 54 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc=
5883p.yaml b/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc=
5883p.yaml
new file mode 100644
index 000000000000..72cc3fef2226
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883p.y=
aml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/magnetometer/qstcorp,qmc5883p.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: QSTCORP QMC5883P 3-axis magnetometer
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
+    const: qstcorp,qmc5883p
+
+  reg:
+    maxItems: 1
+    description: I2C address of the device; the default address is 0x2c
+
+  vdd-supply:
+    description:
+      VDD power supply (2.5 V to 3.6 V). Powers all internal analog and
+      digital functional blocks.
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
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
+            compatible =3D "qstcorp,qmc5883p";
+            reg =3D <0x2c>;
+            vdd-supply =3D <&vdd_3v3>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 48fda1f8332e..d41f6b33d0e5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21554,6 +21554,12 @@ F:=09Documentation/networking/device_drivers/ether=
net/freescale/dpaa2/overview.rst
 F:=09drivers/bus/fsl-mc/
 F:=09include/uapi/linux/fsl_mc.h
=20
+QSTCORP QMC5883P MAGNETOMETER DRIVER
+M:=09Hardik Phalet <hardik.phalet@pm.me>
+L:=09linux-iio@vger.kernel.org
+S:=09Maintained
+F:=09Documentation/devicetree/bindings/iio/magnetometer/qstcorp,qmc5883p.y=
aml
+
 QT1010 MEDIA DRIVER
 L:=09linux-media@vger.kernel.org
 S:=09Orphan

--=20
2.53.0


