Return-Path: <devicetree+bounces-160425-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7040A6EAFC
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 09:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E40E83AC524
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 08:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F504253B68;
	Tue, 25 Mar 2025 08:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YV7A77AN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8319B19F41C
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 08:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742889774; cv=none; b=NvvaKjOzObWD4vfinwYMiSlk4U5+nROTOpBtq1aBWOHSawUeeuGRGYhyalsPpXvJTnpCSzrjP5Hg/ASaQpJ/eHZDjGRtHUwEMCdwcZ8uDESIa24qjE2pAaG0ZcHRuMbJM2j6Y0HtgrJP39Zkc8ZFrNAPabI2lVU3s1grIDRQJ1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742889774; c=relaxed/simple;
	bh=SPqlnkjtrS5DVFkshdhSurAaxj8Nd6Gmu/f6A5AIxGQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eBPQdSY/E+cCzYEsAho25TR88m2D09iIir1R23Rj4SJ8lFz+Wcm/SsK6YWNxdClJFQcwKElo9PoRp2KvzhAkcaQt8jWgURxFczXO0DeCo+0KH+J79mw2BGjf8D0CHbt9FH5DcOheHttiJWVXWMhco41ogzB6ijHLC0EXSkza5NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YV7A77AN; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac29fd22163so892709866b.3
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 01:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742889771; x=1743494571; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O6hGtk8l3NJ5m0ZZ1f8dhJbnrFpOfREyFqNdfBX5qs4=;
        b=YV7A77AN2QHRQNEzMUUVL0ODg5ykfLN0b47U3KqnmW9sRxT1LWAxLiXI25VspD+v3U
         0ycmGp9M1lMT8yjdZ9wL6hIBR6heeONo5sdtieKqSNMnv+BN5ogclbn7v7O/+so3675Y
         gCY0NGULa/K4Rv0Rd1Sl3F6S8I5actofcSqPC67XpcbPjqs0FmXcfLJIfuJsuKAw4QSi
         zZyToiiygdKtwJvA9NxEUGdVNajd1hMeLIUG7+DjpT/ymmcSc/itAeITNZvt88QUT75e
         42UrLlVoHObCbNoEW5+EdLQZRWZcf8ftxZkzH245VR9EX93sKifliTDFJMT1C4VHCy+l
         LzuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742889771; x=1743494571;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O6hGtk8l3NJ5m0ZZ1f8dhJbnrFpOfREyFqNdfBX5qs4=;
        b=TSJDqpWsuQgcVbgsVFlYytJOAe5SrNCmK1KsCxKLGmDPeYZdrKCSUjcr1tKeFnYIqL
         rWYTKJaw02iM3Tqf1v1oxCHpd0eHTdCRH7SPPFUWBM9rCTksAe7FNBHnk2Xv34NMrdPC
         9xfzBLrPQOrUYFPa6kfNaNx4ya+aSQt4ccUZW1hj9j3D7hY7LeBStqCAQ8zTsWOsXj3q
         qsDJlrkYlZX/gep+2QshoCOhZytuopYOYzRkESjWBbRt0OdfKU4ZgFHgyRXxU0ykNfSk
         qaGR2ga0XwqJr2bsfLCEl5iAVcZnFMjugbDh2g4vmKxzWTMUF/fQ1sI6Q3GmMjKtIR9q
         UOJA==
X-Forwarded-Encrypted: i=1; AJvYcCWkR2lWg6eoCnuOx0lM4OtxXqRc21uAjfKfju/ns2hj9a59oho9pq+t7flx+CLemoigOod1B3cW+5vJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzestFDg4V8/pwe/nRylodDjyAUG5LZXSmX3hOr3FoU93Tx/4O/
	V2/WY56yh0O2MU38Y6MwqG9r/DZa1KQnHx2mznCLx9rRZpoiJNLflj8NaJXdDnici8sQCxLb2gn
	sVwY=
X-Gm-Gg: ASbGncvVkRVgtDazJg09A9lusLlC03xIpbTL29iL/x7irZNemADcVOFhD2S5PNCwPHq
	12qVy9mbGw0vRRUVH8Jxm1KPxSKOUochOm6h0I4QvczZidEiXaeE4QG9WHw0SxSJ9ydxziEWdrz
	i6xfhAVQJvv1E8ntgugj/MT8G97gwht45N6V+CBx6PIcVbN/ar2Knc61uSTyx+9I/PPGj/sCMvh
	DJMs8aBzmR8B+pgDimp54M04fXQVTUMONqlrROlHy9jjObVlLq0D0pC/EATkm0uXCdyjNWYkb/z
	dvSAHNlvjXxJz+AxMNuSDZPGctRLs24vNDMzp7NBcUl8jk50WoX0DpK0apr8DKrU0ADb1ig/q+A
	OuY3+zH14wkE7kH5HdXGTG1YrZkzs
X-Google-Smtp-Source: AGHT+IELkDVeKZ6AufhA6lJ7MjzTQsFQ3gFzAB+1T3Pvd2jU/2VAFg84gQd/PIk9YF8+lS/h85MrWg==
X-Received: by 2002:a17:907:cd04:b0:ac4:3e0:7ca3 with SMTP id a640c23a62f3a-ac403e0a6c8mr1292664066b.18.1742889770672;
        Tue, 25 Mar 2025 01:02:50 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebccfb004fsm7446785a12.40.2025.03.25.01.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 01:02:50 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 25 Mar 2025 08:02:25 +0000
Subject: [PATCH v5 2/6] dt-bindings: nvmem: add max77759 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250325-max77759-mfd-v5-2-69bd6f07a77b@linaro.org>
References: <20250325-max77759-mfd-v5-0-69bd6f07a77b@linaro.org>
In-Reply-To: <20250325-max77759-mfd-v5-0-69bd6f07a77b@linaro.org>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-hardening@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
Port Controller (TCPC), NVMEM, and a GPIO expander.

This describes its storage module (NVMEM).

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v2:
* drop example as the MFD binding has a complete one (Rob)

Note: MAINTAINERS doesn't need updating, the binding update for the
first leaf device (gpio) adds a wildcard matching all max77759 bindings
---
 .../bindings/nvmem/maxim,max77759-nvmem.yaml       | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/maxim,max77759-nvmem.yaml b/Documentation/devicetree/bindings/nvmem/maxim,max77759-nvmem.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..1e3bd4433007341a11040f513bf444866b9e38a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/maxim,max77759-nvmem.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/maxim,max77759-nvmem.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Maxim Integrated MAX77759 Non Volatile Memory
+
+maintainers:
+  - André Draszik <andre.draszik@linaro.org>
+
+description: |
+  This module is part of the MAX77759 PMIC. For additional information, see
+  Documentation/devicetree/bindings/mfd/maxim,max77759.yaml.
+
+  The MAX77759 is a PMIC integrating, amongst others, Non Volatile Memory
+  (NVMEM) with 30 bytes of storage which can be used by software to store
+  information or communicate with a boot loader.
+
+properties:
+  compatible:
+    const: maxim,max77759-nvmem
+
+  wp-gpios: false
+
+required:
+  - compatible
+
+allOf:
+  - $ref: nvmem.yaml#
+
+unevaluatedProperties: false

-- 
2.49.0.395.g12beb8f557-goog


