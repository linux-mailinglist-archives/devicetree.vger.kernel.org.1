Return-Path: <devicetree+bounces-219054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD32FB86F21
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 22:45:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B463582CE2
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 20:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41B692D9780;
	Thu, 18 Sep 2025 20:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EANGncbb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80BE31B116
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 20:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758228328; cv=none; b=uZMo7NOaR/mD3b3XZpEeEhw93ujHo+xaAUr6KHUx4wU9pzEGwMFfaZmEJsmSj5ZRwR+XASB7Cc5Qv+mRIcPknzBSw2QFK7gdyN/2PnmWECdKm7LI4pBsKhv65xwC04fm6tD6t5QXETDo4ZXF9LVaaXS7Bz/gvOVwB3kXv8ClcF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758228328; c=relaxed/simple;
	bh=OIWkLQqjcrQgM7X+/q/co7L4hQvwxfqmya0GWab3+Pw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ibMMcvEKEPtFz5y6cR8d7pdFPaxeE6anSmp3DTAd526eUWNhVgsAT8FdpuL+YtfbZc2L0YSsiGGs5BfLGE+vxE774f5n47y5r5sUnJLZFXyj8acCuWMJ4JFi7PAPvUYzFET6OQmkLMZykel/cT2XOVndAD2JsSnVIqLg3Jdj4yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EANGncbb; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-77d2632f904so608402b3a.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 13:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758228326; x=1758833126; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tFIFdbIH/bKvV1avROWPNI4zxhkvHd6hfIAukKkVczI=;
        b=EANGncbbnyd+K6T7Yv8+ZSzJRD+HLFYFTqXd1Avo0CZSLQ7S9uVl55dFMEWr5W3XOD
         v2lUZw8635vdJpG3fS4wn1txc8QnHn1ySfjBGJ8dkpSlimEQVhQJpnVEWxaF/sbc10h2
         mOEfvl08qDDlgMi0KR5uF/ct2P4bXEO8WEUHF/JTT1yw4qA4zucIhdJ9LLMT3RNvRpvp
         um8I4PrMsbieR/aB8kp1Pd4fSG43RcfADBxXSHtxq51Z0ie0S6wER4wowY310seC6rVo
         sxSjLB7fLMaiIt84OTnSY98hvfBuKFc2A/NaBT1EfvOk+JwxGzjU+lvclX27xhF48BMG
         Kcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758228326; x=1758833126;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tFIFdbIH/bKvV1avROWPNI4zxhkvHd6hfIAukKkVczI=;
        b=jPD+qx/cHRC1ChUKz8MivzSm2+EEv3d1jDMVfLNYXyRC8Fmta4sPO9t7h7GTsyikm4
         BG1j5SSmM625YNygxItvYlvF/DeBLlQIz51qPoRorGsrYP92jGvxxxOaRVFt9Pk2TSZZ
         o11J49KUu2+350asFkz6peyAacxyhePdqOtt6JfWuHRhwRamZBMc5UoK6kbxjKUL5yrt
         9D1yVMe8xzTs75MImwasCCkZF4htSuzB2tGg48T4rBqxii0bEmtx7hyZOYb/LeKocZ+z
         jS83KafvBuKa0176TwVt/2j8BJEDcddw1Qx51FlStV/6wkP5AzUIoTiz9D7Lj7YqLmu+
         ZC5g==
X-Gm-Message-State: AOJu0YwelF9UAHghomJqytBAWyywvGzvOQyHXzD0lHKbefynjdSXY5TJ
	rDfY/8oWTGrz7l8NdwTd4xzlt7OlR2I8td9BJmaFv5JG784qDFlRnkXi9Xad8lzKtQrtAw==
X-Gm-Gg: ASbGncuqhDwOWW5IiyZ2AF/WFB7+/ik+y3aezodAxlXyPVBG2lFUPwBF0S1JSMvsQrl
	SZEruvnZPWrw+n7JHDNmP7/KTMxT1flZoGFbVrXIXHpogQS3DoWIKl8mmQesYBknpf++tiTb0Xk
	kXSUpVPRnapcobhLGIh4LauSAvav420J8d9mQf/pybtVHi5aHNvd6aSFtJlI+wIpKzJg/j6AD6o
	03MycLc2a7l+N8AHuvtCgPExcBVg/I0n/1bJt2XisCl/vR/e3LCj9amWJ/kbMXWRNFW6Cs3Vwye
	Lqu1s1CqkmpTOfjhIS+XPBMvHedovlriT7FtmwlEa7MM6B8vMmg+jZCa013iXefbvduHsVO0TfU
	o9MChuPgoO14o+T30Dh9ZevxhrMb4uSVB8bNTbfhT+p0+A50jmwk=
X-Google-Smtp-Source: AGHT+IHMX2wzLIuP1H1OYeeMGVJI0rgVYaYF6wG5yHwKshxuo1aOWGmuNzZXnQ/jUOJ9+eorBuztOg==
X-Received: by 2002:a05:6a20:7344:b0:243:c274:1a7f with SMTP id adf61e73a8af0-2927277718amr1294133637.46.1758228325445;
        Thu, 18 Sep 2025 13:45:25 -0700 (PDT)
Received: from localhost.localdomain ([119.8.44.69])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff35aff2sm3178181a12.1.2025.09.18.13.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 13:45:25 -0700 (PDT)
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
Subject: [PATCH v2 3/3] riscv: dts: thead: add zfh for th1520
Date: Fri, 19 Sep 2025 04:44:49 +0800
Message-ID: <38abc793c2fcb9dd26c89bab10dd4450d91ced4c.1758228055.git.rabenda.cn@gmail.com>
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

th1520 support Zfh ISA extension.
It supports the same RISC-V extensions as SG2042.

commit cb074bed1186 ("riscv: dts: sophgo: add zfh for sg2042")

Signed-off-by: Han Gao <rabenda.cn@gmail.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 7f07688aa964..2075bb969c2f 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -26,7 +26,7 @@ c910_0: cpu@0 {
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
 					       "ziccrse", "zicntr", "zicsr",
-					       "zifencei", "zihpm",
+					       "zifencei", "zihpm", "zfh",
 					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <0>;
@@ -53,7 +53,7 @@ c910_1: cpu@1 {
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
 					       "ziccrse", "zicntr", "zicsr",
-					       "zifencei", "zihpm",
+					       "zifencei", "zihpm", "zfh",
 					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <1>;
@@ -80,7 +80,7 @@ c910_2: cpu@2 {
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
 					       "ziccrse", "zicntr", "zicsr",
-					       "zifencei", "zihpm",
+					       "zifencei", "zihpm", "zfh",
 					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <2>;
@@ -107,7 +107,7 @@ c910_3: cpu@3 {
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
 					       "ziccrse", "zicntr", "zicsr",
-					       "zifencei", "zihpm",
+					       "zifencei", "zihpm", "zfh",
 					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <3>;
-- 
2.47.3


