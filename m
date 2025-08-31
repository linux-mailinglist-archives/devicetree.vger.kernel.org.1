Return-Path: <devicetree+bounces-210915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F97B3D24E
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 12:55:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A77803A19B2
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 10:55:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 976AB24679E;
	Sun, 31 Aug 2025 10:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d7ZEfBg8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1B63594E
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 10:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756637750; cv=none; b=uDqMaZD+S3X4l+ZP7IrbjDFUUg/glWFTBDICrY1cMWEsZSk6DLF1f0jecIWDw78AIT+Z5nYc12lc/071j800EejtHHawBi1cX1J5fqe1zgByd3Y16T3UrP6arbMFCmmOdYYPxCUJr2c85AVreTZvZ9ju9D8GPguIvUWFzbC5jUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756637750; c=relaxed/simple;
	bh=xi1fLpfGfUX4eRrB19iaWWJsrywWFFqGcHHL0PuDem4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=BNCplU4xef2IC6tzhdg1Iuo3rgv1whTYq+uv3CNOOLoLTCIZLMNeub0yP8xyRc9VtsDerKMArZIxnUeogyCLRDEAfr9TxE9dizg2DWMQxDzGrpigxismAD8nj3EbmnX704grHuN0SOTUmOAEdDiWWROxALfWzhZdVV10Y2WGzZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d7ZEfBg8; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aff08beb8b8so32372066b.2
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 03:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756637747; x=1757242547; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y9Ikcisp0DawIJEHv4fsbvQNKoZVQCvvL3i/2eqE6R0=;
        b=d7ZEfBg8w+/45HKi1OdAwAejyFJwpmygh5Y7puMvIEh43PxrcgBIKbtrbWQ/SKKdzB
         1GvqM4nEBa5w0JE+WgOuQraSM7mp5pNdvf6rRioYh0VttSvrTtRHNVN72sHy+W4yrXqj
         dO4Z6kHDMTrb9VzGRRlK9JDpy9Tr4WQcNWOa7llccqBLeJvMQ3yyJl7JYjCII36d4yid
         0C3/V0lI5i7+cJJwjpsOjQVsMZhi+9d1EnCwaVLjsATtkfWgCgValWscRcpUtywgqbaL
         kZFCwPc6P0i3XL3JGo5Lf5LTdecRWjCUEy3IjcSFytRmU/9xfz/bYEL0WJY70wKoJLin
         /LjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756637747; x=1757242547;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y9Ikcisp0DawIJEHv4fsbvQNKoZVQCvvL3i/2eqE6R0=;
        b=PJt8xf7tOULmHZPPp3xNVeg6P5BlBzU9SvxePl0Z4HkpJjEDV3hkOOsn0/lz7z31Aa
         6vDFD03qQrWcWEzGo/jvTm2MwoOW4FIfWxB7F7K5WlozS/xyqc6HhxTwuNTmgoJ065GW
         JCtV1/2NyDXGybPA6XbTCCHb9EcHhXh6B6RqoXbWnMQn7PalesS/uHnVJyJ/2bjXuxlg
         eLrzAJz6fEW3UI+7yUjvxDVjh/Ec2W0EbzzsiVMQxGWkHlqqcGqVxhLUyGAGMVNF9TlH
         UFkhXdBv4iaj8PapgPH79WMhaZBoPpC66RVNZAX/5DGD7CkgmJj4YZBJATOz14xYTLd8
         51FA==
X-Forwarded-Encrypted: i=1; AJvYcCWjsXA98rztjSmrWOLtBsQmtxZFlpzBBHL2vlfu5/zy321O1k8e0hZxp64NdSQ4QY0XZkTxNKfk61+K@vger.kernel.org
X-Gm-Message-State: AOJu0YxA7hAARkmD6yXc5Y1n0nt9LKsbYT8WmZpGC0koDHGJWuUESWmG
	Xri+BBtFRoIvb91naIyDvivLZ97Yi4kvKyd+dqY0vlU+ipyiXpKb0DTTrTJi9lfBF3N4v98z7/A
	KnX6Q
X-Gm-Gg: ASbGncvcf7Ooww7MQ9WGLVpB/IkiIkd2dljWBf99786TA5ex0E5b3IwH0Jd9svdgM1x
	txDDkB0u//rQMwecMHU/SuaoHk3DxM/bXuuGVro19kilAS4wGEBFSxz/UrIWszlA5wfjLwoIPIE
	i4dvgAhcwWc6gofasy+1whhwncnwa0hqJrja0lomgWRlLyXyOaIwugz3Ov4H4b0qJ5jFdkXIpYf
	gXyBoGs9V6GXCt6xhOgmy/SRt43H+KEJH9vf7+g13YQ2OAhqnjZQgBIPCD2LMMhj0m5ON3SRXVr
	bKFXv/3uLLhjyXTa7Zt75kwficXdb2u40DThBuA8qv3tiFWbzV3CJUWiZc3ZvM0AkzYY99IWK+D
	BehMbVmGAEj8F4J87CHgCpu4wKv2oqfNHyJ/olTmUPuNLuL0xTQ==
X-Google-Smtp-Source: AGHT+IGQnHEGxYKHduO0rCDVlsbQla5BpUnmcBYqLI8jWWy/4+T75FA5udztvTzcc7SvlOo9rfc4BA==
X-Received: by 2002:a17:907:e8d:b0:afe:d218:3d21 with SMTP id a640c23a62f3a-aff040b2788mr405254066b.4.1756637747009;
        Sun, 31 Aug 2025 03:55:47 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff12a6b404sm468318066b.88.2025.08.31.03.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 03:55:45 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20250830-fix-cmu-top-v5-0-7c62f608309e@gmail.com>
References: <20250830-fix-cmu-top-v5-0-7c62f608309e@gmail.com>
Subject: Re: [PATCH v5 0/5] clk: samsung: exynos990: CMU_TOP fixes (mux
 regs, widths, factors)
Message-Id: <175663774498.35421.6694005756444857104.b4-ty@linaro.org>
Date: Sun, 31 Aug 2025 12:55:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 30 Aug 2025 16:28:37 +0000, Denzeel Oliva wrote:
> Two small fixes for Exynos990 CMU_TOP:
> 
> Correct PLL mux register selection (use PLL_CON0), add DPU_BUS and
> CMUREF mux/div, and update clock IDs.
> Fix mux/div bit widths and replace a few bogus divs with fixed-factor
> clocks (HSI1/2 PCIe, USBDP debug); also fix OTP rate.
> 
> [...]

Applied, thanks!

[1/5] clk: samsung: exynos990: Use PLL_CON0 for PLL parent muxes
      https://git.kernel.org/krzk/linux/c/19b50ab02eddbbd87ec2f0ad4a5bc93ac1c9b82d
[2/5] clk: samsung: exynos990: Fix CMU_TOP mux/div bit widths
      https://git.kernel.org/krzk/linux/c/ce2eb09b430ddf9d7c9d685bdd81de011bccd4ad
[3/5] clk: samsung: exynos990: Replace bogus divs with fixed-factor clocks
      https://git.kernel.org/krzk/linux/c/a66dabcd2cb8389fd73cab8896fd727fa2ea8d8b
[4/5] dt-bindings: clock: exynos990: Extend clocks IDs
      https://git.kernel.org/krzk/linux/c/76f1e2ee545b3165e1e24293b59414699118266a
[5/5] clk: samsung: exynos990: Add DPU_BUS and CMUREF mux/div and update CLKS_NR_TOP
      https://git.kernel.org/krzk/linux/c/8c82bb53669b1e82435b5a00a170b7c079940b82

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


