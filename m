Return-Path: <devicetree+bounces-121688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B2D9C807A
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 03:21:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 010E11F21201
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 02:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 660851E8839;
	Thu, 14 Nov 2024 02:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="p+1Tekut"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C011E8822
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 02:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731550891; cv=none; b=mDmSCoPVwNN3/yOrKNh6Hez1ATCtclcnbUP4DoGTtItjHzE41dJkFw6u6vS8Nq3ieiVhBaTWn03rj4+DuSS4fKYPzU5yWQhTzJE0Q9PiuDJLlaekF/SxPe0jrg8MMEBb0On7H6QOd34JHupafIbzwCuteIgcYt+PhZAPTAy+Tl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731550891; c=relaxed/simple;
	bh=nHDw9Tbf0xjTwaOoBZTvzecuhEW8GNONUj+jLJdHZ5U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kbuv8bpaFMEJvEv3ECZ89V/lnI8wNGJljcFPsU8vIsh7QleZqJcBPcKMSPWq76uKwM/S0yXjW6QeqRCgY2b5MaS7rUksAWBBieGKf6Usgmaaq0+5Sl2WGbDbSmZuGX4hcceid0vGEWDJAB7Ui2HsgKlCiVFrbfmeJjkGoCXMjfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=p+1Tekut; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-20c805a0753so790865ad.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 18:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1731550889; x=1732155689; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZPmq++gF8XYGDxo6W13nX8EQcKxVsBpCdjyPJHQ9PEA=;
        b=p+1Tekut2mYOhK9lk/zYh0wrDruaZd0zNV9QaSR8uxO5xvdL06lhoRzzt9iYASsNZU
         6yQkplviFcMksF6edbtIcCNToGgRshJFDoayDVcznNKO6Ae/S9IltkvGcYrtPpIgS0uj
         s8/xSaH7vj/lrnZn7C/s/RRTJpyIYAudIJ6LxPOgY1pkGwblJoNz88YhTsbIPCF37DKR
         1/rHtCQIbQbqbQbOAnBqOVJasagbhHUY1hXAcKuJ5vXJE80G7bdMecvqdu1b3jCz0bKv
         nyE9UJIILgDoa899oL+/MNiFi6Qi3OtYvDabb90srNyDMP+UGjirW5byXqK17jb90910
         sw6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731550889; x=1732155689;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZPmq++gF8XYGDxo6W13nX8EQcKxVsBpCdjyPJHQ9PEA=;
        b=IgaBEAfZv8nDn6hG/UI89QNIt/sO52pm7MxNytcftT96fyVG7gSXKxxIRy28Ah2F1l
         F+ILyhP2g8hPEOERRvNFoYRtrNw8wSMJvhmkNXVcZ767004XnYcDF1cEHgT/D0lvnS3W
         ioHnCCY8iHZyH+/65gb6194iYTVMq5ujnV4WTuRIukZ9OdfeUOw1i/naiEZqWPsoSvWT
         IZ2BKYogDl37fnt2cGFJ7oMHn8ky2+m/cEdDJ2zhdB56uTZPQCfGykz88BOu+gcfWrOZ
         2uF+zqHPPL9c8/S/4Y0zGTW/kBjQxQuHYYvedY6WssN3Kv2I9W76qD9WG4bs79kK/Wx8
         EZfg==
X-Forwarded-Encrypted: i=1; AJvYcCWjSsEm5B0cdQeW9Tfvzf6nI+jax9MiO3zscFgGF2zHzUkPe7oLVQKJ1y8pfKcEvzuqu6JSr/fKY7t+@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyabi/qTL3E9Dw/6ByV1mXxItQYvzPtqipZyqV6KfyCtg5GhCK
	K9YYQjvnIMdw/3bk59mmarfro6NDMSCszE25RKf1BAzcyRPSMK4w8FoNkvYUm0o=
X-Google-Smtp-Source: AGHT+IHXs/UC6QXlbxwq/AZdRi0iAZKUws7q6EQOv882glnYxGWHkVDGfxYYccs3BY2ZiZF6gsz8bQ==
X-Received: by 2002:a17:902:d2c3:b0:20c:3d9e:5f2b with SMTP id d9443c01a7336-21183e709bfmr255058245ad.57.1731550889082;
        Wed, 13 Nov 2024 18:21:29 -0800 (PST)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211c7c499c9sm406875ad.68.2024.11.13.18.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 18:21:28 -0800 (PST)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 13 Nov 2024 18:21:07 -0800
Subject: [PATCH v11 01/14] dt-bindings: riscv: Add xtheadvector ISA
 extension description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-xtheadvector-v11-1-236c22791ef9@rivosinc.com>
References: <20241113-xtheadvector-v11-0-236c22791ef9@rivosinc.com>
In-Reply-To: <20241113-xtheadvector-v11-0-236c22791ef9@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Jessica Clarke <jrtc27@jrtc27.com>, Andrew Jones <ajones@ventanamicro.com>, 
 Yangyu Chen <cyy@cyyself.name>, Andy Chiu <andybnac@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1788; i=charlie@rivosinc.com;
 h=from:subject:message-id; bh=nHDw9Tbf0xjTwaOoBZTvzecuhEW8GNONUj+jLJdHZ5U=;
 b=owGbwMvMwCHWx5hUnlvL8Y3xtFoSQ7pp3DyxIyu8k/tv/KntPBMbFSKaMMV3s+xp5ss60xkb3
 lXkrX/RUcrCIMbBICumyMJzrYG59Y5+2VHRsgkwc1iZQIYwcHEKwEQ+fWD4ZyY1Q62Gp9u6tt5+
 kuvbiOC/kz62z13y4dbsiOyXebX7DRn+l+ckfXB4zmJ3iWHF1IyPGX6G1/5xf3Be1bRS2MNpacJ
 7LgA=
X-Developer-Key: i=charlie@rivosinc.com; a=openpgp;
 fpr=7D834FF11B1D8387E61C776FFB10D1F27D6B1354

The xtheadvector ISA extension is described on the T-Head extension spec
Github page [1] at commit 95358cb2cca9.

Link: https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc [1]

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index af7e5237b2c0..b49278e2f2aa 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -593,6 +593,10 @@ properties:
             latency, as ratified in commit 56ed795 ("Update
             riscv-crypto-spec-vector.adoc") of riscv-crypto.
 
+        # vendor extensions, each extension sorted alphanumerically under the
+        # vendor they belong to. Vendors are sorted alphanumerically as well.
+
+        # Andes
         - const: xandespmu
           description:
             The Andes Technology performance monitor extension for counter overflow
@@ -600,6 +604,12 @@ properties:
             Registers in the AX45MP datasheet.
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
+        # T-HEAD
+        - const: xtheadvector
+          description:
+            The T-HEAD specific 0.7.1 vector implementation as written in
+            https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc.
+
     allOf:
       # Zcb depends on Zca
       - if:

-- 
2.34.1


