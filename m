Return-Path: <devicetree+bounces-117576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB469B6F20
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 22:38:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 620F91F2655C
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 21:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A704D215029;
	Wed, 30 Oct 2024 21:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="UWhXvd86"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855BA216423
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 21:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730324074; cv=none; b=ZHghBn6UIVSqVTTKq0CCgCqOUn3nDqQsC13wLyAlk/ZIRZslUvZcenouLFf9h/AGaksshbq4sDpKe+MVAU2tkx8wu8jHH2mgXUcSNv7rEor6YCB0N26A91THC8RkxqIVaw2Wzj5UklnAP/tJuoUoNKR7ISOi0+Oh/Hq/Ct8CDhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730324074; c=relaxed/simple;
	bh=uIj9bxjJ+UW3J2+LRlRVni9rzPoTuE/3qRjSbZzsgs4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WN9hyev5dH6b3fZxjk/DmzQuDClwTUJW3MDv6ecKky+ixn2NX50WFe+wrfuBDVEuRWOwga5xHklpL+Jc9yQVJnMqvrYFNq7sb+ylJBLIwKrgAscHMY7CxQvQHHY2l0U92p6BXlG/uITStBy0xvCc69wPLnqMpC3yAqFRlARsATA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=UWhXvd86; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-72061bfec2dso219241b3a.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 14:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1730324072; x=1730928872; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=miG/1HK0adKG95UFlClqKo0MqYdFiIcf0KaOP4hdkuk=;
        b=UWhXvd86RxG5wYWz3wjWeo53kXYpw2qGUQx2nVUYlsON+RFAwrKykvldvnsyQ6Dlxs
         VBF1Hx7livRkTegAYpuXk82/7TlfVEceQjvu2WTEefALM0yEE/7aYVmss2r5ffkC6YEj
         fDH9vHXbTE58MCj+62cY3MmZM4uaPiojcjXiw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730324072; x=1730928872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=miG/1HK0adKG95UFlClqKo0MqYdFiIcf0KaOP4hdkuk=;
        b=FqB45TKhsrT2jw+fk4ZgqG7Yt/65EhCCb44JQ5kKeKwX1A1q7vvsry/M877MI8mKXY
         5uhFlA9tJkJpQwebBKVwx8Ig87ubikZIka7YmKhEPTniLs9yeoMA57oPhXVeVQg7MRGM
         Af2SI2wtb6viVrCymKz9tggloF/4stldOBD5sjoTzbbVeeEoPQ8t2HRQ7rZod6e1RvsB
         ueUP476CeyDVNUIoLuAKNqrAlKDjdDPo/zJeK6T9jfC7XwC4qCpMZsudtH15EJM3VL/H
         vz4GK9trSMynqZqR8y/GH1hn0dhFYkBmkZ2NKRmqlnvQdDlTuYyKKIw9H5bbK8W9Kxro
         Gjaw==
X-Forwarded-Encrypted: i=1; AJvYcCUf06l7qGR7Pn/VJLffJEXMlGsCVbyuFIcLcotjN2cuNbg9fUK15amAHE082BkYfvD8cgJiR0rqtJzI@vger.kernel.org
X-Gm-Message-State: AOJu0YzFdpbTAM/reuXLGFenwc7uIeJ+v3I0s72MPWtbRZgvUgNgKdYf
	s6rmkwD3emeY/nx2WWcjq5p6AP8u2ESHVXY+cm7wDy611Ef5YxPqBYg060aXWQ==
X-Google-Smtp-Source: AGHT+IEVlkxrvwpC6QCQmAunwAgGVoMYo+UQq+OVf0zsxgZEasH0PzCqxEDNUFZ/6ZGQgbWvwMF0aQ==
X-Received: by 2002:a05:6a00:9296:b0:71e:b8:1930 with SMTP id d2e1a72fcca58-72062fd980fmr24280742b3a.16.1730324071522;
        Wed, 30 Oct 2024 14:34:31 -0700 (PDT)
Received: from lbrmn-mmayer.ric.broadcom.net ([192.19.161.248])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-720bc1b892bsm95417b3a.13.2024.10.30.14.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 14:34:31 -0700 (PDT)
Received: by lbrmn-mmayer.ric.broadcom.net (Postfix, from userid 1000)
	id 481BE888; Wed, 30 Oct 2024 14:34:30 -0700 (PDT)
From: Markus Mayer <mmayer@broadcom.com>
To: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Golle <daniel@makrotopia.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>
Cc: Markus Mayer <mmayer@broadcom.com>,
	Device Tree Mailing List <devicetree@vger.kernel.org>,
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH 1/2] dt-bindings: rng: add binding for BCM74110 RNG
Date: Wed, 30 Oct 2024 14:33:54 -0700
Message-ID: <20241030213400.802264-2-mmayer@broadcom.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241030213400.802264-1-mmayer@broadcom.com>
References: <20241030213400.802264-1-mmayer@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a binding for the random number generator used on the BCM74110.

Signed-off-by: Markus Mayer <mmayer@broadcom.com>
---
 .../bindings/rng/brcm,bcm74110.yaml           | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rng/brcm,bcm74110.yaml

diff --git a/Documentation/devicetree/bindings/rng/brcm,bcm74110.yaml b/Documentation/devicetree/bindings/rng/brcm,bcm74110.yaml
new file mode 100644
index 000000000000..acd0856cee72
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/brcm,bcm74110.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/brcm,bcm74110.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: BCM74110 Random number generator
+
+description: |
+  Random number generator used on the BCM74110.
+
+maintainers:
+  - Markus Mayer <mmayer@broadcom.com>
+  - Florian Fainelli <florian.fainelli@broadcom.com>
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm74110-rng
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    rng: rng@83ba000 {
+        compatible = "brcm,bcm74110-trng";
+        reg = <0x83ba000 0x14>;
+    };
-- 
2.46.0


