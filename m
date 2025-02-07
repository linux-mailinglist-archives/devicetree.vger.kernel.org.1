Return-Path: <devicetree+bounces-143993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDAEA2C730
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:31:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A35C03AD950
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC98423FC71;
	Fri,  7 Feb 2025 15:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SJ+I/sKo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1959523F274
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 15:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738942199; cv=none; b=A8fri7ispjKB/iE1F7eefiJqxVBwZyhT5jorA7fzbKVutyYaG+ANZ2cDc9lvoRg+tLBr+5CMc+lUrIr6V5C3JxQZ5rWhlF/YfGy0AD6H/pZJQL382Dqfl2L8Kpd8JsJCP+xZ61YxF4RDkzW7QY+m3HITcGotvm+rPSOxVQi0CEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738942199; c=relaxed/simple;
	bh=mxio+qKZ0oCarMDdKVLWSkQ5r9o/ZU/FWiQSXWeFPIk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cnUv4m9z7pPxAm0owwK7/lNCmeHJ57Fgwxf5WyCbpxkZK+czUQvlB2nFvvaGxbzOf5RPKqkgzoD8bXai5X6Zdh0o9nRGfBuNmjzOTdRD2dOB9WRiK0RYLUDbSlNF93a9ug3OUEgbOb4Q2LG/gi13+aBmfrq/XR1A88PFhPhGn8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SJ+I/sKo; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4361f664af5so24152825e9.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 07:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738942195; x=1739546995; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zHOUQzUPyOdT3w4jRKuGIg3i9ApsudVpLcIIKx7XFPI=;
        b=SJ+I/sKoiIsWzwTc3ZvUg9Nn3IenVkb5v18LWznoI6zUBoXJHE+QiD4yjbFXvR2UgI
         Pfu918kqD0ktNP51SbPqdq5dsbfIR/t+D7gohNJ+4T+wZlEjci+C+bDnYCUNrZs03GNe
         ngTeDxny8rIbS1x45SV53knNosxKmtn3eZMq8+ovanBdRDBO455RfDYH8LAJTQCU/xWQ
         x4NapEAe/fAd3MwQXOfXrvsp1VU4BNRfMDNclkna7iYam3jnvCc0mBPsqs0rOOyLbCYr
         IF5dpfrgpdFuohNIUApT5Cmlw7W9a4D603xiFRhHjYuVY2dMmuqVtRpmf3Gbio/qjbVe
         Gblg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738942195; x=1739546995;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zHOUQzUPyOdT3w4jRKuGIg3i9ApsudVpLcIIKx7XFPI=;
        b=uEePpN35fVbTZlZETvL5uNnCnCDtJlzQ/lmCwPbUagXjoM5DdmKWOTLayJa6ZmkGUn
         jxI0sE4THO54vby5pJehp5atXkeG7cg2NcV6QYxZznbdXGr9Nw2sk//VHYXsd5Izc5sK
         fO8v6DlM+uQBhuTAvakbi+6wNcZqjFxPHST8Jf8WXDN74eFOQtXKCqGXtEgx4jdp5+/t
         S8zXAHVWyVi5VmGZa0wh7YDJmPFQhjxEQPE3ykcj4ja2/cpNU/Zipl4ZJ73rZikXWGNB
         LFyo5J20i2WzeqdWuWXUofGbG/1bjtDt/rJWzA7LomCkqPXPoy5eSGBenkZYYob7/QDA
         vI8A==
X-Forwarded-Encrypted: i=1; AJvYcCWRVOGvGAFrzx0sOsgvpqgX1DuTU5j2wZfb4Ezx/GUYdfC5GzMdDA8SLng4aX0rKEapy0OkM1iWhB71@vger.kernel.org
X-Gm-Message-State: AOJu0YxD5QomuZ0kRdzcGdmwtNJI4jqZRP/ELTGeBH0F6J/NEM5fOdng
	kn+nDeL13v77j5bq59Gur/IgRzQuMiWmSAbQlX2T+icC27hc+HumtnN0aK/5FKc=
X-Gm-Gg: ASbGncsOF1bhSjqIZItrV9jbRN7gO8lL8WBEj2d9BDIgYSZzsRIDqEVtjxUkPjso/ra
	XMeO0W+a7Ujgy0bjC/kV32KdxZSjFUcnDGYdQg5NH394q8/APcGpUOOV+e+F3dyRNbPUF6g7/Sx
	SQ0shFN8fXpuqlq11KtB2Dc+O8WNY8pir1DAe8SXz1WxrLJKQdURPR0bKTKGBEthfCIx2s761eg
	reXeh+davYtmkXqH34pnA0aDS4Zsr+EKrpeXDMVekvIxpN3d4QHDxEZg17BcifJXgXYAMrEyUx4
	pEDocaIwdB6VaiTlF91zJOGvlH4OPJHy0+bPlETRQFUeqdzjznJSfbJZOG/M+JEgkfLr210=
X-Google-Smtp-Source: AGHT+IGdqv97xrtBJoIofBrfUc3ARxL23naqLKi1paW3wb8UdJyaLrah7QQ6vKWacVX29yRHYn+oNA==
X-Received: by 2002:a5d:47cf:0:b0:38d:ca55:76c3 with SMTP id ffacd0b85a97d-38dca5578ebmr2259844f8f.11.1738942195412;
        Fri, 07 Feb 2025 07:29:55 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dc9ffd8sm57141905e9.10.2025.02.07.07.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 07:29:55 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Fri, 07 Feb 2025 15:29:49 +0000
Subject: [PATCH v7 3/3] MAINTAINERS: add entry for the Samsung Exynos ACPM
 mailbox protocol
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250207-gs101-acpm-v7-3-ffd7b2fb15ae@linaro.org>
References: <20250207-gs101-acpm-v7-0-ffd7b2fb15ae@linaro.org>
In-Reply-To: <20250207-gs101-acpm-v7-0-ffd7b2fb15ae@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738942192; l=1230;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=mxio+qKZ0oCarMDdKVLWSkQ5r9o/ZU/FWiQSXWeFPIk=;
 b=KhnOBxDzV74j8z58omKzA0IJmx9xWAFG5ot7hR2igY0rGVzQ/3XIaB3fQc+nNSealUF4hNWoB
 728XiqFZjDwBC7pvrW3YbBlrgsB5vVJjn4dEGIal63aDr6+7hODczPP
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add entry for the Samsung Exynos ACPM mailbox protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 896a307fa065..79ac2f3abff0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3070,6 +3070,7 @@ F:	drivers/*/*s3c24*
 F:	drivers/*/*s3c64xx*
 F:	drivers/*/*s5pv210*
 F:	drivers/clocksource/samsung_pwm_timer.c
+F:	drivers/firmware/samsung/
 F:	drivers/mailbox/exynos-mailbox.c
 F:	drivers/memory/samsung/
 F:	drivers/pwm/pwm-samsung.c
@@ -20899,6 +20900,15 @@ F:	arch/arm64/boot/dts/exynos/exynos850*
 F:	drivers/clk/samsung/clk-exynos850.c
 F:	include/dt-bindings/clock/exynos850.h
 
+SAMSUNG EXYNOS ACPM MAILBOX PROTOCOL
+M:	Tudor Ambarus <tudor.ambarus@linaro.org>
+L:	linux-kernel@vger.kernel.org
+L:	linux-samsung-soc@vger.kernel.org
+S:	Supported
+F:	Documentation/devicetree/bindings/firmware/google,gs101-acpm-ipc.yaml
+F:	drivers/firmware/samsung/exynos-acpm*
+F:	include/linux/firmware/samsung/exynos-acpm-protocol.h
+
 SAMSUNG EXYNOS MAILBOX DRIVER
 M:	Tudor Ambarus <tudor.ambarus@linaro.org>
 L:	linux-kernel@vger.kernel.org

-- 
2.48.1.502.g6dc24dfdaf-goog


