Return-Path: <devicetree+bounces-247591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5623ACC8D0E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD16230966B8
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83877354AF7;
	Wed, 17 Dec 2025 16:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UnkWn/XZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EAD354AE1
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988748; cv=none; b=nP5ktMUj0KTbVPB1tyWgS5dYUn3W3br/hX+HZ78ZoVzRe9k9f4vcRuOwkZI+vtZisaSjOhX6zT9DTYCd4KcszgnIlZltle8DzaoZDP+fyKBj+vTeQlx6rbyGuv8DAv65KVP8lMj1TtKwHhMcJ1l4TFCR2fNppX/cVDie5+fdsn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988748; c=relaxed/simple;
	bh=trWVfDATm/MwjZ2+dtjuGYhC7m5DG/4DEiwR1Jy0uIU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p+mymwMi9VhfZ3GiP/TYP4hxfUSG7W66+yTxkQw3TvhrlvDNRtY1NvzLBCnVfiRdatsNZVLtnb63QbjB8N23+U54pLw/G18VP7B8f1DdunArwu9hAF6jm/NYyn1lCwAfyg7nYJa+QDoANRnvZ5pPTo8upj6in2WlJR5p22YJFeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UnkWn/XZ; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a137692691so25997545ad.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765988746; x=1766593546; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3tdOFnD1zwwXEjmETrN68s5mUpHoY1S7934/U4qRcoA=;
        b=UnkWn/XZKH7cYlAQo7wqthOg5lsmkQ/9ppfEy+5bDPB9oikc4eMIRGT/O8MaddWv73
         KGk9tRsAn68WY2ZRi2xSCNVIHds/CCuku4y3nS77Ez6UBdvxJ17piwJNQcLJvAGL9jMt
         vsvg5WEt+cNNp33NDC5ammEpdWrALjnM09CbJxiuRvOp9gY9fEg4u4z8ISPomVei8JuI
         0UKeYB2OpQbIX5foQxKsXrkhBIBzfai8YV7VCc81NM/zkyl0sUPH8c+c1hZ8rJh6+LRv
         5wbs2nNw7dEs7O+xo1QYCec4epXmhtIVQEVuCLxQ6cq0FYMfpSOXAOs38R9IY412wVFd
         SqrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988746; x=1766593546;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3tdOFnD1zwwXEjmETrN68s5mUpHoY1S7934/U4qRcoA=;
        b=PQSmKKBfknWKsdelca6Sr8n66D49TD2tuwx6LE+Dhk6IKgp7LK2GY5jo2lkTJDTDew
         jzYxLTtYOyJrVoCJtydjZ0PyXEKxv3UqhhbXsQArzLalB/XaajU3UExQBFS96oKFB2bX
         /axPkGN0g7RbYzoQI/pGg9MmMjzBjXnTUJfmdtDiJeaC3t2p6x4YInkn3vh7wWo/LUNR
         h5OE16XE1P2/N3Ssgj95gsQnsMk9WmN9OuxK/wxFnc2EpYXMDWU/62iDGFIc5qdQLtrk
         dw5e9sYCYiBQf5LfqXI6SErXi5Y3qiO+g/vAJ9nph3AznxD5b9+REgNIufLyFckSXUAF
         NpUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbXVa6dZ3S8Q4Fh74Ihi+xgtyuj+Q0IMC8pDtMuuArrggq+ZiVygovP6yrxu8BmA/h2BFaRoVqGIsz@vger.kernel.org
X-Gm-Message-State: AOJu0YyS/jrI/z+KZ71BCD+Sut3FsOVKkaqeGY9tK7zz/LXv1wqyxT+X
	+gAwdcYzdXNrZT5sMUfjU0G45gxgubjkPHACYAbfZPE49ejuup2m+JYmHfQ5LA6+
X-Gm-Gg: AY/fxX6ntk8tCCmO2l8ZjuJjPr2uW82pwOQqq8pg/ZtcJlf7eKukhmwxC8JnnXLRmB1
	VyjPAlNB++VWpNUwvL7oo9sELyUXHOa7bFJL/GWKvUZIfmOTWVzuPZJX/hl9/KPRFnB3eWskjFn
	N5JId9CZESXIvZBoxxWWbpf4Y7WZ0eYXjY93YvREt0tpV/SWjAPKY70z36QOkLq2BPpGtKUgVUJ
	ZhCny5kKp7oK4Hhl8+l0iZ6mxOcRwSHiBTePWP0K6267B19aAiZo3b9s3d+cGoAL9JrDqpzynh1
	v7W41cL5qnBU/ERf2g92IIPS11uR3is7aumF1OIVjFBcuA37qZok5uxoEKiDlReiY2YGSYf0s5p
	ZywJV+D8WqOmrfqkW7daLjHfAu88kExV4pHdtJMW5qMEN0i3uZuWvr41Myy7jwYoFkmCZEMEBEy
	xdLqecsx2TWSTO
X-Google-Smtp-Source: AGHT+IFBX13bhHK6lVyBJcGkQoq1Msyy8h0DAZFFCMfV5WBxQlT2ggVro0V5kiEjXJT6j3aN8My8FA==
X-Received: by 2002:a17:902:e548:b0:2a1:243:94a5 with SMTP id d9443c01a7336-2a1024396f5mr116797365ad.47.1765988746077;
        Wed, 17 Dec 2025 08:25:46 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a0b0687c62sm122980415ad.88.2025.12.17.08.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:25:45 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 18 Dec 2025 00:23:34 +0800
Subject: [PATCH v9 21/21] arm64: dts: apple: t8015: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-apple-cpmu-v9-21-4deadbe65d03@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1462; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=trWVfDATm/MwjZ2+dtjuGYhC7m5DG/4DEiwR1Jy0uIU=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpQtlDl3Gr08qJF2sX03JXifmuERFH4Oin2bn6V
 wXHH3PV7m+JAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaULZQwAKCRABygi3psUI
 JNloEACKdtSR87e3pm0WecNFLB74uVTymD0eUkSwWkpCvJcS2bmrw6+uuPU5wdZQPIG+9akuhu8
 CSJdjD8jVGg8Fjx8u0Q2t38B9sCeW2heVblCjUOE9+tzx67P5DEBDaJPZxslQKpHGKRQcK7lx/b
 ETG3jDDCvTM8KV1iOT800Uxa1rRgm0hR0sP4tXTH/2Bxm6Xz/VWrDL13LcClv+e3eFOaOMZo7gy
 3wUoc4T1OypNKPayCDGbNzIcq9yeS94JpKxttdQefstDpXfzg5BFIE1kxXH5MZBu+axOLGVMyxR
 sMI8t4WLX27fYULPcY0/D0BiBKEranqFuWPcJMwOjpPNKBOc30qC9wdCrOME+gBLvHHPSek4SLJ
 lSPFwkKl7DNXVh92w84z3ehNHnzkl8rnJE0R2pMefLtxD0kThbHsSXuv1vKZW1WLvQZMhixc9+K
 xE4yQjIqVRkSD9/w+qLHbwuBNPD7gofTW4tzprVc3PwCLTbNEhBvAPdj6zPNJ/8UfXLn/bNmMaU
 ntJUB4NrWZjhG07Dxa0dGV2DnZVQjJNwYOqreNF64kxBrQWYEWnWs2oUB51xhyE0mHnh7BIp3I2
 cB/NB0PYZo/Y4WRfOLfYzXTHxkSOq8q0bsk4vnHJaGNFOmgN/QxF4N+iGs7LqUu0VE6lqPMMuUn
 A72HON61PR2Kjzg==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A11 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t8015.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8015.dtsi b/arch/arm64/boot/dts/apple/t8015.dtsi
index 586d3cf1f3751d9ee23262e55fd692bfee86c13f..0c1ebab56d6b36ed5362a042ecb6cecef7c97f64 100644
--- a/arch/arm64/boot/dts/apple/t8015.dtsi
+++ b/arch/arm64/boot/dts/apple/t8015.dtsi
@@ -341,6 +341,18 @@ aic: interrupt-controller@232100000 {
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			power-domains = <&ps_aic>;
+
+			affinities {
+				e-core-pmu-affinity {
+					apple,fiq-index = <AIC_CPU_PMU_E>;
+					cpus = <&cpu_e0 &cpu_e1 &cpu_e2 &cpu_e3>;
+				};
+
+				p-core-pmu-affinity {
+					apple,fiq-index = <AIC_CPU_PMU_P>;
+					cpus = <&cpu_p0 &cpu_p1>;
+				};
+			};
 		};
 
 		pmgr: power-management@232000000 {
@@ -530,6 +542,18 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu-e {
+		compatible = "apple,mistral-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_FIQ AIC_CPU_PMU_E IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	pmu-p {
+		compatible = "apple,monsoon-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_FIQ AIC_CPU_PMU_P IRQ_TYPE_LEVEL_HIGH>;
+	};
 };
 
 #include "t8015-pmgr.dtsi"

-- 
2.52.0


