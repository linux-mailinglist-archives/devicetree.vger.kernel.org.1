Return-Path: <devicetree+bounces-206459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C764CB2C565
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:24:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EEF151882562
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56B0434AAFD;
	Tue, 19 Aug 2025 13:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RlngBiUH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4C633EAF8
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609455; cv=none; b=LtoP8zkm+wI2358ajeJuV10EVbBkb9CF6OwMTtw7SUSDc6QmLujR8eUapzYaVL5W82DfsrLOuFIr4ZJ8yGmWmVwxPQsr+rsxNy7YUDm9adfS6mT/Ry71aFIddm40L1zwU1Wp+nh2CjC0FvWC8cDaKSEOtSHww8rosuQC9qA5/JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609455; c=relaxed/simple;
	bh=vDIX409XkJoWw9Q6XgVBVMhCjeHRXaM9O04OkEsD7ag=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IaJRoU1Pl9Bqr72vHSU+sLtAu6kNDlKWYvBI+gOHw325TogGbwRFpPF2MnffFLSLZcYVC9IqAkVn6yinnPGVel4oOE3vrrW7fpykK74ly19LMLn8GyOEZ+5XHLZ8WrT9PLN5XQezJVBCaLvsNVtMWCJ5/bSmA1BxQ2fcwtX3QUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RlngBiUH; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-afcc96bb64eso93335066b.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609452; x=1756214252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjVYQ2o31Wt0s4oOjjNkfAKW5LnQMlnPA5bHJIPGLc4=;
        b=RlngBiUHAhinPNkVHMTNt/hIKVBClM90BWI0a7FqP9C/CoOSC5RgMd3AN2RozPYgRN
         gfapFClpN+jz54dCLsVgmLJ6awxaXPzwUoatXoxUa1vhIU6cAJfa5oyUue9o4WGxsZNd
         A57TLhm/vYRgMGrfdq+eXF0NYc/L/euW1wqhXUsN3/G7CSDUwPcXvF51boMdoRKBQG+c
         rpkgMRf9qylOEsPQqH+ED2GOxSEWT1H0WMzjHmIKwKiB6bsYCxo8VuerfrxDPIeCX9DX
         /uYiMbxx2jUsP1JUDkt+rk5O6iLV+c7QBjwn90QAEKnM52OkGvDHkyrW/HBSh0vXKZf0
         UP8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609452; x=1756214252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tjVYQ2o31Wt0s4oOjjNkfAKW5LnQMlnPA5bHJIPGLc4=;
        b=OEsYiP3PHh2M6C3rruCQ+AFLcoa2SMaZQFHtegZC8rcCVuflNjXHqXOEA38ff223XE
         pC1SlllhcksHaFhp2UIcj0QvsC4965VqE2JZEP9nNXSMas11R3Jll8lhDtJ9rvXvR4d2
         e/bcnyzMnmkpreBTa5b+E5mPzAZoRrmdI0jsCpnep7GOtImZftXlwKYDy6sFNz9CGoLB
         ZPrqJbj+8Cxmvegj9QlUDF8Lb+MqfF9tgyZ+61RwBj8mcJOJ/AB7IQ6FL/6Rsmy11HJf
         uOfnLN1sA1iAuSJuxQwd2r5dWf3nxgTpdjJqYVeYrRhLywK2bxYWnwQYPcwlR9aVXmEZ
         SfrA==
X-Forwarded-Encrypted: i=1; AJvYcCUnLQmok7YKJJbRh1PfbSEnI34ybpyAIytaIPMab+fpoJHEEXffuT70JnrSKWoT4HGUum23sbI12+VX@vger.kernel.org
X-Gm-Message-State: AOJu0YzVkVkRt9m6h5p6riYCzmFyrW7Yfcxm4/QiWbzoxgM0ebC+oJel
	ca0IdHvtSIZe/t3OqFpAGhkTYkKwK9eJxHqwl2goiqsIMb9L/Rd0GoARm/7E/nYg46A=
X-Gm-Gg: ASbGnct4hS7h1rttEJcnW5L+NPzWezgYHxyqRz7JaSDfWS8V4VBGHmdd/vBmW2K5u1i
	LUhqDpPyNnfdJcUtr4LQOQLJtAl5BIdXBNIsyn4G7mVWc6n+mdOX0QHWs+TMa9czfW1WrMoU4af
	zC0qvbBvkRajy5IYR3vwQZLI5uW6t7menG0pQORiax+YgsM4kjV5YlLj4G+qH/3t0o9Higg94BS
	Io4sTAuTCIevm1+ZsleUV5MKoqjPbQMAtPKedKpJtek6N/PFhZjKrf4fFqpyucbihjocI1f7+tI
	iGraBeO4+03Hmrn2eej6k1t9qTE21kUK6cFAEjMK03CqHDxj8KIFOoppNAKVBFeTBJYKavFoYkr
	Sw0JuVhScjn+y3npvAjM1VpzImOT9eMVnRQ==
X-Google-Smtp-Source: AGHT+IGoW2rMavDLleY2STVqCubc7jV6BzLT7Ex6A/gWPiyHTzPLsgNEsjpfXZkcM23dkCpRS0+YaA==
X-Received: by 2002:a17:906:7950:b0:ae6:c555:8dbb with SMTP id a640c23a62f3a-afddd27def9mr116015066b.11.1755609451918;
        Tue, 19 Aug 2025 06:17:31 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdd04de2csm1023271666b.111.2025.08.19.06.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:17:31 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Avi Fishman <avifishman70@gmail.com>,
	Tomer Maimon <tmaimon77@gmail.com>,
	Tali Perry <tali.perry1@gmail.com>,
	Patrick Venture <venture@google.com>,
	Nancy Yuen <yuenn@google.com>,
	Benjamin Fair <benjaminfair@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: nuvoton: npcm845: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:17:27 +0200
Message-ID: <20250819131725.86770-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250819131725.86770-3-krzysztof.kozlowski@linaro.org>
References: <20250819131725.86770-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=732; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=vDIX409XkJoWw9Q6XgVBVMhCjeHRXaM9O04OkEsD7ag=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHlmHPW43qsndZo3KHocAJD3K9RxN0VwvFKuY
 FcidO2bRDiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5ZgAKCRDBN2bmhouD
 1yAID/9Zp9ZjjLEMERK+PNNsU/fhJ5xM51k/pOhnp6a3rynBxNPgKirR6cSJW22rzyYyq3v2Rkb
 ZwKEGppGpuH9q9kT+FBwqTc2CASiUj82lj8v9MNSz3fFvPYBWcpbSbW4E9Qg4zOat01+aoJZtew
 vTZgx27fLCcXiAUYkGweEx8oTGXbxY/ODGqA4kaiDcNssCyu7zcTc38/qzaEgEAJi+l6Mj7Ke34
 Fq8O6Ga8K58o9aKyykNscT/49ahwqaLJkNlAK9xz6fXQaynm0Gsn8heGRO5HGYARYMVlW5XtLpC
 +6P1k++buaOokb8X7kl3qixEDBbhV1Q7f4+mk5NVJKPzSJNf3rHdoQxVvXR/D1A9o/va/wcKnKr
 53lZ0O/cG4UUYVz7H/QdLJPtiJmOgrqqx1ucd9dj/f4Ll/iFAs6kZiXOTecwhh26tKpeeanYZF5
 v3WxzUFTe0zHnts6WfhtZUaYtUIR4+WLHw1xx+wPrATAc6et8TIgv0y7HgJCvrcuEY8pjs6GrTJ
 MRExR5A88CN9WC5HpiLPvpB6aLr91uUZoFwBBF0jwAcZXz2gdEXc99n3iYYc50OjUo518WTyFX/
 A9VhakKqLgkFpIWl7gwkyme8ZunKQv9fkT2Em7P/MxWo4LRsKBULQu78h11QUSg2mFjcgYWb5am Ti40YDF9tdn1vnA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/nuvoton/nuvoton-npcm845.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845.dtsi b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845.dtsi
index 383938dcd3ce..8239d9a9f0d2 100644
--- a/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/nuvoton-npcm845.dtsi
@@ -64,8 +64,8 @@ arm-pmu {
 	};
 
 	psci {
-		compatible      = "arm,psci-1.0";
-		method          = "smc";
+		compatible = "arm,psci-1.0";
+		method = "smc";
 	};
 
 	timer {
-- 
2.48.1


