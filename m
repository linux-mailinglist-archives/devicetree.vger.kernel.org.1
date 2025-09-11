Return-Path: <devicetree+bounces-216168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A99B53D94
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 23:20:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 068E25A64B8
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 21:20:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ABA62DEA98;
	Thu, 11 Sep 2025 21:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CKOMaMqx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7522923D7E6
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 21:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757625601; cv=none; b=Rk0VyEXe1SzjSyH2F9JnNNd9f4km+orwPHklLQ/OM13naE2hJtbuGl+fw9Wjkwt/QRucON7kuDonmkwJO/b/mewTIqUj/2S+6Tu7Yoa5kZGwJAwWOADOuLqaKizOYQQD9ESd27ckmsyBk7JgATDLJdQrcQXG5ODayL+UUK6fk8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757625601; c=relaxed/simple;
	bh=2L+fSa+PA432zDUt5H/Hau7R0lcNqW58ONINBFxp+Bk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nBA4uXRgWvlYwCeMCTADOLp+e3djbEgfY9LOBLo03zdqfqdYjo0o/FJyDaEvUv3jccXs9dRpLAmRjU+sIfBBRqF6+VkRSifFOaarHxDfiO3Vk8d72+fqMz31GD4l+DQmMZrLX3X5RQ65D4lD2Flnx8sA9n/Ad/ljRFyrO4njtW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CKOMaMqx; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2570bf6050bso9471205ad.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757625598; x=1758230398; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1mxio7D4lH3PMkSvuoADG5CMond9DDQMBys3+vGlQ/Q=;
        b=CKOMaMqxaOD1e6Cw/EvPg+bw7f4iPMVpIdG90bAPhp4FDoFeJGdZyHuUbnY0h8WQyt
         lZne2yaa+O7aAnNYvZciZ7eg+CSpACbeaq0GeHsQp2Xx+U1QnclpuE6MKH0HuK3VmOno
         rD5HrJ0v0lgJOFen5DxLWxvTROy07Uo0AHF6in4UEFwKtZ36nuR6Syn7kl2INszfjttt
         3UGHM7q02sQzomvOLtSqZn++Ih4EGk1pSGQSNJL1XhHPYrVo2pXgHC7wfFvUq8OtaVb2
         mEk4YmeShlWJudwiWYcYyKLmdoY7oLG+k4BFRWm5D6BaOws5VDLQEGnMzoLCCDNQpbht
         PGAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757625598; x=1758230398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1mxio7D4lH3PMkSvuoADG5CMond9DDQMBys3+vGlQ/Q=;
        b=nrZCvTETtF1w9UTvoEafIuYcuhqQGMowLAbAiyQn91Axs3N6eGk1osTcrjKzqdOo1w
         M12jpDz+xOD9hjjvd+1BHREGQnMltYLwOdNd/BfoaWzTT7abqC/3/gbihFA3fIdks/VL
         vxmzZtigX8u51IFr1EY6qWqdxo72r9PgNpTVUn+ibzh46dzjfuXWHolmiWEKrQte+v6K
         gWv03+CLPqeGldTJcj+DWQnZ9v5sp3aQK2szTqprgZa5z1AXX9f+ImkiYrnULd+2N5gO
         0kY04en5tcyIWqJ3h/3aTP2ebpIPGUnRANS/eHwYJaD1gCeV15X4aAk94vhhdZjpXMUO
         3rbw==
X-Forwarded-Encrypted: i=1; AJvYcCXZDpNfGI0cSlQSHajWhen1txmYfDRDuI/gH1b9LAsAgIKigu4S2bFPYtsbzj9qmZB2udDWWN21tmHx@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd+5/GYJK+0fzR93/3p84k2lgeVPW/+sAMK1yvrjNDNlFAnYxF
	/gST4bhu7Yu6Z7lVtkxDVOCvKjp4iTUHapnsTCBaXhwvIw57p7Gqci1cwPycHSey
X-Gm-Gg: ASbGncv2aljxUeuM1rYFZMF9P4+n9FhLWauDJ+eYBdXu/Ac2n2lp345xCcTyoR5nUfp
	9Me+qge8lVW5qEMxCysZsCvqJIG/gthIZGyB98ipESw7S+ikOOdvO3pD6GejssQ50hpFQArjHXJ
	hMTAWvOo3EpAvuHESDxytwkYQMdPy4CPgvHEwQet5H/4dWgNPVbHBMx307HNwled9byCcS81Ic1
	2zuyPuRElMOfb3DuvuBX5mBw/P/lAb39ZOzTij07TIuaEVfX+nrua+91ZI4pSQDj3o1Neyqaxob
	+RDUrNiP/Uif7iq5ntO46ADWJcjnehmvBTAhlGSBjzbvEKvoiQ6U8WN9SVTERU4hkkOZvCfi9mY
	DRJ4UqX3OiXX/jMskdq0fhRxhpwwPSw==
X-Google-Smtp-Source: AGHT+IHJ0YQITOH1cO+OS2gCc3deW3ojCo0Hw4piYT18eYlxrwjAwVB/YDz0ez1UkvorsCLsmq8WMw==
X-Received: by 2002:a17:902:fc47:b0:25c:cfe2:a0f1 with SMTP id d9443c01a7336-25d243eff84mr9799115ad.2.1757625597678;
        Thu, 11 Sep 2025 14:19:57 -0700 (PDT)
Received: from archlinux ([152.245.61.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c36dbb159sm28705045ad.13.2025.09.11.14.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 14:19:57 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Henrik Rydberg <rydberg@bitmath.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
Subject: [RFC PATCH 1/2] dt-bindings: input: add ST-Microelectronics FTS2BA61Y touchscreen binding
Date: Thu, 11 Sep 2025 21:19:09 +0000
Message-ID: <20250911211910.45903-2-ghatto404@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250911211910.45903-1-ghatto404@gmail.com>
References: <20250911211910.45903-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add the bindings for ST-Microelectronics FTS2BA61Y capacitive touchscreen.

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 .../input/touchscreen/st,fts2ba61y.yaml       | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/input/touchscreen/st,fts2ba61y.yaml

diff --git a/Documentation/devicetree/bindings/input/touchscreen/st,fts2ba61y.yaml b/Documentation/devicetree/bindings/input/touchscreen/st,fts2ba61y.yaml
new file mode 100644
index 000000000000..e4d076bc7bcd
--- /dev/null
+++ b/Documentation/devicetree/bindings/input/touchscreen/st,fts2ba61y.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/input/touchscreen/st,fts2ba61y.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ST-Microelectronics FTS2BA61Y touchscreen controller
+
+maintainers:
+  - Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
+
+allOf:
+  - $ref: touchscreen.yaml#
+
+properties:
+  compatible:
+    const: st,fts2ba61y
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  avdd-supply: true
+  vdd-supply: true
+
+unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - avdd-supply
+  - vdd-supply
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        touchscreen@0 {
+            compatible = "st,fts2ba61y";
+            reg = <0x0>;
+            interrupt-parent = <&gpa2>;
+            interrupts = <2 IRQ_TYPE_LEVEL_HIGH>;
+            avdd-supply = <&ldo17_reg>;
+            vdd-supply = <&ldo28_reg>;
+        };
+    };
-- 
2.50.1


