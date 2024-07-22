Return-Path: <devicetree+bounces-87421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BA49396A9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 00:41:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00B061C202ED
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 22:41:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D1D34438B;
	Mon, 22 Jul 2024 22:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jdc/DVDm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2712CCD0
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 22:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721688079; cv=none; b=VZZIqtceica4/M86GaJG4ueM6o9mtgIFctnPYdswiayObx+X5+XKBdJVIru2I868BFQtPc54pMZ8M3eCvHTvZMXVHbhbaL99QQyIWuYRe4KdtwtPFyk5A0DV88GB9lyy2qvTzhL2tJQ63/MJEa8gIBiTJoJhZH0cu+Ot7u3pFBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721688079; c=relaxed/simple;
	bh=teMaIXDTPbNiykle7TqNCX3WtAHEaiBQ6iNdZ9LQ/Og=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EBNzIJGyQ3ydx9zjGdhTXZ2gJ6DsbrsMr1lCVA6D9POM8QfUltQpTertXm76i/Dy9yKpHpxSUvfh7OjAYf+L3gZ8IVBrnf/UnG8ZqM6YgcOizMFHbS7DBff/JwzepTWw/1RZS8X1YgZ8oLoebndTkXpdWQTZcu/OSa9bm0Nx2Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jdc/DVDm; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2eeb1ba0481so72154171fa.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 15:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721688076; x=1722292876; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fBBVjZgAERqlYaFdfnfS9/bHYWUlEUJ0jkLC55bxXYw=;
        b=Jdc/DVDma3ut0ah71gFWRFF7p3inzBTNr/1xceEMjzgnTo3AiH6WDpqcoD8sBAky3L
         8ZyYM4KL50QsB1Jjz3wrtv9Ky8TRhiJun7bjHN0LTOI2cVuqVBkzZiiKMqdPv4dhzdqY
         fy3WCvnSwN2B3H7fmf4oDRpYrSliFGv9tiPcORcVES86E3WukzJOAPVHTSEgL98hFInv
         Od0p43PMli8wK8tZoL0NS3/HNX9OBSrHy7zbIhQ2c3USnbZ6rV3ejmGTsPokwTf2XngS
         q5typnE6cTHGgUg70GZ642PzNYlR8Y8pPUa2fW0CojuIGVvBC0NsTFAQ5LCP0JRkYvDm
         J44Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721688076; x=1722292876;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fBBVjZgAERqlYaFdfnfS9/bHYWUlEUJ0jkLC55bxXYw=;
        b=sCzEtXPd8fNFLEfJrqsl2v+M5if9+gZfdSNlqB7WmPKBXVStzLyzONv/E2xMjYkOC8
         bpXvmB0SgeHH2wkHqHWEBMpWeTXmTx6mUA1TRGG259gtkKZOcFud5YXjOh2rjybgBqzA
         FT8Rev0GziZJL3Uu95INSyFef1ONSItHdnv4HmjYB0z8vwluwp+NgmExtlcB4uSE3LjI
         HPPfoIk4Nys8e6SwGgH4Sr/Qc7Joag3ZA5UocMTCTclU1aaAw4wyGhsmA5Bwr4P24YN5
         65PCXe1Hz2YLQFQfO5eTxZL53Sh+tEgiikZAMvGLrlxkAKUEXU9aZmQXSK601NNwihu7
         +6Rw==
X-Forwarded-Encrypted: i=1; AJvYcCW0SNSCEfPl6MS/4IqIrX9xXAJg3YAMWfuX+iZ9uWPm+xoRTowcqqKHL9uP0G/YRaty23gHjTW2JtgJdKSNruH0FDsJk2K74rp/Eg==
X-Gm-Message-State: AOJu0YxT5YYWo0m28eAo6tbG0bVTvNACaK5L7X70rDI95FmHlS7/yOn0
	NKso2302EGt1q9FH0+uegQ3aeZlIEC0YXLs/5AXR3mLAuLbsaJSRDpU4zN7XNow=
X-Google-Smtp-Source: AGHT+IFEgX/XnxsBO+3I4WNiQjpi9o6dHnFdCoupyXxUDCfx1F3AWkYPkvQxAUoSza3vmhs4AXxodg==
X-Received: by 2002:a2e:7401:0:b0:2ef:2f37:345b with SMTP id 38308e7fff4ca-2ef2f37352fmr29368331fa.30.1721688076327;
        Mon, 22 Jul 2024 15:41:16 -0700 (PDT)
Received: from [192.168.105.194] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5a69c1f56a0sm3039513a12.64.2024.07.22.15.41.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jul 2024 15:41:16 -0700 (PDT)
Message-ID: <aa843741-f130-4325-bb43-746b1a4eaf44@linaro.org>
Date: Tue, 23 Jul 2024 00:41:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8916-longcheer-l8910: Add rear flash
To: git@apitzsch.eu, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?St=C3=A9phane_Martins?=
 <stemartins@proton.me>
References: <20240722-x5_sy7802-v1-1-b2ffeeaf8d2d@apitzsch.eu>
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
In-Reply-To: <20240722-x5_sy7802-v1-1-b2ffeeaf8d2d@apitzsch.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 22.07.2024 10:05 PM, André Apitzsch via B4 Relay wrote:
> From: André Apitzsch <git@apitzsch.eu>
> 
> The phone has a Silergy SY7802 flash LED controller.
> 
> Tested-by: Stéphane Martins <stemartins@proton.me>
> Signed-off-by: André Apitzsch <git@apitzsch.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

