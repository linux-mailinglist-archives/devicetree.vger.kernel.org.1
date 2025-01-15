Return-Path: <devicetree+bounces-138885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CE1A12CE8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 21:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A907716484C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 20:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4E331D89EC;
	Wed, 15 Jan 2025 20:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jQTw6kN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0631D63C7
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 20:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736973978; cv=none; b=Ijc+EaHF5jlPEfjnEudhQBCnxTpqP9OSoNj85jMFgfRhxFzejbB96H8CDlZlikkCun4/WXWa0R4l7Lk8QmRtGufO2XEoQrqT7Jc+6Zd/t1q3r5BakIAV40Xt6whhhFcVZHGXVNp5gmN2Vvt2gdwyA4jQ1dff8lWXFbSEfOglfI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736973978; c=relaxed/simple;
	bh=8xn+hAjrp+dpnTChfesyahewQiVXucAxQWGqp1tO4VQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jNClay3PCiP9HwPZdPY2O4WryJrHqgUNbGwvS0TZ2hb569ApK4SSb4VW94jK0zqQQ3nxrHVUBnTTvpyOTQsZCsGQqK1BHJpQc/8VhcvZsozMTeUh2EgyYFZ8FxeNkmaCKTxZ28v2QEBknO1Q7ZctTD6fbz2zmcaS7bKEI1UcYNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jQTw6kN1; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43637977fa4so149105e9.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 12:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736973975; x=1737578775; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xxyq2n/HkeozPkGjrtu5/5xrNjib0WAov1wya6JfQKY=;
        b=jQTw6kN1XdJVZwh9JYYPDVJaxNLMbqBwmGL52FH7ge4nn1H+8s7dzZ9AsCC7V8BWlf
         xbUxia+0Y3cwdKyn8lrsJxXtpfB7EPplYGG5Q0ZM7F4sD6eoNAql3OLxXLztsjgtGoc0
         BCjfqD3aL4+Ae7OF524GTHNOXwrNpqQspTg5/mADTSeSHfefLMNcAnm4u+uk/RqU+xc1
         NBn3RFxDOiU7YU+iHh3O+iUx5h5VuMEmaTyI/yMEEEWBwqQNC+hImGKw3R1uVPSmsL3f
         fd41Mcx27goz2NBJgGQFK7OE0TjbT4LJpKYRdwYNKwFV9n/P8rJng6rdXHO+n7UJBEfk
         5y1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736973975; x=1737578775;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xxyq2n/HkeozPkGjrtu5/5xrNjib0WAov1wya6JfQKY=;
        b=Xova2rPO5xhB7wcdcfOArZS66Poa+6VbBVPNbRb/ypnjXtBRxzqzDFEn5QHHJWIBmn
         MNSsE3VP+qqo19HA+TdYRLx2roiDQYTTF4UaSXilGKT/EmRYE5lw1xjHRscn1Vw5CfPC
         v/cwM8ZASohRZMCHDxWgwMvMUoSni2pcaDpv3efBlW5mV4mteLJF7ubduUAzovP/Eemk
         iCJ9jYf+HXLZy5DLLFup8geSdSFIBKK8v8delMGawvCqbFyWM9aHs9Q/rp6Lysn49TNP
         Atz/tJlti2mTmINW5B0ae4uDxxqUgBusJIiQIa6BmDoBhC0wlaRyx0sLMhbJ3GtE1N+q
         8v1A==
X-Forwarded-Encrypted: i=1; AJvYcCUVH0do5DxezVyLcK/YOT/84cjw9hfzfHKcOcKmsU+sPxoyyRl260Kf37vUmmcRSJGsugUH3DvrF/cD@vger.kernel.org
X-Gm-Message-State: AOJu0YzHLakQ4FUnD0e8dHaz/ITHk0BJVOr5wtUjA4SbMJEOSbwsWI4W
	IbAc2bTSMovjLgPdbqt0bcWOld3Q7OiIAJz1/mb14oDKUxKWp0029fR8EmIaOWU=
X-Gm-Gg: ASbGncuRuoPxJ7I48kQsYgvtTwKA2PxUtzcH5v2Y37vVNdfKEIBIZF5p0lcsulWjSly
	uEnGmU/jRNlxQgVoIt8L7M1GMBl4HooF7utDA2zFNvcLapflhFgVzGBmezxqaZPYEYzvn3btVl/
	CxeLK8+fYcK1h4R9E7gCfYItnhzjwKC1K05kopXixxr88AGaE/ve/GSizFGU1UMYZmb7FJkXiO9
	H0yVb9ze6UV84bVN1rs8We7wIwgMz34v1fNtQzGLsvjcChE066xKZYmaYY65b8zGr0Myrg=
X-Google-Smtp-Source: AGHT+IE5Aq4FPLp3TznZADbgWmvqih94kTJxXwSTNAZBQDiPeLOPUk2glxfr3D/LiiLe6fJ/oR6c7w==
X-Received: by 2002:a05:600c:4fd6:b0:434:f5f8:22cd with SMTP id 5b1f17b1804b1-436e25603fdmr100008315e9.0.1736973975537;
        Wed, 15 Jan 2025 12:46:15 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74bfa35sm34879505e9.18.2025.01.15.12.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 12:46:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: tegra: tegra210-p2894: Align GPIO hog node name with preferred style
Date: Wed, 15 Jan 2025 21:46:03 +0100
Message-ID: <20250115204603.136997-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

GPIO hogs device node names can use 'hog' prefix or suffix, but the
suffix is preferred.  The pattern in DT schema might narrow in the
future, so adjust the DTS now.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Reference: https://lore.kernel.org/all/20250115142457.GA3859772-robh@kernel.org/
---
 arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
index bbd6ff0564da..b84a8e39b404 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
@@ -1365,7 +1365,7 @@ fps2 {
 				};
 			};
 
-			hog-0 {
+			max77620-hog {
 				gpio-hog;
 				output-high;
 				gpios = <2 GPIO_ACTIVE_HIGH>,
-- 
2.43.0


