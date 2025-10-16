Return-Path: <devicetree+bounces-227770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEF4BE4663
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:59:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C56ED58350D
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 050DC36997B;
	Thu, 16 Oct 2025 15:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b1dFz28t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F1E3570C1
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760630333; cv=none; b=oQ2OQxg5uAZX3s8tHwA3OpJ/Ynf3y/kyasoXQH5fZBivo3LH+SyK6w9aLj5lzDhTF/RBWBnOKAzMcb+de0Af3KiTlP9wIHoqj8Vo/aSRmXhR6AQoLGEZH7/OuGdikoR/tqAehDKHpgLOLTrF3/4AP9ty2SMsI8PU84a3NXfa2sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760630333; c=relaxed/simple;
	bh=wrIYG3Nz5u06Jww4oYJhqOv0hyk+YRHCWFWVoDPnx30=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=N3cTrBMHnhYlqxhiGNdPUSeiaGRVtCkyyEDMBBSuAmNqe6mayJeaPX2zqY4Fvuh1/RveMhgUPVhPYpnnbs9xQEeBpIhgcda2Hn4pOQALOjYuUTjtYw3oyoLHj2EQuixNvQ9pWDmQ1kaLoCCrdoxVrTHN4DSPQlXK50r2UOGW/nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b1dFz28t; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b3d80891c6cso379111866b.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760630329; x=1761235129; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+EZqCABiIEnd0Y9dNLKHtIhbcAbjGjEboA5l9h/vQsc=;
        b=b1dFz28tP4kDfYapznkomcgQyOmlibnlk7zE239fmhoWkqEVzKrVjqpBKTopW0zRbm
         peNqWANLLeMg6NndRWXa1qXRx/zH5KemFqslY/CQgfpZSLM4zaefSJ1hg+NoTolhahAV
         5QDL2lzm3siNFn3NSIIJApd5EaP3pi2f+M3c9t0rbOffoN7DWFtZ2DrE7YeKD5PhuSzU
         vGoPhXyr80VsMLmY3UTmNbk+eHeDvmzuUmor+NNTPGgZl2dbHNUJcJu2Z+/OhY0CiW6q
         QH9rhUc3RxsZUWVc+oHeY5QYG5qa0dTWi5pydxEH45hiWCfiVind4dOMunI3jRvzYAWm
         sEWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760630329; x=1761235129;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+EZqCABiIEnd0Y9dNLKHtIhbcAbjGjEboA5l9h/vQsc=;
        b=SEHq+G4Nq8bDk5OcwHZe+K8DoN+QbkGd6YK22RsTfNJhYJM/n+ZOhGFP3WIuHGFNg2
         kx401SH+UADuWEs3a/kmIUUDhLiUmJt34olZUE0Ypvnb4PTR9xbYluq+3400ewpo+7et
         xXBow3NczjHaTPBrkqgP8EiNRTHM6/f1TpmSIt7T+Xf4QsZcrqKMV6uVXMHjMPX9SEA1
         KEYcQoeohRbHR9AeRakXVqid7xSE8igVefz+6LMe7CqrNZ4ozmTErBd6exnujXSdEkK/
         Qw7yEgHsyL+NbvCfvdCJcj8lDJ6ZCU9zIQpqj5TOf3aOuSHlMykYlKapoEWxsVAKnb8B
         NOBg==
X-Forwarded-Encrypted: i=1; AJvYcCUlC+TfWKlQWHxLqrqH+CWKHWcMNbtkYU+EFfHJ02pY4fDn+ABOHNdXYydHuIcoZVHSvYVOp7JBvHo5@vger.kernel.org
X-Gm-Message-State: AOJu0YwSrf7lupFdcFGa1KetOEACcgOeyjSoCxz0jaSXnpgGxokgQ2gN
	V51TSlILFJf8JwUz7MCvvKLi12V4v7iAcHfvFC7GTyJUG9CSrtSgArsKMcM8b4WX1uo=
X-Gm-Gg: ASbGncth43Mcc3DaIJ8Y8/RL4fVDG/UQElYutLw402EcLtWysdz7eFoimd73pAA8qKL
	1L9pYcYJE45i2m8yOUKbLQXfCqxTsRBz27mnhDpCxbW/N7Fl8L+thJyYzj/8d/K2k4hoB09dUU2
	k+OFpZk/qSbVt0BLANmQZyj0FrtI84xynQzMVSotKFG6QwW24/PM231kd0JXBTwhzA+hrf/wxSW
	brqEkKlP2JK77CujyiiYgFUtiMKf0RmBGQ/X5OTnbojYF6s3O8LS2JFy7XEnEb5D7aa3FGd++jR
	7/xu8yQhudcX/WgXqUNljqPvrkRrJNeongz0nsk/Q7pLhQuvg2pcrV74CWUuR3q/25ecaW5Lwmo
	khRcC+cHLquZbaS18BVDbUhBjcBXzdmb4JuDxr4PF+oUohD4NHAZZfG+recIvlqHsijd8pwe+PQ
	0NyMFKMffyofwd/aPFvicRX+71EdWhWgEucUK2+rKqDfS4PCQOSbVp/NI1e8s9
X-Google-Smtp-Source: AGHT+IFH5MBvT1BbvZNO7LnK4pIDcpdPVfm9z0TGyk/r6VaVSo4jUiDBCHuy36yU9LuWlmcxA0MaVA==
X-Received: by 2002:a17:907:d27:b0:b38:49a6:5839 with SMTP id a640c23a62f3a-b645d20f122mr99022466b.11.1760630323679;
        Thu, 16 Oct 2025 08:58:43 -0700 (PDT)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccccb4811sm549021666b.56.2025.10.16.08.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 08:58:43 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 16 Oct 2025 16:58:34 +0100
Subject: [PATCH v3 01/10] dt-bindings: power: samsung: add google,gs101-pd
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251016-gs101-pd-v3-1-7b30797396e7@linaro.org>
References: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
In-Reply-To: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Add support for the Google gs101 version of the Exynos power domains. A
new compatible is needed because register fields have changed.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/power/pd-samsung.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/pd-samsung.yaml b/Documentation/devicetree/bindings/power/pd-samsung.yaml
index 9c2c51133457112ca0098c043e123f0a02fa1291..c35c9cb0115d79e5c36142da2c2a5dd30cd2ad47 100644
--- a/Documentation/devicetree/bindings/power/pd-samsung.yaml
+++ b/Documentation/devicetree/bindings/power/pd-samsung.yaml
@@ -19,6 +19,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - google,gs101-pd
       - samsung,exynos4210-pd
       - samsung,exynos5433-pd
 

-- 
2.51.0.788.g6d19910ace-goog


