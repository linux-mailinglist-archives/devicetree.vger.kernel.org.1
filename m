Return-Path: <devicetree+bounces-189590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A1BAE8653
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 16:24:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD3331C235DF
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 14:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 723E7269823;
	Wed, 25 Jun 2025 14:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KfwENfvP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A20A225EFB5
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750861320; cv=none; b=ZngfMeBB6hWu9Z1fp/BQYpkfTlrn5xdM4u0ph9ItvNjEq1j7K1SVgRxIw8uZ48Gfpp2CEb4fZ29YyQNIwjTRW30VvKShrKq1+V0ot8CeYXG3O6SNvgNP5CR7BakzPLt4o3zbnF7VstklUSjZ9QkXWbp++TdBytjG4EsXcxtR5+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750861320; c=relaxed/simple;
	bh=DlB7Q252ankMqOJ6UIJLWrlxrGtVqX6epo2WRrBN/7g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=mEMOgkw3G0aHO7hoHubcauZtBjltItqL0u660Vw3gD+dHJJTcdY3nxrYl6+mSO9XGGKDitc0fwrrAZKj69m1tjq2IOQ2GwBp7zOn1fUi6DL5OmCMFsOTNQB5EQg9+PGYd8GBYqkYT7fxCdmkM1ymERK7/mVMD1ZKB1HO/vM/v7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KfwENfvP; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-606b39b19b6so1410954a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:21:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750861317; x=1751466117; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M3GGOIs1M7qewnK0dbN/1VCKv2nwsADPB2kGIBYK9J4=;
        b=KfwENfvPko+uVUHCtZF1p201lEnG2tYVu7x172POP0/VLNrWoLOgAtqqfpXWX90ta9
         +ATle29k3gaayDZCvOARIJFRZdpL39l2CJ7RepXufOecjNEoBz3gC7oXVU/rz3KXclWZ
         IN6xTE4/8CTysRum/rePQX0RBWGWVa70jFSqepBZ7GKZodbKwEJxSNlmkDTKhYsrU7NF
         HnQwG6BimYRjj6fVvYVyBI/haxoevXKUQL8d+WCDNosbzER99H70cjHhMsv8P8CfQ3Jp
         KaJ39FpFBHMhIBR17FLShkwHVvQ3Q/KKT3HF+9eInVP+OilXA+cBS1kXWqj54aNzKlmZ
         M1iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750861317; x=1751466117;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M3GGOIs1M7qewnK0dbN/1VCKv2nwsADPB2kGIBYK9J4=;
        b=PkViPDGIDvcwhUOUBQM6BQg1GU4lR/DE9weM4yCKDWlCI5GvdMM+6XOFFkmeXDBcyE
         XKlu1v5b04ifCF1q1OJ1RZF5liwZr5IsEJW6Illuhu8GzcOknPN5tOSx1zYnG8jOwDL6
         /VOV7IfzGm1cWXMTzlHhE9fKpE3zlA35rStdECXqOLjOQkRphcpSX3S7953Vl/Xot7a9
         wc8kdzab7iLj3PJKFz9wNnFFXaJazYplLGjGyuhdxm9LvMwSqobq0xxEEfZN5mK4v8Ew
         1EP7E6TCPZC+BnVgpGBxbU4h+uJ6/BE/jJuNYkSMO/xxVZWPx9NuR5WilDnsdtejXuO8
         j2Qw==
X-Forwarded-Encrypted: i=1; AJvYcCWSF/xaVoNjjR1VEZbiFjnpppebtAgA8p0Z3sW+OJdtp2G2h/VYXiNXI3z4mJ6GY98L9XrNwQUAAwJ5@vger.kernel.org
X-Gm-Message-State: AOJu0YyGC2YV9s9uaVKJ3BrotGqdavUq5yz8TpOZ7K3GFVhgmTQqhFh5
	D7D7uh3bbgerQlN2q4CwiSnJY1CKaB9/IbHXErZHPV4BdYrjd9ORgfEX67UDD5c4NwU=
X-Gm-Gg: ASbGncvaHcI0FNp6q2KvKr3PUsWKkfuG36f4l1rLEWeMjmbHPxUNlYyax5KDjkTHKH1
	OW10SkQM9j7RVrclaCMwcqAYS+mnh3ZFdFrvczkfOLxMkm9S6eU0XRcRbes8dIYYvl3BxfSvhYr
	AS3cO618jIZv/QhHw2/jb541K00m+c5XcwtsNkgD3OmC2oUvOX5Vb21GgMDdZIxsO6Lv2KETPZU
	bF/cx51mjKxigITDpz1zO6zTJ3o2l2iYHIC9HcdjRQr5YazwonubamvwkkKGff722a0abAgoT1O
	y/kv1dfGdBEVpBtExBk8zdZTJ/lukB1QmNUZ/STRryz2p/Xtz/MFGpAg/JXucQW1NTzyMGbTf3y
	3LtNd/A==
X-Google-Smtp-Source: AGHT+IG/VagrGt6bbb5MQZ1l2HyN6eoH3YHZ865LF4suVMe/z6ykxO6VmgeAkdlRkcs2VpPNynx8Og==
X-Received: by 2002:a05:6402:2714:b0:609:d55e:8a88 with SMTP id 4fb4d7f45d1cf-60c4def71bdmr915957a12.10.1750861316962;
        Wed, 25 Jun 2025 07:21:56 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c2f4682cfsm2588550a12.39.2025.06.25.07.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 07:21:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>
In-Reply-To: <20250612094807.62532-3-krzysztof.kozlowski@linaro.org>
References: <20250612094807.62532-3-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 1/2] ARM: dts: exynos: Align i2c-gpio node names with
 dtschema
Message-Id: <175086131563.117782.7215160413435880072.b4-ty@linaro.org>
Date: Wed, 25 Jun 2025 16:21:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 12 Jun 2025 11:48:08 +0200, Krzysztof Kozlowski wrote:
> New dtschema v2025.6 enforces different naming on I2C nodes thus new
> dtbs_check warnings appeared for I2C GPIO nodes:
> 
>   exynos4212-tab3-lte8.dtb: i2c-gpio-3 (i2c-gpio):
>     $nodename:0: 'i2c-gpio-3' does not match '^i2c(@.+|-[a-z0-9]+)?$'
>   exynos4212-tab3-lte8.dtb: i2c-gpio-3 (i2c-gpio):
>     Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'magnetometer@2e' were unexpected)
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: exynos: Align i2c-gpio node names with dtschema
      https://git.kernel.org/krzk/linux/c/a0c7a6b5f42b29dddfc359717d620e5b1badb9a1
[2/2] ARM: dts: s5pv210: Align i2c-gpio node names with dtschema
      https://git.kernel.org/krzk/linux/c/a24cd2f207efa73d7ce8089ce4848aea99f48f6e
[3/3] arm64: dts: exynos5433: Align i2c-gpio node names with dtschema
      https://git.kernel.org/krzk/linux/c/42873b118abf3e297e012e52ddcae2e5b1f42214

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


