Return-Path: <devicetree+bounces-54513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 503D78915D0
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 10:28:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFBFA1F21F32
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 09:28:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A015F51C5E;
	Fri, 29 Mar 2024 09:27:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="FDKiLbhW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F6050A67
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 09:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711704469; cv=none; b=BwDegOKthBqpgQ49HGMBXnGGPCr5FZM7qTC6tcavAMqA4fkUTXuTv00SEQaiuMUisnqRzS15yMG4n0bDt62K9rYuXOZVJ9qo2DWX26GHL6dlDyO43XRL77ocWAsyEVwFkpnWj8RCCVXCFnJet5EzXpm4vZkf3cjQcjxktjtHRUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711704469; c=relaxed/simple;
	bh=fkcsbGMX7J/mGQ3kvbZ+/zIV5Yfm+uf2j5rr/bXjhvk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RBMdLxu9Pd5B8R6CCZOUG3QB/pBo1uqAsGvt6h+EbjElU1N/u1KDt0nw8flbcOIj4otyYDP+Y1B/rwLalgmdhZRPvfXUHnGGI0d7Jnv6C5TV1Q25NSLuRN7xokNE3TweKSdfWnwG8ebhAfDbm+iSg2plvKApe0pZm0NjZ6vxIws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=FDKiLbhW; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-5d8b887bb0cso1401733a12.2
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 02:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1711704467; x=1712309267; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z0W2e62vRjypPXRsKNjsPCEnDXDpWajUvlAFErcdHOc=;
        b=FDKiLbhW62r5AuDSXRUZj5O5V3KeL56RpH3jWggpLKpbu7GKnA7nl+0w1rNFqWqCrL
         bCNU+xqLaMoPdGIm2fXL9sQJOcQSGSb1rDXaSg4xusFdoHHhGShDjOvxqbt3tveJy3AX
         SlQDBcxdKfr7wO7SmIXrDTOusRs5IT++cTkN6QRFi4nS+968tg36N+p2RA10SHrKeJuy
         FYxkGlnzCi7Kq5S1W4EuUVGpZmfpYHnldAftYCFD/rmgTmJCyLdJPNF6Y2Hn4ypjNpnz
         SPhzruXMbp/eSgUgWD3TTj84ZlzS+4vrKUHnDAm46+xl7zEtd6+4kg7wfA6qLP43GDcB
         0Y7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711704467; x=1712309267;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z0W2e62vRjypPXRsKNjsPCEnDXDpWajUvlAFErcdHOc=;
        b=hv2QMyMiOQNfN3W0WwfoHVFS9dtZL5OuC/DiwRYDZWHyk28rW+fnyPDonudat+TSyT
         yPZlfzUKA60GadzynTEvIbWCHo/G/vdD6paryQo+e6ynpfpcpbyykCAesRoF3VP4PFjC
         hoEQVKoRt45wwRH+gAOlC2f2jFHJfVnkI8UEbs/Ux+Z1NlxpC//imwX0WHKHgCiOBKEN
         aPM3okz/WomhjmfPyiQFl7s7otybcgLnKqhNlNoNeWi7Ftc6xyIFF6BlKBHXlfsdE8R5
         EJ+cJ35lq0cfRQWe/zVBpyz3yLaPUYO/Mj+iWn4y0vdv7FGs9VJL3HWEk6ZE8qGy7W/l
         5V9w==
X-Forwarded-Encrypted: i=1; AJvYcCVRmOO+m4W/aOIMFVybdU6cNuWtvr72zHqi+pmYcPTMPXRBCehFkxlL7+P7vaM8+FhEQG4A+jT9gEBCygU6fV07c76wGJcp8A3rUw==
X-Gm-Message-State: AOJu0YzSsi5LCQK8Dr8CgXB5ZfkDvp+QeFJ3t1v+ORHe6ykF23iTlDL3
	HT0WjqR3rifLK/e4xAOBYa4uTAvtMeMvZLr2jn85s0NIBbV4jCF6js2RPCXshNU=
X-Google-Smtp-Source: AGHT+IEuJwWsZcF37cdSyR4oAfPxO9tw5zd/KR1va4FW9dJBQvIHdmB9ul/Vbw6Ly8QQV6MyjM+RcQ==
X-Received: by 2002:a17:90b:46c6:b0:2a2:176f:fba9 with SMTP id jx6-20020a17090b46c600b002a2176ffba9mr596520pjb.43.1711704467546;
        Fri, 29 Mar 2024 02:27:47 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id cv17-20020a17090afd1100b002a02f8d350fsm2628830pjb.53.2024.03.29.02.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 02:27:47 -0700 (PDT)
From: Max Hsu <max.hsu@sifive.com>
Date: Fri, 29 Mar 2024 17:26:18 +0800
Subject: [PATCH RFC 02/11] dt-bindings: riscv: Add Sdtrig optional CSRs
 existence on DT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240329-dev-maxh-lin-452-6-9-v1-2-1534f93b94a7@sifive.com>
References: <20240329-dev-maxh-lin-452-6-9-v1-0-1534f93b94a7@sifive.com>
In-Reply-To: <20240329-dev-maxh-lin-452-6-9-v1-0-1534f93b94a7@sifive.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Pavel Machek <pavel@ucw.cz>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>, 
 Paolo Bonzini <pbonzini@redhat.com>, Shuah Khan <shuah@kernel.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, kvm@vger.kernel.org, 
 kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org, 
 Max Hsu <max.hsu@sifive.com>
X-Mailer: b4 0.13.0

The mcontext/hcontext/scontext CSRs are optional in the Sdtrig extension,
to prevent RW operations to the missing CSRs, which will cause
illegal instructions.

As a solution, we have proposed the dt format for these CSRs.

Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index d87dd50f1a4b..c713a48c5025 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -137,6 +137,24 @@ properties:
       DMIPS/MHz, relative to highest capacity-dmips-mhz
       in the system.
 
+  debug:
+    type: object
+    properties:
+      compatible:
+        const: riscv,debug-v1.0.0
+      trigger-module:
+        type: object
+        description: |
+          An indication set of optional CSR existence from
+          riscv-debug-spec Sdtrig extension
+        properties:
+          mcontext-present:
+            type: boolean
+          hcontext-present:
+            type: boolean
+          scontext-present:
+            type: boolean
+
 anyOf:
   - required:
       - riscv,isa

-- 
2.43.2


