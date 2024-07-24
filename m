Return-Path: <devicetree+bounces-87906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B045893B6C7
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 20:36:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D3AF61C23161
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 18:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D20F616C6A5;
	Wed, 24 Jul 2024 18:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="eUTqcLVt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C96416C68E
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 18:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721846184; cv=none; b=SdCuohVyGVqlksUqcQJ4vAQZKx5HYqcoYaB5f4Q9B0aoNHgnnPi2ACj/v6pb+GlrYnnMb+U3I8gmobSKU2Ep4UULrIHyPLhgJ4srMZfF24lKFTVRunb/S5lQMuM9fludG+fAsU2+7BcPWhaZDd0MvukhoULKHSgtYk7VUgWZaok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721846184; c=relaxed/simple;
	bh=NkZY56+mt1V0i7e4GK/9lVY+JFswGZayTu7rI+JvHMI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xtsop/iWLIOHePjnaEYx8Y+CT+a/hqTAKHmCOq2Zaw7Q7suRr1Qyw3J1ZMnJkSNeqVHCgg9TjsghizMS5pYbqZ0fZOHyQFkYDsDtcm2nXnYHb/mYyZnFe9lQOW6UD5gOgVQlcgcjr4trQ+1TIfkPfMUW7+F9ocNM5SvGk+sU8MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=eUTqcLVt; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1fc4fcbb131so722415ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 11:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721846183; x=1722450983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6GMGTUDyEMPZPRQbrhVrrT1wBy+Ea8+8tZqDMP6iisk=;
        b=eUTqcLVtxOm3rEQAmGJ2EowTSD6hrCoqF2Yw3X8a+dsMXs/VF3d3+LdFtFrFyQVmG8
         c7OyHN17VqbCkEmlsKGTa3Fu9HRWtor0nPqYHyTXHW2EBO5i75mZwrhj9eEwyb9ZghUi
         IYX3CuTGfIHUSFLzfzwT+cX2NgWV+Z3e7CV3vcbq6qpfx3Wy1LSDiErTxDafDpNADbLJ
         L1QJLRkU4m+sEq7MeV+VbLGYm2U0AwmSYLM50tpA8c7SksVcRtTq1T6Nd1LdlcdUGGIc
         wndp92w6NZg8zgULiNG/vsU/pTB+Ffe3miZYfUhqa1Ode6ro+nGnCWBP8Xbe9OPn30Ja
         1y7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721846183; x=1722450983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6GMGTUDyEMPZPRQbrhVrrT1wBy+Ea8+8tZqDMP6iisk=;
        b=gqgl4EE8AEmVgoai05pDDuLOa7cO9jBh28xYsAvnmlYDC9Pj3QL8amuSb9W7f+XTGj
         YSQXw2waQKc9BZdnHxtpjYq9RXzNt58vldKV30VFaL/+ggxvdHRYnKNSAyNX1m4/yuaG
         r27fDvKhpuAE7cEIXGpV8l/K0RIecmAXECLeWBIR+z2YunNwpwDWon5nrYNTlJL031Ay
         G7WYcfFhu/dunmo0UXyJvP0WNhuncZ5z8VgUZ8vq8s6OB/k9k3Jj56BCoDk8Gxfv27u9
         OArIJDlM47NHpr3mKToXr73CNx+LfCUgZhduLfC+p56U2X7nSTtwodMor6bBqn4fysnF
         cdig==
X-Forwarded-Encrypted: i=1; AJvYcCUW8mLBLz92GE93nOanS9GETZTsbTp2PozfZwfapHWzzvZyGMmmltptDSqAdP/HskdLf8rsS3/CUgOEXL/tzwgTG8Tnu5Vz3hzuiw==
X-Gm-Message-State: AOJu0YwDdU+tnqIlE74zQKRkHbJpFmQLvUx0gxW63FV0FSwtseWwwPfm
	8wKgBntv+pbF9c4ynniF69Sx26mhC53i9Q86PqsJI6FL80HqjmFc/NpYX7LpbXI=
X-Google-Smtp-Source: AGHT+IHcxsxL5PKRr6EL0FnouwIrTDDXxRkbZnLzFn5sPLGCcy444dkDYSsiX+Ck+UDZ1DX+oV9EGg==
X-Received: by 2002:a17:90a:d344:b0:2c9:7611:e15d with SMTP id 98e67ed59e1d1-2cf237daffamr465749a91.20.1721846182726;
        Wed, 24 Jul 2024 11:36:22 -0700 (PDT)
Received: from jesse-desktop.ba.rivosinc.com (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb73a189esm1997830a91.2.2024.07.24.11.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 11:36:22 -0700 (PDT)
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
Subject: [PATCH v6 2/8] dt-bindings: riscv: Add Zicclsm ISA extension description.
Date: Wed, 24 Jul 2024 14:35:59 -0400
Message-ID: <20240724183605.4038597-3-jesse@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240724183605.4038597-1-jesse@rivosinc.com>
References: <20240724183605.4038597-1-jesse@rivosinc.com>
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
V3 -> V4:
 - No changes
V4 -> V5:
 - No changes
V5 -> V6:
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


