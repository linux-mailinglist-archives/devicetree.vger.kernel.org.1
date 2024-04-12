Return-Path: <devicetree+bounces-58495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B778C8A24C0
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 06:12:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45AE0B21DFE
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 04:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25E1A1C29F;
	Fri, 12 Apr 2024 04:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="g9C9xdad"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C442F1BC44
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 04:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712895101; cv=none; b=Otk2hMbqaQY1ljwJ2MHCDhGzv4zCHUk8DOzit8H/DTC629yyjtUo2Mz0cu2H/M6rgBcUdDeMFayfgAaJVNoYQhz8enbim19e8MCB65FhxuJU7CrWe+7Ib7yCKIhOYrODIlRMXb7LMPE/gJSv9akVryKT114PxY5BChQB4CvfEaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712895101; c=relaxed/simple;
	bh=l5D95hH8FM7SAtXGBZJnPbxh68jDhVeawec/Y+8YVoI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b1FwBInL3sls3GMQHs5A0JsOL1u2UiwHymlM6QHgerVcWoz24/Kb4/BwIUG6JV1eyCncEwuFDD/YFQlvHIgPn2USBNm1UxCqRAgi8cv1Ky2sx85rdgWN7oWV7ErIkKe61eQfGt2d2XyTJxotRh6vATgt7LWG0eJFJTccyDURjJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=g9C9xdad; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6ed0e9ccca1so538756b3a.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 21:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712895099; x=1713499899; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dWqc2R+QwLGH/IfsTNU6nT9Ab7JPZj7mZyuCi9mmuFw=;
        b=g9C9xdadKU0HskGpqwcZtOZHzoVvnmMmGXV8PKDvyJiHJY/b3gBwbeqVg31X/OEriw
         9vqXCl6PQGEQjWe0bs2HRhjCRHDng5vZOYsZGkG07b7GeLEdG3k+fXegV6NwOWv/hy5e
         yrlP2u/TIO0QWWRn1Z88ougTwJ1xov5mvARwDHSanedI8gfDIcMaa+0ngPB+x+ozxQii
         pqMlVQaK4QL37eaRdKMrnZdWOboDFwZLthoAPNbZvvRliwnVl0ENM9x7dfsWLyikyK4H
         yLktLVKI840V69GfmJB4ZoXWRUNIfmSAeVaDAoj1rDm2LRCl4W3mNiOIpts1993bjt3w
         KCCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712895099; x=1713499899;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dWqc2R+QwLGH/IfsTNU6nT9Ab7JPZj7mZyuCi9mmuFw=;
        b=cELr6KiJF53EFcKukTE1RYzD6I6tcJFGA6hs+l4fp+YOq3b8QOEfnCmoXxm5nWhKyi
         NwzM+GBQhZIQqovei2aLZ0QtQ6Kc7qqx+AYnKOGCVaEygni4vY5WlB6dawE09IzZiF9C
         RJ9EshaZkLCBp/q9ZH/ku/bDuvqYT6dID10mGWbhqPzd7M1acA75nuzzVZjqEWI+3NcY
         8ItDajVMKeCvMNZVSEitqz8UzaaK1nydtZmUYwXFOO9qO+Jlt30117KdpKc3OPVK6Tw3
         V0NJoP9eYn1U68pcMTwtJy9WHsf66AIPhc1IxmTW1Skos4cEVdEXRv7eaKvDJg5qfwTk
         /2Zw==
X-Forwarded-Encrypted: i=1; AJvYcCXiTOyWIQ5Wk/6X+jUdvbRTMQPTqSeg4mUQrs+Th6F2pO445UUoUtuEqZ9RtafuFjou0AwQLarvyCyEh0BdgujKOXc3L5HgVLbEAg==
X-Gm-Message-State: AOJu0Yxls2KuRSdb0aSWVOx9QxO2FH0lQUYYvtd3QjUTpzd91YlUa83F
	gtBFZJdaNJz2QVaC3owytxch8eIWe+X1lQewFyMpd1GARBErz5h85OC2bcxzpAc=
X-Google-Smtp-Source: AGHT+IHR8fyFIq+7WC6olvISWPBZK+gSc8ZAQhMIz1TmsOcAmc6LE/xL4APsxczTe2i3JCQDGgyNtw==
X-Received: by 2002:a05:6a00:806:b0:6ec:ebf4:3e8a with SMTP id m6-20020a056a00080600b006ecebf43e8amr2047750pfk.15.1712895099099;
        Thu, 11 Apr 2024 21:11:39 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id ka13-20020a056a00938d00b006e57247f4e5sm1949712pfb.8.2024.04.11.21.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Apr 2024 21:11:38 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Thu, 11 Apr 2024 21:11:09 -0700
Subject: [PATCH 03/19] dt-bindings: riscv: Add xtheadvector ISA extension
 description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240411-dev-charlie-support_thead_vector_6_9-v1-3-4af9815ec746@rivosinc.com>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
In-Reply-To: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712895091; l=1501;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=l5D95hH8FM7SAtXGBZJnPbxh68jDhVeawec/Y+8YVoI=;
 b=g99SP4A1lgLMiz1vYVHPQl2CSYAS31y2/mI95/W4kMq8xSrBcd147B21RPTt1pu84X46SsDbu
 sCCD1ypar9sBo0X1VI4kzwjHCwYOf738ze2tE7vdJ3RSGPYSdl2CrhM
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The xtheadvector ISA extension is described on the T-Head extension spec
Github page [1].

[1] https://github.com/T-head-Semi/thead-extension-spec/blob/master/xtheadvector.adoc

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 468c646247aa..3fd9dcf70662 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -477,6 +477,10 @@ properties:
             latency, as ratified in commit 56ed795 ("Update
             riscv-crypto-spec-vector.adoc") of riscv-crypto.
 
+        # vendor extensions, each extension sorted alphanumerically under the
+        # vendor they belong to. Vendors are sorted alphanumerically as well.
+
+        # Andes
         - const: xandespmu
           description:
             The Andes Technology performance monitor extension for counter overflow
@@ -484,5 +488,10 @@ properties:
             Registers in the AX45MP datasheet.
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
+        # T-HEAD
+        - const: xtheadvector
+          description:
+            The T-HEAD specific 0.7.1 vector implementation.
+
 additionalProperties: true
 ...

-- 
2.44.0


