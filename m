Return-Path: <devicetree+bounces-250917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A29BCECECA
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E98C33031993
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E6EF29BD9A;
	Thu,  1 Jan 2026 09:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BMYn0Mb6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F5DE29ACDB
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258222; cv=none; b=OjM8V+lLSq1bvuAFAY3IqKgpm8rAZIl3MCMHjGCvicq7dtvDsz6O6PEcVf59UTeFLHsbGhqPvlxdbVrVKRVyU3FUUjVOiAC2DeQ3GzOOQcBnwssCjy41r7Hx4YrHL8Xu1IwlCItU6gazsOnHs9MUznbg0F8WAWDYExfL5Usaswo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258222; c=relaxed/simple;
	bh=OX5KL+MG6sfpo1KjHjEhXoAalFtdpPr6gBFVJvOaFLI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=vAg/UOO934bvUrFPDR8aGzRwCoS7H5aM1J+9MMctpnuCgrnPFxalXdVjTLm4L5xzoVU1daO0dJaPoneT6AUNg8wsyCdyK1F9cFhk9AhhaItfqyc0yeAYJIhIA+DeXH3IIgWUADO+WFsc0Zof80ZbQrPTiaKQkk7MfzNTlAfasrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BMYn0Mb6; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7b80fed1505so11341588b3a.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258220; x=1767863020; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NS7rXNvu/k+fb0x7YdnIE3Agpb80vBTRZvlvmIIsndw=;
        b=BMYn0Mb6/aiVIizePYkr79HnfnU2CdfFV7HsZdq85jjKvL+xIB8F5uJnUIfZYqiGmr
         mv1RyP9PpcdevEYZpKi8zMB0wgrDLSUJEW64BhNImLDd8LjE1uqP9yEisH5HrktF4ppC
         SKGYiIVev79YEEzA4GbmmCYCewb1EfJapXphBlh1piKfiYyfuwYwEWgqNA2sfeAmwTKK
         /6ag8onk2uzVPNjj3vHhCHKgkQzLrjfA0IWlam/MzWlgBcSN+SRq/uLKQqcPBRAFaQQK
         hkLPdciEFbzbgTcvEZmSZ/13Si5Oj9ZTW2yCEFRatVOdSu4Z3jE2g5Eub7J9HUEdnp85
         tXFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258220; x=1767863020;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NS7rXNvu/k+fb0x7YdnIE3Agpb80vBTRZvlvmIIsndw=;
        b=RyGEaTQ1XrDMEKRP0fdUd6+Z7jr2B75Fkj5X5tpJf+MH+qC0mIM5/qaB1ErufPIEqh
         O7F4XGGPUB5hiecwcZ2gHgZMNhzkfqk6wk+WKd62cDWFMqZLTLy1vhbhx+ImuemqASKK
         3pjE2zWjeZrAEH7uBpSv5fYYVo90fA8RZOWsdZ+Xr83DmhpFA2rrnlHDgrY6ydORh6It
         SsVCYhgDzL68j4upgf5aWB4UjZ8ghpccGtFwQJ4zaIt80RC4VjyBrArFR7MB8glb1C4X
         Suep+nDhthl7+NRecL8gjJd+RqMv89K/gL36N69ED/c1Iy+3czLcw3UnRgL9jr1Ex66V
         jTVg==
X-Forwarded-Encrypted: i=1; AJvYcCWcQm30A68Plc0GXAYKJ85yjsCMSuQA6PioeFHmu7n4fuvfeg5N/L95EJPjzzBKIJekdM1aIuMFRmty@vger.kernel.org
X-Gm-Message-State: AOJu0YxdK+uMpt82IhboiOshEWkLIYLC6XfBFn6LfwvR1/0QVQFc73+l
	h/mwPIvWlCxA3zzA99il5HTJ3EduEAmQkZ4fZ26FdulxEGOFXSN3eduo
X-Gm-Gg: AY/fxX4nB1NXRg8+Arg4MZqNwASDV08RXrqLKQlyOx4y37fWke4XOif1aJiTsud4dHN
	JNecQVmD/z+YKyaDFQzvPb0lNuF17ZPate6eoNVEYYVK7yslmjq5CNCNMuACFPnwfRqHY+NQJMx
	/7sOenL5yndNIGDj40S2c5lJYqPQAzFvyhPmQwzRu7f2qsVwgA/JTMnHUBHn79Qo6ZOOMee7KOa
	+BRnDCVyRcbRM83u9Gd/+tFPBYKIELI6I0tEVqPhhjSuIwlQJuTrNwaFYmm28lsDYESQvyAQ5N7
	HMCBPoGXnFYc3vRdulefR7xLXThiNpswIeoEGjuWU4SnIkGfXu0zdZosl5LOvR4JgZzei4bQnMr
	JL2VDXyQ6Cx2pZN7Y+yNwoQEIHO59SdlZwqx6U740byHCRlJ5UOiLGAinylV+6tQmXj4BLH7mj6
	nHeDE//YmtRufJ
X-Google-Smtp-Source: AGHT+IFe2eYmVWLE8qLLK6tWjkKXLBApqyzquQyvEELPpD7zudq+rhR0KNlRnMSRuoUBRZkLLMtt0Q==
X-Received: by 2002:a05:6a00:6009:b0:7e8:4398:b367 with SMTP id d2e1a72fcca58-7ff66672842mr21088807b3a.58.1767258219859;
        Thu, 01 Jan 2026 01:03:39 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:03:38 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:55 +0800
Subject: [PATCH v10 19/21] arm64: dts: apple: t8011: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-19-48812c529ffc@gmail.com>
References: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
In-Reply-To: <20260101-apple-cpmu-v10-0-48812c529ffc@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=946; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=OX5KL+MG6sfpo1KjHjEhXoAalFtdpPr6gBFVJvOaFLI=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgpeeS+UEfUxUfudtiuD+PcujvuHezCHD5z8
 x9ladDrvDeJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4KQAKCRABygi3psUI
 JC+uD/9SAW9UXMI8I0m8V/UHzOCtWUTPWfbNC2fPY4pLYEu1gNB937JUCCFEL5QoFfVRTabvK15
 RaBDG/EzwT4YHXcHyPN5ehspY9NIIh6kUqh1+oN689J17ZkRtisRM+N391Qfgacwj5XTjypx73O
 y4uihlGk+Ha1D9WAzs7L8OWyVGvRuxZIoTqUjdPWhKgHPxO2KweN5v2giZOpmJ0T1w2uIjjGaPa
 F4yli6Q9Ck8Mx/wQ3ls1nuA7TU/21leS+84f3t0KDBQTByLZTIv4/FtfKcZdncLjlY87evXI1m9
 2l+fLDspjdaFUMWpgmDsLCoir39s98aqLwa8y7M67+jre9zBXMPpHCwK8IDSant3skHQU2mioRF
 QAEsruAQuPI4u94MAtgtfEm3jmL6EZoz1TFRWdo5alsh09Z8/bFFIrurHAAwOrM6ayecJyIlxbt
 YDKh4UZTSvzHeFqIiWudQNuXu0bAZKN0S8VGQZGONe6hPUl8PDbf8HMWLTFIsLakMUSkhvime0a
 Eo3/STxQKgq2S/3rnHxyKSATl7/IdJeZ4QLz+UzJn8VLN9r0We88iZHVfrw1TCZIdN6DIzM5tUI
 lgF3Vzr1oA8AAdrUCjMWLcd0HruyQujEoxW2QLgzBSSUlxTEP4NvsVM/3TwdkIAWalc9qjlWW/r
 tbo3bM8BJ14ggAA==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodse for Apple A10X SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t8011.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8011.dtsi b/arch/arm64/boot/dts/apple/t8011.dtsi
index 039aa4d1e887625e7b6ad789bfd9aa032dc58d01..7f7b0230cd648eba2533f860622f683771197bff 100644
--- a/arch/arm64/boot/dts/apple/t8011.dtsi
+++ b/arch/arm64/boot/dts/apple/t8011.dtsi
@@ -329,6 +329,15 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,fusion-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 83 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 86 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 89 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1 &cpu2>;
+	};
 };
 
 #include "t8011-pmgr.dtsi"

-- 
2.52.0


