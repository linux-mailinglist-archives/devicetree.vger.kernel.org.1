Return-Path: <devicetree+bounces-6895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 165F87BD85B
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 12:17:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4571D1C209CA
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 10:17:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC4118046;
	Mon,  9 Oct 2023 10:16:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hnz+IwKR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C11182C6
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 10:16:56 +0000 (UTC)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61801E9
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 03:16:54 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2bffa8578feso52107981fa.2
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 03:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696846612; x=1697451412; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HuYv4b6pLjydapaBtZop4O37DiFGBbAGIm3D4cVug5g=;
        b=hnz+IwKRROHGKsTD2NNtpIZXyQgL3Ome02mc8FtBfJMMORpPoibOt7YZaGoEvcDhqZ
         N+36+tSfxj/23qNpesgvePyPXqpAAcbtxCc7H7xhrGLdUC81QjePbdYhLCxCTO+H4d+j
         PeIy3iFXDzPf7PLy4IGhvHzY8/STkmxIwaDnrvAAn40bYTZ8HdWY7kiY+E7QyDRh9+d4
         gMmZ2ZwPVUBWvsdCzncU/2UXrCN+7h4HihimWIc3gikyR7CT4KsrMUQI7Z/asdU4gdKa
         eBcx9VA/0hC5MAoaFILywUBr0OnpVB1DldPxH/X1zkcl4R5r6hRYnQdBn8DiB8X0N3tk
         72UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696846612; x=1697451412;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HuYv4b6pLjydapaBtZop4O37DiFGBbAGIm3D4cVug5g=;
        b=GK8a3GwfVYbOmeSvox37JKsI7ajQrNU9MxwJwgNgOxMOdwRXpCHT7uE4rVwe+LTl8g
         JeQr6Uys/uxQ0rvGIXSEbR4aCD8rhT6ymeQZoYtjL1lgDdvM5EifCVzH/gdJpcSbwrt6
         Y58gKb3uhTfWhiOH/t9rhDVOhLJkyWQhG/5XrqKXUqPWkA/76c5tFqAubzpsZCEODuQA
         iewwhDxV83mtbd01jfh19hruQ8Gpf6xh08YAw1B+5k36E8R6CethyD0DJ0rmgVD7YcVh
         ndhRwsjrSjG/W1JGWVWL/tO5PjTsP3PTP/53sVUiG4WPV//EOHGaJTdurgnA8afCF9ZV
         Njsw==
X-Gm-Message-State: AOJu0YznAsuUtfJ/A4ZM9PARoFi5pvNJUHYwSFN7PEG4mAkujmMh+cqp
	FrW2kww/TKRm7KEgoB2SP3lIXQ==
X-Google-Smtp-Source: AGHT+IFDxuwnrTw9oBX4OgnlazccY+uFAtoj++5xgItlpzobK2civqYU0difdDwxMAWL3MPK3GDdqg==
X-Received: by 2002:a2e:8745:0:b0:2c0:158f:8133 with SMTP id q5-20020a2e8745000000b002c0158f8133mr13449820ljj.28.1696846612558;
        Mon, 09 Oct 2023 03:16:52 -0700 (PDT)
Received: from [192.168.200.173] (178235177147.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.147])
        by smtp.gmail.com with ESMTPSA id h25-20020a2e3a19000000b002b9e20d0356sm1996314lja.114.2023.10.09.03.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Oct 2023 03:16:52 -0700 (PDT)
Message-ID: <0a3cd2f3-85e9-4769-9749-62353e842625@linaro.org>
Date: Mon, 9 Oct 2023 12:16:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] i2c: qcom-cci: Add sc8280xp compatible
Content-Language: en-US
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
 andersson@kernel.org, loic.poulain@linaro.org, rfoss@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
 <20231006120159.3413789-3-bryan.odonoghue@linaro.org>
 <b8f2d7f1-16e2-4e6a-9c84-37da393f74a3@linaro.org>
 <20231008212824.cs6e6hc7zur67v6k@zenone.zhora.eu>
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
In-Reply-To: <20231008212824.cs6e6hc7zur67v6k@zenone.zhora.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 8.10.2023 23:28, Andi Shyti wrote:
> Hi Konrad,
> 
>>> Add sc8280xp compatible with cci_v2_data parameters.
>>>
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> ---
>> Drop this patch, it adds nothing useful
> 
> what about the rest of the series?
> 
> Could you please be a bit more explicative?
This patch introduces a new compatible in the driver that does
exactly nothing, as the bindings require the use of
"qcom,sc8280xp-cci" with a fallback of "qcom,msm8996-cci". The
latter one already has a match table entry.

Konrad

