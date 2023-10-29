Return-Path: <devicetree+bounces-12664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD517DAC73
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 13:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3EE9F1C20920
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 12:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D2481E;
	Sun, 29 Oct 2023 12:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="G0OuU13f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B51DC8F53
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 12:35:09 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E673FC0
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 05:35:07 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-59e88a28b98so31100857b3.1
        for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 05:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698582907; x=1699187707; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qK2cFDGn1hazlPIsHpN2XXghPuIbnQBG7tAHB1/AOio=;
        b=G0OuU13f51UTfLxXPjFmL/VddR51aBqDBtJu+gQ5xSptqicO6IjbUHK+2UPECFAx81
         N8hexmf67Q9NT2llrRo8Oaoz2GVZIHvxuaYW4sTWqOdbWtVU3O12wAYk+Gtr5r6eb8jj
         d2Q7cIYSAbAw//7pWEUknCUmWRyp3xu7yqUoBaQSsIhnzif3Y+scZGpBmSHCp7M5ZjRK
         MgdlpXBwDfloTRUuHsPBOOyIwKXcSKJ/xZhMsmWh2/YGt2hYSqruTEZ3jmSUQyT020ng
         RZe0p8QaPQW9ZsXYbGcCf+1asnvTNVbye9q+7v8HHwMoHw1cm8zoat8eV80asgoZd+B8
         7BRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698582907; x=1699187707;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qK2cFDGn1hazlPIsHpN2XXghPuIbnQBG7tAHB1/AOio=;
        b=aS/Zsw97/xAL2g1os2FgyTQfTmKv34lUYcW0QlSC5HlI8mr3FdCtacZ7/qf+fSGdVK
         3iKBpJAc6T1K+oL32lfCX5m7+ZE2ahp9Qgdwwm8PNETQ2pPhV43og+xASvHPYwDOswX3
         riZZYF93q/p5Ck3bT8L6aUUWAMU7PZNKBdR9G2WeAq8udz6o4sWqaZ3IKAnMqXRYONen
         0595bGGE+GK003YJqOc7eqKiNDWFGo/t6ZrOJBQMP6Gd5H/Uf0hFvETRRaAZACivV4C9
         JwnV6HOtt8Bx+bvNM+xb27OULLVdyylcTxoZ4NG9bXtoJLhZBzK69mX3g8OW1STLqNbw
         undA==
X-Gm-Message-State: AOJu0YxiOVw8XfVzoeBLJl1UuGtQ7tu7l5K7punojxApwAdEHiuIrB90
	9D7d0IymGJuD0oLzWYqOsNwqeQ==
X-Google-Smtp-Source: AGHT+IH7fzLWL07EynDIYmE/tSQk2rwURQM1vbYkVOwEutKRbG7eUCFv8eX5N0Ws4rGqC/5Ip1CR/A==
X-Received: by 2002:a81:4149:0:b0:5a7:dad3:cd21 with SMTP id f9-20020a814149000000b005a7dad3cd21mr8015564ywk.10.1698582907095;
        Sun, 29 Oct 2023 05:35:07 -0700 (PDT)
Received: from grind.dc1.ventanamicro.com ([191.255.2.33])
        by smtp.gmail.com with ESMTPSA id t3-20020a0dd103000000b005a23fc389d8sm2959318ywd.103.2023.10.29.05.35.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 05:35:06 -0700 (PDT)
From: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
To: linux-riscv@lists.infradead.org
Cc: apatel@ventanamicro.com,
	palmer@dabbelt.com,
	devicetree@vger.kernel.org,
	ajones@ventanamicro.com,
	Daniel Henrique Barboza <dbarboza@ventanamicro.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH] dt-bindings: riscv: Document cbop-block-size
Date: Sun, 29 Oct 2023 09:35:00 -0300
Message-ID: <20231029123500.739409-1-dbarboza@ventanamicro.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Following the examples of cbom-block-size and cboz-block-size,
cbop-block-size is the cache size of Zicbop (cbo.prefetch) operations.
The most common case is to have all cache block sizes to be the same
size (e.g. profiles such as rva22u64 mandates a 64 bytes size for all
cache operations), but there's no specification requirement for that,
and an implementation can have different cache sizes for each operation.

Cc: Rob Herring <robh@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 97e8441eda1c..1660b296f7de 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -78,6 +78,11 @@ properties:
     description:
       The blocksize in bytes for the Zicbom cache operations.
 
+  riscv,cbop-block-size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The blocksize in bytes for the Zicbop cache operations.
+
   riscv,cboz-block-size:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
-- 
2.41.0


