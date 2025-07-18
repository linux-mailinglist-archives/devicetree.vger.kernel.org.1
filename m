Return-Path: <devicetree+bounces-197573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A866B09DC3
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 10:21:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1E9D27B01A5
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 08:20:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 070492475F2;
	Fri, 18 Jul 2025 08:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TDDd7SK/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC7E291C2B
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752826889; cv=none; b=Jhc6knQfFoHyXr6I7K9RtcVzmul413E+8JBZHDP53JR8+zTRMQqDc5Gel2bJ3jo0loEBlUgq1TDAtCdmDm1NJy7on1NtSCeqF8JbYCILBJR744hounT+6Wcps/f5kivUdBysj91vJMPF+H1SNMYme0w9wvMc5LAAV77Zmfyl+8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752826889; c=relaxed/simple;
	bh=oKsb6nXBtB9CLylsD8//kkCSnORTdVYyoxwsP6Ck4aA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GRKr9jl5UxUhHxFVq+LKERrU3KW3N9jmP2VpSLUSn42P8Zz4uwmz/UOtcBa/GCHKHVLpUmFsUxlcP0ocg5Eonxmc4juwQBaSVdcuN9G/7+dRMhYhBnfX998X6pV36zsUcarJVvjxGyMMmBRi5o02ml+yAVnatJLnZhfP/31b4MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TDDd7SK/; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-60c733792e9so327467a12.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 01:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752826886; x=1753431686; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Gge5WY60Rp/brYDLLchrO4CnSy89m4VC/nhi82o+ix0=;
        b=TDDd7SK/va8MDbT1CNFdrbiPf3uhVl5I814Fin7k1wPQdfdMOEeYJTTbrqKSwAB8DL
         GmfaKL6azCPvLHH7vm/1GhLTELyywyqTUlAYbO4BWfG6WytE3VOtrBKVPUWDBA3uH61j
         2QtsT1TzouJz9Xvc+YmKOYiH2QO/4+R5yEs7j948ssOgrL6JZpxdTu3KO5Wdc4m+/zXE
         wIRVX/Y2/917NoyNMgHKgVwAJFbMPuOk1Iyf5oN8WWToNov2IYChi/01QWjnYE4f9t9p
         aQHmYeqsWU3mFiv/qenyBKbtu+Nkm602JbQwNn2Gv4gzPJo9RseR4jIJpzfAiBVxLvgf
         SNkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752826886; x=1753431686;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gge5WY60Rp/brYDLLchrO4CnSy89m4VC/nhi82o+ix0=;
        b=XJVkhhRjI4K129e1fVL7zA47ITNtTUW0Kd8+XX/4rS9cfWlzQv1DCBuRFxzcJOaxEK
         35uhAjuI/9AcnlIKfmsP890x801ow5Ojtrqen5p2crtsAiIytKV7UHvNS3dasv3zuF2u
         VFfpttDo/lYixuRpVpjlWODyA1QSLrEBjMeZEcpH96rQd4y1Ms3c6he2EzEc55afnBMi
         gspqcX/U2qzDIle9mIUO2nLJJWacBi2CFjWNSDQhA7zglAFAnCm5rlQhfsT69JLHyIid
         VHI2q5/R8nTbrS6o/XYCvq0mLtc6Jlgzm0CnHKJw9iv3Bdq7Cn/2I/+B/YQI64La7Yzn
         FXaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCwuDqMcIwNVmnN7nf5mPFuqpUTLFd/unJElIkt21xvr7DRwLj7vsMenZPPGLidXdlKvwdXc6CIeuY@vger.kernel.org
X-Gm-Message-State: AOJu0YzW+qtknW9gkf9G6kv96KtMdT6MKeKE8uovrJMnK5uopt4qVMiM
	6PKDOoxuwAVL/2deNbhhyBRz0Dq244UnrfmqERVbBQ7awTqwBM408JGh4KR4PEREqpI=
X-Gm-Gg: ASbGncvqmwR6ElmOaSbG6jLk478/rMBXDxsNSCKGtiSyoNrEWZdyKsxJK6GSlon7Y4v
	npAMYPYCpGFAiY+1WqYAW3ifWJPiXHhPDABO3WJp8SkeAdIcmZlXsEhShnaZEmnyuQbRzfYzviC
	oTnlcDhIwOBoR2rqQ0AV6LaJdkQjZq53pHzwbIpHYvTqW+d1UkP0/7NGJ9u0u35pfgYs9JSV2ma
	nFaQEu24Ac+ebYcTlo02I4ArHQOeKG1IBomKyhhuOkBPJF04BfVYmF0tPg5kvm8ad1J8cEOcC8W
	UBXYP5l1JDrm//W475IH/jyRbXreMEmfNhEAJvtrc22G/ay7lDJ6A4ZBBly+pNmEupEKxQipbZy
	uypIFxr9JNwUQv3EhEgxzoIWBfucFCZVfasEo+Q5p7A==
X-Google-Smtp-Source: AGHT+IHzWIzOFiN81mXWsIwlcADAW/TciskQv42/IcHuT0StqjmbrWG5adDVugJYhOStZ3cEIlESlQ==
X-Received: by 2002:a17:907:72c6:b0:ae0:caeb:276d with SMTP id a640c23a62f3a-ae9c99973c2mr354671566b.4.1752826886280;
        Fri, 18 Jul 2025 01:21:26 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f0a267sm608092a12.11.2025.07.18.01.21.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 01:21:25 -0700 (PDT)
Message-ID: <0e72dd5c-c633-4265-a6a9-ed8ef7dbf67c@linaro.org>
Date: Fri, 18 Jul 2025 10:21:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/5] remoteproc: imx_rproc: Support i.MX95
To: Peng Fan <peng.fan@oss.nxp.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Peng Fan <peng.fan@nxp.com>, "Rob Herring (Arm)" <robh@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Frank Li <frank.li@nxp.com>, Bjorn Andersson <andersson@kernel.org>,
 "imx@lists.linux.dev" <imx@lists.linux.dev>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Iuliana Prodan <iuliana.prodan@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 "linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Baluta <daniel.baluta@nxp.com>
References: <20250710-imx95-rproc-1-v4-0-a7123e857dfb@nxp.com>
 <175224423523.783161.17907302929832941912.robh@kernel.org>
 <PAXPR04MB845959EF2767C96794EAE6DD8854A@PAXPR04MB8459.eurprd04.prod.outlook.com>
 <aHkNS51jgV5ulsNB@p14s> <20250718082033.GA25126@nxa18884-linux>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzTRLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+wsGUBBMBCgA+FiEE
 m9B+DgxR+NWWd7dUG5NDfTtBYpsFAmI+BxMCGwMFCRRfreEFCwkIBwIGFQoJCAsCBBYCAwEC
 HgECF4AACgkQG5NDfTtBYptgbhAAjAGunRoOTduBeC7V6GGOQMYIT5n3OuDSzG1oZyM4kyvO
 XeodvvYv49/ng473E8ZFhXfrre+c1olbr1A8pnz9vKVQs9JGVa6wwr/6ddH7/yvcaCQnHRPK
 mnXyP2BViBlyDWQ71UC3N12YCoHE2cVmfrn4JeyK/gHCvcW3hUW4i5rMd5M5WZAeiJj3rvYh
 v8WMKDJOtZFXxwaYGbvFJNDdvdTHc2x2fGaWwmXMJn2xs1ZyFAeHQvrp49mS6PBQZzcx0XL5
 cU9ZjhzOZDn6Apv45/C/lUJvPc3lo/pr5cmlOvPq1AsP6/xRXsEFX/SdvdxJ8w9KtGaxdJuf
 rpzLQ8Ht+H0lY2On1duYhmro8WglOypHy+TusYrDEry2qDNlc/bApQKtd9uqyDZ+rx8bGxyY
 qBP6bvsQx5YACI4p8R0J43tSqWwJTP/R5oPRQW2O1Ye1DEcdeyzZfifrQz58aoZrVQq+innR
 aDwu8qDB5UgmMQ7cjDSeAQABdghq7pqrA4P8lkA7qTG+aw8Z21OoAyZdUNm8NWJoQy8m4nUP
 gmeeQPRc0vjp5JkYPgTqwf08cluqO6vQuYL2YmwVBIbO7cE7LNGkPDA3RYMu+zPY9UUi/ln5
 dcKuEStFZ5eqVyqVoZ9eu3RTCGIXAHe1NcfcMT9HT0DPp3+ieTxFx6RjY3kYTGLOwU0EVUNc
 NAEQAM2StBhJERQvgPcbCzjokShn0cRA4q2SvCOvOXD+0KapXMRFE+/PZeDyfv4dEKuCqeh0
 hihSHlaxTzg3TcqUu54w2xYskG8Fq5tg3gm4kh1Gvh1LijIXX99ABA8eHxOGmLPRIBkXHqJY
 oHtCvPc6sYKNM9xbp6I4yF56xVLmHGJ61KaWKf5KKWYgA9kfHufbja7qR0c6H79LIsiYqf92
 H1HNq1WlQpu/fh4/XAAaV1axHFt/dY/2kU05tLMj8GjeQDz1fHas7augL4argt4e+jum3Nwt
 yupodQBxncKAUbzwKcDrPqUFmfRbJ7ARw8491xQHZDsP82JRj4cOJX32sBg8nO2N5OsFJOcd
 5IE9v6qfllkZDAh1Rb1h6DFYq9dcdPAHl4zOj9EHq99/CpyccOh7SrtWDNFFknCmLpowhct9
 5ZnlavBrDbOV0W47gO33WkXMFI4il4y1+Bv89979rVYn8aBohEgET41SpyQz7fMkcaZU+ok/
 +HYjC/qfDxT7tjKXqBQEscVODaFicsUkjheOD4BfWEcVUqa+XdUEciwG/SgNyxBZepj41oVq
 FPSVE+Ni2tNrW/e16b8mgXNngHSnbsr6pAIXZH3qFW+4TKPMGZ2rZ6zITrMip+12jgw4mGjy
 5y06JZvA02rZT2k9aa7i9dUUFggaanI09jNGbRA/ABEBAAHCwXwEGAEKACYCGwwWIQSb0H4O
 DFH41ZZ3t1Qbk0N9O0FimwUCaBdQXwUJFpZbKgAKCRAbk0N9O0Fim07TD/92Vcmzn/jaEBcq
 yT48ODfDIQVvg2nIDW+qbHtJ8DOT0d/qVbBTU7oBuo0xuHo+MTBp0pSTWbThLsSN1AuyP8wF
 KChC0JPcwOZZRS0dl3lFgg+c+rdZUHjsa247r+7fvm2zGG1/u+33lBJgnAIH5lSCjhP4VXiG
 q5ngCxGRuBq+0jNCKyAOC/vq2cS/dgdXwmf2aL8G7QVREX7mSl0x+CjWyrpFc1D/9NV/zIWB
 G1NR1fFb+oeOVhRGubYfiS62htUQjGLK7qbTmrd715kH9Noww1U5HH7WQzePt/SvC0RhQXNj
 XKBB+lwwM+XulFigmMF1KybRm7MNoLBrGDa3yGpAkHMkJ7NM4iSMdSxYAr60RtThnhKc2kLI
 zd8GqyBh0nGPIL+1ZVMBDXw1Eu0/Du0rWt1zAKXQYVAfBLCTmkOnPU0fjR7qVT41xdJ6KqQM
 NGQeV+0o9X91X6VBeK6Na3zt5y4eWkve65DRlk1aoeBmhAteioLZlXkqu0pZv+PKIVf+zFKu
 h0At/TN/618e/QVlZPbMeNSp3S3ieMP9Q6y4gw5CfgiDRJ2K9g99m6Rvlx1qwom6QbU06ltb
 vJE2K9oKd9nPp1NrBfBdEhX8oOwdCLJXEq83vdtOEqE42RxfYta4P3by0BHpcwzYbmi/Et7T
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20250718082033.GA25126@nxa18884-linux>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/07/2025 10:20, Peng Fan wrote:
> On Thu, Jul 17, 2025 at 08:48:43AM -0600, Mathieu Poirier wrote:
>> On Mon, Jul 14, 2025 at 11:52:05AM +0000, Peng Fan wrote:
>>>> Subject: Re: [PATCH v4 0/5] remoteproc: imx_rproc: Support i.MX95
>>>>
>>> [...] 
>>>> New warnings running 'make CHECK_DTBS=y for
>>>> arch/arm64/boot/dts/freescale/' for 20250710-imx95-rproc-1-v4-0-
>>>> a7123e857dfb@nxp.com:
>>>>
>>>> arch/arm64/boot/dts/freescale/imx95-tqma9596sa-mb-smarc-2.dtb:
>>>> scmi (arm,scmi): Unevaluated properties are not allowed
>>>> ('protocol@80', 'protocol@81', 'protocol@82', 'protocol@84' were
>>>> unexpected)
>>>
>>> Same as replied in v3.
>>> This is because [1] is still not picked, not because of my patchset.
>>
>> I won't move on this patchset until this is resolved.
>>
> 
> Not understand why hold on this patchset. I suppose you may not
> understand what the error means. The warning is totally irrelevant
> to this patchset, there is no dependency.
> 
> Others added a property to arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
> &scmi_bbm {
>         linux,code = <KEY_POWER>;
> };
> But this "linux,code" property not landed(missed to be picked up) to DT binding.
> 
> This patchset does not touch scmi_bbm. I could help address the warning
> in the other patch, but I do not see why "linux,code" under scmi_bbm node
> could block this patchset.


Lack of proper binding for that property might hide other issues with
this patchset, because schema is not evaluated. Make your DTS and
bindings correct, then start growing the device nodes.

Best regards,
Krzysztof

