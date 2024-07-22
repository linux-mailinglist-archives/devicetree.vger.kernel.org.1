Return-Path: <devicetree+bounces-87382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 181ED9395CB
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 23:59:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 979631F21DA1
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 21:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FDC64D5A0;
	Mon, 22 Jul 2024 21:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="evV45bRa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27A949645
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 21:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721685499; cv=none; b=fAiO+WMTVlhuLqZWlXhXtJSfHPpG5SnCq542rWedkV1v2iUtxIEXjgY2nsoZKoOqDRHbry2NUtfzGN/yqD2uUCbIh/szH14ODbu7TsdqOFmoR5LNyf7Gn5YVqewc6AluDjWh3/tl8Pnz0pNYvUqrQ+Klzuh0vO+xtR1svx1bSF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721685499; c=relaxed/simple;
	bh=I9BB6+DSsEot7edtm0hreUvYP0RvytEdbSv790C0uE4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AJx9f041ZsZQP/WN/giOloqtotSogTueTcGFZ+GKXm5fnfweuezJfXnoTQ2F8aDVdHtLa6z+k6pqSQmHal4UituhSkYR6Ck+E9olaZEtmxp+szf8ToLaOXzkvVa578BHTBCdiNfla+YRJsFX8WvRM9O4tob5dMVBX51hUGyJDAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=evV45bRa; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-7669d62b5bfso86903a12.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 14:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721685497; x=1722290297; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0g1DxVy9Ij2OMsYu7oTE9l+cI+PV2f969LKgw+PL+a8=;
        b=evV45bRaOamvLB0PcqEPmnl80aF3UCMhnEYhyycaZ5pKb/p8tf1vnxr9Sqc9QMDHx7
         mOyq09amSEBJQ0wyqemxbVvHPYjZtm4+752zdtBZZqnzWg5ejw9lFHzFOLkjH04gqeBL
         qEKPDug2ldasL3Q8wUqRBO9FfhImWTHTLogpM+r4acOv1x+pBhuLBfYMv1M1ZBdyce7q
         75mDF+6weAbMO8Sg59YLC0z+J5kOYmsEp1RIcMpPqWDWdpisPM+TCJvTGOVpF6ORV15p
         /0l3begeSUdOpw+XAzQtPjNLyMyQuIWG7VGDw5wmWrtRV7W/HiabpEUGSeJ7ftGy8UmT
         /HTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721685497; x=1722290297;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0g1DxVy9Ij2OMsYu7oTE9l+cI+PV2f969LKgw+PL+a8=;
        b=v0m2xTe17UropkGApzTDT3CsLkoa3hPfo7BzCNAwO1rkQmEEDP4r8/vsPeZWljuHtD
         3pevgOikMcdJXrsfOBwv/kZj3bwMZFL3HbxH1dulNIgg0xbci8uhY0YUQ1AVAJVtLyVq
         DTkm/koTYQGBAMiXmMGygDkg7el5anUMOjS7Ayp2XMvy1mZ9b9HwV9dXIaK04k/6X+hk
         EML1nBsUf1sfPIP2sa9Db6AvODzrX2PlOH0Ygb3DnIbnPV/RzlbTqS31TJTawIE69+Vj
         tA+dQ0tZkbeIw6aFmH9boAMSst2hOdTEs1TXtAIXp1JB7lKhtxtJC1uLiTBl26+/xQ+5
         u/zg==
X-Forwarded-Encrypted: i=1; AJvYcCX2y2pcSFeNm6pM3Qbo2duR1LlTrhj9X5yefzH+FwrZt27uKQ0bDX50lhldm4U/0CfK+vlGS+6eWa0NUR3WNvmJWRjTqzyurIyEjw==
X-Gm-Message-State: AOJu0YwamkCSVeYdcnYuxAWI7+gJxzlZft4LGCWRtXF7cw+gPYlzKV4f
	GAZNtloCMnDQV9WUCzzGd033lGhotT/hwkUeoIp5qmw+AU2Rjxe1IPBW24+cfRM=
X-Google-Smtp-Source: AGHT+IFIcgz7HARCdDrV5W8AAjYNm6XpC7WdcgHj9xNl+u1lsoc3o8CsMZxn17S3ppWeaBN7sAGQTg==
X-Received: by 2002:a05:6a21:7881:b0:1c2:8cc4:908a with SMTP id adf61e73a8af0-1c4285db7e2mr7544150637.46.1721685497425;
        Mon, 22 Jul 2024 14:58:17 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f44f0d4sm59997775ad.219.2024.07.22.14.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 14:58:16 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Mon, 22 Jul 2024 14:58:07 -0700
Subject: [PATCH v6 03/13] riscv: dts: allwinner: Add xtheadvector to the
 D1/D1s devicetree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240722-xtheadvector-v6-3-c9af0130fa00@rivosinc.com>
References: <20240722-xtheadvector-v6-0-c9af0130fa00@rivosinc.com>
In-Reply-To: <20240722-xtheadvector-v6-0-c9af0130fa00@rivosinc.com>
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
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>, 
 Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721685488; l=960;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=I9BB6+DSsEot7edtm0hreUvYP0RvytEdbSv790C0uE4=;
 b=0QcF5MOvwNThO8NaS/lKWq5VAiR/iEGql6uw4zAt+lOorHLAdp8R5/hl57aFXb0GgjrdhiJy+
 LF1VgV1VUUSB4jFlWmXdN0rWKHp5a/ASB87utx28kucPM7yzo/B2hBx
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The D1/D1s SoCs support xtheadvector so it can be included in the
devicetree. Also include vlenb for the cpu.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
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


