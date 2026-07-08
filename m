Return-Path: <devicetree+bounces-322754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P+c3MZ00TmqNHgIAu9opvQ
	(envelope-from <devicetree+bounces-322754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:29:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 57ED9725439
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 13:29:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=iORTaLt4;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322754-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322754-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2275130C5B4C
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 11:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2743344BC92;
	Wed,  8 Jul 2026 11:19:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB3144213C
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 11:19:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783509568; cv=none; b=KBu/agcb8pRB7VlIKbQcVpYC11rl0uzAflUfgC/ckQms3DNc8go/owb/9Y/cOMMFYH0UWFW59BsxxCONCnguVAKqPLra+11/7QIOry9ho1M6k/hvbQaigCF1IWkYtDvSJYLKTkHTAFE9SgzXZvj7Td6b3z5jLVGypPGZexp6v9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783509568; c=relaxed/simple;
	bh=/zFMgeTXq8BV/PSUXyIoj9vWIzelJEQc5mY/3rTLEdM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MX/zGD+14StiWqLAv0+KdTPuQhqu3opgmlmr36C3vItMWS83PoCDXI3/4VWWUAVnheokpblOQ+SWCe6b0nvW4WkB7HFGbZd3LkdOd7xmjbVKxkRG8egvIORtGo/UZOhURVm05aMa5cs1XBedD0raLBl2kGHJn7aUMfM3dMYECYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iORTaLt4; arc=none smtp.client-ip=209.85.221.47
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-476d8e647e9so397413f8f.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 04:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783509563; x=1784114363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9d8Ya9TZ084bRoL4vdvnBvEzz5OStNy8NGls14yGuSU=;
        b=iORTaLt4yeKQIHDV7H8hSwHqEcdKpkaGV5Z0DnsCXszxsES/BYTgJ99ldn+YqzWwmC
         mqlzAFMct0/TQvc5hdyvKISmk7qAk/nqtey1CZa6eXIxdRGrgcURJa1f/A80dqMPSbkZ
         zzyK7aGN2iOq0UGXN4051tQPxjgdXhKaNMke1tJjQCATkBW8Q+7lcsFKhVBb22nxT0Fl
         sOqnbpDeme9w1OuXbwumPdTPqHk/9ZHnZZxIPWVe0ZgFckrcqitFBtRs+2ro+PEOAkza
         EicyPj19lQZU2Z2xJ4O4U7Mk0GQn0IZmkEoiphkwtMje6+0m/Dsm7NGaKvRJEUdVm+EU
         DhNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783509563; x=1784114363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9d8Ya9TZ084bRoL4vdvnBvEzz5OStNy8NGls14yGuSU=;
        b=fqrA/PcGjlTi2rOcGa/OiBXiwZg5Ra1TINgY54dhPze//3xwcl9HKfWXJFnG4cqKBl
         tXlm75M+S2N3wtSjkAP5r9w7k9Dc1+HCOLV2mzS5irrf05D+duirMAoGkYaouCQ2hDYp
         SVO4sirBAdso2FPITXu+HMKEN3lTpC2gUzwYpRHjaUsesNGP/bgwHoKqwgALqVOQJ/8M
         sE//YVTQpqY34JIovmSsj0gD4sUQTocNEAtxI87Kps5z1HWxRg+Z2Wj6j/8QHiqMC460
         HmZWYclI4krgpgiHPUGBb4hDRyRgX+9/BBrTN6sP+cyzSsrRtDRofPs5V7MwsIYUE9u6
         CEQA==
X-Forwarded-Encrypted: i=1; AHgh+Roplx0ynQasj7VlG/6eLDwOFzFwEhZKS3CVy3B4qJ7Rv1fB6dtGuxl/RYnlfAlSY2pLXJLS+76k91Gy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8XYHmpnyCq2qYg2Tjv/aj+zwaFlhso47FhjFFlALpw/GYNLOx
	QbXgEw1QLmU+7FoYnKyt/xVAq7fd3q9QSXfKo2lf8rFYVf9+wWfjx+OP
X-Gm-Gg: AfdE7cm4esmzyol6ZVHMQgqKUENIzqARyMTOQtrixU8JueWe3Zi0WbJFvsxV2sazOEA
	2dfjchW7J+a93xIdZjNQKLit5+e+fX4bdOYSyusmPeNBm1VLFHgxQsA5wE0aD6SRsK+OQ4KYMlX
	zXske2glKcBwJAOI07xhERCRPaHD+XFfLAmScIKd1CbLbszLQfCUyzutH064NEGuSvAsFKWpChW
	tCPndtVmXYKXihNxsB5wUR2sjfVzdvAd1wKNk+0fTo5NDSRKPmobh33gTrGz/8PZT/pMCkpKnE9
	owArSJEE3nsxfS/IMPHcoUu80SufGIKXNOM7aJmfZg6kCKW3I3Msrp0RMZNECCpT8X8WoMYGvWm
	PQibOlyDsZKpZq7MPnXUxVr8Odn0M4U8s+Jx49h5mYu1h7CiVNkMDSYC1DGGz8LZmwfALQjY/Qg
	yNB/ZJpfHemLRoCcGjTJz8aogwwLl4qQFEMfFXaoWXRmMAY3HZaxOtr3k=
X-Received: by 2002:a05:6000:400a:b0:46f:7d90:811c with SMTP id ffacd0b85a97d-47df0758b4cmr2503097f8f.13.1783509563325;
        Wed, 08 Jul 2026 04:19:23 -0700 (PDT)
Received: from localhost.localdomain ([188.26.50.173])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-47a9e4d6e4csm39216602f8f.10.2026.07.08.04.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 04:19:22 -0700 (PDT)
From: Eduard Bostina <egbostina@gmail.com>
To: Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Eduard Bostina <egbostina@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	goledhruva@gmail.com,
	m-chawdhry@ti.com
Subject: [PATCH v3 1/2] dt-bindings: soc: ti: Convert DSP to DT schema
Date: Wed,  8 Jul 2026 11:19:13 +0000
Message-ID: <20260708111914.1706800-2-egbostina@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260708111914.1706800-1-egbostina@gmail.com>
References: <20260708111914.1706800-1-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,ti.com];
	TAGGED_FROM(0.00)[bounces-322754-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:egbostina@gmail.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:broonie@kernel.org,m:robh@kernel.org,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[egbostina@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 57ED9725439

Convert the Texas Instruments DSP bindings to DT schema.

During the conversion, the following updates were made:
- Moved the binding to bindings/soc/ti/
- Make the 'ti,hwmods' property optional to resolve dtbs_check
  warnings, as several in-tree device trees currently omit it.
  A review of the ti-sysc driver (drivers/bus/ti-sysc.c)
  shows that the property is not strictly required for probing.
  The driver only reads it to populate the 'ddata->legacy_mode'
  flag. If the property is absent, the probe sequence continues
  normally without error.

Signed-off-by: Eduard Bostina <egbostina@gmail.com>
---
 .../devicetree/bindings/arm/omap/dsp.txt      | 14 ---------
 .../bindings/soc/ti/ti,omap3-c64.yaml         | 31 +++++++++++++++++++
 2 files changed, 31 insertions(+), 14 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/omap/dsp.txt
 create mode 100644 Documentation/devicetree/bindings/soc/ti/ti,omap3-c64.yaml

diff --git a/Documentation/devicetree/bindings/arm/omap/dsp.txt b/Documentation/devicetree/bindings/arm/omap/dsp.txt
deleted file mode 100644
index d3830a32ce08..000000000000
--- a/Documentation/devicetree/bindings/arm/omap/dsp.txt
+++ /dev/null
@@ -1,14 +0,0 @@
-* TI - DSP (Digital Signal Processor)
-
-TI DSP included in OMAP SoC
-
-Required properties:
-- compatible : Should be "ti,omap3-c64" for OMAP3 & 4
-- ti,hwmods: "dsp"
-
-Examples:
-
-dsp {
-    compatible = "ti,omap3-c64";
-    ti,hwmods = "dsp";
-};
diff --git a/Documentation/devicetree/bindings/soc/ti/ti,omap3-c64.yaml b/Documentation/devicetree/bindings/soc/ti/ti,omap3-c64.yaml
new file mode 100644
index 000000000000..09d0ebf2cb13
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/ti/ti,omap3-c64.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/ti/ti,omap3-c64.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments DSP (Digital Signal Processor)
+
+maintainers:
+  - Eduard Bostina <egbostina@gmail.com>
+
+properties:
+  compatible:
+    const: ti,omap3-c64
+
+  ti,hwmods:
+    description: Name of the hwmod associated to the dsp
+    $ref: /schemas/types.yaml#/definitions/string
+    const: dsp
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    dsp {
+        compatible = "ti,omap3-c64";
+        ti,hwmods = "dsp";
+    };
-- 
2.43.0


