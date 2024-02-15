Return-Path: <devicetree+bounces-42219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F07D856EDE
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 21:50:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3198B288590
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 20:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27E6F13B2AA;
	Thu, 15 Feb 2024 20:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ro05CQRe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E7113AA39
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 20:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708030244; cv=none; b=AsVCHLwy1dtf3YE6RBZnXXrxnWLR2s5HbivsWmYsBj/X0KvIdJGvJJmY8oitfvdzQngGbD8Yos88Hecc6JsVhMF+9h5cG6QpZmiPWf0bVwfP46X0xKhlOqFc/flaTtnp0VqQRx54BVBSV/ENFRvNtJsdASb9+ci/3Gl6RKyX3Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708030244; c=relaxed/simple;
	bh=avdKIoyBcptfZu0xLdF4IwLKXcgv6DKz0nPv8xl2m6k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ufSoROQT/7HmaxbzVopjnBvxPUK76370szWDoOcZvcsF8unuxdEzfKcUaRSnTesyBNMULNBTVd0ku1COnpl9spgsxy0/TxbqseNLb9l/02PDV4NVgXAkosekqUOrJyBLhKY2/U4wllv3tmBP+0tm9tNTKo0rZHFDrhaVp8WWVFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ro05CQRe; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-51187830d6dso49472e87.3
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 12:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708030240; x=1708635040; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sylX37Ns9wvEJ1TWz2SibJRc5y7X7A9waGV/wqfBxDs=;
        b=Ro05CQReJSne0HlLxpQDfJCuqh0eYauiuXf/ysH1bsJ05nSickygCxkyYw19dqs6y8
         hdPfHvqOcAIt+Q6tC8KXPO0n7Dy5GhuR0IKtJ0H/YeOh9Pi0oNqbIzBKfgloR9g0nle0
         0ohiNyFh+EAhe3r8/3yG+hW6N4S1YyWDk5ahFZ2jxT5hlD/7etMkJgIN7qeWJbv3z15t
         xeLudiGo3wmXMNXpSRlK3PkrH3VRA3AtLBKZJoc1OwstDsATg0tco4iSr+GnxATEiktb
         k5jz8bwqocmI9C3SOjNha9QYx+LEfxuR7dLrJZvwXxQJzwR1VGO7qGzM2YmNdusVzHWC
         ECPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708030240; x=1708635040;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sylX37Ns9wvEJ1TWz2SibJRc5y7X7A9waGV/wqfBxDs=;
        b=SF2hNZwNNRVzz1u3Cx8bQwFPwBLoQaL54qsNzIXLYhUcGjGKvT0IMX2p9zhZLfV6np
         K9K9q6j/lcMXL/sx1Gh1r8kwloOskRJf3OytQks4ScJ5VTZOhXzDHK9tJKpZCAjhL5h6
         nslqTGUoZbAfItxFEshFWq2/eHmtdlnnwd/KC5dhWU2pv4p/QBlFhhDYwPdPtAxsFs8n
         niyssE0J9NDVcfwo9kHks8iNsP3pKjE/OU3FU7ICUQyzAa+ftWbAFUfeP/z1xlLGi8tI
         zruWaiYErHrLdcf8MiMsssxspCz8XQjbNYVBgSr02H5A5C/yx/e0NmV+p/KFWO/Zyeiv
         J8rw==
X-Forwarded-Encrypted: i=1; AJvYcCVvRykvwJdwZchfvlTobtQeC+s/mvuUJA9yVm2Txahh5dFVs33/6M4k1fgioNRj7an39m+SwNi7S+xA8QjA9//aTePRjtqmhJ8uAg==
X-Gm-Message-State: AOJu0YyQ+hdKxQuppjgwGyf687beBNeGsuUBNhK7WuMQ0aE5gaqqZy9e
	LcIac1DtLamHNBr9QUFHoVC7JA8XYdPpe303bKOkwqncXd1CG3VRoAbQd2ehs8g=
X-Google-Smtp-Source: AGHT+IFXsKw9R47bKzHuXkk5UI6nB4FQQUAoFpijKVnPIAtCSPcy9peAFh899l/OToUpKoU/hHf1Rw==
X-Received: by 2002:a19:2d19:0:b0:511:9d0a:3447 with SMTP id k25-20020a192d19000000b005119d0a3447mr2257067lfj.32.1708030240429;
        Thu, 15 Feb 2024 12:50:40 -0800 (PST)
Received: from [192.168.192.135] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id e25-20020a170906081900b00a3d197339dcsm899320ejd.106.2024.02.15.12.50.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Feb 2024 12:50:38 -0800 (PST)
Message-ID: <eb6429c8-178a-47fb-820c-7e4e39dfd090@linaro.org>
Date: Thu, 15 Feb 2024 21:50:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/10] arm64: dts: qcom: sc8280xp: enable GICv3 ITS for
 PCIe
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240212165043.26961-1-johan+linaro@kernel.org>
 <20240212165043.26961-7-johan+linaro@kernel.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 xsFNBF9ALYUBEADWAhxdTBWrwAgDQQzc1O/bJ5O7b6cXYxwbBd9xKP7MICh5YA0DcCjJSOum
 BB/OmIWU6X+LZW6P88ZmHe+KeyABLMP5s1tJNK1j4ntT7mECcWZDzafPWF4F6m4WJOG27kTJ
 HGWdmtO+RvadOVi6CoUDqALsmfS3MUG5Pj2Ne9+0jRg4hEnB92AyF9rW2G3qisFcwPgvatt7
 TXD5E38mLyOPOUyXNj9XpDbt1hNwKQfiidmPh5e7VNAWRnW1iCMMoKqzM1Anzq7e5Afyeifz
 zRcQPLaqrPjnKqZGL2BKQSZDh6NkI5ZLRhhHQf61fkWcUpTp1oDC6jWVfT7hwRVIQLrrNj9G
 MpPzrlN4YuAqKeIer1FMt8cq64ifgTzxHzXsMcUdclzq2LTk2RXaPl6Jg/IXWqUClJHbamSk
 t1bfif3SnmhA6TiNvEpDKPiT3IDs42THU6ygslrBxyROQPWLI9IL1y8S6RtEh8H+NZQWZNzm
 UQ3imZirlPjxZtvz1BtnnBWS06e7x/UEAguj7VHCuymVgpl2Za17d1jj81YN5Rp5L9GXxkV1
 aUEwONM3eCI3qcYm5JNc5X+JthZOWsbIPSC1Rhxz3JmWIwP1udr5E3oNRe9u2LIEq+wH/toH
 kpPDhTeMkvt4KfE5m5ercid9+ZXAqoaYLUL4HCEw+HW0DXcKDwARAQABzShLb25yYWQgRHli
 Y2lvIDxrb25yYWQuZHliY2lvQGxpbmFyby5vcmc+wsGOBBMBCAA4FiEEU24if9oCL2zdAAQV
 R4cBcg5dfFgFAmQ5bqwCGwMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQR4cBcg5dfFjO
 BQ//YQV6fkbqQCceYebGg6TiisWCy8LG77zV7DB0VMIWJv7Km7Sz0QQrHQVzhEr3trNenZrf
 yy+o2tQOF2biICzbLM8oyQPY8B///KJTWI2khoB8IJSJq3kNG68NjPg2vkP6CMltC/X3ohAo
 xL2UgwN5vj74QnlNneOjc0vGbtA7zURNhTz5P/YuTudCqcAbxJkbqZM4WymjQhe0XgwHLkiH
 5LHSZ31MRKp/+4Kqs4DTXMctc7vFhtUdmatAExDKw8oEz5NbskKbW+qHjW1XUcUIrxRr667V
 GWH6MkVceT9ZBrtLoSzMLYaQXvi3sSAup0qiJiBYszc/VOu3RbIpNLRcXN3KYuxdQAptacTE
 mA+5+4Y4DfC3rUSun+hWLDeac9z9jjHm5rE998OqZnOU9aztbd6zQG5VL6EKgsVXAZD4D3RP
 x1NaAjdA3MD06eyvbOWiA5NSzIcC8UIQvgx09xm7dThCuQYJR4Yxjd+9JPJHI6apzNZpDGvQ
 BBZzvwxV6L1CojUEpnilmMG1ZOTstktWpNzw3G2Gis0XihDUef0MWVsQYJAl0wfiv/0By+XK
 mm2zRR+l/dnzxnlbgJ5pO0imC2w0TVxLkAp0eo0LHw619finad2u6UPQAkZ4oj++iIGrJkt5
 Lkn2XgB+IW8ESflz6nDY3b5KQRF8Z6XLP0+IEdLOOARkOW7yEgorBgEEAZdVAQUBAQdAwmUx
 xrbSCx2ksDxz7rFFGX1KmTkdRtcgC6F3NfuNYkYDAQgHwsF2BBgBCAAgFiEEU24if9oCL2zd
 AAQVR4cBcg5dfFgFAmQ5bvICGwwACgkQR4cBcg5dfFju1Q//Xta1ShwL0MLSC1KL1lXGXeRM
 8arzfyiB5wJ9tb9U/nZvhhdfilEDLe0jKJY0RJErbdRHsalwQCrtq/1ewQpMpsRxXzAjgfRN
 jc4tgxRWmI+aVTzSRpywNahzZBT695hMz81cVZJoZzaV0KaMTlSnBkrviPz1nIGHYCHJxF9r
 cIu0GSIyUjZ/7xslxdvjpLth16H27JCWDzDqIQMtg61063gNyEyWgt1qRSaK14JIH/DoYRfn
 jfFQSC8bffFjat7BQGFz4ZpRavkMUFuDirn5Tf28oc5ebe2cIHp4/kajTx/7JOxWZ80U70mA
 cBgEeYSrYYnX+UJsSxpzLc/0sT1eRJDEhI4XIQM4ClIzpsCIN5HnVF76UQXh3a9zpwh3dk8i
 bhN/URmCOTH+LHNJYN/MxY8wuukq877DWB7k86pBs5IDLAXmW8v3gIDWyIcgYqb2v8QO2Mqx
 YMqL7UZxVLul4/JbllsQB8F/fNI8AfttmAQL9cwo6C8yDTXKdho920W4WUR9k8NT/OBqWSyk
 bGqMHex48FVZhexNPYOd58EY9/7mL5u0sJmo+jTeb4JBgIbFPJCFyng4HwbniWgQJZ1WqaUC
 nas9J77uICis2WH7N8Bs9jy0wQYezNzqS+FxoNXmDQg2jetX8en4bO2Di7Pmx0jXA4TOb9TM
 izWDgYvmBE8=
In-Reply-To: <20240212165043.26961-7-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12.02.2024 17:50, Johan Hovold wrote:
> The DWC PCIe controller can be used with its internal MSI controller or
> with an external one such as the GICv3 Interrupt Translation Service
> (ITS).
> 
> Add the msi-map properties needed to use the GIC ITS. This will also
> make Linux switch to the ITS implementation, which allows for assigning
> affinity to individual MSIs.
> 
> Note that using the GIC ITS on SC8280XP will cause Advanced Error
> Reporting (AER) interrupts to be received on errors unlike when using
> the internal MSI controller. This will specifically lead to
> notifications about Correctable Errors being logged for the Wi-Fi
> controller the Lenovo ThinkPad X13s when the AER driver is enabled.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

The numbers match

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad


