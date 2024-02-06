Return-Path: <devicetree+bounces-39152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E7084B8FE
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 16:13:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5988CB248CB
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 15:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF688132C25;
	Tue,  6 Feb 2024 15:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S7F2hSZX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B90111BD
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707231715; cv=none; b=cbENS+K0FBIzEwHcjNg/RYwC3HgldY9Bh28Blz9YKkuJihQXgTpSVvVjtZuY8bpJYgP+SWnj5GT4u7A2kbThRbkAvIhL96lwzdsuGoOH13o1W/suxYTK/ObvWjT41axiLgy8hlMmA2xoCoZA33Agc9wFKlUoKq7ET1QCcp1PzqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707231715; c=relaxed/simple;
	bh=TYC/0PN7dyAQUY7ANrlgVR8E3zVgjVs4FVpdLSKg4Fw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=lgzfAVW/Dpfx5scICG4bP2Ww5r+vTIzp3nwvh6Gay7vjVMUSKgUmbMS/YT+vlybhNnnnhmrybtvNFKyjq0WwH2qYZDBjzQMNGoN92XVQGvzpt4drFW658jsi+N2ftjpSE6VF7aW3TL1hBEb2+B3fAtVOUBftqgxuBPJSFk/7Onc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S7F2hSZX; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-33b29b5ea86so2293505f8f.1
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 07:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707231712; x=1707836512; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H5VTIWx1HaIAdr3e5cTrSgnK2i49qOmVvjnmS+SpRKA=;
        b=S7F2hSZXkWG0ak747z5VQVVCgFitDWGdLktoyiUaDQDeeCzd/wN5ZyIhdHAyvOf806
         Wim4O0v2Bbs0LC0nbE5qw82BcwGcStsu/agnzfe8hDSWX/X+VgnMga4d3re0g2Gdx5qy
         tRqULoVaB7RVF5FCfV/J53uxUqoGQEi3klBoe4aPJEQaqXgokpjVHZY7arKSNUCRDbQq
         EX+FyE9kYF1kzd1YMx5ijPii0/jhvFkT8UPbscRAPVZXMwskVsCsHeDMeOQaT14196WB
         qbPSneqRg4+xnYjxhrMkum3U2UWjFjknPYBXFCY6OiP1UWwTvZBxO8mLXh8h84XQKzEZ
         Bpwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707231712; x=1707836512;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=H5VTIWx1HaIAdr3e5cTrSgnK2i49qOmVvjnmS+SpRKA=;
        b=NVuFkLDog6L5M55ZnTUy44Ad+bDQqxIRGUTYINLMqydYtwhk88FKAQACjE0HZxwJ/6
         mpRl8jWAKetUBgw+SoNOY/TReJMYQZFTRAGxLvJOSn6YHGZ+6WDbk8Da85/+uQ6ll29Z
         Xk4clbXTCQv2paCYEXWaHcc5VG/0Tt5Yha6ofpZbkjSN8chI7QSLPfhkw+ePev1/duaL
         LQvRTjonuZn30tlZcbALlwMGkTNklNLu3ymAwFTEl10GM2RDk3tEa+3LnE8SNayNdaat
         UXsU1orFvetuH2FK+2GzNd0gLxULFvKgwRC/s58czE5AD4q9+aMBnvRzTbaWxIT+caqE
         uyXQ==
X-Gm-Message-State: AOJu0YypoxXbiR/SisHHjS7+FZ/WpPL0Iu3P613eYZehCueIiDZnDXgF
	05sQFpZmZxlsR14jtMwGB8u6dxd/HUX6W2vewy6qJnsUEAgk+TL3fHSBsx0Eob4=
X-Google-Smtp-Source: AGHT+IETvRFjRnjFOO4bDtGypgquP7hdk6Jo9QAd2g9J8IXkg01MrNN5rH2llh9JQnyDKGXtLdZ2/Q==
X-Received: by 2002:a05:6000:81:b0:33b:4ac8:b99c with SMTP id m1-20020a056000008100b0033b4ac8b99cmr411104wrx.1.1707231708961;
        Tue, 06 Feb 2024 07:01:48 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVUkdMHZCCNuOykxelokr3qQYi4y0Ie66lNO1Ifb0g92zYIagZRERVeeum+2FedcVbW56Gd56106bwKOu1EJj+DAOSdHYWn1cRiDXzshHmgqOYgLEP+euBmc05nxD/jUAJHC2kvJMIWwRnT1EgW99LSySBmDhxF/gzyYj6sqDloFr9LhzEXHMxcPbUVqU8vmBKJWKP6OhpkKTUuzSdRT6PARSpshprzzK/cysYJOVyclrPsNKZF1Idpcz79I7TDEDRuFxX5+SBw9laKDi1xnG7x1b9X4B58Aqyct/qOcVsc0iBItWBsB8BFU3tQSus0W6Lo2ATEuzvX+1HTQwnNCuQblBKAVQJRMAqnrQ6wZjA38R/4xCOhOt/gNTL1SUP+yz547X7fQUJsLkY9j0wNR1UBdOx13km3A4tZ
Received: from ?IPV6:2a01:e0a:982:cbb0:ba23:8574:fa8:28dd? ([2a01:e0a:982:cbb0:ba23:8574:fa8:28dd])
        by smtp.gmail.com with ESMTPSA id t6-20020a5d5346000000b0033b15fdad42sm2319994wrv.34.2024.02.06.07.01.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 07:01:48 -0800 (PST)
Message-ID: <f87069a4-042c-467a-94fb-0b65bfa4758d@linaro.org>
Date: Tue, 6 Feb 2024 16:01:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCHv1 4/5] arm64: dts: amlogic: Add cache information to the
 Amlogic S922X SoC
Content-Language: en-US, fr
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240205171930.968-1-linux.amoon@gmail.com>
 <20240205171930.968-5-linux.amoon@gmail.com>
 <cf47b82c-6307-475b-af3a-eab7f09715f0@linaro.org>
 <CANAwSgTOpDmZGR33veBWrzr75=xEZ-28iu=GeCzqa0ZPXxDchw@mail.gmail.com>
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
Organization: Linaro Developer Services
In-Reply-To: <CANAwSgTOpDmZGR33veBWrzr75=xEZ-28iu=GeCzqa0ZPXxDchw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/02/2024 11:15, Anand Moon wrote:
> Hi Neil,
> 
> On Tue, 6 Feb 2024 at 14:30, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> On 05/02/2024 18:19, Anand Moon wrote:
>>> As per S922X datasheet add missing cache information to the Amlogic
>>> S922X SoC.
>>>
>>> - Each Cortex-A53 core has 32 KB of instruction cache and
>>>        32 KB of L1 data cache available.
>>> - Each Cortex-A73 core has 64 KB of L1 instruction cache and
>>>        64 KB of L1 data cache available.
>>> - The little (A53) cluster has 512 KB of unified L2 cache available.
>>> - The big (A73) cluster has 1 MB of unified L2 cache available.
>>
>> Datasheet says:
>> The quad core Cortex™-A73 processor is paired with A53 processor in a big.Little configuration, with each
>> core has L1 instruction and data chaches, together with a single shared L2 unified cache with A53
>>
> Ok,
> 
> Since all the Cortex™-A73 and Cortex™-A53 share some improvements in
> the architecture with some improvements in cache features
> hence I update the changes accordingly.
> Also, I checked this in the ARM documentation earlier on this.

I don't understand, Amlogic states it's a shared L2 cache, but you trust
the ARM documentation instead ???

> 
>> And there's no indication of the L1 or L2 cache sizes.
> 
> What I feel is in general all the Cortex™-A73 and Cortex™-A53 supports
> L1 and L2 cache size since it is part of the core features.
> but I opted for these size values from a Wikipedia article.
> 
> On my Odroid N2+, I observe the following.
> 
> I have also done some testing on the stress-ng to verify this.


Ok I don't feel confident adding numbers that comes out of thin air,
and even more since they are only shared to userspace.

I think we should only add the numbers which are 100% sure

> 
> alarm@archl-on2:~$ lscpu
> Architecture:           aarch64
>    CPU op-mode(s):       32-bit, 64-bit
>    Byte Order:           Little Endian
> CPU(s):                 6
>    On-line CPU(s) list:  0-5
> Vendor ID:              ARM
>    Model name:           Cortex-A53
>      Model:              4
>      Thread(s) per core: 1
>      Core(s) per socket: 2
>      Socket(s):          1
>      Stepping:           r0p4
>      CPU(s) scaling MHz: 100%
>      CPU max MHz:        1800.0000
>      CPU min MHz:        1000.0000
>      BogoMIPS:           48.00
>      Flags:              fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
>    Model name:           Cortex-A73
>      Model:              2
>      Thread(s) per core: 1
>      Core(s) per socket: 4
>      Socket(s):          1
>      Stepping:           r0p2
>      CPU(s) scaling MHz: 63%
>      CPU max MHz:        2208.0000
>      CPU min MHz:        1000.0000
>      BogoMIPS:           48.00
>      Flags:              fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
> Caches (sum of all):
>    L1d:                  320 KiB (6 instances)
>    L1i:                  320 KiB (6 instances)
>    L2:                   1.5 MiB (2 instances)
> NUMA:
>    NUMA node(s):         1
>    NUMA node0 CPU(s):    0-5
> Vulnerabilities:
>    Gather data sampling: Not affected
>    Itlb multihit:        Not affected
>    L1tf:                 Not affected
>    Mds:                  Not affected
>    Meltdown:             Not affected
>    Mmio stale data:      Not affected
>    Retbleed:             Not affected
>    Spec rstack overflow: Not affected
>    Spec store bypass:    Vulnerable
>    Spectre v1:           Mitigation; __user pointer sanitization
>    Spectre v2:           Vulnerable
>    Srbds:                Not affected
>    Tsx async abort:      Not affected
> alarm@archl-on2:~$
> 
> alarm@archl-on2:~$ lstopo-no-graphics
> Machine (3659MB total)
>    Package L#0
>      NUMANode L#0 (P#0 3659MB)
>      L2 L#0 (512KB)
>        L1d L#0 (32KB) + L1i L#0 (32KB) + Core L#0 + PU L#0 (P#0)
>        L1d L#1 (32KB) + L1i L#1 (32KB) + Core L#1 + PU L#1 (P#1)
>      L2 L#1 (1024KB)
>        L1d L#2 (64KB) + L1i L#2 (64KB) + Core L#2 + PU L#2 (P#2)
>        L1d L#3 (64KB) + L1i L#3 (64KB) + Core L#3 + PU L#3 (P#3)
>        L1d L#4 (64KB) + L1i L#4 (64KB) + Core L#4 + PU L#4 (P#4)
>        L1d L#5 (64KB) + L1i L#5 (64KB) + Core L#5 + PU L#5 (P#5)
>    Block "mmcblk1boot0"
>    Block "mmcblk1boot1"
>    Block "mmcblk1"
>    Net "eth0"

This looks pretty, but let's keep exporting verified data.

> 
>   >
>> Neil
>>
> 
> Thanks
> -Anand


