Return-Path: <devicetree+bounces-48344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9687187178D
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 09:05:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 192A7B20995
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 08:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA5F37EEF8;
	Tue,  5 Mar 2024 08:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yX9x5Av2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8997EEED
	for <devicetree@vger.kernel.org>; Tue,  5 Mar 2024 08:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709625898; cv=none; b=S3yvegQMuNkY4wIYhG4Jw7MINYmCf5AfQ7NacxcVqYCuZQ+o4HO+9eXTO0b7yyZYCr3LnUabNWbORRRhR5Yk7ehXi04s/d+trWw9rGk2xJxpVKvAs+wqdr+gXAtkBFhOQgU7R7jf+1iGzSfmZG94mrI+ab0ecQ0+nteyppiE9E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709625898; c=relaxed/simple;
	bh=8XsLYUrP2htFSti77UN9KCuakQBBAP/QjFIhg07svrQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F7WerYulGB8Tpmd1k4lfbPLOTu0it8R09ywUhoNR7usw6gFhQvvjo7aMpst7V6NbBbTe3Tt0be/YE3z6ZIDMQcL4Z1k19WavLp/Au2wBg94wX4cQincpqdq364jqL9m1gbLhDxhHVof+1iDXC9bqdDiodpTCyCtaqnCrFOPv9tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yX9x5Av2; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a44cdb2d3a6so396823066b.2
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 00:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709625895; x=1710230695; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z321qTKWtk15yH3t9Ej/fGlBYVjhkASl76YshRID/ZE=;
        b=yX9x5Av2Ox4HYhnfUeYC9osJP2kX9SgUo22fS6VOgqfu9rwfiW2axVQU9/lK9MbfPN
         zlYAG/royXBHWrONBi2iqUXztZ+YuIU0LGIjgcmSguRqkfDIowyp+n1HKobjB/LJqqDe
         HO8KazqNl5FbFf4noXGNY7n7ykfNV1QfY+1GgPzdDk8+s9+qVMcMwe2tBJIgKR0Og9dj
         n7hFFKTgPTncDR7uhE3IQSf3tSuKfsptqSfgeuZVtY+XuDL/S5uitRipLVvSn5RHNbVa
         M+ManUCxFli2/+0H/tFuAMLHnPqRmhQnsfNpB5MCy0WRghzkTWSQCGQBABNZS9njpeeI
         QlJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709625895; x=1710230695;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z321qTKWtk15yH3t9Ej/fGlBYVjhkASl76YshRID/ZE=;
        b=MVnc8UChpmn2XUDSpOqTH0Y78XMYdw295GBEJvQW9qszy54fWmBdk6+M3R5NLXKgjP
         8kHPXgP6w0lj61uJmZfMy/hlFD7ASoecaFi7A5xC9Bvfsde42dQimjJHtshyacj4eKUr
         MbFBIVPObF6jbcWlgyvhHwGdfsMyNMEVtfL0E5WV5jngUTAQh7UAQ0hyje4/Q5JLwAzb
         YCjkSPCdPYZJaYtYJ8QL8GnXrRoqgj+ZWl9JeK7bi0OwqP473ErclLiauCCYMwKeNBzn
         95A2FXT09xZKJkpkjTZF5c23xRiRRz6ovyTN6lnYax0RCeOvZ3pPXpnH2zQqsV2id4aQ
         DGCA==
X-Forwarded-Encrypted: i=1; AJvYcCXqZSwgLUqwX6D8OJMuAhbpMgP7ZJv5flNEa6YvAS4j8ZbIMi7w9/XiuDV/L7CVKb3WnV3Mf1EtVINDQMCveF1+LONAfixQz5I4/g==
X-Gm-Message-State: AOJu0YxaNErCtP9geXfeVMqmEg0Lv2uO/pQptNvJcmv4tk4umcg4++Ez
	exf1Q5iviO1OGfmVg/MAQ7fCLksE1lZQoVJr9l611kFkJAMCEFXfi9Rhf/iGM3I=
X-Google-Smtp-Source: AGHT+IEJoL4rNXit1Wc4e/+msPDAwWm73giIGlMLyDcfuCOmEdIZnp7eAMTy35qiUMPZ+j61jG1zOw==
X-Received: by 2002:a17:907:7677:b0:a44:7bbe:d770 with SMTP id kk23-20020a170907767700b00a447bbed770mr9366046ejc.7.1709625895391;
        Tue, 05 Mar 2024 00:04:55 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id ld13-20020a170906f94d00b00a451ab833c5sm2635117ejb.21.2024.03.05.00.04.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Mar 2024 00:04:54 -0800 (PST)
Message-ID: <f2c02ebe-47a5-4035-9bd5-c4c1f13e27a5@linaro.org>
Date: Tue, 5 Mar 2024 09:04:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: net: wireless: ath10k: add
 qcom,no-msa-ready-indicator prop
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Conor Dooley <conor@kernel.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, Kalle Valo <kvalo@kernel.org>,
 Jeff Johnson <quic_jjohnson@quicinc.com>, ath10k
 <ath10k@lists.infradead.org>, wireless <linux-wireless@vger.kernel.org>,
 DT <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
References: <b8de96c7-cbb6-4a09-a4d4-2c11b3ab3e01@freebox.fr>
 <871q8wk7o3.fsf@kernel.org> <3392f356-7b19-483d-b9f8-3bd84068fa52@freebox.fr>
 <87wmqoilzf.fsf@kernel.org> <20240229-ageless-primal-7a0544420949@spud>
 <68a49964-7c05-4575-a4f3-35848c08fefc@freebox.fr>
 <20240304-component-animator-e2ee0ab7574a@spud>
 <CAA8EJpq5HQaO2E2Pd7yqUTsWyQ_pLDdyoWng8QmWTzYn5fv3PQ@mail.gmail.com>
 <20240304-superior-vicinity-3dc6ca88141a@spud>
 <CAA8EJprMG=fY-G-X03bm7MMhcua9axjw5ULZz0efgHxwzgrdVg@mail.gmail.com>
 <20240304-privacy-registrar-93c48ab1b9c5@spud>
 <CAA8EJppoc9Mu7s8bzXjW_NJDQ5go2+MvoFG_JCnwP-6hC1SRow@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
 DFH41ZZ3t1Qbk0N9O0FimwUCYDzvagUJFF+UtgAKCRAbk0N9O0Fim9JzD/0auoGtUu4mgnna
 oEEpQEOjgT7l9TVuO3Qa/SeH+E0m55y5Fjpp6ZToc481za3xAcxK/BtIX5Wn1mQ6+szfrJQ6
 59y2io437BeuWIRjQniSxHz1kgtFECiV30yHRgOoQlzUea7FgsnuWdstgfWi6LxstswEzxLZ
 Sj1EqpXYZE4uLjh6dW292sO+j4LEqPYr53hyV4I2LPmptPE9Rb9yCTAbSUlzgjiyyjuXhcwM
 qf3lzsm02y7Ooq+ERVKiJzlvLd9tSe4jRx6Z6LMXhB21fa5DGs/tHAcUF35hSJrvMJzPT/+u
 /oVmYDFZkbLlqs2XpWaVCo2jv8+iHxZZ9FL7F6AHFzqEFdqGnJQqmEApiRqH6b4jRBOgJ+cY
 qc+rJggwMQcJL9F+oDm3wX47nr6jIsEB5ZftdybIzpMZ5V9v45lUwmdnMrSzZVgC4jRGXzsU
 EViBQt2CopXtHtYfPAO5nAkIvKSNp3jmGxZw4aTc5xoAZBLo0OV+Ezo71pg3AYvq0a3/oGRG
 KQ06ztUMRrj8eVtpImjsWCd0bDWRaaR4vqhCHvAG9iWXZu4qh3ipie2Y0oSJygcZT7H3UZxq
 fyYKiqEmRuqsvv6dcbblD8ZLkz1EVZL6djImH5zc5x8qpVxlA0A0i23v5QvN00m6G9NFF0Le
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAA8EJppoc9Mu7s8bzXjW_NJDQ5go2+MvoFG_JCnwP-6hC1SRow@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/03/2024 21:21, Dmitry Baryshkov wrote:
> On Mon, 4 Mar 2024 at 22:17, Conor Dooley <conor@kernel.org> wrote:
>>
>> On Mon, Mar 04, 2024 at 09:59:13PM +0200, Dmitry Baryshkov wrote:
>>> On Mon, 4 Mar 2024 at 21:46, Conor Dooley <conor@kernel.org> wrote:
>>>> On Mon, Mar 04, 2024 at 09:37:00PM +0200, Dmitry Baryshkov wrote:
>>>>> On Mon, 4 Mar 2024 at 21:34, Conor Dooley <conor@kernel.org> wrote:
>>>>>> On Mon, Mar 04, 2024 at 05:21:37PM +0100, Marc Gonzalez wrote:
>>
>>>>>>> Thus, anyone porting an msm8998 board to mainline would automatically
>>>>>>> get the work-around, without having to hunt down the feature bit,
>>>>>>> and tweak the FW files.
>>>>>>
>>>>>> How come the root node comes into this, don't you have a soc-specific
>>>>>> compatible for the integration on this SoC?
>>>>>
>>>>> No. Ath10k uses WiFi SoC as an SoC designator rather than the main SoC.
>>>>
>>>> Suitability of either fix aside, can you explain this to me? Is the "WiFi
>>>> SoC" accessible from the "main SoC" at a regular MMIO address? The
>>>> "ath10k" compatible says it is SDIO-based & the other two compatibles
>>>> seem to be MMIO.
>>>
>>> Yes, this is correct. MSM8996 uses PCI to access WiFi chip, MSM8998 uses MMIO.
>>
>> Thanks.
>>
>> A SoC-specific compatible sounds like it would be suitable in that case
>> then, to deal with integration quirks for that specific SoC? I usually
>> leave the ins and outs of these qcom SoCs to Krzysztof, but I can't help
>> but wanna know what the justification is here for not using one.
> 
> We can probably start with "historically established" here. From the
> hardware point of view msm8998, sdm845 and several other chipsets use
> a variant of the same wcn3990 WiFi+BT chip. The actual issue is in the
> DSP firmware, so it can be handled via the firmware-related means.
> 

The WiFi+BT chips are separate products, so they are not usually
considered part of the SoC, even though they can be integrated into the
SoC like here. I guess correct approach would be to add SoC-specific
compatible for them.

Best regards,
Krzysztof


