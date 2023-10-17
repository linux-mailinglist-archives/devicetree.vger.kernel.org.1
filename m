Return-Path: <devicetree+bounces-9244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E017CC440
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 15:15:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BBC6281A4B
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 13:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 218A54369E;
	Tue, 17 Oct 2023 13:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="dOZ25igJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484D043694
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:15:39 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA9FA10A
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:15:37 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4053e6e8ca7so18306205e9.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697548536; x=1698153336; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JWnPq2gaUY6Bw+QhkV+/+BvTRtvqF4BIiAlwEf1vKGM=;
        b=dOZ25igJytRqCFx+02/whVtQZ+4db7VtNy56yNr34omCyC19Q7ftnT4nBNG+8l+itS
         8e/1GQY1tywkRBVigwGY5IePkvht4uLyon03ZukrXArgZs8kZr/WWdj8mKtwTC6jXkXd
         wuZIgliOrwijtHFozT5lFKMxO/NfMToDq9oltwCNE+jVPlFMhfotBcIikfEkKr9pNr+S
         P4XuHnqfRVUAuOXxC8IgFp3YAS9lApiqyoAFM0gDDtELf5p5q7Hvjpo24ODKXC9nIDDp
         DWfNV/qgoQ2IPgbszDgyBqEQuRgIA8tm46ALVuRycaqgeG3sY4r8lpzRiFgUzFMfAv2T
         dryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697548536; x=1698153336;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JWnPq2gaUY6Bw+QhkV+/+BvTRtvqF4BIiAlwEf1vKGM=;
        b=sQmP/FnPNooythTpLj2CvN0/qAKxT14IXS0qRJ/bKARXXK3Fpav0SxKtLUXalqcUH1
         2RjmM1eQ80ZhRzKtdLWyvwoj66Mpv8uVgA6P3+F3sjI+/Q2nQNh9qqlP6Qc+0lkwzjTz
         aCXkH9Xnyp5tSzFjAjrGETJd4BIHMruKY0OFyvNAWr6YEKyzX93TH+/z//LIleXrRnv2
         CAJGFiRxt346aTt8mrAJpOxnFRR3aDfpR4gGJfD2QgEZAVduTnJPjAx6VdMmiNrSHT7e
         39+hOs8BZ1yzIJMNsc8OJY0SFeW3VAtrw375CHe6ZxKZP81q7n6icpfcVXoO21dSYs3P
         P1LQ==
X-Gm-Message-State: AOJu0Yyodn3xDtKRW/MTW7ZuJ3jbcClRvFnxSatgJ9CR6QyhG+OgU/Kg
	+wM7/zG3PDBhKnSpZhWWs1g9Tw==
X-Google-Smtp-Source: AGHT+IEySb+/Q17ICv3l76yF8jJjBFEiH3hFuZYYjFi7wwKXT2ljs/AM5fR+ARSo4sgAbdGf5BuQog==
X-Received: by 2002:a05:600c:1d9b:b0:408:3836:525f with SMTP id p27-20020a05600c1d9b00b004083836525fmr251193wms.1.1697548536185;
        Tue, 17 Oct 2023 06:15:36 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:96:820c:ecf7:a817])
        by smtp.gmail.com with ESMTPSA id fj7-20020a05600c0c8700b0040772138bb7sm9873393wmb.2.2023.10.17.06.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 06:15:35 -0700 (PDT)
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
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 10/19] dt-bindings: riscv: add Zfh[min] ISA extensions description
Date: Tue, 17 Oct 2023 15:14:47 +0200
Message-ID: <20231017131456.2053396-11-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231017131456.2053396-1-cleger@rivosinc.com>
References: <20231017131456.2053396-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add description of Zfh[min] ISA extensions[1] which can now be reported
through hwprobe for userspace usage.

Link: https://drive.google.com/file/d/1z3tQQLm5ALsAD77PM0l0CHnapxWCeVzP/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/riscv/extensions.yaml       | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 93beb9872900..b0a0d1bdf369 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -208,6 +208,19 @@ properties:
             instructions as ratified at commit 6d33919 ("Merge pull request #158
             from hirooih/clmul-fix-loop-end-condition") of riscv-bitmanip.
 
+        - const: zfh
+          description:
+            The standard Zfh extension for 16-bit half-precision binary
+            floating-point instructions, as ratified in commit 64074bc ("Update
+            version numbers for Zfh/Zfinx") of riscv-isa-manual.
+
+        - const: zfhmin
+          description:
+            The standard Zfhmin extension which provides minimal support for
+            16-bit half-precision binary floating-point instructions, as ratified
+            in commit 64074bc ("Update version numbers for Zfh/Zfinx") of
+            riscv-isa-manual.
+
         - const: zk
           description:
             The standard Zk Standard Scalar cryptography extension as ratified
-- 
2.42.0


