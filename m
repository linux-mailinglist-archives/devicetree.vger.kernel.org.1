Return-Path: <devicetree+bounces-15660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CF57EB1C8
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:14:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ADB3D28126A
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 284564122C;
	Tue, 14 Nov 2023 14:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="0hFu8LzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2514121D
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:13:52 +0000 (UTC)
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39F36172D
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:48 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-77891670417so55611285a.0
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699971227; x=1700576027; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ak2BDRIk2vDqh5U51tE5B/vdW3wNdZF+MHtrJJi5jsA=;
        b=0hFu8LzJy4hfD8J0+/tBOtIJWT5aqMsYZcKW/3+b6BQITqhDlT5jNNlp6tzHZTdNy2
         z7yomNmeGGQ/zquiK3QP0anWgCfJk/j1h6Ph4VDWgY/LqP7c1eJC3lTsRYLEAA/7e12t
         CibcLX8kBkTwtlwm4PMTzFPHDn2MxoxgGH+NFD8pF7zaicLbFF8q+wQwBXUv6j8H/+7C
         gA9Zibe2/72IkwYgqdAfNY2+5B/Ul9AAuubDus+xAF8+oPVWfUquuR7QRCZSX97A+iNB
         gRlPLKqPLp5DQEY3BTzCqngqs9GXWCvYVpanJGZQHTTUF5GBoSRM6bcBo3iZy3ufYAcI
         62LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699971227; x=1700576027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ak2BDRIk2vDqh5U51tE5B/vdW3wNdZF+MHtrJJi5jsA=;
        b=ks0OoqejohAWWHiNLdszC15p3bs9lhA0r864AHSHt7bqz382beO4k97qKew13tGh0w
         vimC53uxGe91Iy/6jIYtDYbj95Ng/MoEr5RB7YBrx4s+YilwNJ24WgdRS1OUnirdZney
         16rnYs2t0ogWYMc+mNg/e2l2ZH4OR62qgq+j0hEXd7Fq39zrjU3xCvJQhtSaXpyCTABi
         nGgJ4ZOiwnViKzEqF7nbX8KLqHx5Vgcoz/Mk7cTWzGHqV+10FRjTE/citeDKA6IkDcpV
         II/Bg4U7fRV9SX44D2A3mv2LOhli8/gOdi/oODvwf0ey4/JgGk24QfmhacyJvz5+Ry65
         MOcQ==
X-Gm-Message-State: AOJu0Yzd2NxPqopOrMPVJbRmnQz3jW3sc9I6cwVT/GVh8+D+dZBN354v
	0TWflqchOP2n58MBQoTcaPQcWQ==
X-Google-Smtp-Source: AGHT+IF2D+KBDRTw0WcUH3F5f9hiu2zqM89jEEHbneHS+TDtFN6UAjynE2yo55wJNn9K3IiKYTPHXQ==
X-Received: by 2002:a05:620a:31a8:b0:77a:69a1:b6a3 with SMTP id bi40-20020a05620a31a800b0077a69a1b6a3mr3097295qkb.1.1699971226657;
        Tue, 14 Nov 2023 06:13:46 -0800 (PST)
Received: from carbon-x1.. ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id m2-20020a05620a220200b00777611164c5sm2701263qkh.106.2023.11.14.06.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:13:46 -0800 (PST)
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
Subject: [PATCH v4 11/20] dt-bindings: riscv: add Zfh[min] ISA extensions description
Date: Tue, 14 Nov 2023 09:12:47 -0500
Message-ID: <20231114141256.126749-12-cleger@rivosinc.com>
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

Add description of Zfh[min] ISA extensions[1].

Link: https://drive.google.com/file/d/1z3tQQLm5ALsAD77PM0l0CHnapxWCeVzP/view [1]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/riscv/extensions.yaml       | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index e845e461b6e1..f3c99e69619b 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -214,6 +214,19 @@ properties:
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


