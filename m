Return-Path: <devicetree+bounces-211510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 60461B3F503
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 08:07:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0A39189922D
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 06:07:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A5242E1F10;
	Tue,  2 Sep 2025 06:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eq4Fo0OB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319752E172B
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 06:07:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756793247; cv=none; b=h00oB4LNlNSX5JoxyR5XAEQqpewAb2qivvKWlbsiVPDv8ioIE2I+YHpyXb2BCTV0SjWNulUvVxM7nsseTUbAbLTF1xMNMNcA5rAJQ1g5/ufRIIMWelelOX7zSlBQuzxXePVsME7uVW74snPWam5KhH50eKUcOG4mIJBc8/4cp+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756793247; c=relaxed/simple;
	bh=lcRKGuBTIwV8aVWzCNRgaz6ffqBzMJw3nBGepR5YPBk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MB3vAecHnFgiKKymhumz2djHC5jeTAjRlWTuKDoreynRobeN57nQgotf5NUKZ7wNh6ArM/rQj0ne0zU5ANol2c3Lg0Wzx7WtAvFbXapH5gTPHFJK3ZDfFXP8TGQb5Xc2+Jd2/bJVk8rbQCLp6QcyDfXS6xGMgmS4hQaLePuKHfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eq4Fo0OB; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3cd44b9496fso649715f8f.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 23:07:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756793244; x=1757398044; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=t/B1FaoD/CzixDmOU5vubVEgdSvYSaE5OyF1FY9TFP8=;
        b=eq4Fo0OB48ug0o42blUy1TViLJd+GzMSgN+8DH2C/hOMuIRebDXsv2BqZZqXxGRa/5
         zFXFcdODNkSlMhE6m2hf7yxsMmUc0gWjmFTBqtpUWEo3otBFUWgXmN331lNSLx2thxs+
         UTScoh1dJu/XZHOTw7TN3+fpmGdE7ehfXNVInmG9Lcper/9RgqaDXzRE1DR1EbiMQTmD
         fLHnClYL3IgSM4KpgKgNbq+wy2n0OsepaNdE3XrAJkuTq8V+/JLEdYc+yaYQoc0lxqYL
         XgZPpqceiU6YyHB9NcOD46McvsMvf/h/Ao7r1Dc08TQ4aos1pcx8H/9FMamaPvtZwpZ2
         WbaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756793244; x=1757398044;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t/B1FaoD/CzixDmOU5vubVEgdSvYSaE5OyF1FY9TFP8=;
        b=tT0Gpr+zlXM8uiLA3K9w5envtnv6vRSKAsenSuvCZmIFbRqLAkyVyzNFsw9NHiJ6sp
         fP6ogCISnYe2b3SJlOpG1f90gwL0ZXHU/HJHhnPZGFDzmuFPxr2d3vGeg0GsJziZsvZR
         6QYhcKrS6+DG0a5foKaCTwNyNZlVaXmIllHEqQ8CdUywRKvqDX01kCvxNaPwTmRXfNwm
         5r+ks1zsCEni2OYp517jzN7kfZ9ZwCKDsaPAIo3myxbhEkBuFLhVH6Z3teEIY3C9KSLt
         Ax+/AlJ3fY1RZoYh7gpHWabz8EWwZKPmE4VTxQQEvFzS45kMvFKfAwEf9hhO4ZJy3qpK
         LWsw==
X-Forwarded-Encrypted: i=1; AJvYcCWo3lRfCObs/duSsLM8FZ8PcsQ9V2QCJBgN8E/PdHevUTTDl+5gjJz9J1VxhckZcISLdv9lIXKO1/Zf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2m3HG+Ybbef+GRyfEPQfmSAuCtY91oyID9YdRRoxuhuE3F+ss
	fGTBwhvjyJT6PvKj3hrW9xPpJ8Y2KafQPkQakjmnDre2WLsumAI+bJyjfMQU3fApvFc=
X-Gm-Gg: ASbGnct1S8IViFzAcUGzEamX4HbHmfwH2W1eUTA0ZDoIK1k+n6b0MG+lg1zh9JMyO0s
	TdDmZnaXcVm+0tkb8lcKKTzhG+GwqtHjCprfRfuMRFB8hToc62ivWWzNtQHeJdMlCjwPMLKXndD
	XLBQ3xpDWq1oog4qWAX7DdeowAvLFya79InKDbws3OM4vwle3DJVlHVMwkEf3V6EzAtemgG5F3l
	5+UZhgkl1X5kmUt2e+Yf6R7EbqLAzw1ah992OtmVufj7eo0bc2Wzu4oHkcHW92cOD2wOJeLjVnj
	ad4eRSKtCA8EBBY8ROHSYZ/idZF+K47W7cvy6t728piyGT15s+rAbTDxeAdptNlQX6NRsSh67gM
	UMKk1tCstwHN2JtWM5U7RIw/iaYK8PvRdiH9vups3ZjQ8/p7nTBepLA==
X-Google-Smtp-Source: AGHT+IHlJQa2ozPDy4pXB3L1qvYBOkak8WzZG+cqww52jrlmExUNErZsn4LdUbYEor0rhiu5nFzizw==
X-Received: by 2002:a05:600c:4f8b:b0:455:f12f:e3fc with SMTP id 5b1f17b1804b1-45b81e92f7fmr56974255e9.2.1756793244503;
        Mon, 01 Sep 2025 23:07:24 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e74b72esm186726245e9.0.2025.09.01.23.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 23:07:23 -0700 (PDT)
Message-ID: <ddd0f518-f9e1-49e8-bbaf-b810adcd35b3@linaro.org>
Date: Tue, 2 Sep 2025 08:07:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 8/9] arm64: dts: qcom: sm6350: correct DP compatibility
 strings
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar
 <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250829-dp_mst_bindings-v7-0-2b268a43917b@oss.qualcomm.com>
 <20250829-dp_mst_bindings-v7-8-2b268a43917b@oss.qualcomm.com>
 <20250901-defiant-illegal-marmot-7ce0db@kuoka>
 <abkkn4f7uca6tzjasltyysxecuuirxxvbjz6l6re5v4z6jlmuh@ugz6jtw6vo4n>
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
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+wsGUBBMBCgA+AhsD
 BQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAFiEEm9B+DgxR+NWWd7dUG5NDfTtBYpsFAmgXUEoF
 CRaWdJoACgkQG5NDfTtBYpudig/+Inb3Kjx1B7w2IpPKmpCT20QQQstx14Wi+rh2FcnV6+/9
 tyHtYwdirraBGGerrNY1c14MX0Tsmzqu9NyZ43heQB2uJuQb35rmI4dn1G+ZH0BD7cwR+M9m
 lSV9YlF7z3Ycz2zHjxL1QXBVvwJRyE0sCIoe+0O9AW9Xj8L/dmvmRfDdtRhYVGyU7fze+lsH
 1pXaq9fdef8QsAETCg5q0zxD+VS+OoZFx4ZtFqvzmhCs0eFvM7gNqiyczeVGUciVlO3+1ZUn
 eqQnxTXnqfJHptZTtK05uXGBwxjTHJrlSKnDslhZNkzv4JfTQhmERyx8BPHDkzpuPjfZ5Jp3
 INcYsxgttyeDS4prv+XWlT7DUjIzcKih0tFDoW5/k6OZeFPba5PATHO78rcWFcduN8xB23B4
 WFQAt5jpsP7/ngKQR9drMXfQGcEmqBq+aoVHobwOfEJTErdku05zjFmm1VnD55CzFJvG7Ll9
 OsRfZD/1MKbl0k39NiRuf8IYFOxVCKrMSgnqED1eacLgj3AWnmfPlyB3Xka0FimVu5Q7r1H/
 9CCfHiOjjPsTAjE+Woh+/8Q0IyHzr+2sCe4g9w2tlsMQJhixykXC1KvzqMdUYKuE00CT+wdK
 nXj0hlNnThRfcA9VPYzKlx3W6GLlyB6umd6WBGGKyiOmOcPqUK3GIvnLzfTXR5DOwU0EVUNc
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
In-Reply-To: <abkkn4f7uca6tzjasltyysxecuuirxxvbjz6l6re5v4z6jlmuh@ugz6jtw6vo4n>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 02/09/2025 06:04, Dmitry Baryshkov wrote:
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
>>> index 2493b9611dcb675f4c33794ecc0ee9e8823e24d4..8459b27cacc72a4827a2e289e669163ad6250059 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
>>> @@ -2249,7 +2249,7 @@ opp-560000000 {
>>>  			};
>>>  
>>>  			mdss_dp: displayport-controller@ae90000 {
>>> -				compatible = "qcom,sm6350-dp", "qcom,sm8350-dp";
>>> +				compatible = "qcom,sm6350-dp", "qcom,sc7180-dp";
>>
>> No, that's breaking all the users.
> 
> WHy though? Both old and new lines are using fallbacks to bind the
> driver to the device.

Kernel has sc7180 fallback, but what if other DTS user does not and that
other user was relying on sm8350 fallback compatible? That other user
won't have sm6350 dedicated handling as well.

That breaking of users I meant.

With the kernel it should work, assuming SC7180-dp was introduced
similar time as 8350-dp.

Best regards,
Krzysztof

