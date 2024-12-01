Return-Path: <devicetree+bounces-125826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2AD9DF6B1
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 18:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8C4FEB217AF
	for <lists+devicetree@lfdr.de>; Sun,  1 Dec 2024 17:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10D5D1D88C7;
	Sun,  1 Dec 2024 17:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Fxl/9jb/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381B91D88C3
	for <devicetree@vger.kernel.org>; Sun,  1 Dec 2024 17:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733075246; cv=none; b=CPbZMw838Ail4HR3JFcTKBDr1HDnYCOQuba8xiOMbBEiid1sBy/tYE36v7IKwXgw4ab06QfqKoMGr06EenJAnKS79ew9i6rYf2fznT4eueNLLCRfLgqoCaQtqT4fwemxH7dm5kg38TLg1vGRdW9ODDlfK3D2QcIpAwi107RwEx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733075246; c=relaxed/simple;
	bh=z0V5Gl9oP95XYAidqMBjgfFtgx9xsZSr/31PbkxMc5k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gvq17RB+6agBYKQs+NIWnXarpmDcrNpxRDPl7emlWhrd2he6wqrvSzA6JpHAhHNuxlu0s5Gxldb5jVWLv1W5clIAt+b74fxZr/Sr/SdaByoI8plSLPRVotn4+LK0HtM4lLSxqSiX6+4e8GqJRh7zJY4bjc6zzffQZdUDGP/9LrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=Fxl/9jb/; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-aa5b0d8bd41so373374166b.2
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 09:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1733075242; x=1733680042; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ta60IQaIhWAnkSstQ5gFLSU/BoHgdvU4T6DFjF2nino=;
        b=Fxl/9jb/V/x99d28HE4THVGWWpQCNL+xWVb2NBugm6exIfdWYMqENc4eJcChFe+Ppk
         M+Hhc6bnGheRQM8NAknfJjqjS3DgcfieYKLRGdUVsdTOB2+oOnemBXtNSg+udDtgKkw0
         wEFg1OFt4Qr/szuFmPMY1AgBVqjG6gfkXEN9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733075242; x=1733680042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ta60IQaIhWAnkSstQ5gFLSU/BoHgdvU4T6DFjF2nino=;
        b=LmQJftUDZXrL+2tAc/2qkYGkOUnnide4uug0kf/bL4qE8ZBKg+ZVLBjnGPWXqp70r4
         Dfx5gqNl+GoxwMHkFcUUW3iFYlTj09HSO7Z7WcO0oZhK1p+WMYdeK9yn2O2MESlkJSrb
         /HE4q4QAW+7PAba+noTpEU4IkyT6oODDNDRJ0g7SPMn2dn0gXc2WESoWvBEzfLIw705+
         0KevK6UZNvKbVeuaxPZ4xFj/OzbDItD8AhOG48XzuxoT9kcJepFGURh5Z8J58r+5P9N5
         UGYHHxIVrA80rpuR19Pj+NIFFPc5omi/bDGQCaJKaBbKD3qi7hVs3LbEyM15/sJanGfH
         YwrQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1v6CormyEJWYK6P+6r+gxBbucrkrjg+B6kFFdDBr7d1WeTZy6oqzprNlAikRSiY43SQbHUr0q9SDS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4G/8iShmCaJ0xI2bOTWkPmNEEvOo5CFa46U3laoy/0bi959Dy
	1v5ykoZJLSFXuk1cCTGf8gruOyF0FETWHmiWm4RcuxEUx5CFncmhhrwQTijlyGk=
X-Gm-Gg: ASbGncuM88DlLmMicRCuMlr2/+VhdtLPoDFKvfCLLgJ08zuGvvvA8dtq4MZrYeDvD8s
	7SuSoGspUkQRim99A4sFG1xS0/PqhQBmaPHSd0vCFs6Gb2cT6ua4MTkWMjWHieJQPZRoRWP2jL0
	hZczXtTWP3UZBl47HpQAffGc0/fIn3GSlPZP6JyaYCDKyr6Gv92J4rt8QQ1N+sRVLqVzmsgOMK/
	UvKi5CnNtbT71uVkJtm6QTHmx/I0mMqKvWvNnNcN0MYihA5xlCaz+BRwpRSlg+Xz5+VodOiXnrx
	aBMOiNI89eese3kt+4Qhskn8V/u7lZOfS8TDcCAzdDEk6koortELKRdisOedSFqr/vNV8JPOyxl
	sZnk5iQleEiuVb8BH
X-Google-Smtp-Source: AGHT+IFgxSmMaUuIfgqqx9wN9WkSl2CULWn6wLzUNHeYGK/zmvXMdPbcdrCJqoIfMbNoh6JOnFaSiw==
X-Received: by 2002:a17:906:3153:b0:aa5:43ee:2ff6 with SMTP id a640c23a62f3a-aa580ee8d40mr1783857066b.1.1733075242627;
        Sun, 01 Dec 2024 09:47:22 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-82-54-94-193.retail.telecomitalia.it. [82.54.94.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a78esm415220066b.163.2024.12.01.09.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Dec 2024 09:47:22 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: [PATCH v4 03/18] dt-bindings: clock: imx8m-anatop: define clocks/clock-names
Date: Sun,  1 Dec 2024 18:46:03 +0100
Message-ID: <20241201174639.742000-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
References: <20241201174639.742000-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define clocks and clock-names properties of the anatop device node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

 - Added in v4

---

(no changes since v1)

 .../bindings/clock/fsl,imx8m-anatop.yaml      | 53 ++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/fsl,imx8m-anatop.yaml b/Documentation/devicetree/bindings/clock/fsl,imx8m-anatop.yaml
index bbd22e95b319..f439b0a94ce2 100644
--- a/Documentation/devicetree/bindings/clock/fsl,imx8m-anatop.yaml
+++ b/Documentation/devicetree/bindings/clock/fsl,imx8m-anatop.yaml
@@ -30,22 +30,73 @@ properties:
   interrupts:
     maxItems: 1
 
+  clocks:
+    minItems: 2
+    maxItems: 3
+
+  clock-names:
+    minItems: 2
+    maxItems: 3
+
   '#clock-cells':
     const: 1
 
 required:
   - compatible
   - reg
+  - clocks
+  - clock-names
   - '#clock-cells'
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: fsl,imx8mq-anatop
+    then:
+      properties:
+        clocks:
+          items:
+            - description: 32k osc
+            - description: 25m osc
+            - description: 27m osc
+        clock-names:
+          items:
+            - const: ckil
+            - const: osc_25m
+            - const: osc_27m
+    else:
+      properties:
+        clocks:
+          items:
+            - description: 32k osc
+            - description: 24m osc
+
+        clock-names:
+          items:
+            - const: osc_32k
+            - const: osc_24m
+
 additionalProperties: false
 
 examples:
   - |
-    anatop: clock-controller@30360000 {
+    clock-controller@30360000 {
         compatible = "fsl,imx8mn-anatop", "fsl,imx8mm-anatop";
         reg = <0x30360000 0x10000>;
         #clock-cells = <1>;
+        clocks = <&osc_32k>, <&osc_24m>;
+        clock-names = "osc_32k", "osc_24m";
+    };
+
+  - |
+    clock-controller@30360000 {
+        compatible = "fsl,imx8mq-anatop";
+        reg = <0x30360000 0x10000>;
+        #clock-cells = <1>;
+        clocks = <&ckil>, <&osc_25m>, <&osc_27m>;
+        clock-names = "ckil", "osc_25m", "osc_27m";
     };
 
 ...
-- 
2.43.0


