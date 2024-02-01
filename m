Return-Path: <devicetree+bounces-37556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC13845596
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 11:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F4F21C2A5B9
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 10:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16CAB15CD54;
	Thu,  1 Feb 2024 10:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xmcEASgn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4372415CD62
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 10:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706783806; cv=none; b=aNGrns7c90iwuhSq1NlMvD3962UokqynP91/lTmDNm/CP3AVa90FeqU+5hFHpgmQi0y0gHiNaCoHfY4coo6sqog+nfROFexBKIkOQAiW+w9knV/bqzOf0P2mBqEQidN733xd9m232lJ4SYTMesOKkDwY5krI/ydhEsIPt434MZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706783806; c=relaxed/simple;
	bh=KoUoo05PoeMgsIXh1MaXpyrR3tB7VLmmtIe7dRhHo1Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uePuLcMTkoUmNj0FeNQd/Xry9anBmbjkJgGMLm743m0nLacS/QCVv6C6RG9m6CsZlGlDatL7YwCaLCOZjI8G6LAGzc/wQ5RUpCLaqbgxRxwfkmZ+Ir5UH6K0WGwjZ8fjCVQ8oKv/Uk1bTmOanoNyihuR5nSIHP9x8w2wOxkkS2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xmcEASgn; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a36597a3104so98724166b.2
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 02:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706783802; x=1707388602; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MTNlR48ERg/KgHNDsxuPiu78lqC8QL37sq2ab7fXT0A=;
        b=xmcEASgn+/5CnFHqzob7+KvNJmWbM0zu0naQAN3IldNpooH1cIcJs1s9dQgRUcCw6A
         RQvu0TwtQTiGgNRksXsoE6Er3UgyOojdh24GI6Pz/eMatSa0HWWgJcHqRWQKhYhnBI9C
         qjtQZgX7TSOyVsADDsw35j3y+t8WfTOQ5Waqgrk2/f2jVDQpA9yjhBLPfiKPD/sYUxtO
         VzQ+lgO3jFAEth9B/YE1l3Nxq7SnODD/2vBMH8Yx5Fije6EqBioLepxbh3Vjzs9sL+vy
         4m85GpnYVAn58suCXTXGsqxnrP+X+sB9QmhHUONMFZ/HYe26umHLS/mE+kczNq3Thlzf
         YQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706783802; x=1707388602;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MTNlR48ERg/KgHNDsxuPiu78lqC8QL37sq2ab7fXT0A=;
        b=I/REsoa5gkpTt1+Pw2c9yP1B868yCqjCXTlvnATZqq88dlsWotFk+Vi7fy9bcefAoa
         jBVK5xHo72iPF9fCgZCWvYch3RuhuBZ6yUHq6wEJgTHx7FonbLjBUhtcx0N8DaX9d6t+
         9YvvM2gVZR/Leax2GLR0wCzk5S9xrbPltiJWgzO8ESwCR46ZSkQtXkx1mhFAYooq25PW
         iSKVsZZUIXcWVcbxr1YVUe7MWva5YJ0YTGiwCQD3iwtOW0nFbyv2u/rj5mdQeaKRJfhR
         iXkrvzajIPeVU8/xF1lGRPRTEgoJj61fKPSSN95rJc4Our21LOyxcIfBY1e0/yEmjKV6
         C03Q==
X-Gm-Message-State: AOJu0YySSO6dyyWbSsAM6/7IOj0cVDUZLpTC9TXk4JcZUnKadZVicQx6
	cNpWn4ZPK1B64vV8ZrV9efGGu/PKkLhVKP+1EMQQoIsoXg/KmB6f+56UTSHObq0=
X-Google-Smtp-Source: AGHT+IGIi9dH2E5nse4iiP63tSJbSGVMRAUxwXX1cDJxXIFPAEiSDS15vicdxQG9UeoLEIiNUqO9MA==
X-Received: by 2002:a17:906:b357:b0:a35:e5f4:fef7 with SMTP id cd23-20020a170906b35700b00a35e5f4fef7mr3058227ejb.68.1706783802460;
        Thu, 01 Feb 2024 02:36:42 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCU6c16TjBghDFlP7ujSZpDA/ME4RzgXzNnqb7Ol8iQgZAms9X5JzptAbD0OQjeMzUKTMrvp7gIx812B4JH80QO9KeNFSEj7QWpJ789H1Ji9SviGlCn/uWpDddwGq6iD4p+fnTdjmRa3aC312qFBW60z2E+q5daXBACt/7ihg/9QnDU2AFe9OkX4Q7cU1+fcS8AXk5KyRJsU+KJOC+dVouUHFCJ3f1N962G1U3aRy6NBh5GMLkV9+4oltRlvglVZrdDydFEkV3/dzjD4fI5rm55zgolbSdBCaT6KKMExHyPsPmD4DxBTbMNFTo370fOE25hsqrhwhpjAiUKG9nYdvSkZijwTyROEP3+h9f9AwJA2FSlS2stN+PeUDLJ77YlxqpTocaP8lIsXXW+N3LYVnnqho1FEMc8zN9LDoyst1Zx1RedG9EtCOBYrBizJA0ZFafyd8cm0qddE5E3SBD1ZKXC3X4FYAcKFfPcCPFPUQGaA9Q==
Received: from [127.0.1.1] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id ty5-20020a170907c70500b00a35a8571419sm4552308ejc.135.2024.02.01.02.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 02:36:42 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20240125013858.3986-2-semen.protsenko@linaro.org>
References: <20240125013858.3986-1-semen.protsenko@linaro.org>
 <20240125013858.3986-2-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v2 1/3] clk: samsung: exynos850: Propagate SPI
 IPCLK rate change
Message-Id: <170678380102.179994.1389430718462116561.b4-ty@linaro.org>
Date: Thu, 01 Feb 2024 11:36:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Wed, 24 Jan 2024 19:38:56 -0600, Sam Protsenko wrote:
> When SPI transfer is being prepared, the spi-s3c64xx driver will call
> clk_set_rate() to change the rate of SPI source clock (IPCLK). But IPCLK
> is a gate (leaf) clock, so it must propagate the rate change up the
> clock tree, so that corresponding DIV clocks can actually change their
> divider values. Add CLK_SET_RATE_PARENT flag to corresponding clocks for
> all SPI instances in Exynos850 (spi_0, spi_1 and spi_2) to make it
> possible. This change involves next clocks:
> 
> [...]

Applied, thanks!

[1/3] clk: samsung: exynos850: Propagate SPI IPCLK rate change
      https://git.kernel.org/krzk/linux/c/67c15187d4910ee353374676d4dddf09d8cb227e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


