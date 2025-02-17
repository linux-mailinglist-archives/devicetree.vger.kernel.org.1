Return-Path: <devicetree+bounces-147435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 81595A38437
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 14:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD07E189838A
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 13:11:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72EB221C197;
	Mon, 17 Feb 2025 13:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FVBkBxV8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952B421C19E
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 13:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739797857; cv=none; b=AtvqQZDuc/E20E/l3fIcJArFm8N2LlPtMYETUhR8oHIm/bSgA87L/GRELF0AvMLQ2uOQ9sCd62ktYxf0jMzo52IpQv8+iW+wgM9esUv1dNMdWq6sht6u78EzCv4mDZXf/imz8P5Ax6afqAHFeuVIdT1hO5LsXUWcNf5uNq8b228=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739797857; c=relaxed/simple;
	bh=uCY9e9KeMINOhW33ouVfq4ycoeYgBjRCDndE3HPzB88=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DlNagIfJQi/nn3KWVSqJffoF85qpdwLVMu2m0VLwGGnzONT3j4wfxE+S7xbSD5oAKIeG8rRvh5BN06WsbdbUNODUttLJUp3nTIJc6I6wGYIaco/hl2Xg+P0Hl4O5G1xYxMRjlPFkNj6EIqoGt0SryXBeZf2WV0Y1igTNlmOenUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FVBkBxV8; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43971025798so10198285e9.1
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 05:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739797852; x=1740402652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uwHzAmLrSqkDfiJhE2PccaRiOCG0MeUVQBuDZ6RZB+E=;
        b=FVBkBxV88gZYKzsgq5uvxrM4xw6PfAHE06tmvUmTNAvHwh6/CCnxO3ySaGncFVMuCB
         S5yKGbTYol/fDkQT8S9IEr0mbgca4YBgLgkb6USsBsnfjmKcXO8hDDv4VOk7QKyFCgLo
         6IWdOw8/VMlCG1IPpQrANy3Ga+Mi2y3+bVC05qWODs51DW+5S1bp/ICm7uJj5U3TxDZL
         PHDT82LDnwlnL4/zAZCAKJozlQ1fqq8v49fN+HmpMeaN3QKnk29M6nuGg6v7mlktBhNO
         19rnc/VZKKcDvyB0XJxwyFLT6RaALnBfioJH1V/dP6HSgWq3Gb+l4Q86+0hT/53v4YdI
         oN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739797852; x=1740402652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uwHzAmLrSqkDfiJhE2PccaRiOCG0MeUVQBuDZ6RZB+E=;
        b=WPFXbXbPhgAH0m7hJ8alcV2dRRETIBuZSqGJRrrqk2ptvR3uH66i6XfNTXaBg94hqF
         RJ4cDuuRMhyYBnBGdc3s4TZUXgacA2IAyiW4CY8hjsFEHnIqiQ8ZSjAwjdLsYgwPcxep
         JzxvSgI9GJk55SfwamNeUmIBieX41JJyBwvei4brNsTYFp9TBDeHfAjyL/Pv453i2xvC
         b/yzv72bzQ+ktCo/lVE7RC3veQgge3By3rXlZNRCL1zEfG2KBXBZCSk1eYljFLswSXH4
         9LPARTMNiq9oqJTm176GIDbEvuvnUkCfLMqHn953NXcZaJKrz0E3yPEP87ylHM6VKRQk
         wu/w==
X-Forwarded-Encrypted: i=1; AJvYcCV0VUtIMXWTazMB6jVDCuRHh6FSkalAbu4G+oNGeQwMSP5ftdDHP6CUCRhTytt0W4Yjetc2Xgt/VF1d@vger.kernel.org
X-Gm-Message-State: AOJu0YzuM5k8AgGTZ/socNSvIpW3hHm1vwVA5NhobgAf7YYIRfAHlIPH
	Mq2Ej0FSMKTaRplqoDHN4lUYyeY9tJwzg8bIKQQwV9NnArRPOiyG8Gt6o4aRU/4=
X-Gm-Gg: ASbGncv8NjeSuZtn10uANxXRTe4XTNak0YGGBC8S1nv27c3EyLjWTdfkTqQjV/AKeSr
	5YT+m+f5qOc3Hu7TBupgIoQsGoK/LyOLXLyy5N+qjm61l6DD4JI5w2wavK/nwyfGLR/HFMOcgrh
	cm3IgaGvIBn33Td8thL5kjqJrh23TKH1bPneRMZ0WqUPkFaC0bpWHhxtWBCCD7HwKyC3ge3qM87
	J/+lrT4S1i56JEcfvSVcB6HAgZTN5L0OfEQ+7xTdj+t8M+BigR5BIKVHct6AmWhbWlVTPHsnSwD
	4B26J3mRYiTZEfjCYHHXVd4JVhQ3KoE0IQ==
X-Google-Smtp-Source: AGHT+IEzdVQFmkbWUbmE/seeTzjkW4338I7yiIddW6zYM+ZQJt82C26vASmLHvdagkh/RMK7uD5wwA==
X-Received: by 2002:a05:600c:3ca3:b0:439:5f7a:e259 with SMTP id 5b1f17b1804b1-4396e739aa7mr84778275e9.23.1739797851854;
        Mon, 17 Feb 2025 05:10:51 -0800 (PST)
Received: from loic-ThinkPad-T470p.. ([2a01:e0a:82c:5f0:ad62:b2f0:914c:91ae])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258f5fb6sm12043763f8f.44.2025.02.17.05.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 05:10:51 -0800 (PST)
From: Loic Poulain <loic.poulain@linaro.org>
To: amitkumar.karwar@nxp.com,
	marcel@holtmann.org,
	robh@kernel.org,
	krzk+dt@kernel.org
Cc: neeraj.sanjaykale@nxp.com,
	linux-bluetooth@vger.kernel.org,
	devicetree@vger.kernel.org,
	Loic Poulain <loic.poulain@linaro.org>
Subject: [PATCH 2/2] dt-bindings: net: bluetooth: nxp: Add wakeup pin properties
Date: Mon, 17 Feb 2025 14:10:46 +0100
Message-Id: <20250217131046.21006-2-loic.poulain@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250217131046.21006-1-loic.poulain@linaro.org>
References: <20250217131046.21006-1-loic.poulain@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

NXP bluetooth controller may have GPIO pins used and routed for `WAKE_IN`
and `WAKE_OUT`, such pin info must be known so that the driver is can
configure the controller's firmware accordingly.

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
---
 .../bindings/net/bluetooth/nxp,88w8987-bt.yaml       | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml
index 0a2d7baf5db3..04f55fac42ce 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/nxp,88w8987-bt.yaml
@@ -40,6 +40,16 @@ properties:
       Host-To-Chip power save mechanism is driven by this GPIO
       connected to BT_WAKE_IN pin of the NXP chipset.
 
+  nxp,wakein-pin:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description:
+      The GPIO number of the NXP chipset used for BT_WAKE_IN.
+
+  nxp,wakeout-pin:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description:
+      The GPIO number of the NXP chipset used for BT_WAKE_OUT.
+
 required:
   - compatible
 
@@ -54,5 +64,7 @@ examples:
             fw-init-baudrate = <3000000>;
             firmware-name = "uartuart8987_bt_v0.bin";
             device-wakeup-gpios = <&gpio 11 GPIO_ACTIVE_HIGH>;
+            nxp,wakein-pin = /bits/ 8 <18>;
+            nxp,wakeout-pin = /bits/ 8 <19>;
         };
     };
-- 
2.34.1


