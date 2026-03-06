Return-Path: <devicetree+bounces-271969-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLNhOLesqmnjVAEAu9opvQ
	(envelope-from <devicetree+bounces-271969-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:30:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A90A21EBB6
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:30:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89BED302E0C2
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4125E37D132;
	Fri,  6 Mar 2026 10:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Aycb3yD5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D652F37C113
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772792999; cv=none; b=EuvZ37io5FBbJXwswD761ZUuDpSzyy89O3lHLrF6eOmLVzsJvd0uNtMdrHPZJkqhGTu5vRmEuIdt/8Ac9R4/L8S/SxUTJg4BsmkoiP3AK/39ixv/YABwMeqI/B4nI/YQVlkn6GYqvK8uJHHjYvN+/FuvXmRiToxya+CsbSmYXvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772792999; c=relaxed/simple;
	bh=VXqNGlqX3hZoD8cv8P59wyGVL5FoVdrO7llV2dEVFW0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qvndeE0ZJ5q2b5lp4gffOCnTXavLNw5/EA1v2HdkAC+Npgu4WAdAOAlh6at3RmaAeMM//CqhRZVJiyLasK0opdWFN6HFzcFoEWIGLbundz+vOtayh52IIK3NDkvqW0N7OUXkPyahQXRQXUxl52Gjw1LjCIhOYi5jpd5IG/nwY/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Aycb3yD5; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-65c4152313fso13367691a12.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772792995; x=1773397795; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4gPeJxyuGY5/8F9b5AqNdyg2EFBWflmTDpqYPujzuFU=;
        b=Aycb3yD5XIvxzGgghnjxETlzPRDnEKrqZc9X9CHGhewxeFsVVNUv9mTWZzB+u6Rmb3
         /q9o21jyb9akjFBlv+2ouG9AQHwLZwehQFeBmLj+CdtCjSSrXeM+CHOPLXMZ0xWNU0h6
         Etia5m4dywRX+lmWpxMmhfsvQG2WSXI4mzflHoLJ5fDnwpHRIzygPta5IYr7k9xY9Q3u
         bos6wGrb5eZqN/Djxoq4ewVx3QmnpzM8bVv8H6CfCuhPX87FlpKwyQBD2eIAJuqVCk4/
         v04b/vumoDigrgQDQ6XonFSLgrxBdm+ifWmd2Rv4QLB6T1MAVAPaP3nxXeKihM9KIo/1
         GrUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772792995; x=1773397795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4gPeJxyuGY5/8F9b5AqNdyg2EFBWflmTDpqYPujzuFU=;
        b=MI4+OPmglEhWRLO/vflPkOh2Sv0iAlI2S2gYp6vETndZ5iHfzmd9XV4PcBysVi9EUH
         54veK35sNLaGUmY9IApyhuOVytixllM6gb8ReMGIzqZ1EqQdMbQiIZKFl8TC+YjcjSeS
         y5DyMQLD3yVzorxH1FOXwBF2s24UQkyXQvc5Ey5QYPdS57QK3iBI80B53hwFABj+bZ82
         GXrrX/9wEBmixLz7tYe893xbOYRtLP8HOTchoKpUL0AwYs+ydqiyJc5ts8kKAHvQ+wd0
         U87bS5Lges695QKjHBXrqU5ic2f/29po0DLn7l+WoaYeSMDSJ8bDuQ42Lj2PMQ3ZwUJQ
         L9iQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+B0O9z2SLzh5tVBivR+Z2P6sS1sN/GtM3gkUZNJs+LvdWCMCWNO3rnvTfGg99ntJiPASPkBwJQfDY@vger.kernel.org
X-Gm-Message-State: AOJu0YxL03Rc34iR7g3G8WmzR3IP0NJqaAVKMc0Z+GMOgTnb6bGfZdd4
	MQ236sQ+oHRN28qdvEfgo/VYz7jhgx6OEgnraw5m7bRfoI58j1pNY05YyhUjgUsVhYM=
X-Gm-Gg: ATEYQzwxxLQ1f4gqTQQ5zRwqjCO6zeZyHrGMfDk7aLqqggEbC094wcWSkOdSzQTrj5t
	YEH96EloVPCddA+DlhQ+kBQCFXqxYlZ/dBSmUjyITxRndrkx/fGw8mirQYzKyTJEjfnZkOaESuR
	hXaWPqnjMPkCqfFiidjWkOaAffLEJJ7gcYtLty4s3pKxQADbmz7nHjaBPftWaI6hArRVvDR6SZb
	mee7WMQ4j99sa3f0Z6pH9EIiFUdmZPRUh9pF3F00JHiAXaj66oMWB+R2R5ImveoiRn1Pu0qXBXf
	YRqyDu6CeNU8cIpAtKij/zRxECPKlShfdfYV8BYzqdquNSVmAkVMZd3vQzsJ22wi2t0hMWxUDK4
	aTLsPqRDV7uoASHM816lAOxPNAGUKmn88kk9QTYsd19Fih/rKHO0+I8WpqaHsCKkQv+7CnF7EgO
	R7W2F5uhXYSbk3tDX4NyK7rm/2FlExlfH3d78MLS0LrXerwXv/M/qAj3r1pM0o4lGBACNeLU6T8
	8OQ1reEkXzrw6ZeYqNT/RwX8Q==
X-Received: by 2002:a17:907:3d8b:b0:b43:b7ec:b8a1 with SMTP id a640c23a62f3a-b942dcee05cmr89065966b.24.1772792995144;
        Fri, 06 Mar 2026 02:29:55 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef8c95csm42907266b.21.2026.03.06.02.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 02:29:54 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Mar 2026 10:29:52 +0000
Subject: [PATCH v7 01/10] dt-bindings: soc: google: add google,gs101-dtzpc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260306-gs101-pd-v7-1-03f7c7965ba5@linaro.org>
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 5A90A21EBB6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-271969-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

The Exynos Distributed TruztZone Protection Control (D_TZPC) provides
an interface to the protection bits that are included in the TrustZone
design in a secure system. It configures each area of the memory as
secure or non-secure.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 .../bindings/soc/google/google,gs101-dtzpc.yaml    | 42 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 43 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml b/Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
new file mode 100644
index 000000000000..a8c61ce069d6
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/google/google,gs101-dtzpc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos Distributed TruztZone Protection Control.
+
+description:
+  Distributed TrustZone Protection Control (D_TZPC) provides an interface to the
+  protection bits that are included in the TrustZone design in a secure system.
+  It configures each area of the memory as secure or non-secure.
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+properties:
+  compatible:
+    const: google,gs101-dtzpc
+
+  clocks:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - clocks
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/google,gs101.h>
+
+    dtzpc_hsi0: dtzpc@11010000 {
+      compatible = "google,gs101-dtzpc";
+      reg = <0x11010000 0x10000>;
+      clocks = <&cmu_hsi0 CLK_GOUT_HSI0_D_TZPC_HSI0_PCLK>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index f0b879760b6e..611fa8fb9f8f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10883,6 +10883,7 @@ P:	Documentation/process/maintainer-soc-clean-dts.rst
 C:	irc://irc.oftc.net/pixel6-kernel-dev
 F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
 F:	Documentation/devicetree/bindings/phy/google,lga-usb-phy.yaml
+F:	Documentation/devicetree/bindings/soc/google/google,gs101-dtzpc.yaml
 F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
 F:	Documentation/devicetree/bindings/usb/google,lga-dwc3.yaml
 F:	arch/arm64/boot/dts/exynos/google/

-- 
2.53.0.473.g4a7958ca14-goog


