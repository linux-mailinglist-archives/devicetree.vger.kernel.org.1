Return-Path: <devicetree+bounces-270086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCcfC2WppWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:14:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1581DB99F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:14:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 696D2302E772
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F309040F8E6;
	Mon,  2 Mar 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CG8Vx7ww"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16C5407575
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772464433; cv=none; b=uxYkSvOF++En6+r+OHxhck9EQgQ7HxskThavsh9ACpMzgbn8eI+cKWV4LVxP3+9M8CzpvJZtXWXBhbsbvq8rcVIN08sJxPHrepKrwr7ZhDGRk0c+q4toudGblMZqYfyJVIYbp+TJxly6Ggh4au3D9MnXESbeyBISlb/hGjCicQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772464433; c=relaxed/simple;
	bh=exV6OpyIj+E7YmJqvnw7Yw8GsUS9yk0uhliZbbcVwO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PGOARgoDb0VnCvXGINJZxu8AlLajSLJMnAEovy4vvtvrdvRFRntAHS2VwlxI79mKKfV/oHEXOlqOxbDGKEfhdWb2UGs7539uXt2yBPFLQJOetiDn+5miwuXXNXzY9Bun2C0nvBGNO2gHRkcnMu6kfxrmSIT32MKjWPixL6HqQrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CG8Vx7ww; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-48373a4bca3so27577195e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 07:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772464430; x=1773069230; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qgPMIovbEThLlPPQFVARziyNrmjJuegOTMLHImP/d90=;
        b=CG8Vx7ww0tXxRO7Eg/G6HV03WTXtaN9QMABtsVS26AWARofAao4UUhC9ltY19dHQIH
         DvhQMPMZ9GjJu3qsUIhgfojTansCm/71TOICBwsVbtlbHnPkQOX8wgLekjxdxY40yZQX
         BvHStAslMMGXd4vvnDSShPz5MeUcFHT9L7+URLl4lorLMmM0RepmqboWkrtW6qHws170
         hoJV6YiEufyhIL9Yd4rV8od079o5/G7ziDf1HEpXSGpaDGDEIOgcsJH63mi6Qm7VK5lr
         TA+LBpNdnzEL8PSKvyfFN0yt9WR7bME4b1ti3rgP0uR8AJ84olBRXfYs0aOd9UMT6ArS
         ot0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772464430; x=1773069230;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qgPMIovbEThLlPPQFVARziyNrmjJuegOTMLHImP/d90=;
        b=CFmlFakFZwEhUy//QKGV7VTpXjWY3wSg0XwAm3tux5RIV+jfGvYVSvrmmNGRNbEj8I
         Qz3uFuq9NyWWMdidVDMVGgQsBpkwjQUo6yjWAkX9UBKXethCrP9vbbgo/I5SYNUAuX3N
         7ZATIOzEKdUFItYYYUkoQSIATzmTNpU6KyHTXJaycH1B/b7h0xZIh2PY/n0hT/n+sTG5
         IvSolQ9dl/k6TL7YG/XHO+L7ewcs+yS6kKZvNCgxFMKlXpP74qGZeWEn5gRFZVLj20Id
         MyPESRvIv/AwfaubkRyK5sAx8kG/Cgjo2awNbfFm4cS+/O7ExS9PXDWcEIitXHCckdgK
         Ozvw==
X-Forwarded-Encrypted: i=1; AJvYcCVR3QDMKYFzmiuX6PlawydaE4Ir0yXQGlqq7KdxqvR+4V5N4WfbWhdRLVlGwfdJ/x4GHUkT3ktD0TeY@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7tETUKI+XEULyswYD33AG+Rl4FJuZvo4tMd6ozC5EDuRzcmrY
	boA9HZFGnnXlE9vgN3Lgs2Jav8f3WTO6qLhw4t9Wck9smZNXZBZ5h6fL
X-Gm-Gg: ATEYQzyIz7YckjXYi0vepMi3JjQ6CNXhGI7DLIYsYrfl2TKEM6us2JyovYNzIJGbFDP
	+o8lPHpTVHxZ2loajgb8q8/f/coYSbUttExFlkyiXuDycVxfC14NxHTb5VD8wLzcW/uGWOOhoK6
	6UDPQpdev1sNBsddYVGCxAYm/62E3rSDZVTFcm85VcuXQPUTZOUFBFexUm7tM58TCG+D3jo7iK4
	UbwIXcyJ75K9tjKre4CQciUpajvGKziK94I0XgO39VJWLegF91ILWcyfEhGt2wc6KOJvyfnTim9
	281/bpO+7uJwqs4bA6gv8Fpp9CZsqjdy2qInwOJ7U3ukZ5e0NWh9v42twbGPUBj47FqQCCGxwAS
	gdmF3u0qHWNuzeQf5CR9+IiPn9zDyRVmaxQ2T4vGCWEa+9VZowC0GCqfYxt1FlkD9p2+LNVd/wQ
	qzXZoknmbD0Q8bKcURsakWrBTWB+BzBw8G/44wMSw5m8Kcz3kT7FzHav9+WHWrbfYiWw==
X-Received: by 2002:a05:600c:37c6:b0:483:96d8:9f75 with SMTP id 5b1f17b1804b1-483c9bc5b89mr218710175e9.28.1772464429956;
        Mon, 02 Mar 2026 07:13:49 -0800 (PST)
Received: from ipedrosa-thinkpadx1carbongen12.rmtes.csb ([67.218.235.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd70e692sm437240265e9.7.2026.03.02.07.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 07:13:49 -0800 (PST)
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Mon, 02 Mar 2026 16:13:22 +0100
Subject: [PATCH 01/10] dt-bindings: mmc: spacemit,sdhci: add AIB voltage
 switching registers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-orangepi-sd-card-uhs-v1-1-89c219973c0c@gmail.com>
References: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
In-Reply-To: <20260302-orangepi-sd-card-uhs-v1-0-89c219973c0c@gmail.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
 Javier Martinez Canillas <javierm@redhat.com>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Iker Pedrosa <ikerpedrosam@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: CB1581DB99F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270086-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[rootcommit.com,redhat.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ikerpedrosam@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add SpacemiT K1 AIB register properties for UHS voltage switching
support:

- spacemit,aib-mmc1-io-reg: AIB MMC1 IO register address for voltage
  switching
- spacemit,apbc-asfar-reg: APBC ASFAR register address for AIB access
- spacemit,apbc-assar-reg: APBC ASSAR register address for AIB access

These properties enable the driver to perform voltage switching between
3.3V and 1.8V required for UHS SD card modes.

Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
---
 Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml b/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
index 13d9382058fbc1c12be1024d1c550f04a825673c..4d6590aa8262009b6e5697a04b45cf3736c0fa42 100644
--- a/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/spacemit,sdhci.yaml
@@ -32,6 +32,18 @@ properties:
       - const: core
       - const: io
 
+  spacemit,aib-mmc1-io-reg:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: AIB MMC1 IO register address for voltage switching
+
+  spacemit,apbc-asfar-reg:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: APBC ASFAR register address for AIB access
+
+  spacemit,apbc-assar-reg:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: APBC ASSAR register address for AIB access
+
 required:
   - compatible
   - reg
@@ -50,4 +62,7 @@ examples:
       interrupt-parent = <&plic>;
       clocks = <&clk_apmu 10>, <&clk_apmu 13>;
       clock-names = "core", "io";
+      spacemit,aib-mmc1-io-reg = <0xd401e81c>;
+      spacemit,apbc-asfar-reg = <0xd4015050>;
+      spacemit,apbc-assar-reg = <0xd4015054>;
     };

-- 
2.53.0


