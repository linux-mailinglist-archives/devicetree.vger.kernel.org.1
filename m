Return-Path: <devicetree+bounces-236519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 182A9C451BF
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 07:40:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ADCFB4E10E3
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 06:40:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69CDF2E8B71;
	Mon, 10 Nov 2025 06:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CDz545vz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D894238C2F
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762756825; cv=none; b=gbAMFur7J57VCuuR7QPksqFFVkRWgWU49/uINXxXdpoS+k2HVUqnPJdoC5YSIhJA+N0Cp4qsKIUCUAMPbi1eZBiq5bBKJoDwT301oqgVJBPAFgVMjr9rFiN0njK6EIPOVLH/u7jyHLKvoSONixdolu1V6xJDLI8gPEgo1XFieQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762756825; c=relaxed/simple;
	bh=KigUZ2jK8l3FAFeu8HfbDV/ulYwYwMOzZCAktxcvJQk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=EM+sCHLg3ywEH28Ij+WvhLfxjlSBIr+/Hw5lIpuSXMQNHQcbR9biXCjtuaA2WXzWBoIFfxWZ4GBBiTD+kbsYeLy28mlxpXjioRHbF6Jc4A+uPZ0Hs8uqTh4NJltgXj8u0+6hgToMAeUiT4bahY62dYKBquVlHtsVtbvOkwy5lnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CDz545vz; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47112edf9f7so12346615e9.0
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 22:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762756822; x=1763361622; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JD4y8dFL4Qc3UIMVu1ByWGHKasnWIhJOmctGKB7rHNk=;
        b=CDz545vz6s18xFePAd/R0A6HvnJQrY45YZyaR65gAj6JjhXUpXlM1KpIaZvaOfAIIC
         FeYHwC0MavRD8mqeMQcFEDsYg9iz2tu4m0eoxz8eCVr+cI3pX7tBaWnBTF56r6Zdmuou
         VoCBPGHPNc7wTaRK7b0/XXjyJu3C05TI1ZjTxPaFf5Q50In1xJOSp7ooIifR6Gm3hQ23
         YD/owhXMqQxLY2JCJAfL9DhbK78OBsmHCt5p9hxuuVp5XivH0PrXrIKeUJRwWh13IUTu
         iN7YF7E/hLe5q2pFAKr+K8LE4W+F+DKHUuxRMiwEfMC06hva+edzX57N5CnaTOXuER08
         9t4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762756822; x=1763361622;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JD4y8dFL4Qc3UIMVu1ByWGHKasnWIhJOmctGKB7rHNk=;
        b=ivMDZ0c4c/Lth9JNTvQ0Aj98qi02G0RD22eu4UcLnkTYaM42PpkhKE4VkfVvSwW2mw
         UbojF/SmgxNL7/1wwAEnJx5PgQ2I7P7xcdddl5wH1XWE3J+fUWihI4u6ITdk3eX2UDia
         KgcNHDt4hwR8TnAVfYyPGDsWj6RLLDreEpCjeQZeYSoGfMgPe6BzJbkNr95V6m1ZfBFO
         8JvIC3NoyAEUroV4wGjx1NQZW1yhLlV5S2EsMJpK7tnZt+7MlZl8KLqcmE3WsbfGTNV2
         EOQvXog+q5nxxghy8lY/Dtqw5MEkYiDlPgScPgddljZMG5y5tFPh7ws64ajDVerSPMQb
         wmbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmjk8susg/3ffJQh68gvAbbDIjCMTc2d5Hnoz23BiUN/N0/3T78VSCqw/vVSqgKjgWk3MAVy5oQA7r@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ7734WrQ0qluY3xiZcAD55BiG59BGHGeyhrAV0EnpX0aoSPl2
	sAxIGRiGp+Ajy0WMHzOpi6+oQe8blGsMF+msHfg3trSGGlPtftOnjRh10BKDl2b74CA=
X-Gm-Gg: ASbGncuSld3JQ7yPLrkXCiJdxszHDD4z7Jynutw5G5NgzI7V4ifkmJbKNWmhGMFTvom
	4g5I6ZX9mBjQlplAZDojcdYnD9obVLrD9yj2Bb8HQC9U2fCMZ67QIv4mphCCpb3N5BZ1h2uWQqz
	n8KA/6gs7R/RCMDTi0OmAHGb2Z5Xp1xevISJJyinHVPM3uoF1zzmr15s8rcgaTc+5asSEt7Bd0J
	ad0S64j8pGkbzV9NQdvrxGC56g0aQQ+yHxDa7YXzo+0VYSPrQU1m6S8gyarafZk+SFXWdopHI+1
	Fl/dXPCgWYnFfhhuGimbei5+tVzL5zkBU//0eFg9gR2AI6Ka0zl4zDPbpA9ZBQ9P+hq8bz0pvvl
	8w3NwN3aTtEe0l3Qn2YO86TbKUVjO3dCvCFVnnBhgfX1MattzxjFYuktpCf2Z/wOoUUaVCilt7c
	QVT5M4MhooJQ7Epw5H+9qd764+ACqScpSTZtDsgAvrUxb3ee0lOjzXOnpNFkPVBds=
X-Google-Smtp-Source: AGHT+IGOz9+9CDJ3QnsnAcx96wfbo8Uh+Kija8Qn/BBtDb3lYcNFsN3pjUBwX1/h1H29lxDD/6wJ8A==
X-Received: by 2002:a05:600c:4448:b0:46e:206a:78cc with SMTP id 5b1f17b1804b1-47773290517mr61287685e9.28.1762756821769;
        Sun, 09 Nov 2025 22:40:21 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:f168:a23e:c1b2:ae61? ([2a01:e0a:3d9:2080:f168:a23e:c1b2:ae61])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47763b5714dsm111549355e9.0.2025.11.09.22.40.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Nov 2025 22:40:21 -0800 (PST)
Message-ID: <b341a3b3-c215-4335-a962-799a64a3c1b7@linaro.org>
Date: Mon, 10 Nov 2025 07:40:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RESEND 1/3] dt-bindings: PCI: amlogic: Fix the register
 name of the DBI region
To: Manivannan Sadhasivam <mani@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Hanjie Lin <hanjie.lin@amlogic.com>,
 Yue Wang <yue.wang@amlogic.com>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Jingoo Han <jingoohan1@gmail.com>,
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
References: <20251101-pci-meson-fix-v1-0-c50dcc56ed6a@oss.qualcomm.com>
 <20251101-pci-meson-fix-v1-1-c50dcc56ed6a@oss.qualcomm.com>
 <31271df3-73e1-4eea-9bba-9e5b3bf85409@linaro.org>
 <rguwscxck7vel3hjdd2hlkypzdbwdvafdryxtz5benweduh4eg@sny4rr2nx5aq>
 <20251106-positive-attractive-tiger-ec9c1c@kuoka>
 <lsue7hlgybqpru3qfetlpee2mswnycvhxjffwyxtplmpqved2u@aohtwjtxesr4>
 <65hstqcfcca7xj3cdtq7iikcdojbltfu42zlfdelskakesu3cd@hl3kydp6dw2t>
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
In-Reply-To: <65hstqcfcca7xj3cdtq7iikcdojbltfu42zlfdelskakesu3cd@hl3kydp6dw2t>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/8/25 11:40, Manivannan Sadhasivam wrote:
> On Thu, Nov 06, 2025 at 02:37:17PM +0530, Manivannan Sadhasivam wrote:
>> On Thu, Nov 06, 2025 at 09:30:15AM +0100, Krzysztof Kozlowski wrote:
>>> On Mon, Nov 03, 2025 at 03:42:58PM +0530, Manivannan Sadhasivam wrote:
>>>> On Mon, Nov 03, 2025 at 10:47:36AM +0100, Neil Armstrong wrote:
>>>>> Hi Mani,
>>>>>
>>>>> On 11/1/25 05:29, Manivannan Sadhasivam wrote:
>>>>>> Binding incorrectly specifies the 'DBI' region as 'ELBI'. DBI is a must
>>>>>> have region for DWC controllers as it has the Root Port and controller
>>>>>> specific registers, while ELBI has optional registers.
>>>>>>
>>>>>> Hence, fix the binding. Though this is an ABI break, this change is needed
>>>>>> to accurately describe the PCI memory map.
>>>>>
>>>>> Not fan of this ABI break, the current bindings should be marked as deprecated instead.
>>>>>
>>>>
>>>> Fair enough. Will make it as deprecated.
>>>
>>> The true question is what value was being passed as that item (ELBI)?
>>> Because if this was always DBI - device has DBI there - then what
>>> deprecation would change?
>>
>> Nothing, except not breaking old DTs with the binding check. That's why I
>> decided to remove it in the first place.
>>
> 
> Neil, do you still insist on marking the 'elbi' region deprecated than removing
> it?

Not really. if the original definition was wrong, let's fix it.

Neil

> 
> - Mani
> 


