Return-Path: <devicetree+bounces-74337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A8902BF7
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 00:57:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08851282492
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 22:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FA25152E12;
	Mon, 10 Jun 2024 22:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="XEyUxKO/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B271E15279B
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 22:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718060214; cv=none; b=odfbz322P6f+fG6BBrMSOGRvbDb57gghVfvNedOL0TsJnz9ni1UVLMSQmWi2fVzFjGz8TvLRun9eNc9TpyNQlCAmY3ibFkiKgkoOgKzYWirq6fZBKp5NDplBAJNxC2aUGVt9fyznb4CuP1/HmpribfF/YChst5qD+5QYy04C7+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718060214; c=relaxed/simple;
	bh=ca9316m2q7KsJpXKaUYuMTEdVfJhCps1VG/+w2MDk+w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rSez9W9VJ4V7R/oi1wqlR7ipFH/iAoM7EOYbTjeoSs9LGhaZy05d+TTdJ92wzjThLVJlToeYKPs6sGejXvp/EmaclDdb16I7i/Y+b6DZ4IKfAX79d8PNq8w+NeXSDW6+7YNTGzYNXgLndKkkCGu6WhCfjsCZ2yI6eZcOa4GHA7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=XEyUxKO/; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1f7274a453bso3742395ad.2
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 15:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718060212; x=1718665012; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dLK9thpeAz/050Te/UpgqMxOgYJJfX2L6p0aPfIuJ0g=;
        b=XEyUxKO/CA+p8TahhN+T3M72CWwaZ+RJTGKl8n1M5BxSKlHFiVo1fKTfiDnq79bm8X
         /3dYC+AY4WV5Pt9HJt8ylE6P6iXPARtLjhcHBv3yxx6jPiH/kbg3SONOXG9ujr3CF/Xl
         /TfjagS69pScbMcojTw4cwGMjXDkOoxxXcvq8isDqAJ2sjNNU8ZVO6PLsaFdKPT/6UAG
         ZZDEE9oeK6xI0pUHVu+hzwqjC+IveU+4vGhjWn/lUZwUYXyje4XSoYSMw4ZIM3i9ScZT
         sdDRVBwMAbrJMnrJ834fxx2edOuxYMAjzMMypKKazVfKkP4x8FZdJqw7c5LHJ3ysvoti
         6i8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718060212; x=1718665012;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dLK9thpeAz/050Te/UpgqMxOgYJJfX2L6p0aPfIuJ0g=;
        b=Bk8lRvbe+XoOJYJJjFsgZg+0yUOxd/wQBQ3lKGvHn88+NuXoF2klK3Z6F3HnNqwhIP
         svuV1AiRwnRmyhhsLjt13tYsvI12NEB6JuDue62rHa+8NaVFl7SzQEidsEqxnkDGFMtM
         FfJYLOlML2xi8lp4J+g5mUL59FxPBWEoYAyYnHBWN1+zgELtgf2XqCagHlstndRn1mBj
         heFqe3nMAE1jQnr4syYmzFqwmWOaQafmXoBiorFpShR5Ta/BCddK1RJcQVW40vrxPHBp
         +nz1zvtctlH2mwsJJWTpyUqcoOXCkUgce118udwBHeqx0ezPnnA+JbuwgqsqDnCD1LN7
         ZjfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWae8CSTsG9goFjQyoen73Mm7W6qWV0oiVLIUtLf/p8EapV4RK5JO8CpHBVJlTvrKhch9zpAJs2KjU/bZDPmwbFD5pYj1+kCnpUIg==
X-Gm-Message-State: AOJu0Ywb3ldulzO/+RdLnULP/YSuY7g0k6r2MnOD3h68qVID5+TWi/9v
	ipx/rhQJ0xtuSU5kNA68KQmDdM1fIpelxAeczGoN0493yr7uWSDuSPtQvNDpc3JAt/G4kZPXdhw
	2
X-Google-Smtp-Source: AGHT+IEXlPdDC/cm3XWTMWZsSI+KISGfbRWYYRB+hu0C2M34wJmaILJ0Oapoz9vjpacbJKVuMQtTag==
X-Received: by 2002:a17:902:ec8d:b0:1f6:138e:59e8 with SMTP id d9443c01a7336-1f6d02e08f8mr123826495ad.22.1718060212108;
        Mon, 10 Jun 2024 15:56:52 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f71b597072sm18355865ad.99.2024.06.10.15.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 15:56:51 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Mon, 10 Jun 2024 15:56:40 -0700
Subject: [PATCH v2 03/13] riscv: dts: allwinner: Add xtheadvector to the
 D1/D1s devicetree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240610-xtheadvector-v2-3-97a48613ad64@rivosinc.com>
References: <20240610-xtheadvector-v2-0-97a48613ad64@rivosinc.com>
In-Reply-To: <20240610-xtheadvector-v2-0-97a48613ad64@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <shuah@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Evan Green <evan@rivosinc.com>, Andy Chiu <andy.chiu@sifive.com>, 
 Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718060203; l=904;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=ca9316m2q7KsJpXKaUYuMTEdVfJhCps1VG/+w2MDk+w=;
 b=Rd1RqXyTjzNZ0C4JTbHLRL+/rb2toKlfKsgxM0n+m70IZEjfnVh7+2UZReMpFZCIoGWFDgLBO
 f1XeHlkh/ZqA4+v4M5bCfih8O8eBXibdkflJyyCKnWo6RjK1HHDZMVd
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The D1/D1s SoCs support xtheadvector so it can be included in the
devicetree. Also include vlenb for the cpu.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
index 64c3c2e6cbe0..6367112e614a 100644
--- a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
@@ -27,7 +27,8 @@ cpu0: cpu@0 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			thead,vlenb = <128>;
 			#cooling-cells = <2>;
 
 			cpu0_intc: interrupt-controller {

-- 
2.44.0


