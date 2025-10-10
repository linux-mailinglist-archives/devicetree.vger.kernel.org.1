Return-Path: <devicetree+bounces-225384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D662ABCCFAE
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 14:47:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F094B424A72
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 12:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F1B2F3C20;
	Fri, 10 Oct 2025 12:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i+Q6AJqY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716E42F25FD
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760100413; cv=none; b=HZyPRkEDe9xSMIqyqf0ujVRMBYTVNEwdrEZWUK9sw8Y5dy1a1iAcWzEVAhJiYYGgfpFjRyeXqxJyU50ClJJxceRtB3AJb3m2i43kFwKlfpeFJ3Mk9fcMgxX390uwyJ314oIYiMcYlJ5DxpDgRtPRBYRikmUMcAYYS2bRd9MLfgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760100413; c=relaxed/simple;
	bh=hUk7p7wXwxuWON/P6SaBYN67C9x3HyQcVroLLSWoXfk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F2JpMvIQG1UFQZpc+UTEdMCgyaaIuMAGOPCXNozjcVq26+xR2/uxvBCD6JalHW8g+oRYGXekQkNgHTci5fAyDbGhsdaCvUBf4NopqThRkR5BMRAjEEBXfT4+pyRjkHwWdgJahQzyKoxC//EQr69Mu9stcv61PTbl6FrcTBmHkao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i+Q6AJqY; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-46e542196c7so17002155e9.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 05:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760100409; x=1760705209; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=euDBh1JPBik0jtg2IFON/RfdHFmTQnkqEMlQtD5Hj7I=;
        b=i+Q6AJqYmm8LBYnWZA8kmyEyGoHVTegHASQDDbaz4rGaIbsc/whJJvcu6vrzHNgRVB
         c9/g5dJlEG2S25+17M1PUWImRVua9g2HNFhsKv94T2aMxZJL1YL2PV6xJZmL86tgQEoc
         updU1xJHMb+MXNq5INGRue1lYsqWQ+ycmXUxkuN1Ma84PyrujDF8DP5UwjiX+y5yeu8V
         3D0QKAShx9+Nsgpo5fFl26AFnmCeuQ0QtAVXOLYN/qZ0WdEASFS8ca4onoPWMl1fu0eU
         xT7/omWnVlv5KT8YSoDi6AnpTSGwkzODlGfx5GTiwtrl+IaoXO+f3Fxv9wPmVtRrxzGN
         BPzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760100409; x=1760705209;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=euDBh1JPBik0jtg2IFON/RfdHFmTQnkqEMlQtD5Hj7I=;
        b=e88Y4eoxAXtCnlX4r17hFz3N7QD2kXArXtgiffkHMnYL12OBxwYIFZLEQhx7b84mIR
         Z8JUe0saBP/97yof948jYTqRDuMRq3JWYy0KP7qQea1SL4pzupsDwzqlMci1Vau54Iwz
         T+WzA/1ufbMpnpaXJFx7p81n8AuUjqzHywvOj7hUVTEkRhIDM9I+P9lxc8572noI0dFD
         iCKAQXqCEd0uo+2/OJTiB2QqoMF2xD/oYWTdCWKWNPVX+5aDDAFw+8eCaWLEOasKrTK3
         lQZ28BoKFpDUCxuhGovx6tt08I+1MzIdUFmeekSYxT1bmojINO07gRLplw1krqDo25wm
         Ymbg==
X-Forwarded-Encrypted: i=1; AJvYcCVbCv4BHnrFWTauWXI0GZTHiU9loo4BX63dVzCWGqCNQCpXuMDyAYb7v1jhMni8GXCZgVTXGjD81cB4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu4nzA7rh1GetX9CvJERTM/1wsWwQvhkbeFAbTm804Lv5zXJMW
	EEGMyfbckBC573t8ZNWUarhNWes9Ld6bcOk2J+Y3HzA6l7KFXiR7elx+kv89s2OYalQ=
X-Gm-Gg: ASbGncu7MAOpHzXeWfMTl/fdF3IGZ7CMydnULpu//9amBjUYVlIe5VjnzMLayWDZiWi
	RSCVp+rfoSfCIpOKts/dKpioxHRfVh9xoJoVYnavuQY1+eg6x6yYXf/27iMjJpXGiXNVzxvgTHR
	q1gKFE4QzzR2CljHtFAKa6RbaFtxX6JO1caSEJiUssVSWwMDRfVNg+1sTe4YFphnwNwgJw7XZRe
	YL+dsglX6nPz8hSEyFgHH7A5fAaUPbnWhah9tDVEdE6GtnjtOB5j9sV6Dkz85LcKmh4Hx8ydH2X
	C0ud++rL4OaHLp3UXYTGrcaja9GAt7snGQzTMhNGc7/cYQ/JOWtj/4+yfs4feVG1idxS/CEG0Gd
	Zoiz6Lh++X/ZHkPddPyY9KIjkqJEKbC9l1l9R7giHHdmlXHzs98tuokvXP9DLgxJg+7QSTdDzR8
	Pk5fahM+mVVpJvaJG3qw9ydA==
X-Google-Smtp-Source: AGHT+IH8x0QfTr6wJYCjDE3d42CDoKbarW30rvQ/Cc2ORyEX4B7UUOdkskMSSnIc4XAyGE82hs4N5Q==
X-Received: by 2002:a05:600c:6592:b0:46f:a2ba:581f with SMTP id 5b1f17b1804b1-46fa9ec796bmr84534875e9.16.1760100408792;
        Fri, 10 Oct 2025 05:46:48 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb484d056sm46376895e9.9.2025.10.10.05.46.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 05:46:48 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 10 Oct 2025 12:46:36 +0000
Subject: [PATCH v6 6/6] MAINTAINERS: add ACPM clock bindings and driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251010-acpm-clk-v6-6-321ee8826fd4@linaro.org>
References: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
In-Reply-To: <20251010-acpm-clk-v6-0-321ee8826fd4@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760100402; l=1202;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=hUk7p7wXwxuWON/P6SaBYN67C9x3HyQcVroLLSWoXfk=;
 b=Enoypv5lWz1jLL8VOiF8wE4cWDFIyo47tyJbQitxtWSbq+eKO6jjL0y+BmtW8IkT/uywAVSZb
 namtqWy2kaMATnFmk94Ffxc0XmxkNambqyqvWPYoai4R6uOhoewf3BJ
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Extend the Google Tensor SoC support list of files to include the
GS101 ACPM clock bindings. Add the ACPM clock driver under the
Samsung Exynos ACPM Protocol entry.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3a27901781c2b2589a0f95678cf3df06401cac3c..6a6727ceeef67622e96441165aec542a2cb696c4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -10599,7 +10599,7 @@ F:	Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
 F:	arch/arm64/boot/dts/exynos/google/
 F:	drivers/clk/samsung/clk-gs101.c
 F:	drivers/phy/samsung/phy-gs101-ufs.c
-F:	include/dt-bindings/clock/google,gs101.h
+F:	include/dt-bindings/clock/google,gs101*
 K:	[gG]oogle.?[tT]ensor
 
 GPD FAN DRIVER
@@ -22756,6 +22756,7 @@ L:	linux-kernel@vger.kernel.org
 L:	linux-samsung-soc@vger.kernel.org
 S:	Supported
 F:	Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+F:	drivers/clk/samsung/clk-acpm.c
 F:	drivers/firmware/samsung/exynos-acpm*
 F:	include/linux/firmware/samsung/exynos-acpm-protocol.h
 

-- 
2.51.0.740.g6adb054d12-goog


