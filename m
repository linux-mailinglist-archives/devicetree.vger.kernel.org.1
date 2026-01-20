Return-Path: <devicetree+bounces-257569-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKcpOMTWb2mgMQAAu9opvQ
	(envelope-from <devicetree+bounces-257569-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:25:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B1E4A4C3
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 882C784B22E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6934046AF25;
	Tue, 20 Jan 2026 19:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YurQtt9z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E4D46AEFA
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 19:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768935978; cv=none; b=FNmv5cEbMB8ZzyZRwwWKQssSqWIsUh6cQeP/sVA457s6wpwX7XHRbAphSDyWBKnhWkreF34MT0sCFJWN6zSucNIwv4ANp1gTFx8RJVrT1R3bWoIFiHjpH4iEAyz+2LYks45f6Obctbei+i5E7uvdaajb1hyYBSR8CNSTu0gchjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768935978; c=relaxed/simple;
	bh=yxnEx4BU+xefwn+EfFU7iFurmvPml9i59k/P1RLAJgs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IU0FBOI/3JPHCtmvaG/A26EljDSLGpkpbsgKquuKd06bwbJrVWwsIlbHGCeL0dNyGNq/iFLLfKDeQ2vguCo64hqyRmGhF2ZZQ06IxWk/gZkU2h/QzJ0Np7kCJgraphBg5pNxXaNFu+iEG6yc0sn/Qw9oHOKm9diHZVwIy1MQSa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YurQtt9z; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-480142406b3so31259835e9.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768935973; x=1769540773; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lfs9m2lS0OGQ6AFUB84Kj8F2HzMlL+m5vSn33xsuh6g=;
        b=YurQtt9zWvKKDjI5nYquQi4VCIBVi2GeFD6N/8GZ0huG2sCpXgVhmcTeNTTkYevJQs
         ttAWz1V/WqJHxODIHQYt8/Yu7IIRV7fXoTtERl/jJK3FWWLc92B/+uGkJ9kjvRGpTn09
         Sh/RJT6Yigo30jb2qk4cyTEl4sIn+HllfPOCOI/TZJO7cBbRV0G9HQ+juK4LPNxFohVG
         g2QRW5CtzBl/Oxygxg/PFYSmZmC6SQRoV2t9ZXpETSMsno/RCyyF77c+Z4jjEbkYlwH+
         AnldB1/n8eP/Y7PJTIYh+hrFuxOwRICIKCyAH1GDB1spnXubUktxyBgo9rwgN4KwYL15
         mzSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768935973; x=1769540773;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Lfs9m2lS0OGQ6AFUB84Kj8F2HzMlL+m5vSn33xsuh6g=;
        b=eGLwrXisKLXxJKgmCdZYhm6/oxRsGtls4oZMU0SKMXTmg4qKkegJdOZI7/jvkA6fal
         3PHuiR9Z6zTkvFPf4xdJgys7u7jwb/8yWfHjuNM5oyRQ5k83/qutkIrcgIJxY3mdeacz
         gBQelYym6aK1iOkEmP1/gNjYHb+8l9NoRUIrGsUUPA0/AgPdSmbcJ6DGxLCnjIPjZaqT
         5fqUfkJl8XW6YyiVMN9KUis1sCY856CRbVSeE3N3hGdjZcxLSMbkbbO+3Qcp0qfp0UNW
         W369HcBywsXlkJraKlti2OCdwhszxcQtrf1mKH0MzF4PhXLzgyQpNFQmM6cbIuHasYjF
         nr6A==
X-Forwarded-Encrypted: i=1; AJvYcCV/kYOkMkorY3GPtclCO4TUvyapchZ35kfXskcUbWdlXWuPZ/koBgiIyQb4gbInjFlyguYZgKYmTfhV@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/hkJVwStG7kGTrOkEwVYPR25zJnpwbABEPb/4aq+WWg1MlhiH
	1q8FWpIU2dh5EQO4NDTEVlpjT3mZKmHQjwkMD1nRCu6yWykD70wBFLYf
X-Gm-Gg: AY/fxX5K3ZjTVrqnxk2Lt4Y8+DyDsAv5RTcE/SYoS6gzDTzeS0K8frnxnMhDI7qXdFa
	gQaQ6tlgSexyJ4PUaz/hW2FiZn0MaQpMp5T7TUFCaeycMcsv7OovocYhKhRvOGjpAcUIYQakCvv
	p8hCSijftSAtd8HsiYHU9bVJBqdZQ88hEybqa1BK6bpjQbUWKdcwVPLbnWycyAddTq8hvxGVr0i
	DBkj+OCIKtfvuqbcALXQHDTYClZZ3PeerBmDMTRaAgOzTFObjQx8wuKnTsSZCxcIhlTMJ0TBoei
	yFcNstZTB3vVNHsMk4sXy8IA23owNdKaofm3ICydZr9Szm9G2eKtUA1IOHVGA5vZgeB9O6/DkcG
	DkDtu4SFQUhnZAGOlChbGk9QvCg0Q8liQu0Zy6gDVH1wJQUZ3C97ZE1vilmYQe35QN2LCb7lAnL
	Q5mGbBBKZtEGaZuWDV2r+qUbyXWnNER1dnqgs75BqHzY0F
X-Received: by 2002:a05:600c:8b58:b0:47b:e2a9:2bd9 with SMTP id 5b1f17b1804b1-4801e345987mr230321595e9.31.1768935973027;
        Tue, 20 Jan 2026 11:06:13 -0800 (PST)
Received: from [127.0.1.1] (bba-94-59-215-181.alshamil.net.ae. [94.59.215.181])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804244c6cesm2005735e9.0.2026.01.20.11.06.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 11:06:12 -0800 (PST)
From: "Anton D. Stavinskii" <stavinsky@gmail.com>
Date: Tue, 20 Jan 2026 23:06:03 +0400
Subject: [PATCH v4 1/6] ASoC: dt-bindings: sophgo,cv1800b: add I2S/TDM
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-cv1800b-i2s-driver-v4-1-6ef787dc6426@gmail.com>
References: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
In-Reply-To: <20260120-cv1800b-i2s-driver-v4-0-6ef787dc6426@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
 Inochi Amaoto <inochiama@gmail.com>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, 
 "Anton D. Stavinskii" <stavinsky@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768935966; l=2363;
 i=stavinsky@gmail.com; s=20260115; h=from:subject:message-id;
 bh=yxnEx4BU+xefwn+EfFU7iFurmvPml9i59k/P1RLAJgs=;
 b=4ceWN1YSmA/dnUJiaFeJ71H2kKEEf6TSCxHE16GDFpBeRQWyCoDj31tNuqPWaIX99YvDyeYG9
 RGXjBukPLo5AiTzR0C+aXc52BnXDsS/mUZse/wpVQT8d4TjzUO4zggA
X-Developer-Key: i=stavinsky@gmail.com; a=ed25519;
 pk=2WxGZ1zd1vQwSPFCSks6zrADqUDBUdtq39lElk4ZE7Q=
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-257569-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stavinsky@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.62.182.176:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,devicetree.org:url]
X-Rspamd-Queue-Id: 89B1E4A4C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There are 4 TDM controllers on the SoC. Each controller can receive or
transmit data over DMA. The dma it self has 8 channels.
Each channel can be connected only to a specific i2s node. But each
of dma channel can have multiple purposes so in order to save dma
channels the configurations allows to use tx and rx, only rx, only tx
or none channels. I2S controller without channels can be useful in
configuration where I2S is used as clock source only and doesn't
produce any data.

Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
---
 .../bindings/sound/sophgo,cv1800b-i2s.yaml         | 67 ++++++++++++++++++++++
 1 file changed, 67 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml
new file mode 100644
index 000000000000..f08362b0ca5e
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/sophgo,cv1800b-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV1800B I2S/TDM controller
+
+maintainers:
+  - Anton D. Stavinskii <stavinsky@gmail.com>
+
+description: I2S/TDM controller found in CV1800B / Sophgo SG2002/SG2000 SoCs.
+
+allOf:
+  - $ref: dai-common.yaml#
+
+properties:
+  compatible:
+    const: sophgo,cv1800b-i2s
+
+  reg:
+    maxItems: 1
+
+  "#sound-dai-cells":
+    const: 0
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: i2s
+      - const: mclk
+
+  dmas:
+    minItems: 1
+    maxItems: 2
+
+  dma-names:
+    minItems: 1
+    items:
+      - enum: [rx, tx]
+      - const: tx
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#sound-dai-cells"
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sophgo,cv1800.h>
+
+    i2s@4110000 {
+        compatible = "sophgo,cv1800b-i2s";
+        reg = <0x04110000 0x10000>;
+        clocks = <&clk CLK_APB_I2S1>,  <&clk CLK_SDMA_AUD1>;
+        clock-names = "i2s", "mclk";
+        dmas = <&dmamux 2 1>, <&dmamux 3 1>;
+        dma-names = "rx", "tx";
+        #sound-dai-cells = <0>;
+    };
+...

-- 
2.43.0


