Return-Path: <devicetree+bounces-209809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 857E6B39305
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 07:31:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36CCD461887
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 05:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39F02AE8D;
	Thu, 28 Aug 2025 05:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tcJKhJ2r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C394111BF
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756359063; cv=none; b=Q98FxRiuFe3DTY/rYhkb6Y5CiFBGWjbMV9os/Bg3zyXx2EVID9ky6EUltS3pDp0ZMCyiHIzs2YoCt2cc9uk7d51HN8pn1LouK3ajx5oWIVz8TWdirfzRqVkVqcZgk4GXj97QMYj3Ta8oG6Alg2I/lxLa2YIjraOP7cjOTFYbZGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756359063; c=relaxed/simple;
	bh=5zKrEAuiGDKnNed1dJm/eqTT9oB2Ui5PKZfLN3hNsjw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ljl7A1q0Nq/12vq0UecnfRmFduwuIvPn6q8ThTFIj/TT7dU1LMrBRcWh9gLZ8nEc0gOD3yMtkmEIArPBCLKAyzAs123Dvf4kYMscuEyhkmACXHqMTC/wrgD7FKFq17Jf0gow+7BflA6rcxhDrnT0D6A5uxMIiTdqG1ElBa1g1HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tcJKhJ2r; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45b618e067eso10929865e9.1
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 22:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756359060; x=1756963860; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Dukyz/wwn5n6nYfGASrhAq9EDpRCS5QgtuNGs9mvY3o=;
        b=tcJKhJ2rjU8XiF2creoqkOcYEVC6e6SsYdTiMhu3oxjqw4HyZZP5CRcQi1Ufj4whg+
         JYbb2z60MCXFsuAGriWHxewudJ/gzRJ2AHCmJShNkH/niWb3CW8hYCxj6aA5QDZxEDdE
         L8LwmCudkPpl6tN/UiQgRYdtcjwgTnV68z/YgSWYMVwkOh0/qhEP4xBGjfuQOJJZCb0E
         rOyKLnM09qdk9TTip/XKzmZ5e2LkbXQ3OQwLc7m8MO6jJmb5LbMkFQxbRn+Jx7diEAWf
         swdogQWCmYa2BsTgAtr/5gJ+aHSULLzNCptplGychuwMWBq/WACHcbJQr89MNRGYyMN+
         0EaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756359060; x=1756963860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Dukyz/wwn5n6nYfGASrhAq9EDpRCS5QgtuNGs9mvY3o=;
        b=gFAzdQnxsgZ1wM3PkaUPG8KKvSiro52M914Z/w10Ah7KKS4OrfwQXgy2zsUt1Bs7Bu
         GWWPdHe50NRFZwT51BU6EJ7ADbrplSd7Ti04sXUY52A0po8Aw86RFYhvuBm9kZXVmHQ8
         B78Eb65XzCelJUfbdg04uM1LAELwWJv2rXMPZcVv4bNzrhnBeGptvc2/a/Ps/F/qC5+7
         5AgXYVTF95XqugFav09Wup2r0txQ0Sk+toTPwCiKVa34P1yFS1j53MphsRdL3fUO75Xs
         FDfQMa8CsusjlH68t71ZNdVUlMOJqVFKHfnya5sUArBRcv3DU3sKlkKlgJEcNxz1wVxf
         kQ+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWvBXO8ojB2i9FvTtailKwBPtezu9qgT10oOGn0hXzU1R7kOzenIxsUyKwZelM8Drc56C8cULSvf39l@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb8ObuouDaQKhWTdaedU7etF2EEkR/boeWghyx7fDJaUzwmYqQ
	3bfQUznungevKQ7cD3VujXmjmlyPrHFEt0WNLXP8+3qFuU+PhtPwCKJxkNGK0a+qpfg=
X-Gm-Gg: ASbGncsJYdmZBtd4TadtB0/9/O8h6ElRcAcUkqUO3STnqWHj44iBNGXvZg8ZpK9/jaO
	aqLLSOGLC5XW4c7/PVKk1dFleQ+84tcByDtSg46IRb6QjpWO4KSKC+hbu3RCWSRna8S9EHeeTNh
	cmqqhiMn7QBC9PDg9J2YamwTJq+nWP7ScMZRVTqLya6dV5FSBtAYgwGmi5qtI35vA9FGyJej6f6
	eMVC2lyp41K1c+Is+L/JJXgIDBZNZ1TfcMhl15DY+itGlIjim9yPW10Y3FEKAEiYb/8A2SZVuvF
	7i7nJx8G6xImBj8Da7uMUyg8pQVimQLHNtFWOqVaKt17UxHKgsOSU3vYlOjx1rnDmM4+rsdIu8H
	NcyJKeyBJwXK8fln/R5MAeMTd6rY7
X-Google-Smtp-Source: AGHT+IH4nwfNWHmZGlR8S50a3ZT7D5vEGnIKIVmskD+uwNW3XeQDTxi4IgzGD08mK38khPTU4HbCsQ==
X-Received: by 2002:a05:6000:2f86:b0:3c6:97ae:a59d with SMTP id ffacd0b85a97d-3cbb15ca063mr6020844f8f.8.1756359060216;
        Wed, 27 Aug 2025 22:31:00 -0700 (PDT)
Received: from [192.168.0.251] ([5.12.38.90])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cc4b102889sm6638839f8f.51.2025.08.27.22.30.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 22:30:58 -0700 (PDT)
Message-ID: <05e9dfa9-d628-4a4d-8cc3-f6854cc186d9@linaro.org>
Date: Thu, 28 Aug 2025 06:30:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] arm64: dts: exynos: gs101: add cpufreq support
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 willmcvicker@google.com, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, kernel-team@android.com,
 devicetree@vger.kernel.org, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>
References: <20250827-acpm-dvfs-dt-v2-0-e1d2890d12b4@linaro.org>
 <175633665113.3746832.15304875656374701987.robh@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <175633665113.3746832.15304875656374701987.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 8/28/25 12:18 AM, Rob Herring (Arm) wrote:
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/exynos/' for 20250827-acpm-dvfs-dt-v2-0-e1d2890d12b4@linaro.org:
> 
> Error: arch/arm64/boot/dts/exynos/google/gs101.dtsi:75.24-25 syntax error
> FATAL ERROR: Unable to parse input tree

That's alright. There's a dependency on a bindings patch that's described in
the cover letter.

