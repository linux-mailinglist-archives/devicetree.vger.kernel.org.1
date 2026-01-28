Return-Path: <devicetree+bounces-260434-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJ7pFTEVemlS2QEAu9opvQ
	(envelope-from <devicetree+bounces-260434-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:54:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D30E8A2573
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:54:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8188F301D328
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65A635FF55;
	Wed, 28 Jan 2026 13:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="chxqNJn6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD2835EDC1
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608385; cv=none; b=largOHNprb77xXVoc7wBjv/CVg8he7a03OoCp9jcZKBnbE46dI/0nbBZQVp8HgsOfB7ZyscbEKsZGojXmnSRKzhrdvxJFsphVTSFsKthhjjAFay6nrJHLnaucx0ij2qlbhEKVOB5NLKdsKVyDuos/eIEP5EfSlkBoYKJC9b2/44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608385; c=relaxed/simple;
	bh=juC5Q1a++e2uQ2IKrezzdJOcn8RHGaw7hjL+JrUzZYg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=BQOLFNlgzw8LNVr2a7ySvnyh24WOgMCRi4UYwKY89Qqfmmrs4h6YfjnyBcsIkI4+3q4FRHjhPC7defazzfWhVZGJMQ4ojiUNQwfOVfbTG+M4Wak0N12u0Fa4qJFL65wbVDDDf5tR/imGENkQL9tRau3tnEvmUE36Rl3b2ft+xVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=chxqNJn6; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47ee937ecf2so9117745e9.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769608382; x=1770213182; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UZ6vM1Egnme0uJQMENgOQ5XiDDC3KSzKkZqcE7ovqC8=;
        b=chxqNJn6cmmBvxp0EKFeulCgVfxnMC9N4AHpz0B2HiePt+WrZcgdxqYH/wHNbDh5io
         pHAI4V8yXTHiPMeCH+CCAyG4L79gMJIdlPAMIA2s3eMiKOAb57GnrSyuK1zcIolnGbDy
         gkI15rRyawDw86nyl17JmAGU5sAsnCv7CwKFzhPwecj/Z++foKsX+wd9hYdqKnfUOIzP
         inwX+2fG86t+5VxgfuY/D9vGatXoWjPVsmG4lk1SvArAOk66VHduQa7k9fLkohbXNuEG
         mgBkWPdsbtmk1nGk2daOHXmo4WGSD0bUXjE8L5Iuc5m0dgorjkZ38l8wMmtPKplCxgeR
         Sepw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608382; x=1770213182;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UZ6vM1Egnme0uJQMENgOQ5XiDDC3KSzKkZqcE7ovqC8=;
        b=mH9Wmh7JFlb3tVN4+wkYh2ge/ghrGzNMH7EKw7xtyBP77BaoHDg8PvELbIBN6fBgWl
         dXtdMo/uX2UGhr9O2YGLnXOgxG/MGlzlyiEZo2O0D6NzK/iwAkfurRH5hfyne7Iy7awf
         ewJ0H/wLc9efRUtWpzs3v5YmEtjoHssxyZtKRTa7xThuTsnqWEdXFn3jRHTjRFwddDG+
         IsdP5+9gU3t/GLp1YnHZsm44p5KDJ3co2rsqHILQ10YIG6xxOKmFsgRi9sh5kyt6nRpZ
         5GcTYLLIV5aYl/dYhIDZAAIo6AF0lXOllir5nifO0kOkRRVdB1QBqpwm9xzmH7RsVam3
         1BVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXc+UNQTvkuJOYtxkNtmi+aC/BO5r0I44Qh6iyIXPTL7UpY+LR5H2jyUH0uE8pH8fZQowFUT2KlfdTn@vger.kernel.org
X-Gm-Message-State: AOJu0YyPD6KKB7uJQ79TbmWaRm/y5md7fRPNYsp2EL0qshAK7tFfGTmX
	jpCJmH5CgzHKBDbRQH5GjD7N6Ic/LJsw0pzQr5GszpWygSkTwNkwP4o9Meo6swYNHrVNSlVcVO+
	/uk0X
X-Gm-Gg: AZuq6aJvvmKvw/x/NfhRsZ3r6oQm8q/cpDApnTMTt+USZ0a0yv6sf/kF0FK7otYT9+B
	m7rnRF/Eb+F6qs3pymhwOBKEMch3ZD7qtmneHVf3p3gKl2HXaQza0wNDty9RDtRWDKwvYWfRnXi
	Tx2osNKcxa5MBrrJxEapN82WXDrwU6UvSciJcMDTj86ZXgrsss199cal6orol+43XZf+dzRHpZ3
	/jVN9A6ptBELo2M0G0qg2PYEwzbftudkOouUXeDWOcILbd2IuUHqPcbeZ8NuGiMRIkEgTEct7ao
	+xToVvzZm7gMtKCgp0IwiCh3vIOmlDFh+DBGLfFPZuUrISRZ7IJEIgcvaW3kuYucsofgOSNy9B0
	XDWSMYhRgJbOIqrks9z+nyA8I6EbJR7B8nyBnnoLIQKpdF67u4uLnlX+JY3aEFNGdL+4v18XPeP
	LufVbLZzkckILoc/A1oDkacU0wHgkfg5aNJ+7iLHGBdvuh4WJZoEXE1G0PrdVxS2znD/KrC75jM
	w==
X-Received: by 2002:a05:600c:1994:b0:47e:e59c:67c5 with SMTP id 5b1f17b1804b1-48069e428d5mr73572715e9.8.1769608382417;
        Wed, 28 Jan 2026 05:53:02 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:7745:d752:5f0b:2b68? ([2a01:e0a:3d9:2080:7745:d752:5f0b:2b68])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806d9800e8sm2964485e9.2.2026.01.28.05.53.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 05:53:02 -0800 (PST)
Message-ID: <4d49c26f-3609-4a46-adbb-64cca7166721@linaro.org>
Date: Wed, 28 Jan 2026 14:53:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm8650: add CPU cache size
 properties
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260128-topic-sm8650-upstream-cpu-props-v1-0-9fbb5efe7f07@linaro.org>
 <20260128-topic-sm8650-upstream-cpu-props-v1-2-9fbb5efe7f07@linaro.org>
 <366fe074-3355-4c9b-b60f-4f7de0ba6a0f@oss.qualcomm.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <366fe074-3355-4c9b-b60f-4f7de0ba6a0f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_FROM(0.00)[bounces-260434-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Queue-Id: D30E8A2573
X-Rspamd-Action: no action

On 1/28/26 11:46, Konrad Dybcio wrote:
> On 1/28/26 11:33 AM, Neil Armstrong wrote:
>> Add the L1 cache size and its line size (cache-size and
>> cache-line-size) with the corresponding L1-I cache and L1-D cache.
>>
>> L1 cache is unified, but clidr_el1 register (get_cache_type) tells that
>> L1 cache is separated (CACHE_TYPE_SEPARATE), add i-cache-line-size and
>> d-cache-line-size and cache-line-size of L3 cache is specified.
>>
>> All cache line sizes were confirmed by checking ccsidr_el1.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 56 ++++++++++++++++++++++++++++++++++++
>>   1 file changed, 56 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> index 8671c25dd68f..f8563ec79dc6 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>> @@ -75,6 +75,11 @@ cpu0: cpu@0 {
>>   			compatible = "arm,cortex-a520";
>>   			reg = <0 0>;
>>   
>> +			i-cache-size = <65536>;
>> +			i-cache-line-size = <64>;
>> +			d-cache-size = <65536>;
>> +			d-cache-line-size = <64>;
>> +
>>   			clocks = <&cpufreq_hw 0>;
>>   
>>   			power-domains = <&cpu_pd0>;
>> @@ -103,11 +108,15 @@ l2_0: l2-cache {
>>   				cache-level = <2>;
>>   				cache-unified;
>>   				next-level-cache = <&l3_0>;
>> +				cache-size = <262144>;
> 
> This should be 512 kiB, shared for c0/1, according to a block
> diagram

Thanks for confirming !

Neil

> 
> Everything else lgtm, although I can't find a source for the
> cache*line* sizes
> 
> Konrad


