Return-Path: <devicetree+bounces-24731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 644BD811028
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1995A1F2138C
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:33:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 291DE24A07;
	Wed, 13 Dec 2023 11:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="QqJV3DhQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC5BF12A
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:20 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c9ebc04891so16179281fa.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1702467199; x=1703071999; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nWX/zjp+iAoc0sTO0EE360u/fHh1vFE2puPVRvnlJSg=;
        b=QqJV3DhQ6ASn3wBywS585XZ8tatasBB+VWjS6bpB+Lh6xbLL+3fHeQ4ypAICs3Kban
         FCOvu1L9UZA+W26yp3rwLoe7IEypPJ0U09kxgk5Ei4MDYoGzFiTwocaTsQIXcnc0MCYY
         SjBqCMwGhi3ZW8bF77p+VsXsL9MtmKI4dLHIFjCYXMRsHOClhsgz7k7Q0kaOuDwaZZBG
         1gnCTVrouE2fsxLNeH2Zm7RV1qlzyltplavBz6aU+oEZDSGa6rM/EbWreC2GRX8dRi17
         +Y88FMIt2AFjhb12AzUDvWiHEV/1m+nVW/Joh8WUsbrnf3tJrQqUno5U6ymmmZdK7QxA
         eFtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467199; x=1703071999;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nWX/zjp+iAoc0sTO0EE360u/fHh1vFE2puPVRvnlJSg=;
        b=NOF2Mk0AGb9lV/YdPNV/TPlVZzHpv5J62EDGCq91elQOUdWebFFg1WyCQhThmOWZ0Z
         f1NWBe/SZKVI11lmDcm1M5Y9m/+Zwnf8dCl5n32YZ1tX3FK95CA+gBjAzILHa84gl4e4
         66ouSNaXP9K/yd/P0+55N48m/NoGZYA+DdQpNg8C8Q9QZi6F2Bj95c8nNIF8OQ1Ap/9n
         KClv44bGdEREAl6QJkq5e/CQojWcUC6bJUuXLR+beNHaGquH6T4zfeYzmxoauX6Q3//V
         YjDwCWby3EofAPFFM4ngmg2pM38eL6U7e1wEudb1BZYHtdH7MfF7iej1U2at0seLKNFS
         ysHA==
X-Gm-Message-State: AOJu0YxZljn4EBy2+6Dj/8rezVGh/MmCGhorqpK3p7bUSX8TIeb/NEpE
	oc1jeaG7edrAWrM5NppDxH++zQ==
X-Google-Smtp-Source: AGHT+IEuXYkwYCdXUnQRj5u26PSyylqZ1NgdfvKlwWU8/MoItLq0cyd9mcOkAanUk5MDzRp5gaQUuA==
X-Received: by 2002:a2e:918b:0:b0:2cb:2d8a:a28a with SMTP id f11-20020a2e918b000000b002cb2d8aa28amr5882241ljg.5.1702467199112;
        Wed, 13 Dec 2023 03:33:19 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:c564:f167:d072:5672])
        by smtp.gmail.com with ESMTPSA id m27-20020a05600c3b1b00b0040b38292253sm22433137wms.30.2023.12.13.03.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:33:18 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Robbin Ehn <rehn@rivosinc.com>
Subject: [PATCH 6/9] dt-bindings: riscv: add Zacas ISA extension description
Date: Wed, 13 Dec 2023 12:33:02 +0100
Message-ID: <20231213113308.133176-7-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213113308.133176-1-cleger@rivosinc.com>
References: <20231213113308.133176-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add description for the Zacas ISA extension which was ratified recently.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 912cc6a42eb4..264114fa943e 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -171,6 +171,12 @@ properties:
             memory types as ratified in the 20191213 version of the privileged
             ISA specification.
 
+        - const: zacas
+          description: |
+            The Zacas extension for Atomic Compare-and-Swap (CAS) instructions
+            is supported as ratified at commit 5059e0ca641c ("update to
+            ratified") of the riscv-zacas.
+
         - const: zam
           description: |
             The standard Zam extension for misaligned atomics is supported as
-- 
2.43.0


