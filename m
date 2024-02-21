Return-Path: <devicetree+bounces-44390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6442585E003
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:41:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8859F1C21D9C
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C6F07FBB8;
	Wed, 21 Feb 2024 14:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D0Ko/68R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875107EF03
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 14:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708526455; cv=none; b=mA0K8j0VFTwcpLz2IsJgTxZyQPdloRjJtfAjYUAaEeVMU9U66v8o4Sr5QhnDMIRiFFevCQzEitYNs+c5HPo8btn2INFyb2XRO1rAV5jkuIHkXUOzeacyh2o97yFJKesUxX1gFAD1iTorgkuaPI63r2dGonyJ8COwn3NHlJn7Aio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708526455; c=relaxed/simple;
	bh=RhVEqfrQl9Kkb+bAWrQB+yq1QNSvsZn84GAaPzY4aIU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qb1yRXXhJ5QfVbTb6rXdmpWroC7+BIGiCoX8EFIp1kQk8v4V6KvfaZCHiYsuVF6d2q9Vduxf6twML8nYLZMq6o7eojm7OrfTnQ5dE9qSiDjyI6ATVKlorxaAayT9GiQEbttTIQlxJ7w6h5XHY4E+PqvUhSkr5Xs3zW47/3gjIA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D0Ko/68R; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a30f7c9574eso853897266b.0
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 06:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708526452; x=1709131252; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AgwTt2S3bd59M/y534odnwoFx5AYdMQXbDjCsMg5da4=;
        b=D0Ko/68RG4Iizalplqdow947NhuH1OOHNbAX0gUVnQOex9Gyi+0Z/r8gNu9dWrq9D9
         F8QUbEpUeoCOekd+SGvvaRF5fT+9rx0DbNRmUES1836fjbIMRNTEn/JYCE3vj30HTKlh
         TNDAjA+hkz0urgzEP3+AkXSfeAPqKtvmTIXcHYa+ynoHj11sSbXBXq/3Rnt33xo/9lE8
         jhwbv2SSgY4c6GWOGC+HuXq9oBsxA7Qw9ltP6zLO7lQ+n4fQp9fr4MAQHCNnqPk/Oxcg
         qs1L1lTE2X23spzzz1w7nsw18O0lyKkwyqU1S66sK/0JlrOI8sTm+MN12RxQkFJnqCNA
         TeqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708526452; x=1709131252;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AgwTt2S3bd59M/y534odnwoFx5AYdMQXbDjCsMg5da4=;
        b=kcaxJnQtRHmDVmUYDbTLGggVmqYoP5uJGSo1E3R8K5FS/Vuu/OOK7KG6aAwV9vevxA
         YZN7/ycsBjd8IsVy0Z5zqfySwZrU39y9BRQMUDkN63mzvr2VR8XCwg4guEQlWSAPzXPA
         wMRkNKuw/hPbAQ5wdbxVGmZfFby5msSknkzkycSOBBd2ivQ2WZfgJ882KB0RnSyVVAVw
         fdV5yGMzDkdY2armNo34ASdRo3oZr3tyrO/4k+OzXtDbB3BqpANsqgi51HM8yT8T+up9
         cswOIOpxZQVjBLxpwpsOLesfPMjznBPQIxgGyjn77h2PhYuHIr/NkK1eeYPzeCQTeoMH
         pLrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXVQfOsvl6MNcv8INV3eLmjyBhywJTfmytPu2VnBsg+3Fb2CUmvw02nEzz9wRX5f735NtJK5XuWExHG8tNN4o8ZEQJPVeS+9tVldg==
X-Gm-Message-State: AOJu0YxNr/Mu53/icLPIcEVM1tSijc31GpfArgV8pUUOLT+8lnNOxDFL
	jwf5sc+j9JdY0RY9EUtt2d6vRGbI/i9ndelAOniMfwN5QcK8UX3A5OfpdZ+9CCE=
X-Google-Smtp-Source: AGHT+IFD8q/l+iq1qTomRRCbgGJd7KsvXLdblmVSyPqwjl+nUFuhfwXZO6Epk8L3lUYcZcxaTPJgYA==
X-Received: by 2002:a17:906:4953:b0:a3f:583c:b00b with SMTP id f19-20020a170906495300b00a3f583cb00bmr769866ejt.54.1708526451897;
        Wed, 21 Feb 2024 06:40:51 -0800 (PST)
Received: from [192.168.192.135] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id r22-20020a170906281600b00a3d777aa8fesm4983128ejc.69.2024.02.21.06.40.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 06:40:51 -0800 (PST)
Message-ID: <fe92de0e-3ca3-49f2-aeb3-d71ec6fe252a@linaro.org>
Date: Wed, 21 Feb 2024 15:40:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: x1e80100-crd: Add repeater nodes
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240221-x1e80100-dts-smb2360-v2-0-037d183cc021@linaro.org>
 <20240221-x1e80100-dts-smb2360-v2-3-037d183cc021@linaro.org>
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
In-Reply-To: <20240221-x1e80100-dts-smb2360-v2-3-037d183cc021@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21.02.2024 15:38, Abel Vesa wrote:
> Include the SMB2360 and add regulators to each one of those 3 eUSB2
> repeaters. Tie up the repeaters to their corresponding USB HS PHY.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
That's a lot of USB2!

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

