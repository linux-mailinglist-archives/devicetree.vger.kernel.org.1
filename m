Return-Path: <devicetree+bounces-177824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDDEAB9472
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 05:10:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 482421BC5E2D
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 03:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CECF326B2D6;
	Fri, 16 May 2025 03:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="UijzKf/V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394D0289E1B
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364765; cv=none; b=sjg9OJH4ZFIbYmxTJWxPCzz7cKEP+gYBUsT0SIc4UtpeQIGoqngWwCrKa7Dnrot92eOa+luer0PqmMXeFv30o0DzcX4hKIB5PZ5d0MX8UVHHYi9ThxcrruTY0EapQk/mPer1ELXoRUmXskbJSVGA5k0XyV1f/LNdt8AqDagxhSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364765; c=relaxed/simple;
	bh=bhQWzwzdrX7ubPUq5r19cW3FDkwf3YUojySLLaA/ijI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Vzf1yc7RXUQcQV/1vLZHHIb93f/G5hxMBP9u5/CSLqQm8C+DWMMaQjKuq5p420czaIowWP8QLeGT2/i3QCA80fXv7KxpkJGcykkJFDYdU1HU/hbSrTr21jEnD/kDmd3F8dlKNf3mrLhGtpNPws215AhQhAAqkiLWSpdcPLAVhgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=UijzKf/V; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-22e3b069f23so13936375ad.2
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 20:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747364763; x=1747969563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=weomedr6rI+xMErQTjwbgFjghxDoWxu8k2ihmuNB5oM=;
        b=UijzKf/VcEfqbeXlziOtxoPFpRU9y5goOesPHRnvr8/Nf0uSf8MHpGWgxVV+EFkD6+
         797+ODpV+7Sonuv5d+WPahftrIidp5aO/I0YHy8Bi3p5BOb5y4ssmtV+SW6SG3b30T8r
         k0eFHHDG0Q55iq76n/P6qDlT1YrgO/+iy9iIevCmO9gyrUuaTDaE2ju1wUKucgC5X7NI
         xttcaBERMz4S251AFKW1F6fPMO+aRobhh4ytPNKIOFnvhDKJsZA6diE4CsR1wdzo10wL
         17kneljzMRgJA6A3p1p2lbRQDRqqW4BOqclwplwQhn9nn7Jb7wgvxL8NYCQCBScczrqG
         w9MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747364763; x=1747969563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=weomedr6rI+xMErQTjwbgFjghxDoWxu8k2ihmuNB5oM=;
        b=mAWsq0Z2aWAFD/dsUfl8DzSlCIgrryaMDNI2oCyo/xBAlTASrFQI/l7rdwX5mNDvMI
         zPOckfwBaNc/RtTCt+Dc9ndz+AXrvesWKco1ziE/RVXQ9rrWyPePEiUnB2gdW308Sdln
         mcWcyrPLTCx90kzXQI0/geiLBQW3lwSjIlGmOQebB3aKJ2GLeqWEpM0pJFhi7XH1DBvb
         eLspaXphB6jJzYhjI+QpP9gDUBuiiOyO/mbXbAsaAKwBfeYB6SD8ysv7C36HKKmWN3bb
         NzcMcylx4OKXKlPDnNdKOwlAVcmCXirw8YNiKHNkMu67UDPSVMbkBerkALtVctx1v9Ru
         fqeg==
X-Forwarded-Encrypted: i=1; AJvYcCWoyXbL0XC+d5lBPwIeBUTDbxHie/LAtZe+An/9Aofd0PHl5g+z4GUcsFOvil3wjqiDILTHM7Ab6Wqo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+o3yHlAkzZwKEHHFcjfMwulcRhL/JDCkL+6kgfl0PdZ5tNWNg
	JBoXG0awKiZ3j+QQbUJ02KNEwqz5sqvj1MXytYMH5tLRknYZpMeM/ejs3NnnCiOu4bc=
X-Gm-Gg: ASbGncvc0dGfGnaFB4obhPlE5bcgNxlwoUDUB9xxiUm1dqfWFXWAeP/dGntKlm5YFEb
	9VN6bBE5+54wYh1aqjAFC9DRL1ugu15ZyRuhi9hS/y8lzAvhZpRb8TpbMhAdhfFGVw08PUy3QR4
	DWF6BavdBG1dm+npAXOS4RilsANvwwFkx4dOibOIw0YH/JGKPlhJOVSooeqC9zB9ppKzEt+ZxGo
	W/nNRGkx3dZt7eI11N5M2hqzioKvUS9SLlIJI1B6S2+DWamQWN9RlALpa/ScXa4a0zw9wPlj7Ej
	UXtn3uMqpeX31IQd5fMyup+opdw31kyJczaMsyE/kMHon/fFpCmz4wBy1icV81/WHGXBHZEzyRt
	n/FVd3iCALCE=
X-Google-Smtp-Source: AGHT+IFhBAB1eXwbz44Tr8KVKAa/EYR58v7s/kJ7HdKTeaGSBrcNqWOoBWoIKH0YeOJevu/4lqzf3A==
X-Received: by 2002:a17:903:46d0:b0:21f:f3d:d533 with SMTP id d9443c01a7336-231de351537mr10196975ad.2.1747364763529;
        Thu, 15 May 2025 20:06:03 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebb084sm4804405ad.201.2025.05.15.20.06.00
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 15 May 2025 20:06:03 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 09/12] dt-bindings: riscv: Add xsfvfwmaccqqq ISA extension description
Date: Fri, 16 May 2025 11:03:07 +0800
Message-Id: <20250516030310.16950-10-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250516030310.16950-1-cyan.yang@sifive.com>
References: <20250516030310.16950-1-cyan.yang@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add "xsfvfwmaccqqq" ISA extension which is provided by SiFive for
matrix multiply accumulate instructions support.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index be203df29eb8..ede6a58ccf53 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -681,6 +681,12 @@ properties:
             See more details in
             https://www.sifive.com/document-file/fp32-to-int8-ranged-clip-instructions
 
+        - const: xsfvfwmaccqqq
+          description:
+            SiFive Matrix Multiply Accumulate Instruction Extensions Specification.
+            See more details in
+            https://www.sifive.com/document-file/matrix-multiply-accumulate-instruction
+
         # T-HEAD
         - const: xtheadvector
           description:
-- 
2.39.5 (Apple Git-154)


