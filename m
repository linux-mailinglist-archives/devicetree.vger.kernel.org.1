Return-Path: <devicetree+bounces-202242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BE897B1C85D
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 17:10:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDA8B3AAAEB
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 15:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2352A291894;
	Wed,  6 Aug 2025 15:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="bUyNzDTI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA6528F924
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 15:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754493026; cv=none; b=aNrD2RfpXoqc1t5oUaGTWY8pbJlHTrxr3ziZrufeh9BTTf8T/VDyI/Ey3msaZAD1atA+KjSMpY/86Fog/Eerc21Kxz10JYgVy/9OOUTwrnnVYl9DqtsM9SC9RQhRzyeRT7o2PlTs6bgdVxqZlpoylL8VmOHttEpKnsivO1TZ8FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754493026; c=relaxed/simple;
	bh=ET4/cnWWWkHcg4PrMTCOEmtwl30gm5wJvQlKvN+x1Uc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CUDSnf0dOcgQ867xQpf/SecvNutgaE4/6kc/rrQRy6szqipuZQSGbAKjCAtQx2HJtX8zTYrpSbcw12uOt4yi2HhzibPmSfm1y8t4w4qi8unqme2nhF5rWu9hLoJ0DIZ8p2ZtD8ZADRJMRw5ynNMoizo4uw+iCYLPRxjwBqiQv5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=bUyNzDTI; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-af9842df867so352830766b.1
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 08:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1754493021; x=1755097821; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xWQOq9ZFA0+jON41lT2P1ONOkTPCL7fvL5fMlE2CuZY=;
        b=bUyNzDTIknj4zQQaX+uwMqIe6fNJzDG/mWg8dM7AFR9nyhZYn2nOu2ATy/uhjfg5UK
         sGQab9nMpgpvFgf2TY5cBzms4qksToqRDf5jk0FL5CQqZvIl45FFLYD5nNRJFMba579d
         V8NaefeG37BcywjIrz3W7FIhd4tw4/fBBnPP3W5narYeBXAkLnOZIS9F5toDg6HjNNEY
         GFQzE8n+bwgw4S69vNfYHGCiajBn6xY5bDGnYz9j4xuvvJDwRGGN8Mp2iBAJKvekOOFU
         w88HF6pJAwMQy2lfNy364273hbH9kRkvVptOBsuQUSPq3zMt8nYrq0CtGIB7AB62wPTO
         UnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754493021; x=1755097821;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xWQOq9ZFA0+jON41lT2P1ONOkTPCL7fvL5fMlE2CuZY=;
        b=s3TUI7JD9qui2z7oEnREghsA88Nb6jrh/nEI5iCyuCTTyhhyVhpqFgg5luO+obMcvz
         chNSR60ewS7uITodQPns7QaL4uVAvRzfpfva/zkkTTEytbB/lTqn0I+nR13tV1xgfCvK
         ioZQeGp4sBMQSWemx+y0aVBBYCUCQ4UzSS7bd9b0x9re4gPGsgmMCDG9p9AhW2HuVW0Q
         9CLsutQ1CcurXjKMvgV4Wtfy7pv58zsSezHQL35TRlPFTmmZWEbq7Hqvvk8HT/ckuj13
         MvLbR8EAO8xZodJdnuFymk+JXwmBFoHIqc5sKOPsX0JMHa8Ko34HS9E2Jf21fVnDDTat
         yfnw==
X-Forwarded-Encrypted: i=1; AJvYcCWkIRo0+N3oe1MGjHc9DE68HBj54qJiaKfCv+mlT75Qm6Za5+Nx7vMEBlATtK9BrsDufn67MTOgt1xa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/vmVxK5MJdgqy52Ko+sJz/PFz6zix/omVdEKH3UhDXz085MUj
	gs3glXk70SCZ28SouAjnuShdrUikxBubudBFOdXwCs4jDRGjMClW8uGR1N1Y+yJqmSg=
X-Gm-Gg: ASbGncvfbMhKO3lL8YrFATT87PqLmGeEELoALzQgnqhfPIIOY/f7Oio2PfMMo47QHTo
	BJNwT5T3niMILfcBbYQCO/PWlKzwIg2Xt5WcR1QTNbfmt43t9+HZyxnaJzF53UR1P2Wch72Qc1d
	Za3yGeIrttiYtFT1Qz6EdClO+UYU/tQO7ua0YXmi29lSqIux8Rlzcf101LKd86U9NKpxcKIST06
	YauzZzAaBRdAQD7O3ej63UTPjZU+rY2Djg2xtsdgyhOkZNCRZnj/QEtcI1RlwEyWiozDwsygl80
	PbPu5ZEWNtRcCkGjTrP2JZI4Lc+K0A5N757l9NeFGna7kuMIuN074R1zsf+fvlOh4P4fwyCYkMj
	/BN2m/ZI5d3HhcB7WTDk1S7fRzXxezGBfCuoFyKsAoQMdi4oKpy7ho3FUpOjdYOYj9MjvqrUNR3
	xyzQc=
X-Google-Smtp-Source: AGHT+IHDiUvyZem9mnKzHWgCS04byao7rqFEhYeBxSdb8hW07XFM2TDwH3AdldZ5yojPBgR8oG59Tg==
X-Received: by 2002:a17:907:3d4c:b0:af9:610e:343e with SMTP id a640c23a62f3a-af990116764mr319719666b.11.1754493021348;
        Wed, 06 Aug 2025 08:10:21 -0700 (PDT)
Received: from [172.16.220.71] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a3b77sm1120100666b.51.2025.08.06.08.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 08:10:20 -0700 (PDT)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Wed, 06 Aug 2025 17:10:08 +0200
Subject: [PATCH 1/3] dt-bindings: input: Add bindings for Awinic AW86927
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-aw86927-v1-1-23d8a6d0f2b2@fairphone.com>
References: <20250806-aw86927-v1-0-23d8a6d0f2b2@fairphone.com>
In-Reply-To: <20250806-aw86927-v1-0-23d8a6d0f2b2@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754493019; l=1612;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=ET4/cnWWWkHcg4PrMTCOEmtwl30gm5wJvQlKvN+x1Uc=;
 b=BDsHRqaB0NzKRARDq+jBvJ++2ZAtUPhBQ/H+Gqwm7jqsb0bXU98BNzQC8cF+qPuWKJxaCp9uB
 dDm3Lq00oPXBY7wtUrNl7cOp4oHfCuthzhNe+/zObhAHLfzi3AI+g3v
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
index 000000000000..43012f28d9aa
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/awinic,aw86927.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/awinic,aw86927.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Awinic AW86927 LRA Haptics driver
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


