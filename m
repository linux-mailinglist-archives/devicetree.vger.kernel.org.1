Return-Path: <devicetree+bounces-73978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F209019E4
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 06:46:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0867281EBC
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 04:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7623CB665;
	Mon, 10 Jun 2024 04:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="mPWIPv5M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193AC107B3
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 04:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717994743; cv=none; b=AaD67XMdrjWS843WO99iSaCCXHHCuCp6bOVHSpljOm+nIWbYopU1Iildm15ljqMup47ua44MiUCj2sNKaBzG2UVBMs/S1IFsQVpNpG2egbnM7VsQ7Ogwbfo/8BuEi4fHYOsvn3uo+owpfXXwWYWsdUCZRgKmVw08JzmL85Djzho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717994743; c=relaxed/simple;
	bh=eg5f+2eUdPorsjTg1AXnvbZp1Gz8QKwXU/sn4bArQ/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mFyg15RioV0drJKzFhnk3j1bDP295kVgvYi0V7GaBU+JN5ji6eFstL9jpzfvVk82sL6tuzneJATS5i5qVw1EtfDEkv9RWS895ww4E1RuJ80bZ3DbBFXY8ZTJUFfNkqDkuxvnxcM9B4O6c48Ec36Lb4XDoo+nuDSMrsdlmuDEtR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=mPWIPv5M; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7042ee09f04so1079887b3a.0
        for <devicetree@vger.kernel.org>; Sun, 09 Jun 2024 21:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717994741; x=1718599541; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xb9tww82u8GPwb/D9ZGp2c9YRfA1MZ53TtnEydxWwQE=;
        b=mPWIPv5MH8Ifz8Z8RiCAcsrujOg/6fzKNI/Af82cqBDnni5WNc06z1CVaTbTClKZjg
         G74uPW40vl4ZANDEibynMdnNg2PCCR2NlSSbT/LG2bsEyDesZwOaorsaf8bUON5dlXOQ
         7nkEKkEopqXyM5FtUGHqfW/9cT0g/vUBMuOqWXYitAetPbo0y13MHP3i3HkkxPbtFVaZ
         9ZMu/genyOkAq8lPe3g+wfMTs/MT2fpWIiZMyyUDKO2ASBLz9m/IkNRFv6J3Wfb6yGEE
         eOjOPFnN8mWQm/3BqxQ1JZQ4Yv9Qp9YVDo44sX4ARR3/clWosq7lXYoxjXt6dK8ntVs3
         6NnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717994741; x=1718599541;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xb9tww82u8GPwb/D9ZGp2c9YRfA1MZ53TtnEydxWwQE=;
        b=SjmDSQUjMpNViMex4BP9OZXyt8emt/UfWUNv9bYcvdCucGo5R4I/97TbRALBqBJ28W
         JDtv/6burhUJmRqU74J0eDAbT2lBYQxWh5f33d6vNM8fbE+K8aqSN4LJALxaNxcQzxUK
         NmzNwgOuoGAtI73qOMsQuCHoW3d/4Q2ONjLmtQrif3486+re3+cysFdu7rQsMRKKvHGZ
         nodHhpYEhFxx6UcDbDc/ECfLuofywiJAb5S0yZf3wfgIJvNi020uN/R41z3M0bgIrpio
         ICu0IBj2O3zegy4EJwDoh2pSGNp048oNkxgoPI3NCuM6epGxXVqM1x17e2HozB/YbM+U
         6VJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdmr/uz4TgtKfzAOK1x3/wAg6BRP8P8N03cVZQof5Io0JEiMUER0NZL+5EBr8dsw1veUcyWmC0utNN3g9nzX3qaYuC5vhQ/X4Gnw==
X-Gm-Message-State: AOJu0Yy7S1IxyYBFczlfuClNlnM96zeqJhAIfT5Fa8RVZ9lImIXrrFEc
	vpqrXncz/si6OMbGcjEBn7o6nSB6B6U2NK0crVNNOajSydd3bRAhiQiF9bBMUJs=
X-Google-Smtp-Source: AGHT+IHfXz/eqcApvPQDnA4xGEwd2uFPXgoMy/TBwiOmRs/TV62bMg4pq81xPe0jQyHMWsO+kgdruQ==
X-Received: by 2002:a05:6a20:3d81:b0:1b7:77ef:b125 with SMTP id adf61e73a8af0-1b777efc43amr2187647637.21.1717994741443;
        Sun, 09 Jun 2024 21:45:41 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6bd76ce8asm73124095ad.77.2024.06.09.21.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jun 2024 21:45:40 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Sun, 09 Jun 2024 21:45:08 -0700
Subject: [PATCH 03/13] riscv: dts: allwinner: Add xtheadvector to the
 D1/D1s devicetree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240609-xtheadvector-v1-3-3fe591d7f109@rivosinc.com>
References: <20240609-xtheadvector-v1-0-3fe591d7f109@rivosinc.com>
In-Reply-To: <20240609-xtheadvector-v1-0-3fe591d7f109@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <shuah@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Evan Green <evan@rivosinc.com>, Andy Chiu <andy.chiu@sifive.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1717994732; l=904;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=eg5f+2eUdPorsjTg1AXnvbZp1Gz8QKwXU/sn4bArQ/o=;
 b=qMU9GEMHv/svOPJ5zghxy0bhqG/AbgzxOZ0AfXJrmBOvTNW3UuMX841ytI7NfGDiJh0BQgx9K
 BRhD0FN3VpWCnzzynK4/FI3j/f0VwYqtduoZBXh2eanJAoZrFHFaZvg
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The D1/D1s SoCs support xtheadvector so it can be included in the
devicetree. Also include vlenb for the cpu.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
index 64c3c2e6cbe0..50c9f4ec8a7f 100644
--- a/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
+++ b/arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi
@@ -27,7 +27,8 @@ cpu0: cpu@0 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			riscv,vlenb = <128>;
 			#cooling-cells = <2>;
 
 			cpu0_intc: interrupt-controller {

-- 
2.44.0


