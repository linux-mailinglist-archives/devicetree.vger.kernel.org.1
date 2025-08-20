Return-Path: <devicetree+bounces-206665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 51806B2D381
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 07:34:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A73D17F5F9
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 05:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CCF329C327;
	Wed, 20 Aug 2025 05:34:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KKRetTpz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963C421CA0C
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 05:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755668088; cv=none; b=elPOXPKCko4QXU4Rt0Nt4+vmkZZnYvPd4Uuqxrnumr8aOMqEw7HfJITJwNISVs/2/VL6aQYy1m+F7dlknQ5yGru2flkhhNAoyYWz/GFmpZrKR1ADt+ktL33AME/tUORMzZLUAI1slYAnnuJ9UkDXlthGNJw6DCa2SnXT26XgZzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755668088; c=relaxed/simple;
	bh=4lF2BPOuxlu62CFYhKGsyHeTVBRlSliSNiFjd1lyq/w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s39lAAwyL+s5L+bWoGR/852QPjob7wdffHrXOHQfw506xj6Hp6c51Hmnq7dQoW74xBnwzsFdDOrM2fDb9LM6s0OeDVyj5Ycu/MglEF69x40586oaapnZkbOIFfrvtwRx2JP9KsUqiwk3dG0+8jT15teFFU/K1l6pbcUeZS2C+WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KKRetTpz; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-45a1b0d231eso33435025e9.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 22:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755668085; x=1756272885; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Eil33dYZ2kqEFHYeERb3SkCrv/7mpVOIyPnTh2fbPSE=;
        b=KKRetTpzW7kVOkDOFJqJ7XO8Xt/o2vTVN5XT9yq2wHB/oGKF7WMc0CUB7ozuzcv/bd
         d9Bkb1pjkthqd8bTmbximC8q0NVCXwm9gyBlo24ZK1H70iDENQ1WXcNDK7VYG40l5Yv/
         JV7qYn4k7IUO/ISaeVqi7gLTLtATfvWFrwNpdwY91a34n19Oo5HqtCG/WWCPv7uWcMjv
         wQR/O23n03NrLH6zz6sOil6Ra5koClydkHb5o2myIWV6opRqSBT0vilgDjYQ4mONowo5
         iR2tQa/oaTu3PrsyGVNKnp8M4os3lTW1hOBfolSrZaEM5awhqj7JTo9Yed7ikeAick5c
         38bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755668085; x=1756272885;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Eil33dYZ2kqEFHYeERb3SkCrv/7mpVOIyPnTh2fbPSE=;
        b=EEuBHk47kwKBY9bHm3tn+SO85EnIKBLcNfjDXiBHlCPCPrcjZEASAzLpilIN8h3R2T
         nXBFKfcI9LkNe9cUsLCZBLvskMmJqjkNHUD6ClNV047tfdoSI/Mvr0jlt/ATaRZ21SVp
         +ZagqnwsF2y4XAqK81tz1ejRTfoxhT7Yn6lflW08PYkXHx6tiqTohRpjXIVUi/sa51fG
         dGEGpLci9KWNpwk6EQEP/6nW9BX3xHPBqDpVkKnnz4LXjdt87qlHoHND5bCkLJlInOkF
         3V5Mr8rBjvgyGRkpt7cF1wG8Q2JjFC2ebXjEq+J+ZykmpmSeGiXL/b6lZfhoxuPuc0dJ
         SZHw==
X-Forwarded-Encrypted: i=1; AJvYcCVw1gtsHBIqJXrUYO6pP1EU9yZz+mKz2xrRvNSNYmOxkCEBaM2wKOWkyc1b9VLzig5vI448uDqzGAkn@vger.kernel.org
X-Gm-Message-State: AOJu0YxB8DpBXRUqxEmUHy+rN53gmpHFqu3B7Cy2Xe7GHanAwIstJp4s
	hdu7KG5Yk8Mw27YbeA7w/5RkCJl6LBrHVE51q4EnFGTQtQmssr1eOGophuy7TU0l4/c=
X-Gm-Gg: ASbGncuOqYW39CvcRR8dYmnz1qDuYupN4izaU5oyuhcgC6kUgewq3r9CrMxD0qBx8Yd
	BdET3uLXuLLNyE50+gfmc7AfPrqdpJoYv+FxdXqTBg9lIYxFFyMrGcq/kv9LDy8fLe150xNa+7s
	2d5zWIfF7CHGEN3e6xSzBcYKdyzptn9Q9BvCGwthYiotgUaQ1jz9J/w+UDoP2PMp8EqJ3ENXbbA
	mJ59OETAB7NZLPhJlhFF8cDEYz4j93rSF2bWDPbN1WavRKtegD3HFkbk+3EpQUxkWKuAIAc0z53
	HuswXcjuztzk7z3eXj4Q6Im/Kg/O1+PlFMSqj9DtltASlA+ug4SDWYX/rGLEZ1YBuP760pBVGez
	94NHLJNFpoRjDNnzo5+B/+02/T3bTXw==
X-Google-Smtp-Source: AGHT+IFWjACp5DWGBY5B9uxqsY3tmY8UgIQcJsPet9ECXaI1irpOud50Gju5d9X1c0y9aS4zy+fv0A==
X-Received: by 2002:a05:6000:40cc:b0:3b8:d08c:cde5 with SMTP id ffacd0b85a97d-3c32e6fe6ebmr776353f8f.43.1755668084871;
        Tue, 19 Aug 2025 22:34:44 -0700 (PDT)
Received: from [192.168.0.251] ([79.115.63.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b47d096e6sm15117535e9.19.2025.08.19.22.34.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 22:34:44 -0700 (PDT)
Message-ID: <e0f7f062-dd12-4aba-a1af-5626746059f0@linaro.org>
Date: Wed, 20 Aug 2025 06:34:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: exynos: gs101: add cpufreq support
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-samsung-soc@vger.kernel.org, Will Deacon <will@kernel.org>,
 kernel-team@android.com, Catalin Marinas <catalin.marinas@arm.com>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 devicetree@vger.kernel.org, willmcvicker@google.com,
 linux-arm-kernel@lists.infradead.org,
 Peter Griffin <peter.griffin@linaro.org>, linux-kernel@vger.kernel.org
References: <20250819-acpm-dvfs-dt-v1-0-4e38b95408c4@linaro.org>
 <175561687189.581847.11419028447160198230.robh@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <175561687189.581847.11419028447160198230.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 8/19/25 4:22 PM, Rob Herring (Arm) wrote:
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/exynos/' for 20250819-acpm-dvfs-dt-v1-0-4e38b95408c4@linaro.org:
> 
> Error: arch/arm64/boot/dts/exynos/google/gs101.dtsi:75.32-33 Error: arch/arm64/boot/dts/exynos/google/gs101.dtsi:75.32-33 syntax errorsyntax error

Thanks, Rob.

I should have been more explicit in the cover letter. It fails because it depends
on the clock definitions that are introduced with the bindings in:
https://lore.kernel.org/linux-samsung-soc/20250819-acpm-clk-v1-0-6bbd97474671@linaro.org/T/#me3cbe2a97485d19eaf505ad23202f20a21305dd8

I chose to have the bindings with the driver patches as the clock definitions
are needed in the clock driver as well.

Krzysztof, please let me know if there's a preference on how to deal with such
dependencies, I'll note it down and respin if needed.

Thanks,
ta

