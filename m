Return-Path: <devicetree+bounces-79871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A552917301
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 23:10:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF8791F23181
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 21:10:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A598C17F361;
	Tue, 25 Jun 2024 21:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="QEjtMzNU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F2417BB3F
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 21:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719349779; cv=none; b=VGhNqPZoQ5mQSs2wuPpwZQU3H7T65u72XIL1VBvM4do2REU2bpxKVKbZRkBjDwRI+/7+Onuq+SfM0AwPZrqvnSuKKhyruea6Xm2IjakCnpuvF2eRH1QZGksd9+0sqbYks3W9bJspaFmdjnFJ6Y/x45/dFv3YNWfSIAY11RH/eEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719349779; c=relaxed/simple;
	bh=upIN8lLvkvAmyOYUtScrb1g2QzO9PokPUHgX64sgY6g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MZ/fC7xFAUgNUvzPf+rYlkehRFdto8kR/KwcJjo5QtBNOY+CHoAqKn5r7VFj21V1hKn9PxIkQ54tWgx6PaiChvuyE0wzkWF4wcWTpevsbCzrObCezEJEdjZro8o7TyjGw2GQGdvVZDA5IDz0L2YHDghC99X6xRZn6FQEJBLOka8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=QEjtMzNU; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1fa0f143b85so26523835ad.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1719349777; x=1719954577; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RApDUBWnH8dOo11vUms6fSIyGurtiCmTLAn99yajCOk=;
        b=QEjtMzNU/BEH8PB/B+DhufG2HBpTesHNqTycBeXfMO45ZhndZM0o4zEYauYmMW58uz
         E/dwypIgOlCPUGAJwZW/dLKegeMg9xY5dVGxwWobv7Hh3zh2GuInumg8xZeI7CE2sO2M
         QwwMd+GqnDG4pQFXBL/cB6/1pKxDyL5ggkWJW9ke2nx3y41FqUxkdyoTrfZXnaquR8E+
         Bz4ddSGdEwjENAE1eJXd2BFRRV+gOq5sP1O8YsNJOSt8ICSiYiqDvYwFqfy65Jn6BEv0
         4SAqvw0j4s42jTyucYyMqm6ATAh5aSc/Yi4OW+2Zgfdbxg9zcT9ztGg8ev6lJf/8ggid
         tkqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719349777; x=1719954577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RApDUBWnH8dOo11vUms6fSIyGurtiCmTLAn99yajCOk=;
        b=JNMf8eIHtC+Sa5RsdCuBLZf4xzRhCX6HMcI7QvISP06RUsiN94zWQ8dt5zpjnb1Li4
         iYiWusT7DVN26aYKv9AEziQOMlvbv23qYIOM23krkx//6r9fzqp0OXqrL/10yrNnhyl2
         ezES4HxYu0FT5wU39cimXUMkiZGjhfk27xNhFfRJZKBqBtsIqJ7FKt5HB56F+nkK0ZW6
         3F/fc4hRakwLzuwtrRzoslPxYCN6UPwv9MG1qqQTyyLNiMQra+iFIYDq+dUgiEtxziuB
         +8FkKeUqjaepsqFEqK53ROxzK3aUmunky/S8zANb9+NTF3B4ZP5+4sabMN8FKbZlyInh
         CMMg==
X-Gm-Message-State: AOJu0YzqEsbck1LQOtYmVzD84cRZoWNpctNTt2nv8XhTiDu4d/WFp6oG
	/m82zj9OjDrs5RTWHHlBGLOWHwNj6OQTOpXDGyg5wVW8n4kZJrDdDCdCL7cUubI=
X-Google-Smtp-Source: AGHT+IEeTn6riobaHMOyEcGvzSEs8JEyz1MxFY6peHqzdzbBPKE7rdm0nA1jgpjPUCoTtFM7TxnQ4w==
X-Received: by 2002:a17:903:230e:b0:1f9:c3a1:4b65 with SMTP id d9443c01a7336-1fa23f1d44bmr113141665ad.47.1719349777431;
        Tue, 25 Jun 2024 14:09:37 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb328f57sm85873455ad.110.2024.06.25.14.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 14:09:37 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2 01/10] dt-bindings: riscv: Add pointer masking ISA extensions
Date: Tue, 25 Jun 2024 14:09:12 -0700
Message-ID: <20240625210933.1620802-2-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240625210933.1620802-1-samuel.holland@sifive.com>
References: <20240625210933.1620802-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RISC-V Pointer Masking specification defines three extensions:
Smmpm, Smnpm, and Ssnpm. Document the behavior of these extensions as
following the current draft of the specification, which is 1.0.0-rc2.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - Update pointer masking specification version reference

 .../devicetree/bindings/riscv/extensions.yaml  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index cfed80ad5540..b6aeedc53676 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -128,6 +128,18 @@ properties:
             changes to interrupts as frozen at commit ccbddab ("Merge pull
             request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: smmpm
+          description: |
+            The standard Smmpm extension for M-mode pointer masking as defined
+            at commit 654a5c4a7725 ("Update PDF and version number.") of
+            riscv-j-extension.
+
+        - const: smnpm
+          description: |
+            The standard Smnpm extension for next-mode pointer masking as defined
+            at commit 654a5c4a7725 ("Update PDF and version number.") of
+            riscv-j-extension.
+
         - const: smstateen
           description: |
             The standard Smstateen extension for controlling access to CSRs
@@ -147,6 +159,12 @@ properties:
             and mode-based filtering as ratified at commit 01d1df0 ("Add ability
             to manually trigger workflow. (#2)") of riscv-count-overflow.
 
+        - const: ssnpm
+          description: |
+            The standard Ssnpm extension for next-mode pointer masking as defined
+            at commit 654a5c4a7725 ("Update PDF and version number.") of
+            riscv-j-extension.
+
         - const: sstc
           description: |
             The standard Sstc supervisor-level extension for time compare as
-- 
2.44.1


