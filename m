Return-Path: <devicetree+bounces-87334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 540029392DE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 18:59:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83879B21D50
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 16:59:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44B5016F0F0;
	Mon, 22 Jul 2024 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="oao6zy8r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D2816EC1A
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 16:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721667533; cv=none; b=N8hm/l9cNnmA2YmfIHYEnafOL1OcUAPMMTQUeapq6zjeqh4pOdM/o+lja6K27U/KGKnq0akB408S1vvWIHNkb8kL2UCTywVxiweqdII1oaIoVRtK9Rdc8d41c+fpNUucFPYQvc24GLcrJ/7jwATdo7rtEiJfa/s1S58gx6z1IJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721667533; c=relaxed/simple;
	bh=7duusC5QL4D7e3OKwUsKMAterf36R2wP+wBL9KtuQo4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dR244yGEM/1oVlhNS9FXHPsshfkHThmDpOe5aqvOSGMFq29qgrm53DGYF5TqS1l6szQJ8zSXKfBc/0K5dkCzHUOCTPUmUb++t6YC0f0fxFLR27FnUdv185oQgIrrEkduvJZV+gTcHkXoBuf/pNZDoatWiOM+e9AeBQf3LScewQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=oao6zy8r; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-426636ef8c9so32210105e9.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 09:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1721667529; x=1722272329; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ycAh5p8k6UMqBbJt12G5mHQ7FFA/SYxcagx0+USNSNo=;
        b=oao6zy8rCQHvPuTli1m1kb1OD8MO1i9mj4D0hcr3ppPfQ8nJtrHFPl1jPbqwAaLOq+
         kNcbfcgRAuVujNFx4XiRuE6ggLlrrt3nTM4KfQ0AjjQmAEB6g1vRNPnXnSXWsv6uFcw5
         si96wf62FLjffaNoIg3NWou7acOQ6Ulyx43wo/zH2rAd5EeqihSL4V4qYC+naAee2Fs3
         adjlHNFMjxdtr2qAgIzGStZWmiExG+ZKZci8+HqhG9pkRVzcYlf5plDxKQGY5KB5Sv+1
         W68ZRM2NVtFmk6bItMs3J3JJjJMfVKX0T5QqqZdiiRuB8iEDIK4vNXHD3L1SjAofwOYU
         StsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721667529; x=1722272329;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ycAh5p8k6UMqBbJt12G5mHQ7FFA/SYxcagx0+USNSNo=;
        b=IxBEP+fuoRNVYyZ/O+N+Sin8RebyBVDtoSnop83KxXX+LAquTGc6+wCEKjRl/rD0qf
         kdOPmKcKwq0S2q/MzYgGd1JQztbhrPMHzOKX1mswBOydA7hFgmAn+Ode3LdKX9Czjq9X
         HOxRHEWzPJBb5o6Um8YmChPH7+6aVasMZBfBoSSPL60enLMRSy8SgWjFcb9ykuaFbOAD
         jD4SpKIMlO+BbeWdaJh/9OGEFJnVTiZ2z1S2nX7v5w2+c8crzFRNEYlaQPyBmIgQGFkv
         FL5mpX/wTwN8NXLWYFMW7688aHSklROpLMcFLXToOvKJG1VPHSyZJBMOC8T9tXSBWTzn
         aSeg==
X-Forwarded-Encrypted: i=1; AJvYcCVY6aBR0RpFnnUH6qVRJMM4rCNjg/J/ibBDLPkX3cyo+y0PcgM+zdw9Q9NRcXzJ2K/3SUgpku3jUUFBtuNfGeqZsrX7VHYw41LC6Q==
X-Gm-Message-State: AOJu0Yy/pJgr+whg0YRd8LtMhME80FfNylXF+UcAIyqzR3nJAzV8x64c
	gGpju4f4Oy2260JIyFg1v/AHaJZOwwARyBhFN+3pmj8CkHhDn1RGhpO2WhNR1HVBG10MOWhJgoq
	+
X-Google-Smtp-Source: AGHT+IHoJ1ox2rHRGtjks/hF7bJbL9LkM2r/LomFDmJIvUY3fXiQV5+nkoKXs0oeAUyKjEr63N+H+Q==
X-Received: by 2002:a05:600c:1d04:b0:426:62c5:4742 with SMTP id 5b1f17b1804b1-427dc5153ccmr49800685e9.7.1721667529178;
        Mon, 22 Jul 2024 09:58:49 -0700 (PDT)
Received: from carbon.local (aztw-29-b2-v4wan-166913-cust1764.vm26.cable.virginm.net. [82.37.38.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d2a8e436sm161660055e9.33.2024.07.22.09.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 09:58:48 -0700 (PDT)
From: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
Date: Mon, 22 Jul 2024 17:58:42 +0100
Subject: [PATCH v5 1/2] dt-bindings: iio: humidity: add ENS210 sensor
 family
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240722-ens21x-v5-1-cda88dce100e@thegoodpenguin.co.uk>
References: <20240722-ens21x-v5-0-cda88dce100e@thegoodpenguin.co.uk>
In-Reply-To: <20240722-ens21x-v5-0-cda88dce100e@thegoodpenguin.co.uk>
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721667526; l=1982;
 i=jfelmeden@thegoodpenguin.co.uk; s=20240709; h=from:subject:message-id;
 bh=7duusC5QL4D7e3OKwUsKMAterf36R2wP+wBL9KtuQo4=;
 b=WtEwcGBCOyAJaAV826W2c/TzftVDSaOi0gVV+sow0O43Rh4OPl1qOWPGNGNMiVDRyoj36TcnK
 JoS4cbU4EtIC2mqxgOqv6JPs5KHwC2czxC7tF3qrI/BbuBuqOu04QGC
X-Developer-Key: i=jfelmeden@thegoodpenguin.co.uk; a=ed25519;
 pk=tePkZ5iJ3ejQ2O3vjhsj7GrLYcyJN1o1sMT3IEXvKo0=

Add device tree documentation for ENS210 family of temperature and
humidity sensors

Signed-off-by: Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/iio/humidity/sciosense,ens210.yaml    | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/humidity/sciosense,ens210.yaml b/Documentation/devicetree/bindings/iio/humidity/sciosense,ens210.yaml
new file mode 100644
index 000000000000..ed0ea938f7f8
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/humidity/sciosense,ens210.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/humidity/sciosense,ens210.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ScioSense ENS210 temperature and humidity sensor
+
+maintainers:
+  - Joshua Felmeden <jfelmeden@thegoodpenguin.co.uk>
+
+description: |
+  Temperature and Humidity sensor.
+
+  Datasheet:
+    https://www.sciosense.com/wp-content/uploads/2024/04/ENS21x-Datasheet.pdf
+    https://www.sciosense.com/wp-content/uploads/2023/12/ENS210-Datasheet.pdf
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - sciosense,ens210a
+              - sciosense,ens211
+              - sciosense,ens212
+              - sciosense,ens213a
+              - sciosense,ens215
+          - const: sciosense,ens210
+      - const: sciosense,ens210
+
+  reg:
+    maxItems: 1
+
+  vdd-supply: true
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
+       #address-cells = <1>;
+       #size-cells = <0>;
+
+       temperature-sensor@43 {
+           compatible = "sciosense,ens210";
+           reg = <0x43>;
+       };
+    };
+...
+

-- 
2.39.2


