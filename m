Return-Path: <devicetree+bounces-219053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1737EB86F1B
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 22:45:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8BCE97C6FC8
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 20:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273E33195F7;
	Thu, 18 Sep 2025 20:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d42QCTEJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931432F7AC6
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 20:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758228324; cv=none; b=CfEQa1khQJm1ZsG6DHYLCLn6Z/ylMya1ehjiGl8oniHCxEcMN2cHZ6XkncR6pM8jJKLEzz5vgV9smv1ywyJSeIHCb6F4DY7lXucPngKqHNn1OKPacC85IdI2ZZIueKuhInP2D15ZpdmX+WgPjEBq+CtQG1pjGSHuuEbLGe9yAwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758228324; c=relaxed/simple;
	bh=WR4FHVVhcDnWn/j+5eNlUmmFrVtxMPPjypE6sBwEbC8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I1tDdRANU/Xl1kglJJ/oQTbzyanHAHkVQ0m+7Bxdheo2o6LZ/z0LiYF9fe91/V9BgqqoiJ8VEQRIEfXekWj4O5yHcIyaqPXr6Fnd4MT7h41jh84jGbCeiBSdv4mz37JWm1Zz7FY71vxxo0gHqsDBJXE6gCc2DQp8Zju+tyrhaNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d42QCTEJ; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-77d64726e47so986886b3a.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 13:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758228322; x=1758833122; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BtrLIyGEWOU6fa2LicSTWFbyugqQN0mZ4i8wIx/QdRc=;
        b=d42QCTEJ6b0LWyjxN//vc6rGfaagxepE+pStlmZmwOm4YDMP/Bgspb3aSfFUdfUv7z
         3CPz77sxDf+AhUtNifT0C3Nb3RkDrrn+gdMwane7x33KC+CE7iA2fWwru9pLXub3gPMi
         /kYg9ag1zCGAbqgnuza5nLMOxNKPjs+ULkRrqXPA0wHtPI441SqGsLvjT6knKd7gHryH
         6pxgJptuSnk8RKcnNL9+LcYRZW2UKxBuB+oW9ymFDJofPDdSR28AoDWvYvmsxazldmAf
         pnNOJbDgcoRzzEizbdmZXzcfJ+ftsTSmTsn/NXFrgqKUf0wEXpowbLVvrWTUeZ6d5iEH
         M5DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758228322; x=1758833122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BtrLIyGEWOU6fa2LicSTWFbyugqQN0mZ4i8wIx/QdRc=;
        b=ed98yYV9ZLPssLCaiPQ82R1t9dgaxo9twkQZpksCHJZcxztZqx6ue8doAc/HrtwaIi
         jD6lZXtjuZMKnKUoCsYLMILXNjmL6qlpd6C98z14owscatGJZjTrbuyfX0JJkfkqk7c1
         FSVXlTdtqQVAwYLuh40GYHb0mt5jRGDWMLO94XokkTHDTE9TFr77h5m7Yp4IK3iMUi8r
         az/n3MEU8YXtZOTTR7U4NrGjE+04KFGNrb8DZVqK8onB5z+WfFd+zpz+8ua0ifTBxvWd
         D27mlWm+idk8P1JrDzB/HMHpmp2+XNu7Z4Ffh5di0z53f5tmtYZJmClONUNc3r5ASaes
         JGog==
X-Gm-Message-State: AOJu0YyVS0CHWh+fDRVkUYHJRxQSa/A7DPdBArYj9gQVVzFDfNDAuUbx
	KOBUvdOIqwP5kfrP54SpFHji5SfhBJ6nBPBdd4/nyK8wQJqUkf1PJ0Tl30IKH5bvc02cVQ==
X-Gm-Gg: ASbGnctLo6y2LyNPIUS2UmlzG4REbsV991S8GDCSU1hJkX+Oek73uM+b00mxVV1PcUZ
	gVTW1fnLSbWyrsNLwVH7rG/4ofK8QZFwGxWvPu0iB+z5C17j/TROa6jT0vEuK0J26QVM0OR0u/6
	/3T3JbtGoZjY/XlGEVq2SNTQsJPd3iZ/89VggnnUncBBJ3nSWm9taQuzv+zu+HW0vH1Mz1Yzg96
	qmzjNLbPNF5Z9+qqdK5xLsaL/dARloGJTOh0ACpBN9mpSUGMLEU5HCtvkFxCEgL/FO5NuU7OOI5
	FGm+qHuLiX664aioTGz6EuWYGpzFq2e9uXCDe61feei7kpEjxHFL5o/ruNChe21iaFcQykiGkp8
	K/h9JtBxG5xYpUH6rmpdWhHKhMLHYluW+ypkFdpOep5BTMM96dVM=
X-Google-Smtp-Source: AGHT+IE8751B+bVDOfdJ1EVLTNVCctqoy8v2KTEAWN2TnaxEmjyaFaE2yRT5zYFCYRIrStFZWJzm6A==
X-Received: by 2002:a05:6a20:9189:b0:247:f6ab:69cc with SMTP id adf61e73a8af0-29262399d44mr1426160637.26.1758228321256;
        Thu, 18 Sep 2025 13:45:21 -0700 (PDT)
Received: from localhost.localdomain ([119.8.44.69])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff35aff2sm3178181a12.1.2025.09.18.13.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 13:45:20 -0700 (PDT)
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
Subject: [PATCH v2 2/3] riscv: dts: thead: add ziccrse for th1520
Date: Fri, 19 Sep 2025 04:44:48 +0800
Message-ID: <71ac2ff73a63bd8674c4bc91fd287390d5339609.1758228055.git.rabenda.cn@gmail.com>
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

Existing rv64 hardware conforms to the rva20 profile.

Ziccrse is an additional extension required by the rva20 profile, so
th1520 has this extension.

Signed-off-by: Han Gao <rabenda.cn@gmail.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 59d1927764a6..7f07688aa964 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -24,8 +24,10 @@ c910_0: cpu@0 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm", "xtheadvector";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
+					       "ziccrse", "zicntr", "zicsr",
+					       "zifencei", "zihpm",
+					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <0>;
 			i-cache-block-size = <64>;
@@ -49,8 +51,10 @@ c910_1: cpu@1 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm", "xtheadvector";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
+					       "ziccrse", "zicntr", "zicsr",
+					       "zifencei", "zihpm",
+					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <1>;
 			i-cache-block-size = <64>;
@@ -74,8 +78,10 @@ c910_2: cpu@2 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm", "xtheadvector";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
+					       "ziccrse", "zicntr", "zicsr",
+					       "zifencei", "zihpm",
+					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <2>;
 			i-cache-block-size = <64>;
@@ -99,8 +105,10 @@ c910_3: cpu@3 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm", "xtheadvector";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
+					       "ziccrse", "zicntr", "zicsr",
+					       "zifencei", "zihpm",
+					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <3>;
 			i-cache-block-size = <64>;
-- 
2.47.3


