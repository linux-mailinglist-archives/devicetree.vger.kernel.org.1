Return-Path: <devicetree+bounces-28681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A754281F115
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 18:57:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59A5B1F22203
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 17:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1884654D;
	Wed, 27 Dec 2023 17:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="RkJA4PFc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FFC94652F
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 17:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-5cd8667c59eso4041700a12.2
        for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 09:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1703699862; x=1704304662; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qFdk5z5GkjX88rNpaFiaLGBWYiEnPzJT6afZDm+eY4c=;
        b=RkJA4PFc1fPlGPeup903dlfZcEiqEV+5E8gOOr9f9qcjFlAKUY+qRYmxi3blePvH3I
         RCUu0tFNhy69ZsAqYE67ZQ1WzqZOEa/e+XYdra1c2naVAj/t6goggAn/oE2mgTIwQpI5
         EkIdqqQEIr8+lxSmsXhopAq/+WtZY4iMI9son/X2VbgcfukVvKsDJy928hfWEa3CTib+
         dMRJGNtuB8gUXUPPt/HSm5wduE+c8bcKykqlOKSk7UbnhjwV0C8LhhFRoF1pF/gTeW1M
         bQ6Ly5wfVZVW9lUI3Ysbzjs+PjvL1MQ8lUVfxEKwVPcrFq7fqd7CByBAPrUUmR/TIZZs
         u7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703699862; x=1704304662;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qFdk5z5GkjX88rNpaFiaLGBWYiEnPzJT6afZDm+eY4c=;
        b=IeaxmwfBZ3M3GH/UjX72VUf238WykkXdyiXp8Hy2WL4dCJXXh/OBZh3SN/Ka4icRRj
         +SmBZVRoqjMT3piCObe1tJKEevOJtZTzkW2gzBdSFcCI/AXofOLcA8Te8ztZj6I3e7X4
         9DjmZOd5Q7H0G/g6WMu/lybyeof38UOtgs8Z6ONbk1jLVFtANHCV9TUOroBl7CgNXJ7i
         fA6z4cMjwgN5eP7n/1Nj9HI6w/rHF9YrORAVkVaM1bD0NM/UkrIKGP9IXbIdOGs3t+dk
         ha82dxYQFtoCFt5Z4h/9vpw8Fvxn6ekK/og+35xy69pNkMGKxRLBG3kuQmhPk+ulIAgn
         bI0w==
X-Gm-Message-State: AOJu0YzntQu36TWJQ/Ky2YMifhzu4El3/czhGA4uQ3wAtzYLuu/Em3Ag
	z3TvG5zuCWn/AEN5ReBUDXIxTh1CeAoTpg==
X-Google-Smtp-Source: AGHT+IG3LdGjYzMPRmS6MMdVEdOJ+KYoJn8AAAezZGQEdrEgTXTmxvLQ77RqjlA7YgUPq4uTh+mQCQ==
X-Received: by 2002:a05:6a20:4da6:b0:18c:64b7:b217 with SMTP id gj38-20020a056a204da600b0018c64b7b217mr9235433pzb.22.1703699861863;
        Wed, 27 Dec 2023 09:57:41 -0800 (PST)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id u5-20020a056a00098500b006d9bf35dd1fsm5198094pfg.142.2023.12.27.09.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 09:57:41 -0800 (PST)
From: Samuel Holland <samuel.holland@sifive.com>
To: linux-riscv@lists.infradead.org
Cc: Samuel Holland <samuel.holland@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: riscv: cpus: Clarify mmu-type interpretation
Date: Wed, 27 Dec 2023 09:57:38 -0800
Message-ID: <20231227175739.1453782-1-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The current description implies that only a single address translation
mode is available to the operating system. However, some implementations
support multiple address translation modes, and the operating system is
free to choose between them.

Per the RISC-V privileged specification, Sv48 implementations must also
implement Sv39, and likewise Sv57 implies support for Sv48. This means
it is possible to describe all supported address translation modes using
a single value, by naming the largest supported mode. This appears to
have been the intended usage of the property, so note it explicitly.

Fixes: 4fd669a8c487 ("dt-bindings: riscv: convert cpu binding to json-schema")
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 Documentation/devicetree/bindings/riscv/cpus.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index f392e367d673..f166c729c482 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -62,8 +62,8 @@ properties:
 
   mmu-type:
     description:
-      Identifies the MMU address translation mode used on this
-      hart.  These values originate from the RISC-V Privileged
+      Identifies the largest MMU address translation mode supported by
+      this hart.  These values originate from the RISC-V Privileged
       Specification document, available from
       https://riscv.org/specifications/
     $ref: /schemas/types.yaml#/definitions/string
-- 
2.42.0


