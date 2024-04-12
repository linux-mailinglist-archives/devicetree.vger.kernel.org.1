Return-Path: <devicetree+bounces-58503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D10A98A24E2
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 06:14:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D161282F64
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 04:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D77464D9F0;
	Fri, 12 Apr 2024 04:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="z7nIr33n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96716487A9
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 04:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712895115; cv=none; b=mrt/xYI7edoRm4E/V4yWVM4Fh3aRDhoLdHFYBnD4vUt03rwyS6LQPi/jBtOWYfnox9YBMjYU5h17iNp49DKZfC/L8eF1H8HxzOv8pCkLMNhWjBKP/nTab6mjO8bj59oqjt1NX0T8vmK4xQTp1ToeOefz4Gyg/T0hzOOsylC1iQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712895115; c=relaxed/simple;
	bh=GIHSCNvBGq9/NXbY8oLLRsk2prCOn2ba2+sGa13S19M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j6Rjg/X0GkMjSQQ/d1yuGFnF0pXQ0GZam/u2vjFD5FX1mJGl8Y8zDQLf1e++bU8BqXe93scSX3998M1fBwjhiybW8Zbl4o7qNXQ62w741ohyLycyuzWUjf5xkpzKF14hqQeyvuKt9NWuW1aFMhTOsr7hI2AMcwuXwvTw9l85xGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=z7nIr33n; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6ece8991654so529878b3a.3
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 21:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712895113; x=1713499913; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GOUeprLdHOU8cEpU799KylD0peVHBTaWNcK25xy1sNk=;
        b=z7nIr33nwO/QCOdDq/TceZOyaMeegxR1Mm6ufsmlNFrOvRe5G56sg731uE/wQvrdor
         rpuMpJZZ6zxZiWoj+tvCEcm85p5X+sp88QTGnSqzlhoTgxPAcwJNhft7Luv+MRNptKpT
         5zFLKD1nsAHTvn9lIVpqF+3QjoTJkkSZ3QtWXDgnxmeo1LdIRARxVpkEj6Vp9JnUycuX
         CrkBjiNGCQmLGHBLr/D7eiYPLvNZaXhEDjVjPVRTlyGv5ysgo91Gv894lwK1E4yoOaiZ
         YSBrpFRaGTbtHZfw+6KwlMPH1O/SLabMlhv14gsUs0JnbrqCJgV9RrRwsEcG6YzWAF5+
         mo1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712895113; x=1713499913;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GOUeprLdHOU8cEpU799KylD0peVHBTaWNcK25xy1sNk=;
        b=qUQguOmuPF7CqHkAIKFFRGdP/iwKtZdAujToQlAbVkWAJHNDw278NGzKkphd+CYPNA
         tbxGBUv/x18ln6eL56b2VCxoY7aHI/hKNMh9/E+sjVDmr5wFtcNtz6uSksQy8dmMYXy8
         tD4BRnUoySTWAVRwlNQHH3l7SRnCP89kGVwzNJcdQwSQSy22x0fBgp+gSO9OT9OjLD7U
         llBiLgAcd7CgxAjzaKLKELnZ8kjVv7rFocK0vySgMA94z93ucRLZNPQ69KX9KEBZ//wQ
         BDEhFU/zq+0Z45XnLPJJebkCMS1outNByjT1OOkQjOwGDoMdxexabimbAYXtTKO6GhG2
         Lvng==
X-Forwarded-Encrypted: i=1; AJvYcCX5haOrGgWqW0aUH4BFToqsv39yaOhFQNlvupTf67E4PzHkmb97jFAJ+Ri9vCOHUfwqygz3hNiJjlxYv4BIUXoVovSIOmSZFke07Q==
X-Gm-Message-State: AOJu0YxAO9MT/zTGBLIXKde2fWo6IivBpmuZYj2J8eMPZYFB61YkTgJb
	IL0XVZFXQEqeLIC9LxUu5s5y01C/7rTnL9vtMKuPv6XbGS68PugUvsun5UXwSuo=
X-Google-Smtp-Source: AGHT+IED3p/jhyvepbWDfXS+NkSfJRWurygM2oLU3V1hXND944PsU0f6q05HekJLfNfek/WJfI9eig==
X-Received: by 2002:a05:6a00:2da1:b0:6ed:de30:9e43 with SMTP id fb33-20020a056a002da100b006edde309e43mr1816601pfb.32.1712895112997;
        Thu, 11 Apr 2024 21:11:52 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id ka13-20020a056a00938d00b006e57247f4e5sm1949712pfb.8.2024.04.11.21.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Apr 2024 21:11:52 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Thu, 11 Apr 2024 21:11:17 -0700
Subject: [PATCH 11/19] riscv: csr: Add CSR encodings for
 VCSR_VXRM/VCSR_VXSAT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240411-dev-charlie-support_thead_vector_6_9-v1-11-4af9815ec746@rivosinc.com>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
In-Reply-To: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712895091; l=655;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=GIHSCNvBGq9/NXbY8oLLRsk2prCOn2ba2+sGa13S19M=;
 b=mAvaWamAnbq08BHcEl80jizwRpsYisWXatxTk+5hgXDH4/1Sk+ipO6fgeViKIstip0OZAfrpK
 PyaZbv+RsurBGMnGF6brQSfUNL2lUdCG9CjDA0Su9bm8BYxy6igksdv
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The VXRM vector csr for xtheadvector has an encoding of 0xa and VXSAT
has an encoding of 0x9.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 13bc99c995d1..e5a35efd56e0 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -219,6 +219,8 @@
 #define VCSR_VXRM_MASK			3
 #define VCSR_VXRM_SHIFT			1
 #define VCSR_VXSAT_MASK			1
+#define VCSR_VXSAT			0x9
+#define VCSR_VXRM			0xa
 
 /* symbolic CSR names: */
 #define CSR_CYCLE		0xc00

-- 
2.44.0


