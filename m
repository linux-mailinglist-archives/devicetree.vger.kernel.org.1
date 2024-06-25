Return-Path: <devicetree+bounces-79533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AB1915B25
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 02:51:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B1511F22802
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 00:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FEE3101E6;
	Tue, 25 Jun 2024 00:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="m4S3GEpG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6DB125C0
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 00:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719276651; cv=none; b=kyl26X4SiI7iK1Q/Cu0IPA6kz7vBcWfw7p5Ih4pe7A6ki5Wn3G/yhQK29vqO77XufE9i3m+fmr2OfyCFrWq14Bxu3mlrHLATCogag5TV4v2+6X7ncAy/iv0M7Z4h4V/mi9HG4wiEBdVZXi7EedPdSfUKWLlRMKotoXNf//BqDZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719276651; c=relaxed/simple;
	bh=vR/roTozkIKi/rFdo8G/JZEoGEMw/txN1fNmvqOTGTM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tCzyeJGXyfixEQlEIFmGdCmgnZ0lHKx/nyyjXN22O/KFaeRF7cMDxgwpovnnBiLnz/DyW9oZcWCZ3eHtX7Y4UvGciIWDCMfMKS4ISwRF3rIQy6Nou10+FTorbIDjpzpGmSMbNqzEqIfjzWqVNrLLu+C0icSE5aAKWMYJmLtVi4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=m4S3GEpG; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1f9ffd24262so22661495ad.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 17:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719276649; x=1719881449; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EJQbdAAUHpsJIDvU82Jg8JV8IiFb5YWn87NOrnsuEk4=;
        b=m4S3GEpGbVAB6xMr3EWAa/6y/fzTIaXCKSAZE/evMXDF/DxB5o9rwOB9JxrYJL8SwR
         HldJefTQfrt/EoH4jx2G0HLg5qM+fiQrLVuzCUk3n7MU/kjsQb3Kvvz1IA7K/kOqtHh+
         9aesBN6Jvt+C5lgW/xEsIqlTwfzte3y1pNH0GJAecaQFTKv1WfQx8LSaBjfJKXkWYEYO
         aPlc7942L28HLgrMI/TNa2wNrW+N/EhtyMuPhJwrS6xJGezIhj6QwM3q+HOYGL8gruFK
         mXZiz37fa0eUXiHEpOOO9GPx+B52JqYXmnH/NHRfdDm8fjzRSmh6jvTA0aspK3khJ3Ed
         x83A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719276649; x=1719881449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EJQbdAAUHpsJIDvU82Jg8JV8IiFb5YWn87NOrnsuEk4=;
        b=ep3vQBqya8Glv/zYeiiElMk7fsPktVhI4ehaneMN3ag1x2KgGEpmbk3Phop/PabvcR
         EmPxrl2Phdz9F7ODPM87uYKVDtBRVtGM/tbgmGBDbNsVsM0+U4gxhZ5M4J8wni3LzpzQ
         z/QNOGsnWm0YaXNPm24UWM2S5bOQgch/jAHxSfsLMbNgmMu9fRx46bJUCtRzDOp0Zi4s
         uZS7diiIj1Sdn1H5OYERScRUxB+Pbo5BAkU8oJiMtU6cNPb5rbMIpoDJrDxEs9+q4Xix
         k5OokD90Ryu/l2vr4uOeVzcrZhNLeOOjklU6MvxQE1Yu27leDlLeGd/EUNquJAWRyRf1
         m61A==
X-Forwarded-Encrypted: i=1; AJvYcCWRJE9Q+2oq2QMm5NC+xa0INfMPCwYzq4pGJZbrKjM/fAjhwsOszgg8sBBDB6T91HarqDxDWqLcD53BKLX2M5DPq+vJwXphpFl46A==
X-Gm-Message-State: AOJu0Yx2ntgsKiYHRjysxMKHOqdiiKCGD11vf1iKc4Qq9SOPijI1Eq+f
	K22Egm1lgwGJGkoSQp6WaAljL1TXt5a3V43EusWt6LqjWNdSzobFF3SFZmJiNwI=
X-Google-Smtp-Source: AGHT+IH7iNOTk2dACUhxktOMTo7VpX1zJFsXLc4rOo9b8V0SM2fkV7dKQh6SXUdWY9e9smQZdIjpvg==
X-Received: by 2002:a17:902:e811:b0:1f9:bb24:b21a with SMTP id d9443c01a7336-1fa2401c0c3mr69837055ad.41.1719276649116;
        Mon, 24 Jun 2024 17:50:49 -0700 (PDT)
Received: from jesse-desktop.. (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9ebbb2a7csm68150235ad.256.2024.06.24.17.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 17:50:48 -0700 (PDT)
From: Jesse Taube <jesse@rivosinc.com>
To: linux-riscv@lists.infradead.org
Cc: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Jesse Taube <jesse@rivosinc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Xiao Wang <xiao.w.wang@intel.com>,
	Andy Chiu <andy.chiu@sifive.com>,
	Eric Biggers <ebiggers@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Costa Shulyupin <costa.shul@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Zong Li <zong.li@sifive.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ben Dooks <ben.dooks@codethink.co.uk>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Erick Archer <erick.archer@gmx.com>,
	Joel Granados <j.granados@samsung.com>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 2/8] dt-bindings: riscv: Add Zicclsm ISA extension description.
Date: Mon, 24 Jun 2024 20:49:55 -0400
Message-ID: <20240625005001.37901-3-jesse@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240625005001.37901-1-jesse@rivosinc.com>
References: <20240625005001.37901-1-jesse@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add description for Zicclsm ISA extension.

Signed-off-by: Jesse Taube <jesse@rivosinc.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
V1 -> V2:
 - New patch
V2 -> V3:
 - No changes
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index cfed80ad5540..9f6aae1f5b65 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -317,6 +317,13 @@ properties:
             The standard Zicboz extension for cache-block zeroing as ratified
             in commit 3dd606f ("Create cmobase-v1.0.pdf") of riscv-CMOs.
 
+        - const: zicclsm
+          description:
+            The standard Zicclsm extension for misaligned support for all regular
+            load and store instructions (including scalar and vector) but not AMOs
+            or other specialized forms of memory access. Defined in the
+            RISC-V RVA Profiles Specification.
+
         - const: zicntr
           description:
             The standard Zicntr extension for base counters and timers, as
-- 
2.45.2


