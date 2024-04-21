Return-Path: <devicetree+bounces-61156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0658ABDFB
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 03:05:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DDAC1C20CD9
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 01:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8B9610940;
	Sun, 21 Apr 2024 01:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="S9rhk12Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5B45EAF1
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 01:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713661496; cv=none; b=p/+WBrhUItW0FUL+IPYiVN3J9lgpOnvMBqU5h2bJ6ITrxMhUUNGn/KjOzihga1LnCv/bc2hX1N0ycZfL+T9kilXDgvj9EuyQaFtiShzfU+7qhWJ/Ro7MTGXLb2X37IQg8OJFohUOqqoAQeABGcMFhhUXBBaG/CuEJsCX37i/IGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713661496; c=relaxed/simple;
	bh=eg5f+2eUdPorsjTg1AXnvbZp1Gz8QKwXU/sn4bArQ/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R+24v96KQa1tSUTlJHsvsib8zVRYmpCK49gLfGe2AYNiAKLI58QzkYsSjMALFqpwJ0ZrTfL7svZqX7ijnY19UWr+Yq18EmFRB5DwG3jwq1HNWQWRUjz/fbxLxf9nqlND6S+heojpOgdgBRkDpw0RRalCBrt+byOkIKZUnB4nCD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=S9rhk12Y; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6ecec796323so3365443b3a.3
        for <devicetree@vger.kernel.org>; Sat, 20 Apr 2024 18:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713661495; x=1714266295; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xb9tww82u8GPwb/D9ZGp2c9YRfA1MZ53TtnEydxWwQE=;
        b=S9rhk12YagI1DUk4AD44hLo/yH/Km8qxEnpd8ITuOrcbUjUN2BMPI5R3jLrNW5ebvL
         aKg+kPnU2wsBIf7UrXkHO+GXU3jh1Jw0YFZ1+vH+EGyWfrEMS25O9BAy/V6Rr7E2w9l4
         jO4H0hSYeQwVKLJlnqej9QveIsQZ3UMc2CWSyOg1W5R6glJwqZQCEqAl+ULa6ffkR267
         pZ8SUny7KVgmq7SLsiGzLxKDBqh8gIVjMciiKC4/z10vAHFe26HNWz7F/vPccGrkFMmq
         Gp6APLaCHYtaEFJfT2sAqjv8gfPZlrQHIRQGb2b+WMLFTnVV7DqVC9C5UaxXv/+z26lS
         BZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713661495; x=1714266295;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xb9tww82u8GPwb/D9ZGp2c9YRfA1MZ53TtnEydxWwQE=;
        b=S/TlCsW/Nhh1fK3jhU2H91EGKrcEkAgLp4Hxmm3XGDdVCXcqyeBqE/TMIrQOuM37vu
         oy6LDrd99r7PoA46HncpNfpEHIIoyh9qVHUNOCfdU26Mr12pKRPhBbOoqcxYDSYU1jOD
         DL/dJIWbq1Th22CP+cLfnCLXwM312APm1zJ/N4ZacpDvk89xp21pK5VC9QtahlscGuRq
         KiIOX7ErJTaS9NF0B5O5c/WZBiHWxpPSEMe63CU+acw086pdTVlk9lMbNGQZHkhXtsH0
         1Nryg1ftj6aNCvMvlps01fLgUD2b0CCPg0aaCymBWbmGsLSUELain6d1ywwIwiD2vyt3
         ZKUg==
X-Forwarded-Encrypted: i=1; AJvYcCX8pvwUzCBK9kkc9VUSLtVfRqxM576uVM/hJUdGN4jkmUMzzTwIx0816obPEgwxch2fzMgFwIwIkyLn7mStBuIdCtD+avIMEUorew==
X-Gm-Message-State: AOJu0YwL7IwEOObDAxJnvcgVcZhkWxb7MKOov2SWwGm0bxTlnR37vm02
	asr3J2NqRQ90OrwMP2G8g46FZ79UKZJktVrk4qZ2GvoBGiHw84YZYKUnMqilh1Y=
X-Google-Smtp-Source: AGHT+IEFz0EIsCfMN1kGF/wQXfftvTTUxdm975Lo9/cXHpjBlb+AqzCdg7gjhE8/LDpE+0gp44E+1A==
X-Received: by 2002:a05:6a00:10d4:b0:6ea:d114:5ea1 with SMTP id d20-20020a056a0010d400b006ead1145ea1mr8547967pfu.17.1713661495007;
        Sat, 20 Apr 2024 18:04:55 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d6-20020a63d646000000b005dc8702f0a9sm5249627pgj.1.2024.04.20.18.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 18:04:54 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Sat, 20 Apr 2024 18:04:37 -0700
Subject: [PATCH v3 05/17] riscv: dts: allwinner: Add xtheadvector to the
 D1/D1s devicetree
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240420-dev-charlie-support_thead_vector_6_9-v3-5-67cff4271d1d@rivosinc.com>
References: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
In-Reply-To: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713661481; l=904;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=eg5f+2eUdPorsjTg1AXnvbZp1Gz8QKwXU/sn4bArQ/o=;
 b=kZB/gcvpdY88mM3BCpDWs4dP4AKzfkcUQrEei7evf3AAbBAZdLZh9RDC+cGSOoMpXUpY+epQ/
 BrXAER33w+vB259xFs7+rySg+Y/OSVCHSvRLoNArK0nYqNYuINYlX8t
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


