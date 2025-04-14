Return-Path: <devicetree+bounces-166679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 02462A88008
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 14:10:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4A2917A68B8
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:09:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDD1A29DB6C;
	Mon, 14 Apr 2025 12:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qPspCFr7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B98529CB5C
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744632603; cv=none; b=AomzihlF/z0p4nFebsCYWgvblkYqYD2f7+S4t0sbeUZ79o4tJDsBrO2XCNkrC+FsFSWhARNQJ1uJZ4sQnrnTNNRUk6G53H+/xj62XWKXwfjAe3sMx0pFI4ePrpDeTtENafqhLbEEeNPyDsWKSz0q4E1l+cf+CiB2TDaIg+iShVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744632603; c=relaxed/simple;
	bh=VPfaSJTlNal5KqQ5jtjLaDeIZT7ncCVLdGpGOvo85Ho=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=qtUXDyPG9/bggpnGCE3FmEXJZpnaFwW4ZAK3nlBI2vLWfDRQWPSJZyALondr6SqK7IEIoS6pNIu9AjVl9bXTZ7qUDYBG0i+Fq2b6PVRGhefn/xCXeA+sUXYS7eRFzaGHXOdzKDmGA+tD1XMfAeVzarS779ihzUkPsoHVajMOVMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qPspCFr7; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-39ac8e7688aso2543915f8f.2
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744632600; x=1745237400; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NzN6KZ88XOlX1+5R0UqmcOptc+jlrgW/easb1tVuNrc=;
        b=qPspCFr76WtcFxSLqa39H1GTJa7Y6IVRhNHFVO3lv2qd3YUjj7IxcQ3QDPzwuKKHPM
         CwROboi0xYg1oOq4Nm8ccFR9qpQKDg6UFIRgLeQB9Dl0lkjmR5/SW7iuZbS/C/tNfMto
         a/Lc1JEWSasScpbOwKLpnLXEBP/d3A7P6kMIcodiDr+pLh2SZO5qJzS7x5G9qsL5XGSF
         0hzp4NwcCEstsriU03llIIWiq/8+2wJrQwz7incmiKu7Za9bdYDHO1lu/dhmW8ZkNajX
         tlhJG5ThHlQbGqh8tNZVljlVuCulvwPTMtl7HACPP4uD6qQJLQeUxy89tNWtuvQSUldJ
         rDHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744632600; x=1745237400;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NzN6KZ88XOlX1+5R0UqmcOptc+jlrgW/easb1tVuNrc=;
        b=YJM9gQNiEMcK7Tv9rVoworNC5/jNvBIrG7Cg26bk7MLZFV11dDnZRpkX+Ac3IbvhxE
         Oj0z2FI1yVwOGLa50cuKAVhvTHCgaeKCGrSogk/LgjzTB3fV8L4RaEdLpDfrlvsNAoQQ
         7kklq703QZBRQeu35fR1ubw8ClzcB3FrI+NlwJH02kVHqxoadqvEhu2SfrM1zQYEhDyS
         qqoYL8FlGphxQ6ThH4HV2j2rnIVmPeOGr1Y85gVLPvl6OEasV8Y1AAV6WQ8Bv7c0Vp4g
         pcy1OTUNVc1u0E1m9nWVhLG1eECZ/QKHScFluJF2JVvvV4c8vrKN1nlOrhSH4c9n4VxP
         HeNA==
X-Forwarded-Encrypted: i=1; AJvYcCUQ5LukRtxKtNs89MRjrXx/e0TIxJM20WwptDQy2FglOb02CH3OLKURLME8hs3rabMj0glBDjiMq1AR@vger.kernel.org
X-Gm-Message-State: AOJu0YyXAExiigA3Qgh23nMQH7V32ybM0gf611xwN76gdODUkowIt+oe
	q5N+MA8jOKLt7MWw/iRhu7D+Q3N6O843O1IdCIo6ZDOEGzqDU3C55MxcelIQ1Dg=
X-Gm-Gg: ASbGncs/twYpaK0PeuBIS+H77wcXj+nKJ1LXMdh+OFf4/ba+qwvpLUt62QT55t8w6yK
	NbgJFzyyRCEb2CMIuWKWlFfvtxAvvlPHtU4LcOp7u5kGJ7oca+EUiAQwpt7+PtYB09Av+YaJtmT
	z5PfCCfzNjGN5+qfpqP7VHXWSwvvUSaj+7v8rvkZz6hisdhRVXbNw2iAlpbi+WlJ0MfeU7QXPed
	NftuQF/XFYMckS7fD/yFPgwkR1VRxYn0vVbWtCg4nXAYC19KJLRasrNM7S6+nk+6Yw9e0h47LQZ
	qxhurCGfG1rjh5XDb7Ea5iTf3KDUtUTEy7win7WXz2x+J04CDDLj0VQ8jo51CPlcaHdtqLfPw7I
	M4f0y/uNW/TgP1LsUFA==
X-Google-Smtp-Source: AGHT+IFIwP38dkqdewscIJigNZmgh78x8KbHz3rqBhpgDfgfPgDekOeWtR5RwlNWdfIUMijy16i4NA==
X-Received: by 2002:a05:6000:248a:b0:391:22e2:cd21 with SMTP id ffacd0b85a97d-39eaaebc6femr9555732f8f.36.1744632599571;
        Mon, 14 Apr 2025 05:09:59 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:bf8a:3473:5c13:9743? ([2a01:e0a:3d9:2080:bf8a:3473:5c13:9743])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae963f62sm10652664f8f.5.2025.04.14.05.09.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 05:09:59 -0700 (PDT)
Message-ID: <eb469388-d2f9-447a-aa80-41795991a4ad@linaro.org>
Date: Mon, 14 Apr 2025 14:09:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC v5 0/8] media: qcom: iris: re-organize catalog & add
 support for SM8650
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
 <2740b178-34cc-4b95-a8da-7e6862cabc92@linaro.org>
 <96953447-cff5-98d4-053e-8cc31778849c@quicinc.com>
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
In-Reply-To: <96953447-cff5-98d4-053e-8cc31778849c@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 14/04/2025 12:54, Vikash Garodia wrote:
> Hi Neil,
> 
> On 4/14/2025 1:05 PM, Neil Armstrong wrote:
>> Hi Vikash, Dikshita,
>>
>> On 10/04/2025 18:29, Neil Armstrong wrote:
>>> Re-organize the platform support core into a gen1 catalog C file
>>> declaring common platform structure and include platform headers
>>> containing platform specific entries and iris_platform_data
>>> structure.
>>>
>>> The goal is to share most of the structure while having
>>> clear and separate per-SoC catalog files.
>>>
>>> The organization is based on the curent drm/msm dpu1 catalog
>>> entries.
>>
>> Any feedback on this patchset ?
> Myself and Dikshita went through the approach you are bringing here, let me
> update some context here:
> - sm8550, sm8650, sm8775p, qcs8300 are all irisv3, while qcs8300 is the scaled
> down variant i.e have 2 PIPE vs others having 4. Similarly there are other
> irisv3 having 1 pipe as well.
> - With above variations, firmware and instance caps would change for the variant
> SOCs.
> - Above these, few(less) bindings/connections specific delta would be there,
> like there is reset delta in sm8550 and sm8650.
> 
> Given above, xxx_gen1.c and xxx_gen2.c can have all binding specific tables and
> SOC platform data, i.e sm8650_data (for sm8650). On top of this, individual SOC
> specific .c file can have any delta, from xxx_gen1/2.c) like reset table or
> preset register table, etc and export these delta structs in xxx_gen1.c or
> xxx_gen2.c.
> 
> Going with above approach, sm8650.c would have only one reset table for now.
> Later if any delta is identified, the same can be added in it. All other common
> structs, can reside in xxx_gen2.c for now.

Thanks for reviewing, but...
Sorry I don't understand what you and Dmitry are asking me...

If I try really hard, you would like to have:

iris_catalog_sm8550.c
- iris_set_sm8550_preset_registers
- sm8550_icc_table
- sm8550_clk_reset_table
- sm8550_bw_table_dec
- sm8550_pmdomain_table
- sm8550_opp_pd_table
- sm8550_clk_table

iris_catalog_sm8650.c
- sm8650_clk_reset_table
- sm8650_controller_reset_table

iris_catalog_gen2.c
- iris_hfi_gen2_command_ops_init
- iris_hfi_gen2_response_ops_init
...
- sm8550_dec_op_int_buf_tbl

and:
- struct iris_platform_data sm8550_data
- struct iris_platform_data sm8650_data
using data from iris_catalog_sm8550.c & iris_catalog_sm8550.c

So this is basically what I _already_ propose except
you move data in separate .c files for no reasons,
please explain why you absolutely want distinct .c
files per SoC. We are no more in the 1990's and we camn
defintely have big .c files.

And we still have a big issue, how to get the:
- ARRAY_SIZE(sm8550_clk_reset_table)
- ARRAY_SIZE(sm8550_bw_table_dec)
- ARRAY_SIZE(sm8550_pmdomain_table)
...

since they are declared in a separate .c file and you
need a compile-time const value to fill all the _size
attribute in iris_platform_data.

So I recall my goal, I just want to add sm8650 support,
and I'm not the owner of this driver, and I'm really happy
to help, but giving me random ideas to solve your problem
doesn't help us at all going forward.

Neil

> 
> Regards,
> Vikash
>>
>> Thanks,
>> Neil
>>
>>>
>>> Add support for the IRIS accelerator for the SM8650
>>> platform, which uses the iris33 hardware.
>>>
>>> The vpu33 requires a different reset & poweroff sequence
>>> in order to properly get out of runtime suspend.
>>>
>>> Follow-up of [1]:
>>> https://lore.kernel.org/all/20250409-topic-sm8x50-iris-v10-v4-0-40e411594285@linaro.org/
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>> Changes in v4:
>>> - Reorganized into catalog, rebased sm8650 support on top
>>> - Link to v4:
>>> https://lore.kernel.org/all/20250409-topic-sm8x50-iris-v10-v4-0-40e411594285@linaro.org
>>>
>>> Changes in v4:
>>> - collected tags
>>> - un-split power_off in vpu3x
>>> - removed useless function defines
>>> - added back vpu3x disappeared rename commit
>>> - Link to v3:
>>> https://lore.kernel.org/r/20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org
>>>
>>> Changes in v3:
>>> - Collected review tags
>>> - Removed bulky reset_controller ops
>>> - Removed iris_vpu_power_off_controller split
>>> - Link to v2:
>>> https://lore.kernel.org/r/20250305-topic-sm8x50-iris-v10-v2-0-bd65a3fc099e@linaro.org
>>>
>>> Changes in v2:
>>> - Collected bindings review
>>> - Reworked rest handling by adding a secondary optional table to be used by
>>> controller poweroff
>>> - Reworked power_off_controller to be reused and extended by vpu33 support
>>> - Removed useless and unneeded vpu33 init
>>> - Moved vpu33 into vpu3x files to reuse code from vpu3
>>> - Moved sm8650 data table into sm8550
>>> - Link to v1:
>>> https://lore.kernel.org/r/20250225-topic-sm8x50-iris-v10-v1-0-128ef05d9665@linaro.org
>>>
>>> ---
>>> Neil Armstrong (8):
>>>         media: qcom: iris: move sm8250 to gen1 catalog
>>>         media: qcom: iris: move sm8550 to gen2 catalog
>>>         dt-bindings: media: qcom,sm8550-iris: document SM8650 IRIS accelerator
>>>         media: platform: qcom/iris: add power_off_controller to vpu_ops
>>>         media: platform: qcom/iris: introduce optional controller_rst_tbl
>>>         media: platform: qcom/iris: rename iris_vpu3 to iris_vpu3x
>>>         media: platform: qcom/iris: add support for vpu33
>>>         media: platform: qcom/iris: add sm8650 support
>>>
>>>    .../bindings/media/qcom,sm8550-iris.yaml           |  33 ++-
>>>    drivers/media/platform/qcom/iris/Makefile          |   6 +-
>>>    .../media/platform/qcom/iris/iris_catalog_gen1.c   |  83 +++++++
>>>    ...{iris_platform_sm8550.c => iris_catalog_gen2.c} |  85 +------
>>>    ...ris_platform_sm8250.c => iris_catalog_sm8250.h} |  80 +-----
>>>    .../media/platform/qcom/iris/iris_catalog_sm8550.h |  91 +++++++
>>>    .../media/platform/qcom/iris/iris_catalog_sm8650.h |  68 +++++
>>>    drivers/media/platform/qcom/iris/iris_core.h       |   1 +
>>>    .../platform/qcom/iris/iris_platform_common.h      |   3 +
>>>    drivers/media/platform/qcom/iris/iris_probe.c      |  43 +++-
>>>    drivers/media/platform/qcom/iris/iris_vpu2.c       |   1 +
>>>    drivers/media/platform/qcom/iris/iris_vpu3.c       | 122 ---------
>>>    drivers/media/platform/qcom/iris/iris_vpu3x.c      | 275 +++++++++++++++++++++
>>>    drivers/media/platform/qcom/iris/iris_vpu_common.c |   4 +-
>>>    drivers/media/platform/qcom/iris/iris_vpu_common.h |   3 +
>>>    15 files changed, 598 insertions(+), 300 deletions(-)
>>> ---
>>> base-commit: 2bdde620f7f2bff2ff1cb7dc166859eaa0c78a7c
>>> change-id: 20250410-topic-sm8x50-upstream-iris-catalog-3e2e4a033d6f
>>>
>>> Best regards,
>>


