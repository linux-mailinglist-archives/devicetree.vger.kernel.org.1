Return-Path: <devicetree+bounces-15663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7994C7EB1CD
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:14:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F40A2811C3
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4487641202;
	Tue, 14 Nov 2023 14:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="MY51Ax27"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A771741227
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:13:56 +0000 (UTC)
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70F1710F4
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:51 -0800 (PST)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-779f81223ebso9062785a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699971230; x=1700576030; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B5yYxDd+9V9reUvZ2DQpNcNkqEc4BDOdQVkeYdlaxbs=;
        b=MY51Ax27YlLXH6RdZ9FPltzrsU4CjToYoLGJjczl4zoY/6moxzyB2DhkuP9AeAy3tp
         b1o8+5toiyB6L2eS0HOBANnRsIl+zMEXS0gs/+PAdv1nBdMIQdMjQeLS4pFqCqMf+DGp
         l5bkevWMQ9Q50K91C2z9O4KInkCP8O3FwnLufOsaqGoLSAsMsiPMHEE1jJssRBW1D7j2
         eQuNtwCM6C1FaJiabShZ6jQw6i1kUvLmt/oLZZyBqCv0I/OWy2P2Wfz1ZFrf9LfK8EH+
         oQ+cHJvxnA0Uc2tTZfdWkqUoxaq5y3wwkuWO6JeHoTBUWSaMqQremWO+jZzOLEYiDY50
         FjOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699971230; x=1700576030;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B5yYxDd+9V9reUvZ2DQpNcNkqEc4BDOdQVkeYdlaxbs=;
        b=NT+zjezEC7Bocq6cW1V5JKc6PyoheOWV0W6GIJ/pyEvQ5rQunv6MXOtYJ6VduYrRce
         stiJaX9CsDLFJwB62qNKNrG/m7DVSmmsxIBDrCJEUs9PPqkkx9stTLdcfiBq4Mhivzb2
         huEFL0MSzc22rYNFYBl3aEq/zCIgAn5OPHae3YaPZlPvfdUeaJ9sTjEocj0bgI8DdaXi
         GPH1l8lIGbd3cfRs3YW2Mcss1pkcyiL2Xp09RtYs4wlurnH4feSNY6kJB50P5gzPeqz2
         0Z0iKxVFuLnqqOhWZUV2yaS9ttlbp/El2ShBhoN7mmfGB4dVVoK/wk2GC6X/TDg0WSj+
         uYrA==
X-Gm-Message-State: AOJu0Yy7zypaQFI04F1eEumYFQu2rnzoeP4chZQP0hRNercYL6FAbb+o
	XeJY2VKvtpr+okXct/SstsSQEQ==
X-Google-Smtp-Source: AGHT+IFptxx2Guy0DQYVfc+KvtPdCaNrZCEFFfEn6l2iik1hGkFfOg6ndZjt6u/AUGRVAMsa0MAFtQ==
X-Received: by 2002:a05:620a:370d:b0:774:17d6:31dc with SMTP id de13-20020a05620a370d00b0077417d631dcmr2397859qkb.4.1699971230375;
        Tue, 14 Nov 2023 06:13:50 -0800 (PST)
Received: from carbon-x1.. ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id m2-20020a05620a220200b00777611164c5sm2701263qkh.106.2023.11.14.06.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:13:49 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jonathan Corbet <corbet@lwn.net>,
	Andrew Jones <ajones@ventanamicro.com>,
	Evan Green <evan@rivosinc.com>,
	Conor Dooley <conor@kernel.org>,
	Samuel Ortiz <sameo@rivosinc.com>,
	Jerry Shih <jerry.shih@sifive.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 14/20] dt-bindings: riscv: add Zihintntl ISA extension description
Date: Tue, 14 Nov 2023 09:12:50 -0500
Message-ID: <20231114141256.126749-15-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231114141256.126749-1-cleger@rivosinc.com>
References: <20231114141256.126749-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add description for Zihintntl ISA extension[1].

Link: https://drive.google.com/file/d/13_wsN8YmRfH8YWysFyTX-DjTkCnBd9hj/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index f3c99e69619b..f953c49be90d 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -339,6 +339,12 @@ properties:
             The standard Zihintpause extension for pause hints, as ratified in
             commit d8ab5c7 ("Zihintpause is ratified") of the riscv-isa-manual.
 
+        - const: zihintntl
+          description:
+            The standard Zihintntl extension for non-temporal locality hints, as
+            ratified in commit 0dc91f5 ("Zihintntl is ratified") of the
+            riscv-isa-manual.
+
         - const: zihpm
           description:
             The standard Zihpm extension for hardware performance counters, as
-- 
2.42.0


