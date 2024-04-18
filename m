Return-Path: <devicetree+bounces-60497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FA98A979E
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:41:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FF6C1C20D7F
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 10:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA0715CD6C;
	Thu, 18 Apr 2024 10:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g7lIqQ9H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AF815B96D
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 10:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713436898; cv=none; b=TPsi08+63MwNXJ5YbFYw6qXMcTAkicgmaI+pTsfgvJl9QmkC0GEYNW8bCUmRppyzTm21mNyqpTwPtW4HveIkq/0QtWSgenjWX09HghBxkr2aGg+DxCzvQrUIzX44tjcS40vcNAG2mWrFYSBQMNBaJS59L3/yM355ddI/3iKDcC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713436898; c=relaxed/simple;
	bh=ycypXuNrYM5ejz2JraateBCXZHrRfLpfmmQZfmTgYt8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=plTwXVaCHNqIkNdiPL1QEceHkXjm/6QMTcWae550C5pmlLAfnchWpP8NWLqQDB5no7F7jIdemxzlNPIDj0U2z1gsFX8AjsJ3/GjlrXtR7jL1SbveBglhixYdFzxrgQ4OyI08CmS0tlyAS/ini7tOjTLLzOhcXuc1C500w0/oEvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g7lIqQ9H; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a55323f2ef9so77262766b.1
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 03:41:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713436895; x=1714041695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=vqwUzKe5XGliqdm8seFXXaVCFBzMGN71sUmn+hIryNI=;
        b=g7lIqQ9HSJbVxiaO27cOvrcFaS9otWlpQfRxWd9uIAi2njJYTRXAjRK2VYS/ZEPsN7
         OHYjg8fgZxkDVvch7JFxwiOK4LkWPPQVcdtbi0qm84yjVpwgW36GhDQ+uzjdwE3XHOy0
         p3Pn4aHiq+rOZVFOYY9+YebjVhkIWm4eSnA7Lx9A7Xd+NP/4vCGU8vg5IXFaZq8cismc
         WZ3IygD1ATWf+eqPX5x80G4Y7MlxdqBim5NR0nuzuei6Zzq7ESdteZ0CiHQG1i+zVMmp
         5cUOeVMvIITrCIVimoAHWwIt0JmJvRj/66GIOIX2b0lHLtimkXbz40L0JRttCUEC3nkp
         OtyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713436895; x=1714041695;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vqwUzKe5XGliqdm8seFXXaVCFBzMGN71sUmn+hIryNI=;
        b=MYh+mrjnGq92C6vRUwkAZ1wxosjSlk+EMcSSimSPv2EzQj9Y0UgSuWt2I3kIHtujPY
         qQnqsSQMZ1sW4GN89j4+DkP4vdiPfZGVPFZXQUYrOXprhPUWEDoysndBGC0wcu5ogINd
         9Cl5SAIiMqFfCSMmOCI5oQKWCzDbxa/xvrzGH3Igo3z9itB31S9JX+YP0G+ACBr5cSmX
         5oqO1pkVuKMZPmdZ1qC/HlvCM5XapGD0lzI8Nr2cwsHWGKmzonP5eL6v2yqXERsTzX+G
         6iSmM+A16s0AQiRPehFNi7+AJXrP9ORZ+3s0O3UTUrtKpE/S/fvIqNxYtQ3Y6Qf2o2rb
         WNqw==
X-Forwarded-Encrypted: i=1; AJvYcCXpZFdfy7By5Vsa41epxXc8NKQ2wp+NSvy7nfUzjOT3OHsKxfVGqLhg7+Bkntl2ovpX7hgqTjppoycNNwSB9t6dKiqC6dUd8XFE9g==
X-Gm-Message-State: AOJu0Yzj+T6frSWERstbcY42ubBop/Qs5nsH2k+9yLccx8zjk4Qj7fYR
	CGrRMkw5hQRJBTIZ+ciyI2iADl4EoJcrWN/MOQsm/cDCOXwdwL33AF79k/pjEkM=
X-Google-Smtp-Source: AGHT+IH5S7Ph6yeT7A0xsKZ7RjQtrn+od2QNG+9QRsjIBl506DNolhAaT4Fzu3uRZEnS+b6vZ/pmWw==
X-Received: by 2002:a17:907:10c3:b0:a55:5c04:89a4 with SMTP id rv3-20020a17090710c300b00a555c0489a4mr1358562ejb.21.1713436895378;
        Thu, 18 Apr 2024 03:41:35 -0700 (PDT)
Received: from [192.168.45.55] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id ga8-20020a170906b84800b00a523cf3293fsm706755ejb.59.2024.04.18.03.41.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Apr 2024 03:41:34 -0700 (PDT)
Message-ID: <132abf4b-c0e4-402a-857c-02cd4c043d73@linaro.org>
Date: Thu, 18 Apr 2024 12:41:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100-crd: Add data-lanes and
 link-frequencies to DP3
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rajendra Nayak
 <quic_rjendra@quicinc.com>, Sibi Sankar <quic_sibis@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240418-x1e80100-dts-fix-mdss-dp3-v1-0-9f8420e395d4@linaro.org>
 <20240418-x1e80100-dts-fix-mdss-dp3-v1-2-9f8420e395d4@linaro.org>
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
In-Reply-To: <20240418-x1e80100-dts-fix-mdss-dp3-v1-2-9f8420e395d4@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18.04.2024 12:22 PM, Abel Vesa wrote:
> The data-lanes are a property of the out remote endpoint, so move them
> from mdss_dp3 to the mdss_dp3_out. Also add the link-frequencies to
> mdss_dp3_out and make sure to include all frequencies.
> 
> Fixes: d7e03cce0400 ("arm64: dts: qcom: x1e80100-crd: Enable more support")
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

