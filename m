Return-Path: <devicetree+bounces-7695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 236237C519B
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:19:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D46D7282204
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C5F81E519;
	Wed, 11 Oct 2023 11:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="FtzyWwHL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241991DDF6
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:19:23 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BFA5AF
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:19:22 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-406aaccb41dso18558365e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1697023161; x=1697627961; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k1iP2iExuR7IS677Qe2UFfmGvnhfXBRfGhWxe/84qUE=;
        b=FtzyWwHLdVl19Qm0uB4F6Ikpk+6kODJHbGZd1t91pnFPAXJ/5QFcXwDH9zGjWKEKmN
         Da+xtBBDjwDWzvCv4LRyxyXpyUNVR9FYVJYbQmaBK83GbzaGNrGIOfAxo6Zk3CM4ZdfQ
         5mmK6Z9CSVnknCH7xMGc547s9J/b185OAYt5gjpVpiYPZbUEtgtLVr+JMH+6BY2Hd9LZ
         RI53SYul7NPHUQb8A1xHAUK+b//YbBWYlThPZFWKCpLg7xZe9gQeozHDun302zOOcAWv
         KOGAd9z15K4VA8vmd8Plpjn8GT0UZzuA84BWKRb05GHkxvEzNGNZ269YkYvGH4ZUEK83
         4iMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697023161; x=1697627961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k1iP2iExuR7IS677Qe2UFfmGvnhfXBRfGhWxe/84qUE=;
        b=F0fOaGiHoJCASTlkTDFQNKIVvodwHV7H7uslfeWVgTz3flGWATW2q3oPWC5yEw6U/Z
         x8zlQIzseECOu8kjv0wI/Adso843osOYuhKoql8SIxeplcdUZEm6hszj1Oc+8yoiVBsH
         MBmALVPKOge2FkUKqnSLcu1Q3ec2O9zWgIabWHlnOc3T8hwptclR2piJfnl4vjsZwAEV
         ttctoSAudsFQ/UFC/9I96jJY3oCCbcRU2jrHVAKabp6S+N8VtVRRw5pjmJoae6IOzqoq
         +9KHys52H4Z37pW601NUKPm2H9gG6L35KlcSZu4p8Xzv3woKDJ6/as4OwJNjAgHHvqTF
         lPcQ==
X-Gm-Message-State: AOJu0YwLY0uNqK0rFAVsKA/zIfvCArJtPUxAN5TWULacGJg9uLZZhHMQ
	BzbcFhucfPyinxHqsEypLQTsAw==
X-Google-Smtp-Source: AGHT+IHN1jrPE5e/OFNBPSwpg81Ym2JZZudWxgKZK78wyWJftAy9XEh6ziseuRa2e9MUXZKDACfVXQ==
X-Received: by 2002:a05:600c:511d:b0:401:b53e:6c3e with SMTP id o29-20020a05600c511d00b00401b53e6c3emr18807477wms.1.1697023160607;
        Wed, 11 Oct 2023 04:19:20 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:9134:b302:d8b:a200])
        by smtp.gmail.com with ESMTPSA id a4-20020a05600c224400b003fe2b081661sm18945715wmm.30.2023.10.11.04.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 04:19:20 -0700 (PDT)
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
	Conor Dooley <conor@kernel.org>
Subject: [PATCH v1 07/13] dt-bindings: riscv: add Zfh/Zfhmin ISA extensions description
Date: Wed, 11 Oct 2023 13:14:32 +0200
Message-ID: <20231011111438.909552-8-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231011111438.909552-1-cleger@rivosinc.com>
References: <20231011111438.909552-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add description of Zfh and Zfhmin ISA extensions[1] which can now be
reported through hwprobe for userspace usage.

[1] https://drive.google.com/file/d/1z3tQQLm5ALsAD77PM0l0CHnapxWCeVzP/view

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 .../devicetree/bindings/riscv/extensions.yaml       | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 4002c65145c9..4c923800d751 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -190,6 +190,19 @@ properties:
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
         - const: zicbom
           description:
             The standard Zicbom extension for base cache management operations as
-- 
2.42.0


