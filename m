Return-Path: <devicetree+bounces-121690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BB59C8082
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 03:22:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D54A1F21D4C
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 02:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 453091EB9FD;
	Thu, 14 Nov 2024 02:21:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="amUWH1kr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE86C1EABA5
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 02:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731550896; cv=none; b=dp173ceNidrJjkgmd+yIcvAo4FVSa/GRshehigxvkVVNStKxgrjg8ZY887S2vsLBD7z1iIAgNezz74lPXhFHgTEmb5ICcCL2aTGk+PXDLGYG9WL1YAPNqxyzOPNaa1QcjsVvZJWRruKLFNtl+jS1V/f1zerK0VZNh+WB3YIuGys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731550896; c=relaxed/simple;
	bh=o78oKmhk86m4HILZFTFFZV1kdWoTsr3pfs9WIhJp/x4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MTogNXv1xD2+Ht9UusLbQz+u3wQ9Wqzrh/lfozErhQxISRWvtLRNcBsRnHs5t4jDwIDtkxPnEw6zGBlvZrW1MbaxzKPbubvZxVYSOHzqfmCBMLmOcF40luW9yLtgWPfJvPP4V5cQ70kXdY0YMH+s8wjjK1j1tJSiKCWijhw4P6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=amUWH1kr; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-20c70abba48so796005ad.0
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 18:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1731550894; x=1732155694; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3AQO4nqVA0DOYwAj+teZfr8s4wmd7CRI3Tiiq9xY2/I=;
        b=amUWH1krgGTnHbxVUgwl6syijwS0IGmYo98espY7jDhmfCEGuGJy71AGAgmnlJ4gKA
         5pdk6o4tXefQed3KL+UV7KjquRJQEXXT3vz9+Mx4lqw4+f7l+omCCa+w2jJ7RbMZf5RA
         Wxp7n4Ai9bAPHscNOGZrgBIsn8vjm3YuHXnbfXLfqf+NFJyLECJsyWF+JRlem1pJRKiG
         0RvABc75Hkm4fqcAtcFr5pYxlEKn4Zo4YikQ3Cuoumwc2hZp72b2gcEAcWFBZoek1QK0
         oh5JkVEpj8BzBKs+jgoBoQ2UCcuVthjk+Ne0/DCP6LObtnvrT0XxKLF+ut0i0761bBqU
         XTsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731550894; x=1732155694;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3AQO4nqVA0DOYwAj+teZfr8s4wmd7CRI3Tiiq9xY2/I=;
        b=P3VxZ/MXYJ6+dTo4ZfMDbSZXsp71GD8RORZBvZ8KyujqVJ9M29LXSM7kgT6qS4D4IT
         TY9r20JLqPaYTfS8gUUnFkKU7YJtbf0yDULHSR8q/tqs9qm8Xj4krZDqx3RqKaGnJQ99
         6ThD22NC5hONnabzC80RnsEhqAalYim+ni/azw9Jjl2XYTBOAjBzvWAkDuUxviS5r58/
         JFcepbMLtHLb5xlLGNFC5/uODDrXZzy9kXqOWZQ57BWpRK3iAgWhhWxgEQdEVpqkbfBE
         uGRR2kXwEo3fSrayJAfFTXOzdecUv9yTFZ90XUictqY7lzBMm+uCO2zdqKCh/6EOuT7N
         NICg==
X-Forwarded-Encrypted: i=1; AJvYcCVJGlYAQCod2BdVTANhqKjrGvr6YDFyUoxTkrf+T6KLafPGoQDLNBNZsIRasdu3o6gWzzg5RZC1VZhW@vger.kernel.org
X-Gm-Message-State: AOJu0YxH3mTJzs02p8TFiPmHcTxqxLMa7Fro+LAbY2M2NlhtNr17Un3u
	YrM9xp4LWXID2Wtt5NE6hHT20/UkRJzqCSPrkE29hE2eNZz5hG7i+1uZjoXxuus=
X-Google-Smtp-Source: AGHT+IGrPh2oth73h1ZOIX/aQlar1fzBZmI8dqyRsGqCIcqDReOIYeoEpa8CGkziuc8OoKH71ept5g==
X-Received: by 2002:a17:902:c406:b0:210:f07d:b3d9 with SMTP id d9443c01a7336-211c4fa2180mr7014155ad.6.1731550893974;
        Wed, 13 Nov 2024 18:21:33 -0800 (PST)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211c7c499c9sm406875ad.68.2024.11.13.18.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 18:21:33 -0800 (PST)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 13 Nov 2024 18:21:09 -0800
Subject: [PATCH v11 03/14] riscv: dts: allwinner: Add xtheadvector to the
 D1/D1s devicetree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-xtheadvector-v11-3-236c22791ef9@rivosinc.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=960; i=charlie@rivosinc.com;
 h=from:subject:message-id; bh=o78oKmhk86m4HILZFTFFZV1kdWoTsr3pfs9WIhJp/x4=;
 b=owGbwMvMwCHWx5hUnlvL8Y3xtFoSQ7pp3PzuZYU1171+TxMpW/L2g8WBQ46GM78l12oy6hTd2
 Lpxp9nejlIWBjEOBlkxRRaeaw3MrXf0y46Klk2AmcPKBDKEgYtTACbSKsfI8OxU4643JUuXfNwk
 GavmoMc/5SwLw36Juznun2eVP39WeJ/hn3FE6Ku32q9tr7xpPfj1SOM7izaLuD87Y5MOtt/lX3E
 /mwUA
X-Developer-Key: i=charlie@rivosinc.com; a=openpgp;
 fpr=7D834FF11B1D8387E61C776FFB10D1F27D6B1354

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
2.34.1


