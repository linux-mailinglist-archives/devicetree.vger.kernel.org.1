Return-Path: <devicetree+bounces-325014-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8vyqFY5iU2q5aQMAu9opvQ
	(envelope-from <devicetree+bounces-325014-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:46:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B44E77444DA
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:46:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=KtwBbaZu;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325014-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325014-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C92D7301DB85
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 09:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0C613988FB;
	Sun, 12 Jul 2026 09:44:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3749739B959
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 09:44:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783849474; cv=none; b=c6IpJD8NTGlHXQK7UifTvh19tE3lz0NzDIUZ2F2cNYHte9ib+7RtgcYtCc1HzH/hgoU74AqQIddeCIbs49SeNR9oZtLvCEUOOAPmAX/YvH6xbLXhc1olr62eKX29B5RW9C2nQU0HVXkzz5zQYAVafgkbJci7MFeX+Sz2d2Nyb74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783849474; c=relaxed/simple;
	bh=S7RyjJPJgk8bM8bSvDin/ELs3Q0NaOfmTEAFhGjIglA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JlIJbpmxINrbrINLuPdgtFYnsEBUn0NlgaCOtQvDIqVUz8el2OczYx14Kbi5jgZjJQnzwpP1t4alPos2n5sNZXRS2yvE7+pXZd+drkjfI8HQW5NElNBc9KY0ARp7GwaHriAb21Zm8VigS09bEvToUBxeEy61U9vV63dPoBN+XLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KtwBbaZu; arc=none smtp.client-ip=209.85.216.46
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-385ea3ce80dso2520575a91.2
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 02:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783849472; x=1784454272; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=brQxkQcBSLeOu8llLPLKYoA1VBGbas+TGQGDU2SyhI0=;
        b=KtwBbaZu8/kC1FNl0ROsJ1tQiQa/hEemijniPfpILC4XKh8PZgpbja02JxpV+1FvAh
         lmU/T85xUkfrgT6j1da/5AAyFGITodG7WFBYxk81xZkqbspzjPN7jG5Tcuj2LObpZtAA
         zTYxBsAPrvoUXCNEauYXGmyLjbnt/H/lZixpdajSl8H0WK5AHkUPY5jm8PYTlVhV9zFP
         s9aGZsNdqHAsggDSTW3ocAAeZMwVyho74nyFrHbaV9tuQTE/RAXz97wyySDc0rRMKvzj
         PhQw6AXabBPZfVe8UCgnrtPH5gH7l3DYBu+dyPqqd/tFpF7x1ZtB0C3OFkReePKK/eFK
         Uatw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783849472; x=1784454272;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=brQxkQcBSLeOu8llLPLKYoA1VBGbas+TGQGDU2SyhI0=;
        b=k83fWBoZCF0lre0FKL57Uo1ZAZximKM3hEMXCUAgH+JO8Zgfm6JJsMmvhRhXbG56hb
         /8SBrx3YTx1b6wa+TA3aFOJCunn3gKJlOsnYk0QDW5QphYVW9/usEm3nGt2lw2mDdDql
         OL4lVBwcBzaf+w8TZBOtYsuUCxBJqsjlVj5xIVfpJq+qIe170Y70R+QnRQGTDWfbUWDy
         F8OF7+aU7ckCFz5hOJkiXDtHl9XE5StXq6eUMp4BF90BXqsYcHovQPlWt/MzL8YWOSpS
         wX0dHsQjaWz4XOUTFNpeqgNNcx9ES/zof/wSEVQHgG7epVB6UhYBohTYlrCkGSFQqmbo
         J7EA==
X-Forwarded-Encrypted: i=1; AHgh+Rr5J/dPDRN7fFO12eQrP15LVWi/fmt9redpaiZ04ER2HGHTNZjVvIPqXT3lhM2hFmdN39/51GK9Emd/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3YxsTlnsIiXAZMKGsGxrXEBxQSWcbWXaBx4xX2jMKcHd/+fdh
	ZgI8EWkgsctJ7/YF74T0LWR03Ev3MvjGScqZ/H/4RhLIl8GOLc9KtN1y
X-Gm-Gg: AfdE7cmJakSzI5UrOSbi5GeSBnpd1eBrlnNoJxr1EfZN9ZBGBHd0idsnImwEjFkun/W
	5C7ThvRWDw9Em3qptACgB4O4spkQGVPqDJXm7daZTtz1AgBLcPGCu9+B6rHKNRv/FFwN7d0ugng
	oKFvNyohh9F062X3dm/Ny05STyN86LLCOJkgk6ytwVJe7kO51ZYmimm2y3rtOjO+K1LyOHw2Pby
	Pl6I3YE0hesQduBsbShFylGyOGgUTKPxJp7QT+xAwoxMWEBQHc+ygi/xl+Ump99eK1f7hpBxr2B
	4+QVCQBUatVsBrdDnfH7+GbErcfR5wQc7xnEnm9WhroCyK52A1TgbfoIf5zfOL9OU4WRNkZNhtz
	EGQ2hzdEO08lIpYcv2u2fQTN7uEYWUk8Art7WYMq824+PczKvtGSYDxhzn8/TW01YtAXjDCItFH
	ZFOCvVXQLKXzMOvGcFMUKxQzdBMWiXer8pHnVEfV9cLdDu9uZaaiWEMJer1eMC2ambK2kzRWDHF
	7m4bp5WO+Ltcoi+g/MBEvgIP+Xw7mPwLxnDXI85wxT9tGJxGK7qh+6Jcgrva2bt
X-Received: by 2002:a17:90b:510f:b0:37e:a09:2640 with SMTP id 98e67ed59e1d1-38dc761aba3mr5422313a91.7.1783849472539;
        Sun, 12 Jul 2026 02:44:32 -0700 (PDT)
Received: from [10.160.6.73] ([119.17.57.186])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313c50c70c9sm15268919eec.29.2026.07.12.02.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 02:44:31 -0700 (PDT)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Sun, 12 Jul 2026 19:43:24 +1000
Subject: [PATCH 05/12] arm64: dts: apple: Add common SMC hwmon
 infrastructure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260712-smc-subdev-dt-v1-5-7763006d57c7@gmail.com>
References: <20260712-smc-subdev-dt-v1-0-7763006d57c7@gmail.com>
In-Reply-To: <20260712-smc-subdev-dt-v1-0-7763006d57c7@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 James Calligeros <jcalligeros99@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5127;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=S7RyjJPJgk8bM8bSvDin/ELs3Q0NaOfmTEAFhGjIglA=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDFnBiU/q9n14kjx3x7Iux5rQddGSwkUWB05b7AqZtzB45
 gctGTemjoksDGJcDJZiiiwbmoQ8Zhux3ewXqdwLM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GukY6xgxcHEKwFQLajH807+hLVmZ0XV4l0rePFE2luOv82e2mLpa+pr9vfeaxbZ3AyPD1yt/pCo
 v/SuPD4tp+CN6R3Bj+qHZOYvmJ51k/bXv6+XNzAA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-325014-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jcalligeros99@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jcalligeros99@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jannau.net:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B44E77444DA

Apple's System Management Controller exposes the readings
from numerous sensors scattered around the SoC and elsewhere
in the machine. Some of these sensors are reliably common
on all devices, whereas others are exposed at SMC keys
specific to either the SoC or even the particular device.

To account for this and expose the right sensors for the
right device without tedious Devicetree duplication, we
can include fragments of increasing specificity in the
per-device .dts files such that the individual keys
(of which there are potentially hundreds) do not need to
be copied in for every device.

Add the initial set of SMC hwmon sensors that are common
to multiple devices so that they can be included in
the per-device Devicetrees.

Co-developed-by: Janne Grunau <j@jannau.net>
Signed-off-by: Janne Grunau <j@jannau.net>
Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 arch/arm64/boot/dts/apple/hwmon-common.dtsi   | 38 ++++++++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/apple/hwmon-fan-dual.dtsi | 23 +++++++++++++++++++++++
 arch/arm64/boot/dts/apple/hwmon-fan.dtsi      | 17 +++++++++++++++++
 arch/arm64/boot/dts/apple/hwmon-laptop.dtsi   | 38 ++++++++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/apple/hwmon-mini.dtsi     | 16 ++++++++++++++++
 5 files changed, 132 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/hwmon-common.dtsi b/arch/arm64/boot/dts/apple/hwmon-common.dtsi
new file mode 100644
index 000000000000..a35c7b14fec8
--- /dev/null
+++ b/arch/arm64/boot/dts/apple/hwmon-common.dtsi
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * hwmon sensors expected on all systems
+ *
+ * Copyright The Asahi Linux Contributors
+ */
+
+&smc_hwmon {
+	power-PSTR {
+		apple,key-id = "PSTR";
+		label = "Total System Power";
+	};
+
+	power-PDTR {
+		apple,key-id = "PDTR";
+		label = "AC Input Power";
+	};
+
+	power-PMVR {
+		apple,key-id = "PMVR";
+		label = "3.8 V Rail Power";
+	};
+
+	temperature-TH0x {
+		apple,key-id = "TH0x";
+		label = "NAND Flash Temperature";
+	};
+
+	voltage-VD0R {
+		apple,key-id = "VD0R";
+		label = "AC Input Voltage";
+	};
+
+	current-ID0R {
+		apple,key-id = "ID0R";
+		label = "AC Input Current";
+	};
+};
diff --git a/arch/arm64/boot/dts/apple/hwmon-fan-dual.dtsi b/arch/arm64/boot/dts/apple/hwmon-fan-dual.dtsi
new file mode 100644
index 000000000000..e87997d21e22
--- /dev/null
+++ b/arch/arm64/boot/dts/apple/hwmon-fan-dual.dtsi
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright The Asahi Linux Contributors
+ *
+ * Fan hwmon sensors for machines with 2 fan.
+ */
+
+#include "hwmon-fan.dtsi"
+
+&smc_hwmon {
+	fan-F0Ac {
+		label = "Fan 1";
+	};
+
+	fan-F1Ac {
+		apple,key-id = "F1Ac";
+		label = "Fan 2";
+		apple,fan-minimum = "F1Mn";
+		apple,fan-maximum = "F1Mx";
+		apple,fan-target = "F1Tg";
+		apple,fan-mode = "F1Md";
+	};
+};
diff --git a/arch/arm64/boot/dts/apple/hwmon-fan.dtsi b/arch/arm64/boot/dts/apple/hwmon-fan.dtsi
new file mode 100644
index 000000000000..180eb8d7441f
--- /dev/null
+++ b/arch/arm64/boot/dts/apple/hwmon-fan.dtsi
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Copyright The Asahi Linux Contributors
+ *
+ * Fan hwmon sensors for machines with a single fan.
+ */
+
+&smc_hwmon {
+	fan-F0Ac {
+		apple,key-id = "F0Ac";
+		label = "Fan";
+		apple,fan-minimum = "F0Mn";
+		apple,fan-maximum = "F0Mx";
+		apple,fan-target = "F0Tg";
+		apple,fan-mode = "F0Md";
+	};
+};
diff --git a/arch/arm64/boot/dts/apple/hwmon-laptop.dtsi b/arch/arm64/boot/dts/apple/hwmon-laptop.dtsi
new file mode 100644
index 000000000000..cadffd000c76
--- /dev/null
+++ b/arch/arm64/boot/dts/apple/hwmon-laptop.dtsi
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * hwmon sensors expected on all laptops
+ *
+ * Copyright The Asahi Linux Contributors
+ */
+
+&smc_hwmon {
+	power-PHPC {
+		apple,key-id = "PHPC";
+		label = "Heatpipe Power";
+	};
+
+	temperature-TB0T {
+		apple,key-id = "TB0T";
+		label = "Battery Hotspot";
+	};
+
+	temperature-TCHP {
+		apple,key-id = "TCHP";
+		label = "Charge Regulator Temp";
+	};
+
+	temperature-TW0P {
+		apple,key-id = "TW0P";
+		label = "WiFi/BT Module Temp";
+	};
+
+	voltage-SBAV {
+		apple,key-id = "SBAV";
+		label = "Battery Voltage";
+	};
+
+	voltage-VD0R {
+		apple,key-id = "VD0R";
+		label = "Charger Input Voltage";
+	};
+};
diff --git a/arch/arm64/boot/dts/apple/hwmon-mini.dtsi b/arch/arm64/boot/dts/apple/hwmon-mini.dtsi
new file mode 100644
index 000000000000..7fd86e911acf
--- /dev/null
+++ b/arch/arm64/boot/dts/apple/hwmon-mini.dtsi
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * hwmon sensors common to the Mac mini desktop
+ * models, but not the Studio or Pro.
+ *
+ * Copyright The Asahi Linux Contributors
+ */
+
+#include "hwmon-fan.dtsi"
+
+&smc_hwmon {
+	temperature-TW0P {
+		apple,key-id = "TW0P";
+		label = "WiFi/BT Module Temp";
+	};
+};

-- 
2.55.0


