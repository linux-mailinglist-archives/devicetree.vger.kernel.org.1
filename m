Return-Path: <devicetree+bounces-250919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D16CECED0
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 10:14:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A208E303D895
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 09:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D8EC2BDC3F;
	Thu,  1 Jan 2026 09:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BCw9p/Bl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA82C2BD5BC
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 09:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767258229; cv=none; b=sPodKWidQtYKzT78acr0DghS6H0sW5nGAYRkCGlsKGCK1EldtwRScpeFC5+dmSZj78cxGHumd/AH/wajlRmkODxpmAhb6piSTaTl+U7R1apI1zzVIKcB79QkTAta3gavgF+xmX8z3Im6MaIdk3LxvA1ynTZCostRjopduSDf6jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767258229; c=relaxed/simple;
	bh=trWVfDATm/MwjZ2+dtjuGYhC7m5DG/4DEiwR1Jy0uIU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CnemhFafqeOB//HjTM2NxWxolEGTqSXg6SSKyIxvbDFHtwkydtK2mzU/MSENh7yrMME8tvhu2GpRnXlxM/U3XoUE4mp8Aipy7mBYCGys0YZuUBAnofs35B/LLqIw0g0cZ8vjXviQ9pR6/+KESc76F/T7fp+mzMLMQ37lNf4OXes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BCw9p/Bl; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7b6dd81e2d4so11671018b3a.0
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 01:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767258227; x=1767863027; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3tdOFnD1zwwXEjmETrN68s5mUpHoY1S7934/U4qRcoA=;
        b=BCw9p/Bl03ryIMzjgJtxF3kXGb7L4t3I7Jy/tj8SMtIVhXevn4gFwU65ADp/OhRu69
         S3vxky+VZMO8MCSBmXRHrap1dCAsrUvQXoor5TB2aBAHdc3UpFx8n0DapAaY4jZHkkwS
         Zf072HJR/PGnmz2zHVjiQEeTJuG1V+A+8uRSccF1E1Y0den7XHvYCZPwmR73M1H87hdJ
         Ova4H3DuCE6gAHKKqQ58l3bzx+ryw0vXr9/sQtyP5eOpN8hjELAHlkL7lFBpoS+Eup0y
         GamgGMfh9oDMrk4WasBe1jbgm+iZtlUB3wsKnZXhacpV6P0ZZBvw40SlfcdlCJaTm4Lx
         QlMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767258227; x=1767863027;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3tdOFnD1zwwXEjmETrN68s5mUpHoY1S7934/U4qRcoA=;
        b=YE+kc5aSwvntoAOMFLruRgPYaZvVP8FseArNj5ZZqjgXnibEXkABw1y6dXra3rekZ0
         9Nwrq/BXsV6+me+tqjj8LGAR1BaXSST0I3SiD8sctK5+KB0w938OsUrPnUACIjOmD0Hv
         tgH3ioifF0GIS6HEhiTVrKGPdw0ArwAw1s0reV6UqF/o14hmikxcDJoyoOod368kn9D6
         aDvjkZr2DxZbXgk1PltGnc2843C3jFs91AfINEIwWK54HYwqOIkYdTMPbOHty8Ogavqg
         uDj0SQMR8AfGxy5xhkMTXr8KEG8ER0daJZKiq05kSbmrCAr7HSs5tVkHZrfQ91foQGqh
         qX6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXQh+8yR1JqeWiwwlx1EO5cdrmJ1qrblzs4SsTwRhQDAS/ScnfW6MtQ6OqhlTqTHRthX6Hi5e9cx015@vger.kernel.org
X-Gm-Message-State: AOJu0YwGJ3pY87arGD0Frcg3E1HWFA6I/veCTsSr3nChok/NdtlTlNEk
	gsc74SQ+d3gYQzBUtcaERx3Er4waJHsvhEynTRCUUswV4fem5fs/4v6q
X-Gm-Gg: AY/fxX5mIrIswu3/hjWKRz+6kq/n0nAq4BJaElDjlvdIvcfQbMCtXifr+HsjFS63Zlh
	XAYwcSmTKUouHYcwDAkHe9ZaYCredZP+DNWLfndUHi9HYTGi6DfTaeYWn9f4FJabypvaWg3BFIS
	swWlXVVcM31n0EHO5APzPLiZmX2yS++M8c4MuY+By4WeCpa8UdMkqF/8fs2I00Cg5VU+NRorYul
	af+wBGSyGqhMEMLvfm8cr9FHY+Xck2jUJFgLMT+Oby5ar8Q0K7D+M2AMNff/0Agux+LChBB5Inp
	EgJyFCFS5j2sHvF+fr8IwSR9VhbePJaYt4IR0LoJDT5q73I+BiVFgyaHvypyyGrp8QRIF8Zsu8E
	b0+Ic653i0O7z+rbBCjqGcSz7AGK3w3MVOeVDUBIKVNXNd5Xxok+oZMScEIrQtGOzmdPc/Yb3gm
	UxeRBobNuBHIuZ
X-Google-Smtp-Source: AGHT+IHO9HLDqLnxGqMh+mxYDWViv1/O3WqdN3+qFILp62mk/kOweAuJA1AZ8e4wVoEHoRWOZ+prQQ==
X-Received: by 2002:a05:6a00:90a2:b0:7e8:4433:8fa2 with SMTP id d2e1a72fcca58-7ff6607bcddmr39960635b3a.42.1767258227104;
        Thu, 01 Jan 2026 01:03:47 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7dfac29bsm37182957b3a.39.2026.01.01.01.03.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 01:03:46 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 01 Jan 2026 17:01:57 +0800
Subject: [PATCH v10 21/21] arm64: dts: apple: t8015: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260101-apple-cpmu-v10-21-48812c529ffc@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1462; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=trWVfDATm/MwjZ2+dtjuGYhC7m5DG/4DEiwR1Jy0uIU=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpVjgpSfeNnDDFSIT2Vc+1Lesv6jNsQYcFQYur4
 OGMFS8dLn+JAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaVY4KQAKCRABygi3psUI
 JKgdD/48Oa+AjeAoAVsrpKQTk4o35ek0CzqaxUwDuPnoOwbkEgFd9Gv9cAbMM2eks5VybrHunJz
 e5NYXyt9bxOKT51Lq+Xkyro8ixG0EQrPItJKj8ckf/yA6Jitm7fikoHiQXc3PkUC/MuJkNcEV+6
 blmxnWxOsdxt2pbkxVBVk1ywud8xwITHXftKf/OZ+gUCWOaHgWXUEdZ++zxDCGn6G7BB2FNPBSj
 3RMWYElEv3m00UtjLwOVegeF+9LQYasHUjckXbFLoDBXqSmwvyBSHP1MurONsa28XQry5VlBHku
 LSF50dJsLChEaxClORGyiVsFvBMlI/WRnnym0EyqYwAHLZ2KLfqLvqsJndKpbF7RXdfbTuC/r5G
 1v8Xz9KfWik/7JJ4vmnSMoAVJ8EwE5XkckvZYUPt3k2hC0FUS+YOro/8fPOs6kev4KJv2XpZXJI
 cE0NhDyB0MfSclFPKZBzb5frmfVGA0+PIUwXEZjHsirGsdOhbLBDQq+ZIxuUiqfUsP1X5bs1Ohh
 evZE9VP8zemVg8jruE9jT8nqu3Ve2kw5+w3T4X+spL84wVi5lGnMmxefqyfyXFSNJxhvwM1nBf9
 bXvbE7sVJts4ECdTCJlZg3epyUkjmC8R7apIijQZJb7EQj9R3wCtCysNsWW3UgUOqmeE3BDJ6i9
 YG47wDhWWBmbfUQ==
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


