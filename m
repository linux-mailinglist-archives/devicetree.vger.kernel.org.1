Return-Path: <devicetree+bounces-27380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A7781A18F
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 15:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C16A7287A9D
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 14:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A40843E472;
	Wed, 20 Dec 2023 14:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wTEIP8Gk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529E43D97C
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 14:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a2331caab22so498221166b.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 06:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703084139; x=1703688939; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CkImlzYfE+JGucnDuYdZCwAqWDnn1ZRuOvIb2guMhPs=;
        b=wTEIP8GkRyeS6BThqr3qMMYRaUyri+NCJfJc0Boq4iLZ6NunyuEY8kr5+olN7oaJPt
         RDcHYK8PbvtHcPsXDPwzPLsjO4P1/RBqxC3/kYfT9a8tdXaK4x0BQ+WzfPr1zDQD1Ibn
         ZKZA8f9F3GRUoUwQ7TjjWBpRJEjBooc/WbwXZNObyyUkLCf6aAlIKniJYWKy8zn707Y+
         0ZRrb9Gk72YtAj6VHLGTN+SUVy/vRPtUhoyQOWaDbgBVJhqfqC5NVchmRI+2xjKopIsr
         kcVgIrExYvEgn0Ar34NZensAwfd2FgHkmCFsH6id1MGceHA/53QPppLja5qK1bVWf3Cg
         xUIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703084139; x=1703688939;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CkImlzYfE+JGucnDuYdZCwAqWDnn1ZRuOvIb2guMhPs=;
        b=ldYLgZ+IByJRd4Bhzse8p2ULA4TRhYNOFvL0blvFCSArrkMhNblU5KhYAbFTbX0fIk
         a51T+55S3o3i5ETIMP6NZB6aepBZDQWCRPr89TZugzhh3O1qG2adtX9YRYhnMzAEho6m
         JToLwhlYSTs+AkENns5nVafEK0lfMyI6ux8h/S9l8h72yJzuCgiblfqUCWS541aTp1ID
         YypRfNWTiQpL7yOWJY6SlUJt8EaP1KG49QmKMkWbhpzZ9QMfYP/Xv1eWJkxFV97CEHze
         BTAAkEi9N9HTUkSWNMKBgz+QhrDCihQ9wE3cNcw8n25YKdEPhxNw8C1yQAkjlVFmdRrz
         AohQ==
X-Gm-Message-State: AOJu0Yyqyg04HHFkBEfRe1mWQda3VQNuldKu4TZOMBSP21Kqg/IPUDpw
	cPxNYHZ7uyzce/Zx1UXbTDf0/Q==
X-Google-Smtp-Source: AGHT+IG1Ks4wdEB/SN4dWC+RYTPYaI5oKlUpPYa0GZKPSU0Hg5Qnfg0VCNgPNyyWbKp7h/Yzh1i7jA==
X-Received: by 2002:a17:907:ea5:b0:a26:854b:22ae with SMTP id ho37-20020a1709070ea500b00a26854b22aemr1777099ejc.64.1703084139470;
        Wed, 20 Dec 2023 06:55:39 -0800 (PST)
Received: from puffmais.c.googlers.com.com (61.134.90.34.bc.googleusercontent.com. [34.90.134.61])
        by smtp.gmail.com with ESMTPSA id ay10-20020a170907900a00b00a2699127f98sm437926ejc.87.2023.12.20.06.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 06:55:39 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	devicetree@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH] dt-bindings: ignore paths outside kernel for DT_SCHEMA_FILES
Date: Wed, 20 Dec 2023 14:55:37 +0000
Message-ID: <20231220145537.2163811-1-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

If the location of the kernel sources contains the string that we're
filtering for using DT_SCHEMA_FILES, then all schemas will currently be
matched, returned and checked, not just the ones we actually expected.
As an example, if the kernel sources happen to be below a directory
'google', and DT_SCHEMA_FILES=google, everything is checked. More
common examples might be having the sources below people's home
directories that contain the string st or arm and then searching for
those. The list is endless.

Fix this by only matching for schemas below the kernel source's
bindings directory.

Note that I opted for the implementation here so as to not having to
deal with escaping DT_SCHEMA_FILES, which would have been the
alternative if the grep match itself had been updated.

Cc: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/Makefile b/Documentation/devicetree/bindings/Makefile
index 3e886194b043..2323fd5b7cda 100644
--- a/Documentation/devicetree/bindings/Makefile
+++ b/Documentation/devicetree/bindings/Makefile
@@ -28,7 +28,7 @@ $(obj)/%.example.dts: $(src)/%.yaml check_dtschema_version FORCE
 find_all_cmd = find $(srctree)/$(src) \( -name '*.yaml' ! \
 		-name 'processed-schema*' \)
 
-find_cmd = $(find_all_cmd) | grep -F -e "$(subst :," -e ",$(DT_SCHEMA_FILES))"
+find_cmd = $(find_all_cmd) | sed 's|^$(srctree)/$(src)/||' | grep -F -e "$(subst :," -e ",$(DT_SCHEMA_FILES))" | sed 's|^|$(srctree)/$(src)/|'
 CHK_DT_DOCS := $(shell $(find_cmd))
 
 quiet_cmd_yamllint = LINT    $(src)
-- 
2.43.0.472.g3155946c3a-goog


