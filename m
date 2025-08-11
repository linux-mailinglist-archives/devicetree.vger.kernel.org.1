Return-Path: <devicetree+bounces-203230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED33B2070B
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:13:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32BD12A1B6C
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3A942BE7D0;
	Mon, 11 Aug 2025 11:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="pAwN7B9x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E40C2BE7B1
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754910823; cv=none; b=M79vbdzyDJmcy7aMcMU28hVcM3+7neC+V2g5DFXwHXEPqv7DiwpGNQPTKrcWsCuOWu35lKzhuGqnnxzRj/tu5kCVO0KCNes33WnI33hWxyLbquI3mD2bd4rh89hJcUBXTNBrSED2jiQdrshpFh57Ph0vgz/P9tKAfmp0l2ZcPaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754910823; c=relaxed/simple;
	bh=UX0N+djpdMFrLMwSfXGN6kbOHJTu81y3bcRb/z2XUPw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KvfqMXbczV4U8PJoiEmCRHTNugKqxvtAtH87zCK+f5x+kjvh9Qj8lSj2sjc11Do0mvzdvt7oGoOJtM2jLtHKsIqjISF3fmVJf9y7FKuJhsZV+klAN43mLSGNUYYsZ5W5lXd9l8sdTzaZoAznhe61nGipdm5WKdRnO6HxlcUGvvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=pAwN7B9x; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-6182b3218aeso1483314a12.2
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 04:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1754910820; x=1755515620; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dE2K+2ZuImK+3i5KhTzlvfFepruAjEsa4XS1kJeheQE=;
        b=pAwN7B9xe+VX+QD2Vtz0A8GkgVTcqV4hLM148cDvn/j/lRA4TXGV6bmsa4Rzx4MG8K
         QukK11djwopDMoCqHNvYWZikvWBltmPV6KHj3+f3qZcBmw+P0v/y6y/6qU4NhW7z+EBM
         xqRlqb6jh6mvjIzFHLwX1lfX9MvaW8t6HL6V9K8kFML7hA5Ue5LVzk6RD4XVN3euCWfn
         p5CQPrZLpvpEw35wno1Bz7tBkv2kV0dmapzFz80QaEcewfihtu2AM9Cq+lq+MpEXXXo/
         YGmyYdKepR+dhzltBOoETgJIuIi99fVZ9xbQkAZfp8MiNkeQwPxyNzexhf/drn9Z97ON
         GYgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754910820; x=1755515620;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dE2K+2ZuImK+3i5KhTzlvfFepruAjEsa4XS1kJeheQE=;
        b=u1sNDtyWUDf9F7h5hymFu9lO6MRUqtCam5usktF8Wsv/uinBrC4oUNGbJSGcZAp135
         qjEWJR0kW7FJ+pIdma/l0A3p41JdxZxKW4sXOfWj4XDW8BdXVA+pYiQyy/EH0e1LTFu+
         kFOktjGDYwPchKN1JY6IgCvGvlIcO3mn2ybw9WLIDiXa83kqjVWWUj4B5XgvBBqgpBMu
         8E2f/zxPERWEWxqkpHvUjEfvyV+O65VopSgRuLWPCt+u0CZM555eugi++7U06ThtKpeK
         4Sz/RAOzm6UoaO12RX/16EyQVO7MHYfXLKFwIC47N96Iatcn0bLiur+ELVoQG0Dgg20h
         E0tw==
X-Forwarded-Encrypted: i=1; AJvYcCXRQG9ZiYSofuY4yBC6uJGUswiMwUc+woBVbG3/cj5uNhzOpUdFlQZSlRdenEFedB4LEKjqbThIt3tf@vger.kernel.org
X-Gm-Message-State: AOJu0YyDaqM3WaamMo3Po7IWLnEFRsq2rn8wRGAUmoYaGngUzsDStMLm
	GD4PelqU5U7Lgslo6aYcewCLPchLw5PzMXwNTdlRvfeEjqUuwvlG0WMdChgUfNp1tZA=
X-Gm-Gg: ASbGncv0Yfi+ieha6La+VTiWewk4LzsapQHELDwC8u4BEtXB8+KWGmhQwNAoGGhrIZs
	pI29qsWts56f9W/YZqF8rGQm/fLFhtCZhXdy5nIiOOinAToywo36a4OnXFq0AIBA1jsXP+VjlYb
	OU2cG1VU+wVI+wvh9fzFtp+bf+nz9hnjq0eG0XeQTHUX7n7fqFGnd0J6jrDRbeNfmZag5/Er4gP
	0aJHENZn9vK4U45UHz+TS3pfsENRRli3V5sRnD1JqKRDgCOubZoMqvnBQKw/zg9gWeju5khZ8Sw
	2gyjrPAFJzpCzFSNgD0uOUpXwkEQmf4d5LgAq9CgG1DuI5tvC/Xg+g6vZR0noYO/5ZOtZ5Yugxz
	E08Bj1b/2jbTX2SKG73VHLs0OLeF/Z74NDv4XCbmsvwdaF1I0f42WQcWOgdkDfzIOpJ3EKoYzcn
	rUSmQ=
X-Google-Smtp-Source: AGHT+IHUNrs5ICyRttLZ4MBvQlWqGANX+fEiGFeSfSnY70D0xRdH+Hf+x8fR/7sL6Y2nP86DQTcQsw==
X-Received: by 2002:a05:6402:50c6:b0:617:b2aa:576a with SMTP id 4fb4d7f45d1cf-617e2b70dd6mr10647062a12.3.1754910819461;
        Mon, 11 Aug 2025 04:13:39 -0700 (PDT)
Received: from [172.16.220.71] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61821e562c0sm2467278a12.30.2025.08.11.04.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 04:13:39 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Mon, 11 Aug 2025 13:12:01 +0200
Subject: [PATCH v2 1/3] dt-bindings: input: Add bindings for Awinic AW86927
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250811-aw86927-v2-1-64be8f3da560@fairphone.com>
References: <20250811-aw86927-v2-0-64be8f3da560@fairphone.com>
In-Reply-To: <20250811-aw86927-v2-0-64be8f3da560@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754910818; l=1623;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=UX0N+djpdMFrLMwSfXGN6kbOHJTu81y3bcRb/z2XUPw=;
 b=G/haZsxAW3Uta/ivP+qf4w96lRdnPqBSEuvBIEv5bSUBM+FgC8/2/wi6zdwUPHNG542bTSlH8
 V4sH+Gtjwc4AWJeTwfiTqevrXKnhnpW6DQxLkXVhGeJ59bz3lyLvcWe
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=

Add bindings for the Awinic AW86927 haptic chip which can be found in
smartphones.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 .../devicetree/bindings/input/awinic,aw86927.yaml  | 48 ++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/awinic,aw86927.yaml b/Documentation/devicetree/bindings/input/awinic,aw86927.yaml
new file mode 100644
index 000000000000..b7252916bd72
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/awinic,aw86927.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/awinic,aw86927.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Awinic AW86927 LRA Haptic IC
+
+maintainers:
+  - Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
+
+properties:
+  compatible:
+    const: awinic,aw86927
+
+  reg:
+    maxItems: 1
+
+  reset-gpios:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reset-gpios
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        vibrator@5a {
+            compatible = "awinic,aw86927";
+            reg = <0x5a>;
+            interrupts-extended = <&tlmm 101 IRQ_TYPE_EDGE_FALLING>;
+            reset-gpios = <&tlmm 100 GPIO_ACTIVE_LOW>;
+        };
+    };

-- 
2.43.0


