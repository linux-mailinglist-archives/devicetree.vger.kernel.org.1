Return-Path: <devicetree+bounces-247585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8DECC8CF6
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:36:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9529C3022FA6
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD7034FF5B;
	Wed, 17 Dec 2025 16:25:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GaTaBfVw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A0834F468
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:25:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988729; cv=none; b=K5FuCu1Qapqg3pFykpL5wXF+TqnfpJWVdn+IzvotVfT6db1DEJ26Tsym1itCvhFhwQ7uKdpFKPFxpM8pAO9TVP/HLnuncyaeEu5yJgCifBIN7ADhKWq2XKyZY1ShOFv1rd2kzS1v9GcTNQ0r+6axXBKMrWsjeMurr2mjCrbtaPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988729; c=relaxed/simple;
	bh=8i2WC0AFNRoAyJx9LwHHLdlMc3fQP5/vwmujapLLxro=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RXf8evKGLpH3c8W2X+sS7Th/38fNG6TrF9vAfSVs30Rv5RqUhco9HSBbtTKWgXlpoWjR6KpUqRlNUuthwwHyfMU0Wv4q9GQ33uP1ltHm06BJ53CeZi3cUTmX8+r10Uuw2IRmCJozO+LQgMi85vHZNOYdOfDgBTEckupB0ECzilM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GaTaBfVw; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a0d6f647e2so58575035ad.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:25:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765988727; x=1766593527; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vgzrS6iAvFIUlLKBejM9CRNPYbscxZNKJWP8/12+9Yg=;
        b=GaTaBfVw5Y1+4KpfohqJfed6oj81kF0XVSvc7HnHwiBBqBnZ5BA0J7dpD/rRwG8h55
         Nw5GQRAP84VG8qc/d4+sZCEodcjxGPJgnw9VIITmID5mXNG13Gr9Fbf0KlpeMoy9Mdvz
         hTuo4gpeKOKgc9gDnOeXJUKJSWDdGGkTFs8fwwL2IZsu+fWXXexkZItKJojWKJ76HwwE
         dnBoFAW+9BEBZ4Nio5ZcRQMnVnKXp1jML85a2/wVZ6TS39pQsQO8hQjDxk9TmtzMT/VH
         OYuOaCpfC4oJkMhJC4NP3v4y6edBvlRUJaAkWvNuf7+iHYThVyWJe0LFOgpWeCVdYJqm
         cbmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988727; x=1766593527;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vgzrS6iAvFIUlLKBejM9CRNPYbscxZNKJWP8/12+9Yg=;
        b=nzsZZFb2OqIwyjn4DhsDhgj2GLvoEPsMMOpYK/F2rFLkjhpBIqvWOMDWv/OI6o4oDZ
         gAQnuXqyNkrXie34raEtxc31/TMkqkEyXtfgwjLuZmcrSDqjN9gRhqE8XfNYc5hvCx/s
         WZCsA1hHiVn6Fre1xcp84rjv/8kqJxBaPfwpw7X4dSjWqQFopMGaK2Erbc+MnRaexzCa
         eeoZHYYc79j4XlafnfAicI7GJmtgq7Jzz+ErZjrcMcWVZlGPXPOzcWH14IRuGGZ6zD34
         NlmaaZqVJ4uOsmlXgbzrqBmHNwNcxuoiUn8vRyXECM4nGIDGwn4gl6rZS/owSWz5CEQg
         EJxA==
X-Forwarded-Encrypted: i=1; AJvYcCXIECCEZRrB2+EbQeeCVulODwpy7tOKTRKT7MmP6AgcsfKN3rQpjzNfz4VCes65O7YdDdplXjSzWQGd@vger.kernel.org
X-Gm-Message-State: AOJu0YwidudTJBK7yYSHv/R8CoqFLVniUpLQJp6WWfdixI5ptZ3D7PkS
	TW0O+unpcekZQJ8htr0lR5R42xAI5dQvo+/8PzuHRRB00qaGhzm80xp4
X-Gm-Gg: AY/fxX4/3zt+tPEeOVGh5SuRO05CJeCVHN5TodepfMNBWLAxzQ33WWm4WjMhh06jV2o
	PGzOrB2KksCprGasedNNjwP+lcigBpUfWmSe7tkuhjQJzOVadG0xUaVPaiaGr/DQlfwkp8zRdAJ
	CCaGibyxaqRS0SVqMFfcl69v3hVY6klrDmn8b7VXY0kVabIQJmgmP5+ZC2a1rEvQr39h9Zz4C0H
	GfcKAEICg0kE9sZJmqnoJ/i8lwevfiC1UrZueUsbWDxlyPgfUoXGE6vLLinktP+GiuxjnlEzYz/
	ncqeGhzttBpZ/BsHpCIQ8ohGYuvU34ZvrOsxoQElZzC/CiBOyDLkDJ+VrECKb2pyF8tc0kX1YlO
	Cn8pZUCLiJoXaXY8krdgerwag8zvKtZ5j/8a0PFGbMJiK3NkWUFEiWuGJermPc6MP3bW9w2oPRv
	MD8sc+Ryrn5nxU
X-Google-Smtp-Source: AGHT+IFB6PeNIWSqXJ8An32WcsBQUhlnoYA7ieWW12lMPDU6l82Gj5e6zJ8t+G04ZDznqk99I6dBvw==
X-Received: by 2002:a17:903:19e4:b0:2a0:c954:3bc6 with SMTP id d9443c01a7336-2a0c9544164mr151113495ad.22.1765988726996;
        Wed, 17 Dec 2025 08:25:26 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a0b0687c62sm122980415ad.88.2025.12.17.08.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:25:26 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 18 Dec 2025 00:23:28 +0800
Subject: [PATCH v9 15/21] arm64: dts: apple: t7001: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-apple-cpmu-v9-15-4deadbe65d03@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=946; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=8i2WC0AFNRoAyJx9LwHHLdlMc3fQP5/vwmujapLLxro=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpQtlCclmzbQYq5sEToSOjMcDoblZHJnC01GxIz
 CCAYu6+ojqJAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaULZQgAKCRABygi3psUI
 JGC0EACgymanFylRFBZHGTD7TCucUXoM2oI8p5ZphAfJg5I8FzyKa+0UsRzIXvnt500vL+7/kVt
 S9c6jH6VokeA1GsxoMbft5KZGBkAqyk2zxOi12WMdNh4VCpBa77YtUhb60CzzoqWyf1xk/ddauw
 d4CuGVUSnE+vZhQhJHAfPiAiUvBIw4PDCQWGCSP0Cu2IHUkaZ1SC2ffq9dqXoBec7k50ltQmPax
 KN4WBAdaGiFMDKJh6UOxuNBtJFBkk2R0wclmF3+6XtsRJt0sW5je1KEGd+PAWPC574I9+//NH3q
 3NlmsUACZhKn/yQ4vc1O6gglLRYlvUpkahnHJCmgNWZe21O5js3uU2nmCAEDCOT0ac4nwozVL5m
 ZuBT6EMaf5LR22QDSRzGe2f7YFJltRNGMiVvJDu4azur+7pRxSuAohTKdMkKpQkmX82rh6qYPck
 e9H7MTwvGdRcjH1LkVKu+od7f31DxZr2xB/gRdlb3p1DVJvz3JocH4yk5IBU1sGR94tml8M6X2n
 t5grzoPFUrJLMu9YhCQ+8q8sEVbRINq9DlVPgkVzN9ZGFqB65jkc/A4jQzhBsEISF01jFTh0laq
 ooL8MG1kkdo/6ftO4VYZsYcDOyRDyp2STNTew0w9oozyoRZGsIYMGk1R+z+AiD0qE542KmWILHk
 atO4PaZduvUvvKg==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A8X SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t7001.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t7001.dtsi b/arch/arm64/boot/dts/apple/t7001.dtsi
index e1afb05423698223ebc15f2ae347e73fb46c7c24..b62122ea40f00a54ae42dc3cd0f864f25888489c 100644
--- a/arch/arm64/boot/dts/apple/t7001.dtsi
+++ b/arch/arm64/boot/dts/apple/t7001.dtsi
@@ -275,6 +275,15 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,typhoon-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 75 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 78 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 81 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1 &cpu2>;
+	};
 };
 
 #include "t7001-pmgr.dtsi"

-- 
2.52.0


