Return-Path: <devicetree+bounces-247586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5953DCC8F91
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 18:09:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 797A73140406
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79BE93502BC;
	Wed, 17 Dec 2025 16:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aOIKUrhk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D0E34D4F1
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988733; cv=none; b=iXD8jMh/QDkL8KZJ/CVNv4tqKfRfgHbRPnuzYZZQD4S8v/ZlceDOhms0Vjjerfe99QBEFMu+6Gd7vU3iVdve7/UCqfLfFIxzA1SgNa0glOg5y4yKyjIcTZbgXQnCIYHPEPdInFl3QC/scPau9ebfugi5JK924JwCvYdhv1W9IKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988733; c=relaxed/simple;
	bh=3omd0YVrSktNDZ3RXrP0xc/+wVtkaIIz0927w9SxlCU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f7x36c6s0NmGEiUYSiSRlqGaH8PQ1GKQhWIj5YsjSYJr3g9P2M+K6co4HsB0itGKefA0dc7z8u3BWEDePM6zv9iH0DUuvM6jxagAsgR6fnO6jxSbQCvG3PpIzCvtEAQL8LKdO8dVveIiKTjlNI1EX/xIzceqMg5A3tZlsB+VMCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aOIKUrhk; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-29f102b013fso73166785ad.2
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765988730; x=1766593530; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VOOkO0Y8d9P2yswmxe69xUL0YHF0SsjJE29vdXLnWdM=;
        b=aOIKUrhkH8Mo/Av4EWeqNHk0OWt/o4sIoT7DXJAzRGMItFEpPdauKM+4VVlbLNte9E
         bdu9LoQ4fzmJ1CDzsNB3NWf1mKBIwacex9YttKh19IVLxnT5XUJlVKIsIYRYAqzTg+6W
         3iszp6TzNMMcvt0RvWAVQNyQfZ/WI0t2JwXAdU37LuW2s26FvusyOgwiqUtlFuvmNqJt
         7VXiFHweHYM8BUUa3SdJcQp/hFKEOjbJgl8tHQpgzc6H98UneXEg9mzL6H/9Gei40/2p
         +fHAGsojsPRsirFou4akBB2r9SRhj5qDk5vcjCxdZbsUPDSlYXK9XU8qFjYCtdJewD4p
         t4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988730; x=1766593530;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VOOkO0Y8d9P2yswmxe69xUL0YHF0SsjJE29vdXLnWdM=;
        b=IF8k9Zwf2z8OVANtekS/Z3o45kFOsgxUqS7/3Y5MnJ4tc4kHSRQZLj6X8gS2CiNw81
         sxiqryizxBdrTtr6s0eKZwz04Bf347zURPWST18SpbEkklNMTlBBqyfQqO5wD4Z6p6GZ
         Oq6drAJ8re7hi9r391TlarEZxiGseeFCv8s/DtOGNjSM3ZsNYkO6s2OSpG30ZqizquXq
         EXp9mnwtxcYfsvDZsAgw0HrICNt382wphPChuCWdbmxq4p5ByHj5H6FR1H6ttQKO6gGg
         BGLnn7eN0ohVbtsdndTc7F0w/DnfYun+k8PduYf01qgthJ9RGYvX0rAJZQDrUKZpWzh3
         0bKA==
X-Forwarded-Encrypted: i=1; AJvYcCXPzVHeROtuyXhV0E3znQT7tcsWsNHUseCvGfS+pbt0eOInUceubYikhzRlSeBneHdtL8Gq4owfqvBY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx9jhBMJsB2zSw6hF1zLaO4cIyqkAMaVyEgK02YcGWzhyAZ/FX
	ISw4M81Ppu/BbV6viMV/o2G+eS7zp5CeP9oz/rdzUXn80XVYEEmMkefq
X-Gm-Gg: AY/fxX7i6nTXtn4ncyGJXtnd6/JeFo8nc38MGMknrLc8985Me/IUf9SWuNsl/9iri2c
	KPdNrgVIdCAro5Au3nguiw31UPVDJUZxk8mOHTzWughwrmGUkMve/tQsl9FRM2NlYP5I9cBeq61
	seMPBxORE8mLyQ7AIk8Gt3pXvvRvbXqzl9RMaW62RUuTOtuomLioDlDPFRPJYmzYTb0fNzFzZt3
	T4RIFjUksaosdFIt5MV6Ab2McteKv/WUHH9FESOxwwq25UAZWVE8xrF0ivQUeUz7KRomHxkHci5
	qtmNZ3URCVI6D/tbfmeRGFGCoYlOMLtL5z1TishbhdKkrXXP13JiBVAV5otR34rVkvwaiPTtHWv
	CU4A1boC7kuIakYCXAzJPk2RLCYyMpDbRHC69ieZm/FsjsqNqLMdZAniE9Pmcb6qaLqx1ZbDfyU
	jdqzTALvHWrfaW6sZzFWgvhnQ=
X-Google-Smtp-Source: AGHT+IF6ow4wM+ihwNVaBoZq+Y9IX9FSX51mWNjkFJ+2+D3BETqFbQhQb2Jfop/GosxjpA/TwOzvUw==
X-Received: by 2002:a17:903:1aa8:b0:29e:9387:f2b7 with SMTP id d9443c01a7336-29f23de5f93mr181949755ad.11.1765988730144;
        Wed, 17 Dec 2025 08:25:30 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a0b0687c62sm122980415ad.88.2025.12.17.08.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:25:29 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 18 Dec 2025 00:23:29 +0800
Subject: [PATCH v9 16/21] arm64: dts: apple: s800-0-3: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-apple-cpmu-v9-16-4deadbe65d03@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=912; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=3omd0YVrSktNDZ3RXrP0xc/+wVtkaIIz0927w9SxlCU=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpQtlCB346IsdcVZWXTm/5JORDgBo7bwjFJDgeM
 zWBIZvfxx+JAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaULZQgAKCRABygi3psUI
 JJLMEACQhaV1MhO1B/LjaWCuuOUK8Z9B/Tp8bKAXeKgalnLI5wj6oMui4wEpfArfgB8lTIRQrO9
 UV5FEEAn2agoE2wiyqvQRKHtr36OpQ6Ar6qtePa5JXqtxs60+sEiVPztGxzkqnzdNJyH2fkuE0a
 MLOubat3v7BqjhL7W0/JzQvYuS1vnJUGf4SK0Kisv1mLU1u+GX6sGbICXBgJFGxVHKSdprVotko
 CU09T5grM/pEXc9Ev+zrinCWwSmkhrnZu1G/xGhabIYSKeh6BJZGBM7ygk8LrYyHeb/ovpMYpYd
 d2w8rS4jyc54qCaEkCcYl/CQfD6pJ6aP5rP634SV7WRy5dNYUCZ8YO8o/Ow0OfdmcRm7BWeQsas
 i4H00nfNyTUQUl+yVCHELn5SGm/gF2o04juTPH/W0ms7xjsoLhsuoh5SaX4aS719xiJMp/+Pssu
 m3e46KArILkJFwgqZXfEt1Y+bOV0YmnbnjopMfMkr1HcFma4Gh1p5fD6WHfMFbfU6+XKqi6D3y6
 ofBub9RizWdbcMsvA/wQ35r0y4dxdhof8NQXtyNeZFwloExmFjZyXGuvt/KasWFFu6Q+NSVAfup
 j82TnsuUAk1rzK9d1Sw8uXf8KTt9JcNmWTLE/z8YgZRC0s+JX1FfXn9SVlz/rGucHvLnWBcEKM6
 Tb5yLn/WFD/Xq+w==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A9 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s800-0-3.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/s800-0-3.dtsi b/arch/arm64/boot/dts/apple/s800-0-3.dtsi
index bb38662b7d2e0b70e18b6870b706789b1cb242af..aa372aefc995334b1489953c16251c8ff9b94d98 100644
--- a/arch/arm64/boot/dts/apple/s800-0-3.dtsi
+++ b/arch/arm64/boot/dts/apple/s800-0-3.dtsi
@@ -237,6 +237,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,twister-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 76 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 79 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "s800-0-3-pmgr.dtsi"

-- 
2.52.0


