Return-Path: <devicetree+bounces-85897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B17D931B4A
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 21:58:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16891282746
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 19:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95BF513A41F;
	Mon, 15 Jul 2024 19:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dmJgJAUn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9E5F510
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 19:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721073481; cv=none; b=FJnCvkqnnEkA+DQPUQpjueVKKEl8AqWAHENzghH8LqhwFaTdoo+KjcTDSKcfnuavXnYr2SQOhGZvfCUtA1eb7TvA6RXqDBJXi6lvX0of8le080mbTxp7NJNQ1aMywCd3D7SDvgYgcCIkkrlCb2lPxXh28YkkGgCbMNGdgshyRX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721073481; c=relaxed/simple;
	bh=KOmXi++wYMID5l4uz8LnyIv3y/cRu9tioPFx20esDCs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ID7EieM2GJmlEoDeOge0/Kfj4svdG1eeaOOri6gd7tqesNm5VQqWaHf/Amf7cKb3DTcZNZTSu+50kf2Ty1NZFsp38RQXLnaQdjZuXbakoQzm83F1BZPbIlVRdvH+n9lfDABA1MKlt6sOCuaC9mbvPn2bKiaSmPeaJmat1ujZzpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dmJgJAUn; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-58f9874aeb4so6051832a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 12:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721073477; x=1721678277; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=i0tr5lJQGUPso5CX1gkmQbe4RUUi3hRtP2dJY6GjKvM=;
        b=dmJgJAUnMhCL/KaQZCP5zCiW4CJUxmo6FwMbbBbksCZXuEgQ0CIo+hXceJSXzDN/mt
         qtuCdoyELdZzJNXnzHaiLKo4TcFRiH3P29Myr8AVGJ06jI+Ln1kHOzcpkfXn5yeiL3pf
         MfT67chFVTq2v2IEZ2z+fxWXTmMhYNlAm1/ifKmgDgIVUC4UNv1F6wsIYgGBjmTFUt53
         14C8BSVVnqZzIrYn1gL2tL9kKfKLqW8TmhJWYBbcBxzMg/zKphUZ+nxPGH6IyOLvcG7p
         ylgZ49cKq1mAyO2nzWbssFfx8Y0ecqOorxVc6U1nNweYWIjKNWdFoDfV4fUXKUJdMC0B
         SxYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721073477; x=1721678277;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i0tr5lJQGUPso5CX1gkmQbe4RUUi3hRtP2dJY6GjKvM=;
        b=FTaBr8L9OObi7QLLy2PrP8ivzZQ0TOZOP3z8kIJfsZ0PLZiZRyRBZ5vYRgmsuBnA0+
         Z0lrhHb7ryM5i+HKx445aQ1y9TUPS3xohc0NUPHmJssBAMlvr7tUuh2ZaeM2QFApvRur
         0WVKlFkAqkzWy1dsI/78t0z27xFVvnMYT6xjdXLoOxrWkPUD6w8FCrrzilg66z9uRL4d
         exm64wfKYqO4zASY3jhc0RcZbLSMXfJnwYeHFBnbwKRVrJdy36XUya778LNg4MeLBG6r
         VV0dzU7EnSxQZ02sPMuf1dsBd4mnUder1h2Q4OLcvwreJKmCDTvpzHAJJQrixsQmDB9V
         ukEw==
X-Forwarded-Encrypted: i=1; AJvYcCXbMXmupntauI/kr2momitinWqC5QaejJkpgiHXOaI5gurFX4AapHWhAaVlSFjy3qoBNQv9/N/KLQQdU/nZUwddlJrr7OcW9IQAZQ==
X-Gm-Message-State: AOJu0YzZl41LJ/kBxIJ4EqTh5bcfpUSrVRuCoBiX1XVT7VRHbw2Mdfkj
	uWdgSDnz3yRko2aY+g3kj9POknf47xDKWD2i7/x8IXQJsyTVnnaciJCxwMK2V7k=
X-Google-Smtp-Source: AGHT+IGLcngsEisWKRCm5v3AnL5eybsN6oUPIZLhlzD7UFwMf/5q3Cx35Mn1QCTl/MclVtZlrO5kQA==
X-Received: by 2002:a05:6402:3551:b0:582:7e6d:6816 with SMTP id 4fb4d7f45d1cf-59e974356a9mr643992a12.8.1721073476548;
        Mon, 15 Jul 2024 12:57:56 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-59b268a29b9sm3720024a12.61.2024.07.15.12.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 12:57:56 -0700 (PDT)
Message-ID: <60254ff0-0544-47eb-864b-b7c1ff09df4a@linaro.org>
Date: Mon, 15 Jul 2024 21:57:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/14] PCI: qcom-ep: Drop the redundant masking of global
 IRQ events
To: manivannan.sadhasivam@linaro.org,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240715-pci-qcom-hotplug-v1-0-5f3765cc873a@linaro.org>
 <20240715-pci-qcom-hotplug-v1-1-5f3765cc873a@linaro.org>
Content-Language: en-US
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
In-Reply-To: <20240715-pci-qcom-hotplug-v1-1-5f3765cc873a@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15.07.2024 7:33 PM, Manivannan Sadhasivam via B4 Relay wrote:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Once the events are disabled in PARF_INT_ALL_MASK register, only the
> enabled events will generate global IRQ. So there is no need to do the
> masking again in the IRQ handler, drop it.
> 
> If there are any spurious IRQs getting generated, they will be reported
> using the existing dev_err() in the handler.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---


Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

