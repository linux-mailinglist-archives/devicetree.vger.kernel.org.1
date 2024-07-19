Return-Path: <devicetree+bounces-86836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC287937AB1
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 18:19:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 791421F22613
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 16:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D26145B32;
	Fri, 19 Jul 2024 16:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="TeOCD2Dr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5966E146A85
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 16:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721405950; cv=none; b=uCGQmQ44JjPCKF1QHKhs3xh+OoVqrqDl6oDuLjWE0TWQQNlPZM5eSjlowIvTO4wqfepXgHiufId/9HzT4+8fQgKc35Xel0/UVOX6mnHEy13Tcsdg9xrAzmXcBDcmBy91oKX/Ion86YKzDCAP2T2Lwga9Zl/WcwXqjgP6fpCCHRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721405950; c=relaxed/simple;
	bh=I9BB6+DSsEot7edtm0hreUvYP0RvytEdbSv790C0uE4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fc2pZDT7coSxO4X31ZuFvkMcc1j2+patIwZNTGdE8I3nQPlBJvzwfDeylHJMkzn2gONRVZBW2WnB38bzHMWtlgHMdF8QFqzm0pP2ArN/f2Q0hVe71VAueRNHxA60wRLD0yU2Q25yoFXsJO5ogOONBViXqtSsyHSDpahiqj0I5ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=TeOCD2Dr; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1fc658b6b2eso14891385ad.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 09:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721405948; x=1722010748; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0g1DxVy9Ij2OMsYu7oTE9l+cI+PV2f969LKgw+PL+a8=;
        b=TeOCD2DrxZctb7ndXdraG2RGO3q1al46nPkAx8A8WaZu4Ew+IDqBty7SjXTHnYxBXc
         t+Q6iN0Yrh3k7iniub5Om1Gl+f7zaAdR8aqgx9hqT53IVomQIToI5iOBFUIll8F9dLhf
         AMOsuB9bHRS+lUUO/YqyPmLBExUl9kh6/7CSKfRMh9dzwZHdRCTmN1F4JzN3e5tjDkj8
         vD8X7IrZCAZGBMEi0cHJDzlErpjfZZCYx+DGCilpWqa9lB2S8mw1TvjyIMySHL7rUDVi
         7I1EFhfUf6q1itRMCOPw/fz7mCjD3u+Nt1Zv1UnxLxpLmIPPOrVtwgxLkuItBiazTX4m
         5xlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721405948; x=1722010748;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0g1DxVy9Ij2OMsYu7oTE9l+cI+PV2f969LKgw+PL+a8=;
        b=gp6u6S7e803oTP2v1OoPg3QO+Px1wOca4EIjk3sVODJjJGYfuQthEUK2X2WWMITp5k
         SuaQNUEQIDEt4d/p1fdWLaSW+ZcOaAuW+vDLTtXIxIW6ZefvANedNtfUxUWScrN8xC4x
         L/e0tvILrAYl5zI+aJtXssV4yOzpfONrS7zdawqFJliBa9c1OcX9FnRIcGXSsD+Ksbkb
         H89mVZAsxmdMazobhuOf0ao78idLURPIvNt5nsyBJFPQjzGlZiQe+RLlBgBML5VBLu4d
         72PJa0AnNiu22bh4UCHnX7iknAaU+uUvQfYrbzJ8nhl+PVn4S1lMmX3DgQBdiD8xiutr
         U5PQ==
X-Forwarded-Encrypted: i=1; AJvYcCULmb9G4q1K7gAzvU3CwkIkX85cltp71QHnGz+MFCkM1v3Co4of24k/jZIZeGi79wUslVWDfDSe+t+LS41kipMPJbVfu5noppKKig==
X-Gm-Message-State: AOJu0Ywc6vDoE9pl/kZwmnFKMvG9aBDpVPyd9qMT5A86vmbYdfUDtZqA
	kIfqZSH5HdRBpED6J5yL8KMygCeDkEniEh3nIbCpOSy7xzpNpMWRO04+vv9fd1E=
X-Google-Smtp-Source: AGHT+IHcbYLzjsQXxyR12VWI6a/X+tuZJKGv0nHCdOgw0JTLJN74hjSslq1loINAIy5i8TPsdxBDMA==
X-Received: by 2002:a17:902:e741:b0:1fb:a1cb:cb25 with SMTP id d9443c01a7336-1fd74620ea1mr2584715ad.40.1721405948581;
        Fri, 19 Jul 2024 09:19:08 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f490dcbsm6461435ad.297.2024.07.19.09.19.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jul 2024 09:19:07 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Fri, 19 Jul 2024 09:18:58 -0700
Subject: [PATCH v5 03/13] riscv: dts: allwinner: Add xtheadvector to the
 D1/D1s devicetree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240719-xtheadvector-v5-3-4b485fc7d55f@rivosinc.com>
References: <20240719-xtheadvector-v5-0-4b485fc7d55f@rivosinc.com>
In-Reply-To: <20240719-xtheadvector-v5-0-4b485fc7d55f@rivosinc.com>
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
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721405940; l=960;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=I9BB6+DSsEot7edtm0hreUvYP0RvytEdbSv790C0uE4=;
 b=sngfflM5nSLL/9h3hkVIPkIG+9hFUZXHyVmtvYEqQE6t7Z9mbcoiiQMzdG9oZa1acy9OwwhRE
 fH5wzGZXreIDIJjAuA2dBNMbHed2lJBKOXFbMRmO5XQL9nGC0jjFrsq
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


