Return-Path: <devicetree+bounces-250911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC16CECE58
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:05:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3DFA93049701
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5815F287254;
	Thu,  1 Jan 2026 09:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y5aeAeWN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DB42868AD
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258202; cv=none; b=BNmtpxCAfudgKVY99IMfTxT2bhM2z53iZ8MOHkqptlYE2iWUHIt5pLDq/lpOlBaJcRburtoihPybr6vtFNF0TMLaL/kMGBxtfJiw20GCag7NUMW46YkKQwBJ49sIuufkJiQ5enzPppePvpQH9+eSk8p/Cff8YcGhmrHHH584kFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258202; c=relaxed/simple;
	bh=6LjbldlF3OoWMCnhY7fHqRvAfCOGSBQ1ExvFhoCzNxY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MrBdyfVHs1zbzZBBA5ken6wxrIEPIx54I+C8oJTvTBSan3B3dpfzhkEhuxTVvTBuvDY5IvZ3j7hxaZA4l1GiL3HULUh4jlvkM6BXI2sdtZPvVWfmwHVOPlK4U+ODkbQ7/SCuBw7VHQYmgtOwVSSHERAoT+Qgb6Tox+wucSdr3U8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y5aeAeWN; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7b9387df58cso18289637b3a.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:03:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258199; x=1767862999; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yx92mpsjRydjbKNezVplOe9ZgSTsezLCchII9GIIrGo=;
        b=Y5aeAeWNtpsR43312Q30o+xdpEJYFjFQWSg7ThyrJxe5v5JidS+01ojwrro61l03yR
         rO9jOWHL57hGz8hC/9vRXZSThgYtmhvspLvGfa4X8AiE2OcN2lU6AorC2woOcsZJx1H4
         zUs/B4hsV5WNfdMfcdEuSq8CQ+L1dREVEJQ9AUTxo1hfZ72j1MSudcm9SC4LMkvJXPYe
         O5QSuG93teuuoaPUF9SBczUN9099hWSQnolIQ4I1qSHAzy385kBBQSUENAfJtymavPWQ
         YTReBHEXcr5L8T60iXYKyyPJEe7SGEwzD24M4CkgO5A3/beycWSu/6i0XQticgI+EaiH
         WxsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258199; x=1767862999;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yx92mpsjRydjbKNezVplOe9ZgSTsezLCchII9GIIrGo=;
        b=UMNONIpKU4EQWhbUvFe91ADyhFysQ8V38JpN2lG973cUf3ZaXucxOBA3/Nh8eOJF7d
         tm6ZEa3aSP/6bC7jYXr8nPdwWNz7ykHnfcby4X86EWbLcR7tlRQ7BZ+bsASeu+lI0sIN
         GgLUl0zoOXv1HmfIE/GBVkCGOwQYPgW/IDomgVBkgrr/b/mlaUgbdS8tVfT4UrtoU5jv
         +2MxHTvMlY9eMlRuyarJrMBAfDUPGw7tFYbV0DIMgLQumZ+QmM2ZWB/h+GH9GQipuyk6
         1KUeZXmD1m8FESrBSRNgGwra2+ZSBBu/Qbaj5wl6d80k4X7CA4wtZBsPUX5lm2po7nms
         OMug==
X-Forwarded-Encrypted: i=1; AJvYcCXtZ6W34WtxCcfI+j+oONeTw51tvMYa8+h9co4hKj051RC804ELIO5ZYjJgcISd8jA2GWzhJjILX8dK@vger.kernel.org
X-Gm-Message-State: AOJu0YwQJb8z9mEbh4NDLgKdH2EZnLwfV4KrCj7mnMJM8IUf9egPtmSd
	b0xYoZIIGUOgi8Sgt1GzgPq/bfjJLP4KllREKWVTZNqrDuG4nNYA8Wop
X-Gm-Gg: AY/fxX5+Mc1QWZQU/ajO7W3Ad4zTYVjFEKF0ATcbJ/R5g081shGWvaEr6Ftgdqxg+Nf
	q4RLfNdrq8IdZgomdbiMkmZRoGsQ/eHBhucgMFP4/TPA7LOOG43aW+qOjYSc4/hOUfSM5CyB9gf
	HghDiP0ic0yd8tghOL1ndCqgiO7O+CpwTBHlSZMFUHkoNLAt9TzhTBf6fvsHlDR/l4/Y0MPO2j9
	a2ALlN8vFaTn572vCU/v+jnCdNgHhcZkvosGmDxKz/dKXXamMLVaaIAJ2Gbd1GNxBspncNR0Mbb
	SuK8SyoCjR+2DW3Whxgb/2tHOkBkmNoK7sb8UDmZVoe4Iq8FVvzKTLRaq3y/4sC+fpZQai4yn0h
	GOgOYceZSZEa3FNcMC8i0XDc5ZXxxrdpF/o33hdqiBTRUQ9cVVHu2UtWGFlJwqgMgi6ZSrczbWM
	aMMgqlZhNUZ+Q1
X-Google-Smtp-Source: AGHT+IHXyupRiKKKb/4zoV1JNUxwD3K40/cUxyX9Y3ajY/gxIhNiwbzT7FWVFkk23aFojsc3KZwObw==
X-Received: by 2002:a05:6a00:3016:b0:7af:19bc:ca71 with SMTP id d2e1a72fcca58-7ff64dcdacfmr33662579b3a.19.1767258199200;
        Thu, 01 Jan 2026 01:03:19 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.03.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:03:18 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:49 +0800
Subject: [PATCH v10 13/21] arm64: dts: apple: s5l8960x: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-13-48812c529ffc@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=914; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=6LjbldlF3OoWMCnhY7fHqRvAfCOGSBQ1ExvFhoCzNxY=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgoYJSa3RInwv5nD+sjZTycFbc7veNNrVV2u
 Q9bgE3qS4uJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4KAAKCRABygi3psUI
 JDV1D/4qSa+sm02aX09GOAHOuuJpgNky+qBCXNLWI1+AcOBN9LiZpYQ+Fr90I8D97ZQblOanbo4
 Bm5YkCE191yV0uwSprrmzRCbfOCtbF+/YQWJaANV5VvkXpQ4CNiC5svCuQOWUDd1h5AjoE9vp2R
 +RDzd852r7hJf2NDv75NIU1oLo987J3afoAJ6l/jhq4vO3CUsOKFUrPUXA0Kq9MF0uRZSwj34WV
 8LI4nH41oOLLGiGP5hEJlHJZmum8gKhRRs0N4OH66OhdsWjdDqfV+zOk1/E0kBCWmCuZNQ0KBcr
 dw68Y5w3EWMaIuDZj7dBeJQdDqojMLrQnBMe/9mT9ITUjwYb/2DheKcn7EnzWZDC8nSHtDEIviq
 kQbuSGcKst3sOXRYpUr0W5KpfgJqTVQk1XLbjwpzHg1mNM6U+EsWXmB9+nDFmVAQ2dj6KmGMeXw
 dRQIGucMqE9rV1rB40KBG+ieJF9X5lA1TkyF45Qlzn67TRGBr64Jd0fzbnqDtBtuvxGiY/MUdMb
 WO+Rd2rbV9XmSgoC+xUz0krZSKIx0FCehBMT5nZLLf9m5bc0ni/m090vXq4ZTjZc6LImlcQty7C
 SjnuDbsMj0gt9FooHtsPHqClPaixtwRkrEhQpm5aXqjOdN35zG092nyc4k19xGPHjn2DftgrEhH
 SPQGCU9hqN5jfXQ==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A7 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s5l8960x.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/s5l8960x.dtsi b/arch/arm64/boot/dts/apple/s5l8960x.dtsi
index 462ffdd348fc893d8e1d597b11d063dc5f88bdf3..d7a9cf1bb4911805a946d64e5892c1fe4b832186 100644
--- a/arch/arm64/boot/dts/apple/s5l8960x.dtsi
+++ b/arch/arm64/boot/dts/apple/s5l8960x.dtsi
@@ -227,6 +227,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,cyclone-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 178 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 181 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "s5l8960x-pmgr.dtsi"

-- 
2.52.0


