Return-Path: <devicetree+bounces-128484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 296D49E8D2D
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 09:19:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD595280635
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 08:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11F6421517C;
	Mon,  9 Dec 2024 08:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dpn8o856"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DF9214A9D
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 08:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733732381; cv=none; b=DlzvC2TULVcUjSL0Sz6eKUUL1BQjtzaMwSe/A9OROmYmYMPyDNotkZGbdVK0hjTG9udYOnS4Iy/sNb3mni4accN4fP/yr7ZAQG0OlTWevUDtEUYFZBMXH+yPZk2UYsys9XYVdkqSDi6K4dG3yv5gU6QKUuKOULSZlRPAolKklJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733732381; c=relaxed/simple;
	bh=Ugyo68y+AEY8u7i/30di80rPWhNRRQDEi6tQUQwpdh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hlYvJ71DF7wq4hjbcJw9N7UTIS2X4zgi9nVjeFCEarjneHWRmecgiggLq1P4nsK7wxmk3S9HM+mKEawBtosnMOOBoGEkgPgEHm+SF6EqpFDCOx5usu6WKlUvIMQnpLViIXoQTEy7Rp6EzCie9Mdtit/wcqzO5t1P/HiJmpGh90w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dpn8o856; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-386329da1d9so1035153f8f.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 00:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733732377; x=1734337177; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xQiaE+JvK4g7UWmvAk+qy7K9dS4ykwXQnbxiADZaYvI=;
        b=dpn8o856fSc3sXmA+VG7hVtQTQPGOBbNzj+rObF+P+QQpPk5SXCxvmyuOuJviEg2uk
         hrtzFVYEva+7L9zyLwFQvwNHH5JSIjy65MWwtTSN5mBQkw6NbYB3/8VEykY6TwhMmLWb
         PK95Ak430d3OuBqLaPj2RAVjwewEqpmz/lZ94914T4IZq7xzyxQvroa0BtXATy/iV/Ln
         PS81jJjIy9Ds8WDPe/MmfArM7FiOKOSNFr9vQ7FZ/ORsBxu0/oZSmS9S04VdCBZSA7+1
         4bvcPVL5rygGPHEoDedGl0tewaKMO/6YGBmBstc7/J5QEikxFq477h1YxxOvxf6THstk
         na3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733732377; x=1734337177;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xQiaE+JvK4g7UWmvAk+qy7K9dS4ykwXQnbxiADZaYvI=;
        b=BOdrdY2m9WLbKxfE21RENa5QrE8oti0+oLEBH7lIfFTVF4P5W3x8IoU3QqfyBjdYqF
         IJHRcniOaQv7F7+OHvKx0fDqvgiYK4albi54ZJtKHb/BKT6V2S+GEFK4gt6QjtZp7sYn
         KavdoLmEbA++601ZIyi+DpH9Te4fXj7coBJ9Zw5DrF7OBRD63s/txLuJBcZhoOttGH1t
         yE4HL6jkFpWRnzvToeM3LcLcIlkwK44+AP1BxOi4WgA6aDghHPWGIxBu4M5QBN06VYbM
         EOgfUm0io+vt2B9xGICZG4THH50k6mmI3YlRSxmmp++xbOlNWyMWzoPxmhEh0LZ1cRmZ
         neqg==
X-Forwarded-Encrypted: i=1; AJvYcCUk/+glRLAfTIjT1UAkHuvBf7rZ0xUOQBHX+LEWJn3AEXZ2gUOoUEPEV8EoMkv+E5AGCyszewTEL9M0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7Y2w70Ak3CcLVuQwP70c8RKtR0aPKmi+JFEtPmsJ542gXEYu7
	S+H2H+tYdFhsJV7mcQsanYUQdK14XpX2jlxnSba6Gspkl/U5mEvArbCJ2m+J1xs=
X-Gm-Gg: ASbGnctxd9Gf89vNDPpu9PleSv1Q/Yxi2RYe/bB1US1cjOREWK/nYX9DTcVAJB4i1M1
	jewTClZPMSUNuSr7+xfKVsLzbpJnLctx3BHxygo+SZCLMCNYsDRLHWkSnTV82mT648bORSIgUAD
	iWJTDmFr3nntvH6qhJr1Rk6SdGg6j3cC2xaICzvprnKyqqcS5TFIduZKbIPZfpOTPjnhV0nKuRe
	dQZPrK0qWj60QLYUOskhO6k8y4EBgVdM29Sk18/oqjRZPslr0a4Cl3vxQ==
X-Google-Smtp-Source: AGHT+IHbzDErJOZQABXZyJP5tU7I2SyjaZPz5Bn/mEn+KluRKuUJnEKdIGQOObo2GOY0FS81Gw2PTQ==
X-Received: by 2002:a05:6000:1846:b0:385:e8b0:df13 with SMTP id ffacd0b85a97d-3862b3d5c9amr8412126f8f.40.1733732377593;
        Mon, 09 Dec 2024 00:19:37 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.27])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434ea1ae415sm76326735e9.33.2024.12.09.00.19.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 00:19:37 -0800 (PST)
Message-ID: <e36da496-04f3-4f00-aab1-f52aa0c1450f@linaro.org>
Date: Mon, 9 Dec 2024 08:19:34 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: firmware: add samsung,exynos-acpm-ipc
 bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 alim.akhtar@samsung.com, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, andre.draszik@linaro.org,
 kernel-team@android.com, willmcvicker@google.com, peter.griffin@linaro.org,
 javierm@redhat.com, tzimmermann@suse.de, daniel.lezcano@linaro.org,
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de
References: <20241205175345.201595-1-tudor.ambarus@linaro.org>
 <20241205175345.201595-2-tudor.ambarus@linaro.org>
 <k2pnpu3ef2rgy6wre2qrearwmetzb4v4meiyqpy7oyg45hohlp@kmnzulhbmdk6>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <k2pnpu3ef2rgy6wre2qrearwmetzb4v4meiyqpy7oyg45hohlp@kmnzulhbmdk6>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/9/24 8:03 AM, Krzysztof Kozlowski wrote:
>> +  initdata-base:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description:
>> +      Base address of the configuration data in the shared memory.
> If you really need this, then it should be rather encoded as part of
> shemm phandle (phandle-array with describing items, just like syscon
> phandles are done).
> 
> But OTOH, I don't see why this is needed at all so far - compatible
> defines it.

Indeed, I shall move it to compatible. If firmware ever changes, and
uses a different offset to the configuration data, then I can introduce
a new compatible.

I agree with all the other comments as well, will address them in v4.

Thanks!
ta

