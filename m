Return-Path: <devicetree+bounces-212842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D03EB43DA7
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:48:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D06F2A04B6D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AACE93054EB;
	Thu,  4 Sep 2025 13:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ll3IK9Mz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D233043B2
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993696; cv=none; b=hruuI5vwoI9lOir6JVBOZ6TK4gUSV/qPIFJguyNu7Fcxqc0uEtIle3lcDl6FViNMN05+vLkCIEyWwWRZlDjyKacP9wbhmGMzHe7LOZd63dQlkC1oTZeTvv1TNolSeHrW8YmUmOLeH/k/2BpcqCvoQQ1sB9WQqwk5FYILiENzEiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993696; c=relaxed/simple;
	bh=5b17D17KCNLnqi/G2Z2dTgyoEWSeb8SG6sPYeTo5izY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DRhxf3/LExXPgBZgfE69oXshRk2qmi1iw47b8j3a7O3cjIwsH/k3TiidwyNjNtFlqK8Qe3Jbb3SWXPfTiIZIlh2HdELCSY4ybeSReHvEOOMWmC8pnaIobiHs6PqL3y5pej68li4T2p0bU5jCLG6UZ8cnhrJt0h9OUsInwACwXzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ll3IK9Mz; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-61ec2b5cb49so178921a12.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756993689; x=1757598489; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B5PfVj7z1U9Fq+QcRMWYVttXEzyn9uOL+vv6a+ytkds=;
        b=ll3IK9MzbAsGWBYZYSLZwhueudyH7E5mbvXA6FF7OJ+F5GdVVJ5/9kzlfA7Rs00Zdk
         wWLm4/l8mU3uD17NgaH9Dw9w8gvCt96No8IhNVO5h1BkSzxDdcvRKCVwAZCyUTRTFm9E
         xya6RRwKJVKmRupE+mBQoap7vojfayhu+UxgPYGMb8FY+b/YQNU8UpD4ilz/yqaFI8+t
         WpHkmXptPNt6EfA3sH5G8inCFiDVj2Hz9WEqfEwQEBt7CBpbLue/4Qn6wigdH+A93mJr
         dNGeduqbBTL23LYBgzbYpSnWmDnyfjZD9qbw4LWfpNUP4bTYAdRgYeBjz3ourSxYXFOJ
         3XAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756993689; x=1757598489;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B5PfVj7z1U9Fq+QcRMWYVttXEzyn9uOL+vv6a+ytkds=;
        b=jvE6Jn6uxFboE9lnOFQXIXyVVXj/55XDBu0GXmDDWPhJouR/8WSqb08CVoZeFzbkmA
         pt98heRrxxNdBNt47brW25XxkbCOmhZoAWDAm4yaWgjoYifGpqYYZQihXJt68zEhXMzf
         B13oCHEoXPdtiI/0EGv1HHq1fZzek9n+HEK4iWlxisigII9nZe1fNpoI6MgOqEUZ8BLp
         41ZJxIAVtblBJfyCbXYA/tR29jWpd7W6OcyeSE8/jUDHrTV8W6lwyiPoZm2Lrb1lDIXl
         nKLaI3xfK9rGstnl5t98PEyrll5UekeR9ETwD5mLbys+MVTp8HNOM9l4iJ3vdo7nJK0l
         kkjA==
X-Forwarded-Encrypted: i=1; AJvYcCXrQAcQgPuuokXL4DtOq1do/mxl6eg9TN8evcVgwr0w1bPUP4lQ1VEZl9sYZGZS3DdlLTvA5MPVrMQ3@vger.kernel.org
X-Gm-Message-State: AOJu0YyRO0zWBGzhYZFZ3/6hbezRK2EA13SlCichtRrF+6Lu2O8z4LEH
	jynjD2Xw2gDgrqmBSXhuxXJIlsnw+lPpvEPB3H1gN/J4s7IJCjCa3XkL5n0F4S/CS0A=
X-Gm-Gg: ASbGnctjNPB2VMwHCaMEisoE5PRKkzerc8v3DoShwv9juKJvpzL6InXc7R2tqWNMk4v
	nZ5YhGbqJ18cCrviAXTJLQnFdqzCarscBPrKHEFVSqFfCTebgsEYXMKtLZrLdohkkl293C0H1af
	Z/WB+UvFG5iHGnrSFgmPi0LQDlsqi8PBvNGKWNVIChefwhzd+HMIz3ooBOc0XN0kP0uzPmQieKa
	DfRCUuxMHi2Vwda3K7mMgiYagWeGOYdPb69vfDXIrgqmI2k1q0eWuKFMuldRSqqs8tRgkTEMCra
	LGBT+dikJEX3OWp5cCSL3iWptk9nizNKDY/jDO3RPvXhmQHDE0tudm+RZM6j57mUZ2ig0al3/8N
	3QAwWlxEpiDLq8OF4XGKe+TEuriEGRUNB1ODEnl8=
X-Google-Smtp-Source: AGHT+IFXmHyLiRikp8i7AT0rm9igyDk82338TdO+dG49oonCsmp2DJJwv/hKJNb9HHXBa/ePNM0EKw==
X-Received: by 2002:a05:6402:354c:b0:61c:d7e5:47a3 with SMTP id 4fb4d7f45d1cf-61d0d365421mr10482985a12.3.1756993689530;
        Thu, 04 Sep 2025 06:48:09 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61edb0fdf1dsm4243221a12.18.2025.09.04.06.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:48:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250831-usb-v2-0-00b9c0559733@gmail.com>
References: <20250831-usb-v2-0-00b9c0559733@gmail.com>
Subject: Re: [PATCH v2 0/3] clk: samsung: exynos990: Fix USB clock support
Message-Id: <175699368813.172086.8536010951360222334.b4-ty@linaro.org>
Date: Thu, 04 Sep 2025 15:48:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sun, 31 Aug 2025 12:13:13 +0000, Denzeel Oliva wrote:
> Small fixes for Exynos990 HSI0 USB clocks:
> 
> Add missing LHS_ACEL clock ID and implementation, plus two missing
> USB clock registers. Without these, USB connections fail with errors
> like device descriptor read timeouts and address response issues.
> 
> These changes ensure proper USB operation by adding critical missing
> clock definitions.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: clock: exynos990: Add LHS_ACEL clock ID for HSI0 block
      https://git.kernel.org/krzk/linux/c/eb9bc162775cabfc4cf2b37cb0d3c2c2bf4c4b54
[2/3] clk: samsung: exynos990: Add LHS_ACEL gate clock for HSI0 and update CLK_NR_TOP
      https://git.kernel.org/krzk/linux/c/d0563d320b6014a8d56170253fe0aec524658b9f
[3/3] clk: samsung: exynos990: Add missing USB clock registers to HSI0
      https://git.kernel.org/krzk/linux/c/f00a5dc81744250e7a3f843adfe12d7883282c56

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


