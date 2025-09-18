Return-Path: <devicetree+bounces-219052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB24BB86F18
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 22:45:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB4041CC0AC6
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 20:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD982F360B;
	Thu, 18 Sep 2025 20:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YA4hyCg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677CB2F0685
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 20:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758228319; cv=none; b=DTKK0Fq2iVOKeDIJzQWmkjmkTt8MgRxPpWElkTMKwZf1Y6sOP6tgWpN+DMAdFTA+9Zw5TR+czRy5SUhC3/R5vIfsECswKqBuRHzq2hTQFlaargIU/EAbuyrPyRPDdBVzY6x3+01BsLvOjxGFT9PxprNXt6Ix0k2e/h86K8LrPbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758228319; c=relaxed/simple;
	bh=MU+f40hGuQXdwuQBnwoIxZYaxXYINr0tJaHL8O1lpRI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g9ohrFljComa0te4SieEjSuTqyrfEw/AVREn4BGr7RBCm1eVyXO6Wst1cgyUjQcF4iUWU8eXBDUiVQjgmr+I8WB6g+UaF/fpE6oR1QAHskGkh5zyE5+MDQqZTiiUjDGT+97/Eqigfw/qYkfCqZn+EuRu5s2Vpr7Z2/xFlGMfyXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YA4hyCg1; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-76e4fc419a9so1452165b3a.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 13:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758228317; x=1758833117; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1XovHlZK1pH9N9kTTwIVt2nXIuLc61uTIHy4WvXRZJw=;
        b=YA4hyCg1t0VzqIwRALuRKifYQG9pwkToSQmW9LODd7Yn45iYQWm6ojUItdlhODiM/I
         wslc28TBy3DcskEK3NvdX+la4ibbpXEmypmcmxXNYnhDFj9s0Rjxs7UpSUnnFVTY+yyz
         Z2G2K4/kHDoow8oLVWdlZEmthIIFXTxpw28wCO+OE+xMrMyr06MDQK5Xtpxib8H45XIb
         F8F5PLK7uz299Qc0qFxZxiHzYNd0H6VAAvayJMIANmAa81ss6LrSIZrge8rcj3rHMbPh
         IlcnYpo7UeQVz8LFdhYQ2AIRSE4nE+B47d0V8/ZrjNC5D+2Am3daVhUy4tG4icESR4Ji
         dcGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758228317; x=1758833117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1XovHlZK1pH9N9kTTwIVt2nXIuLc61uTIHy4WvXRZJw=;
        b=mnC1uH9W2H11cYQX/FFJw1RleiyOJlM5Q95AS7xq8sbx2ddFkHOGJ+eLoDLJVOVbpv
         shLVUnBBah6P5HG7MwWTu4/fcyxQBCuiGwMmK93O5d9lW87jf58l/UGE8xWUkaQl1K+E
         xQ2+xt93ISiH/GhvSsqpKR3E/D3G+C/OcDX9yXW9Jy7w23cYxdznvQHySnO0O+BGhjNs
         kCl67oJRCh4NUB1nuIWK65uGrT6sdq87Dj7+SU5Ws1Wb1xKZBZ8SXv+rHcpYzSc0xypo
         Vnsqs2aM68shzTQDFRZf0/GLBzCPymkivB7LFdHde3zcp1Zhsifoa+9s9F0jo8jTb/E8
         9c/w==
X-Gm-Message-State: AOJu0YwcT7/QwBgnuEvM0LVlfej0hTDCcxilwPG2LomgpkuBpStebHuS
	8bDKiBflvwlq9GDGHYaLXFE6CYn8vOlOKylmq+2DJ6fMwvbw0S5S2XUqEZjPTleJKQfSuQ==
X-Gm-Gg: ASbGncu6imJzxPYFbFGeZAsio5tX21/IpQpAJYNiGrZzrRPy0J8y9uelgFKZcWBzHtx
	bf7rDb9U5PeU8cMPmGOlX31Sc4ocGT/r3rVSNLrLjfh6Bl6VMlP2g6rnlWL5zDFV63yrj5xu5E0
	ajFiNlLhQrss1UvNpKo11HXViad//fgKplbiVvhM539Lr+CAewhVQHYU9wykGsfxdqLG9ulPIPz
	P8oBn4QqJcxJoNzAjrhYi8c6h44Oc0EyWU9jTSho0ObfuDgc1oTceeDLkaaYspKFFrbbBrRJOdd
	h3H87f7kwNr6bGG9SwIqcqzj6aw843+tbwfyyIqRw3DsZ0GOkluG5gr0UAlFZ7hur6WKO57QZYs
	B97nc0O0EvbKQtLBnmIFEK8vpPnk854Jmj/dQYB7nMg1mjWzpYZQ=
X-Google-Smtp-Source: AGHT+IEj3b4BXwmrsRFa4LZOkX3gZIr52lRGH/WszcqWvRFISeo4WKiVHEB/Cjg8hGWzvaKJHkXTGA==
X-Received: by 2002:a05:6a21:6d95:b0:251:e4b4:7a37 with SMTP id adf61e73a8af0-2925ca2491emr1394921637.19.1758228317173;
        Thu, 18 Sep 2025 13:45:17 -0700 (PDT)
Received: from localhost.localdomain ([119.8.44.69])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff35aff2sm3178181a12.1.2025.09.18.13.45.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 13:45:16 -0700 (PDT)
From: Han Gao <rabenda.cn@gmail.com>
To: devicetree@vger.kernel.org,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Han Gao <rabenda.cn@gmail.com>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] riscv: dts: thead: add xtheadvector to the th1520 devicetree
Date: Fri, 19 Sep 2025 04:44:47 +0800
Message-ID: <1ff3fb07b24fb375fcf9d3067aa50583f47c35fe.1758228055.git.rabenda.cn@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758228055.git.rabenda.cn@gmail.com>
References: <cover.1758228055.git.rabenda.cn@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The th1520 support xtheadvector [1] so it can be included in the
devicetree. Also include vlenb for the cpu. And set vlenb=16 [2].

This can be tested by passing the "mitigations=off" kernel parameter.

Link: https://lore.kernel.org/linux-riscv/20241113-xtheadvector-v11-4-236c22791ef9@rivosinc.com/ [1]
Link: https://lore.kernel.org/linux-riscv/aCO44SAoS2kIP61r@ghost/ [2]

Signed-off-by: Han Gao <rabenda.cn@gmail.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 42724bf7e90e..59d1927764a6 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -25,7 +25,8 @@ c910_0: cpu@0 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			thead,vlenb = <16>;
 			reg = <0>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -49,7 +50,8 @@ c910_1: cpu@1 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			thead,vlenb = <16>;
 			reg = <1>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -73,7 +75,8 @@ c910_2: cpu@2 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			thead,vlenb = <16>;
 			reg = <2>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
@@ -97,7 +100,8 @@ c910_3: cpu@3 {
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm";
+					       "zifencei", "zihpm", "xtheadvector";
+			thead,vlenb = <16>;
 			reg = <3>;
 			i-cache-block-size = <64>;
 			i-cache-size = <65536>;
-- 
2.47.3


