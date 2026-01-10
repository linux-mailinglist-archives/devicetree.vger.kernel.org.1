Return-Path: <devicetree+bounces-253448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D4110D0CF85
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 06:20:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6F1A0300F24F
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 05:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 687CE30E0FC;
	Sat, 10 Jan 2026 05:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="vlYMKlSv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C7C30E0F6
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 05:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768022391; cv=none; b=EEZaecx7GE/Hv0ltwalw/zUnXbRg/3nEkYdqgwCRii+AFzZfPiHjbXxItFy/J33jto4/oL7qo1wVSiTshpYB4v2iRwwt+3aoJfaSasCi8iuy5qJ0NOfkvwaLBeXXkfVaU3D6JQCGoK4FOe/H4M8ZbLSJj6hR93op0c3wbvUQko8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768022391; c=relaxed/simple;
	bh=S1jisF6ftVT3rCNF0GDuik15Q/hcWo5k5Yu1I9kYLtQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fNxzXRm03S/oaqaJnGcbOuPQ/8lfukVGWmTqJ4ZQAd3OkfsDWMj6N2nk6wwhLpgCWrTgp1Xax7MAfJRFSyw6V09RQRbdCZqeAnf3U0Ol1lKlW/GVq7oxneIgduF/0boOn7R9C6nLXAImle2cOZ8052x4meareAS0bxSbpAMdjsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=vlYMKlSv; arc=none smtp.client-ip=209.85.215.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f193.google.com with SMTP id 41be03b00d2f7-bd1ce1b35e7so3122969a12.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 21:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768022389; x=1768627189; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BmyABXvs1SN8VuCBpy/0tab2Fs0I2RX3eOqS1zJrtK4=;
        b=vlYMKlSvOZcq80+1cnMlX4Kh6DKcjduIgnWUoM75f4PNWCtPjvA/uh43NJVzJPuhzX
         x90gahPJf2k9j79U43ifsc8r6FJxCF07F1kRRavVJuwQEMVqZYb86tOGeKJSs224BH6q
         kW3bTHsg+XJkAMAoEJSdmwQh0lc3OR8NJUalY/D00/mei6yZLmpptkxDKh+oNUQOAwL7
         08GblrV4P3zPI3YufiRZFu/gAYhQ+3N5HQ8b91VoOdTDHcBwooV2ucfZ2JK9+2Nbw1ln
         DzzFIO4McEHdSJxsTyKXAWzw5EN7I0nX+kdICT+Pvjq0kA4JF/hhNBqrVAFG0334qj2Y
         OxjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768022389; x=1768627189;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BmyABXvs1SN8VuCBpy/0tab2Fs0I2RX3eOqS1zJrtK4=;
        b=XwF9h60hFjaIUn/HAb5kVzBK5j1m+DeBW+JgZMUb58nZoQlGO7X6nInVFjY358CdzH
         DNQioX8bSdc2+l3z0QTq6ha9FBKsXhl26/ti6Zz5a4qX0Yk3cLo/VcCE3Pcph5RRk3XC
         wQc1gYS/Fd5ahZH8QElwfIRLKQSmXlIbYy5rS4iCM+oN/z0rT7OTRV8AMnpd0ltuAxtb
         m34q7R8X4qgNStXPupkoxz+VPYA8JZb+eCMisCD6ixBcZ7awYwKcx85bCMrVet19plOF
         F2OpynfACsdlr01dhLUXJ+jOI3Q3oKtvJXQ4ssfrDS/xw4DgHAidRfzg9pACQUcjJfP+
         cjRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWg9K88ftjd3EmB6gMiCq7bI2X9LMdpK4hFifDJ+saT+1j5wk9FVcwPMv6ElQ0bMFc7G7siBWc6og/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywlqgf5YQMX7WYe8u2/mF71NEe1fYCxIzQI9aWjPSgJm5ekI5Bq
	0r1To/NVSrFb9XVzuQDlWJJXvqlvaD0t1bU0DLka+IA9X79coGH2RggrIhUyehhZVf4=
X-Gm-Gg: AY/fxX7D5Jhm2rxhuZqrRFAGO2J73EId/AaU36GcTFuQH2V8VTEsRnjkMhRfFiuy5q0
	ZbBhC0LV+ljE8oqIWGjifNNJ3q/Pl8JUeW+5P2gTHlztfsSyxMZRBk8MoV+MqaAflALQOpElNZF
	DcMjGy6uSk6L17jEYjVdN14B2urbNINYS+1uWkOAvI/z+13BJyzVUEJ+ruU34cJCxAD29Im+GnW
	tdWMb4YKCyb1QaW6iIrBE3ehCy9zafzBzyNRCxld5zmT4+3hvafZ8E9BV+RpcGCxzeceW46MESj
	ryMbRaY6y/nAo90iPSq6/LCvOBkgC4aDnIqiuqJjAdo2SKWEFVyewBj+opb/nscnV5N1XxP+U0j
	HhZ3PTv+i5vZ+OS3zFYFnfq63lgfJzfHios2za61N7ke8ipfAArJuaGpKn1jN4Yc4pDNMkMesFe
	VVsfjKcaoDmBhEnMYDagUImxN7/tQrakD4vWa0OPC7OwJ4upEREW+uYCKEbOkt56QQ
X-Google-Smtp-Source: AGHT+IEPPeIUWgsSKZBo27LQFfXmf78KQe8uU+5vPpaDED03FOdBQAsZNe/tyTQTcMQjGVrGxwlkJg==
X-Received: by 2002:a17:902:cf06:b0:2a3:e7aa:dd6e with SMTP id d9443c01a7336-2a3ee48ac0fmr115216775ad.38.1768022389213;
        Fri, 09 Jan 2026 21:19:49 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.108])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc88cdsm118208265ad.73.2026.01.09.21.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:19:48 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 10 Jan 2026 13:18:17 +0800
Subject: [PATCH v4 05/11] dt-bindings: riscv: spacemit: add K3 and Pico-ITX
 board bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-k3-basic-dt-v4-5-d492f3a30ffa@riscstar.com>
References: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
In-Reply-To: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

Add DT binding documentation for the SpacemiT K3 SoC and the board Pico-ITX
which is a 2.5-inch single-board computer.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: Adjust maintainers list in alphabetic order.
    Declare spacemit,k3-pico-itx as an enum, which can save future
     code change when adding new boards.
v3: No change.
v2: Use one-blank-space between name and email address.
---
 Documentation/devicetree/bindings/riscv/spacemit.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/Documentation/devicetree/bindings/riscv/spacemit.yaml
index 9c49482002f7..b958b94a924d 100644
--- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
+++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
@@ -7,6 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: SpacemiT SoC-based boards
 
 maintainers:
+  - Guodong Xu <guodong@riscstar.com>
   - Yangyu Chen <cyy@cyyself.name>
   - Yixun Lan <dlan@gentoo.org>
 
@@ -26,6 +27,10 @@ properties:
               - xunlong,orangepi-r2s
               - xunlong,orangepi-rv2
           - const: spacemit,k1
+      - items:
+          - enum:
+              - spacemit,k3-pico-itx
+          - const: spacemit,k3
 
 additionalProperties: true
 

-- 
2.43.0


