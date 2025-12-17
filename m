Return-Path: <devicetree+bounces-247575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0325ECC8C81
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:31:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8BCD231373C2
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9C6634D90F;
	Wed, 17 Dec 2025 16:24:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SN/pw95p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F242634B197
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988697; cv=none; b=A2tZ7MnozO0GLUXs71jEm98aNUaR9u3fGLxExg+8M+S9IjSRlivZaSxSAEcnwogASaAEZXMl8rcVx8u40zc+wPgfPdoeFLXsEpEdfvGf8IqNyt3WiUkyxfCbX6/ALFgDUi71TPKr2ZYj9UzKuUpRZTzPAJYqHNClUizeLJ0Ko98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988697; c=relaxed/simple;
	bh=7bXhbqBuf3L7P8BkQE01YWRVlFsdM2eh/RfdYjmLgaA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gVYwTOqCTAALsxy8/tJ+GO5HoT/qeZEm0EBYc33yx8rYEimKJH2GOOYA174m65e0MhUp2m4hDlCKrKoDRuHH+FOOK0Gygnpe36hSmxSX8poQOVeZXdjwjKYNciDPpoybAFI/vhkNeSggIMFp7IcX8BkwuS/pgls+6AICwZiCHXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SN/pw95p; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a081c163b0so46250465ad.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765988695; x=1766593495; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZEO9StCrTxXvNpc0CG6gz+jT3FNQyYyGTLdJvKY2VFA=;
        b=SN/pw95pMnbQuEQxXzQA0/wkVqNbsOpgX+q6fzY7rvuvh5AkFucz6EYeUujsL11zDV
         8kW0+ILPCSLQp7hWWoB5cSqX5dFRoN162SMe5MLmPD3zMyetqCdpkZNmyGIGYbWB7xwK
         ufYItGPOaC2uCL17WF12n0ghPcC9neT8ys4m7fVJ9G+mds2So+RhHpkq+VDewEV2XMiC
         NqNtDfUCcHI97Jou4eeVOuKWD7wBHJxZhtuCYXaFKbBjcHYxUVS+8KbuenW6V8Cn06wt
         EGutURvlPF6GhslI448zbURAkGNp3/d6lCy2+Uza5eckBGy2TqpcPstg6kh0xctCYtx9
         a+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988695; x=1766593495;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZEO9StCrTxXvNpc0CG6gz+jT3FNQyYyGTLdJvKY2VFA=;
        b=sdPd32Dlsl6ALL5WjO4R21VjW6gs4H7fdPmuQ7GTL3FHuKi0FCSKsbD3FLAJ0buDV5
         EuQpMoKz5hE8ZAL46/GFvZaY04kn+X5nzkHVJ4QECY6NnKM3o2C6R9XU/zlKr4VV12Ax
         4dlfQzsxFTNl5JkzzLCPsVNdbOTzkSaZ54Y2+z3ra9s1OuOukusHxO9MG9fE+nfyxJVh
         N9fvoDgAN6hss7g62ezd+T1f7H8T/5aUzBlc5BVr0OcYoULrcMUjh8h87c8GkXqyY5be
         gtIfNMX393Ne4yO90uAeCFda2PIzut4sqvSVn/3XB9D5X3640AmJ7urJdFDyKN6O/aD9
         pVbg==
X-Forwarded-Encrypted: i=1; AJvYcCUjHT093QtTibrFr0R5Ax5W90LRKtqh58UfozVb0ZQlZTkT5vNZrBKAXE4ptxHoGHvm2fxDsH0LneR9@vger.kernel.org
X-Gm-Message-State: AOJu0YwuzSUMurM6r4LZ14f+glkhh9FU1QEOVMa2eHk2raZMPz+CbhaD
	0VuldPF3lJruc7hOnOjzjMRz+HWrIm7/6opMAUgFgEOlEPOhvZZ2v3uv
X-Gm-Gg: AY/fxX66S7fI6DV6rIZtAzeuYz63hcntqnjwsQgzel5rmFxjAvYD5MdIgyPMhaR9ksW
	5x4w3NfLtWk8yHJdwSQm7fauWDzrZTN85AZNIqvvzRq7QJAV2kiN8IrFsyYpJSbF1IfAa+0TcGP
	0LWMjf81qA0253VSGd4yB3teFUO8yuhFpZAr+eSjDkzAJ6VuHUkMxW+rs9LHQTjbGbjo+fJOGt9
	P+VgVatyyB6HteKqQtHjfve5NnxZkMza6pFaWswtgomUw33w6m8x+o8Yeg9cUVsM7Ogq9IDdpLQ
	xj9ZQ1fF52GF0wVldjNLTvO6D71rxKTQg9i+UosXem2Z54jC7yRicfcjvHP1Cag8Ds4IFjBylYE
	4r6LSglWMoEOSAy9h7zO8O4uGA8jwx/3w4mmXhmPSZCRyqpqJCYj8fZXyxIc3BXryoXsxlgL0D1
	NH25Nfy1zX7rLg
X-Google-Smtp-Source: AGHT+IFmpldl2EnfdJLLNFecnxN4BEn3qLT3U4ZtBOkfTCMmNYM64weQR42jpdgzZIVEBX+DVu2log==
X-Received: by 2002:a17:902:ce87:b0:2a1:c72:a41d with SMTP id d9443c01a7336-2a10c72a703mr119320995ad.40.1765988695124;
        Wed, 17 Dec 2025 08:24:55 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a0b0687c62sm122980415ad.88.2025.12.17.08.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:24:54 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 18 Dec 2025 00:23:18 +0800
Subject: [PATCH v9 05/21] drivers/perf: apple_m1: Support configuring
 counters for 32-bit EL0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-apple-cpmu-v9-5-4deadbe65d03@gmail.com>
References: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
In-Reply-To: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1977; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=7bXhbqBuf3L7P8BkQE01YWRVlFsdM2eh/RfdYjmLgaA=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpQtlAef+nJhReDRN+pVlLcv8GiPeEbu1GXItBX
 8NUJwhDxyuJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaULZQAAKCRABygi3psUI
 JJnYEACaUligWBNlh+4Cyx5bBd2haSpcf1uv8Iyz9L80+F6mnLCgzV4ucw5xjJPPSAtsm+v9Dc7
 y26/bEmsMHPW+MH6e3CUZCdt6N5juF9tPbRZ5G24neEkbHqq5crgYKZAuv5xmavOxSnzk+fkAiy
 Ud9v5zCtRqxzrnpiFvPLKE1CmccaHrLi4cM/C+yfeFq8YN5Dp3Nw7xFciXBONr8SUMvErVbRTOg
 UGTSOuZSsHUH5ZIVzo01laxXoE1ALejU7nDN56soAPhmfI0YwRFZ+Mblz8ncNx51KeSE2QnQFIN
 vkWiooyVaJFc/NnDqevFvaP7FJ7yyeXs7ZvEVB5J+r5IA4u3YdxnssUbYGiOgPoObRorWtmQVdj
 IHRC+TT+JBOVs8KYGWv3smgwegxMzqCaRgzSJ4FfezmgUDvocsUL3X/4TSkhl+ZMVjPZm/NTrRQ
 yAb7ATWidvyGDNSoU87pS+qjW//P4dizYcH1lukjGyUZbgY9M8bOBCuxMKfhwjdcrU24oisCG1Z
 0yC0mOJFPzVeBc854OPDSicZ3QnUvkQ/5XhNTln/oTScT6A9/q8rIDNothx5ALBCDqDN86G8KWI
 2Q2ZQovR9cQkc1+cxFWZQ4aHYzFuHEdyUv3KVIBR8J9fpuIrmbQESOt/L/oXk/HnE5aQ8CfVTvh
 QVwkpRwPTp3jEQQ==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add support for configuring counters for 32-bit EL0 to allow adding support
for implementations with 32-bit EL0.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/include/asm/apple_m1_pmu.h | 2 ++
 drivers/perf/apple_m1_cpu_pmu.c       | 6 ++++++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm64/include/asm/apple_m1_pmu.h b/arch/arm64/include/asm/apple_m1_pmu.h
index 02e05d05851f739b985bf416f1aa3baeafd691dc..8a667e7f07a517419c22a4f930947347be8546f7 100644
--- a/arch/arm64/include/asm/apple_m1_pmu.h
+++ b/arch/arm64/include/asm/apple_m1_pmu.h
@@ -38,8 +38,10 @@
 
 #define SYS_IMP_APL_PMCR1_EL1	sys_reg(3, 1, 15, 1, 0)
 #define SYS_IMP_APL_PMCR1_EL12	sys_reg(3, 1, 15, 7, 2)
+#define PMCR1_COUNT_A32_EL0_0_7	GENMASK(7, 0)
 #define PMCR1_COUNT_A64_EL0_0_7	GENMASK(15, 8)
 #define PMCR1_COUNT_A64_EL1_0_7	GENMASK(23, 16)
+#define PMCR1_COUNT_A32_EL0_8_9	GENMASK(33, 32)
 #define PMCR1_COUNT_A64_EL0_8_9	GENMASK(41, 40)
 #define PMCR1_COUNT_A64_EL1_8_9	GENMASK(49, 48)
 
diff --git a/drivers/perf/apple_m1_cpu_pmu.c b/drivers/perf/apple_m1_cpu_pmu.c
index b5fe04ef186f04b4af32524fe433afb79979b791..fb2759069fe9e47146f0342fa46e40f3ab836926 100644
--- a/drivers/perf/apple_m1_cpu_pmu.c
+++ b/drivers/perf/apple_m1_cpu_pmu.c
@@ -348,10 +348,16 @@ static void __m1_pmu_configure_event_filter(unsigned int index, bool user,
 	case 0 ... 7:
 		user_bit = BIT(get_bit_offset(index, PMCR1_COUNT_A64_EL0_0_7));
 		kernel_bit = BIT(get_bit_offset(index, PMCR1_COUNT_A64_EL1_0_7));
+
+		if (system_supports_32bit_el0())
+			user_bit |= BIT(get_bit_offset(index, PMCR1_COUNT_A32_EL0_0_7));
 		break;
 	case 8 ... 9:
 		user_bit = BIT(get_bit_offset(index - 8, PMCR1_COUNT_A64_EL0_8_9));
 		kernel_bit = BIT(get_bit_offset(index - 8, PMCR1_COUNT_A64_EL1_8_9));
+
+		if (system_supports_32bit_el0())
+			user_bit |= BIT(get_bit_offset(index - 8, PMCR1_COUNT_A32_EL0_8_9));
 		break;
 	default:
 		BUG();

-- 
2.52.0


