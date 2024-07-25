Return-Path: <devicetree+bounces-87970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7717993BB80
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 06:17:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33225281DD3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 04:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8B262E64B;
	Thu, 25 Jul 2024 04:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ivNp1J2V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A9C210FB
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 04:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721881003; cv=none; b=qolMwYPgUgeZApC2/z7BFkOCkjNy3VRW3/9J15I8FmsHUTa/h4jSV3s4STYqYzmblBny70mgQMRMW2lp3KRvL7+Q/MI3Lf/F3MfE5hnUE8XHl63uAlSQ/G36LZfVWlqSkkobzxxHhnbdiN/6uHJT8lMhIF/TATH1tEY0yy92lbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721881003; c=relaxed/simple;
	bh=I9BB6+DSsEot7edtm0hreUvYP0RvytEdbSv790C0uE4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K5MD2w8S/qywh5xBeliysD2pE0HqM3MRYltke5XC5xhRHdY/BHb0FNWEkPJ8u92o0HxrBml1Xp6Ycl85uvm5Zue2RG+yEV4UwVMWcxwU5WIEbtniHmtoplqPmype9eOjn1Z+5W9cYuDxWramJYBBojx/dk8Ws6NA3+O/W7KalH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ivNp1J2V; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7a1d48e0a5fso337086a12.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 21:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721881002; x=1722485802; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0g1DxVy9Ij2OMsYu7oTE9l+cI+PV2f969LKgw+PL+a8=;
        b=ivNp1J2Ve81V9KSWJImbjJI51lkgUitPh9RRQklNXJB3P/YNyXxCoqQiy47gNFA/8f
         HZvcLq95Il8uAdKhhluLm3kVpHoS0eRpDMUMUjWKAI61gVfPVnKjPjqtN49jirV6Yn9r
         2OXJCBkKteB63+P5w1TLknIPQAgD1vcloy0thcLhgO+3yEhfo1pedhO4LGI1wrR9/jFT
         SdKp9wfAekDirV8YJGawQEJpIE4PeSa/gg6WqfhbkGLASfLTzNT0tKTsez6vHbkcouow
         zruU47K5syk0ZWOhE+SDrWMPhk6yMgNQm86Lw3RcJBhFHrxO+VZieZ+VSw6TWR/XCRu2
         ez9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721881002; x=1722485802;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0g1DxVy9Ij2OMsYu7oTE9l+cI+PV2f969LKgw+PL+a8=;
        b=ByR0i5l4meuItcguhr8hZVrixrrshLioOYmMWwSElX04QLzPOC3khhQDyhlKsFJ4FX
         B/1mEB3qTOixS+3y7rwV4pzl48tsyFUrR0j92UfwEfVQFZa6l6v1M6o9nFKlFTDqR0+D
         J7BRWfe0zI/Ch5og5TlbtCXFt9MVgiIx9N7ojvd2V5OGEE7BhZjDoBgaF+pzP+f39sVb
         BUkqxkt29tClRzR/o9FuIVj/AR624mkTtzBnaeq547TKrFuQdvlji9yaDJHisMk22fVi
         QQsCTASOdFu7m7gk20R7fMIgx4Cp18o2ao8Gaw6225s6soSD3zRO9myG0FmclVEeUtSJ
         BqIg==
X-Forwarded-Encrypted: i=1; AJvYcCWRqK+XZLenOK2G5dipQknRaJ34gTXDtIiq9C7mfK5dn9+zmPb57nFjk0yihqVuHzAnnORAXbueJo4uXcWVtEycefNlkcAmJZelMQ==
X-Gm-Message-State: AOJu0Yxo5Z6OmOIg/C5/ifHhm3n1tnPum5I/A6NDojfJfrwcp5AIWlwX
	A7ywntpTuLELieOkTCRNlRS/jGWaB9sfnBY9OqT/Br26jNOyAoG4G27++SIaDIc=
X-Google-Smtp-Source: AGHT+IFt1RkVFf2OjyTIVYWnNjXMMzXbPhYUj5yMkNfJ1obS1jdCLktWfogDenFlyhmNY0dxbGiqRA==
X-Received: by 2002:a05:6a20:a113:b0:1c2:1ed4:4f90 with SMTP id adf61e73a8af0-1c472867d36mr2466930637.19.1721881001579;
        Wed, 24 Jul 2024 21:16:41 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7f2b80bsm3781825ad.205.2024.07.24.21.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 21:16:40 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 24 Jul 2024 21:16:20 -0700
Subject: [PATCH v8 03/13] riscv: dts: allwinner: Add xtheadvector to the
 D1/D1s devicetree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240724-xtheadvector-v8-3-cf043168e137@rivosinc.com>
References: <20240724-xtheadvector-v8-0-cf043168e137@rivosinc.com>
In-Reply-To: <20240724-xtheadvector-v8-0-cf043168e137@rivosinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721880992; l=960;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=I9BB6+DSsEot7edtm0hreUvYP0RvytEdbSv790C0uE4=;
 b=ZAWLZ9wwCs7KaqSUn9fZmYN47ZJqG0m0R/IdKknBruk76HGKRsw/EmJRczJ4ZOD/iVkMqcV03
 SI+sGJRP0kKDKii6PoLcAkWsqoy9XQ8AZNzUmpoWrTo5SJBRIMkCLI2
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


