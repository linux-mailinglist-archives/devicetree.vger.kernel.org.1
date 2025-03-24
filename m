Return-Path: <devicetree+bounces-160278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8B3A6E219
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 19:11:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D118E3A4209
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 18:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE61C26462B;
	Mon, 24 Mar 2025 18:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R8I5+fmW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AF3263C84
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 18:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742839822; cv=none; b=R/1u64VXPg0I5avUCGFKppTmyhguk+Jev+TZNuRiSN3RHBIiQ6dbKbl0WwiujTWiPzhSlpUutSqyAjhnse0LK+DGWsfFwDvdns7dQ+UugZcxgQz3UPVDsxAWpEr5tQLQB1grcYjZrS57MWaE+IbftUG7slbbnPdyG5ptK8+xfcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742839822; c=relaxed/simple;
	bh=TPQAGOfcHLRcPE0gq+D5qlh1MYUZEcj4Jf7qEr2aN2o=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=JKcUSzKAdllh8iXiIqlPyaJPufA2G0p28doXSVln1vssMS1OeLZj5pzLIVmBHMFTluQBcViVpJkjap3B6UpEwi900MM+D4jJ6OhyQi1F1NTFB8rNXEi2QklFxW21avVRiriFHpAghCJ94LbIYfnq8i8Y/yaDn+lLpBD19DhyFw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R8I5+fmW; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso4112802f8f.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742839819; x=1743444619; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G6RnDtWvNpOaIVSBxV8j/X1kbaynp04OetAChdyC+3o=;
        b=R8I5+fmWI1/pLmFoSwm1xhakJkwAIKZws6FBt57lP+3efdMj/UHpTjnQsRCgmxdLCU
         XHunRcVizoLBDCM9yoFYhWWteztBpb/LoMm+4J2JUk6d6+QGb2vDZLpkKZ8KTyfV9oE3
         Oxlp/XwrEtfl5yiE1gpt0guXgcwVTYQL8WEXfnxFSIU7sHoxkUTMWASxgEg2IgtiJlhD
         /oo5UsJO6ClOJF4hn8wA16wazSfbN805IunnDINsTFywuvReIUGkU4PodtvjU9wSTuvY
         x0A5+jw8VKu854HwXkTcvM0LWqaHum7J1ToLr8ImjiktxpkXZRoEnyycO/4XXPp2WvC2
         5YxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742839819; x=1743444619;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G6RnDtWvNpOaIVSBxV8j/X1kbaynp04OetAChdyC+3o=;
        b=I4zfd/RowuzHGeC1WdrxqUESH5OkvvGp1/MwEXNp3uFJv7JxSHJwVBa7zELIhzS7wY
         GhujvMK27+mipuf2JzSUIBZL9pOdQbTQoL4+us61GNoHvVHeidP8OcZZ8BCFRfHTy9SB
         9au7gcFn9J1vSu3uWy5n60fDQcHxphwiGU0f+3ie7VHdWfmlAt2NrmO4g3ufi64bq2/w
         3YUmPA4P/qtagQRvPXteQmRqIuP8T+p6AmEYV2ROTFr5J5vFfhShtvDD7JN2tshA6Wbn
         RABxW92HFFXtohstASYHNNrgTcrEQ+r5UuryRgf1IHnpXLutJdSaoNkjRGkCtN6XC2z3
         djtw==
X-Forwarded-Encrypted: i=1; AJvYcCXNRO2oUH1gDObQPqgRBG13jOWMX5Y63bjTXrozBhd9tHxMMidE+LsPbCwHInYL1wV8ApCXG4zLrPuV@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk0eUbp5OA1lD+/R5D2gkPuqDF92AgZjwHoWrcImLR1o2bWrEm
	5ijUZARY2753SPh5bo4pQo2bors/mdto3B1esqKeaukDbf6Kysb1JFt/8Fv9u0NMzveUbjyxcqt
	C
X-Gm-Gg: ASbGncuNYEw9puRncU9nkfekTzAnmy5vxP8qLwHqQJl/pGVzXPhCdrDaL2WiW0lPc/n
	Ywcr5kQjCRsV4WT+Wg+o1A6E51XiCmVbW+50BJFdfMSVZOpsg0nM/dRXysqq1HAd7mnUEAigGp/
	C+wExeuDYVXAMEihiIc2ElTSk4i/v2WdNA+6tvCPBM1+CQVo9tsWH7Z3UyAhH701j8LfhlTu//Y
	tOlCQnAAauo0UV8EZ0QHyAh8yLLUEI2CfsF87qv4ae/4po3GSgCSDUAv172ZDx9Dy2oX57QnJEp
	QZehNJZiuaUKTA1VaMP6i3HBiplaMmlJTIe2uKb04OPlCFJIUSWQz2Bik8tNrVDRgjsCjlASh+9
	RYg+ehWsESSylPPMU
X-Google-Smtp-Source: AGHT+IFQXi6L+IpcN6afMH9c+hEtu1ugnJ/0f83qfJWd2Asbiidts4UoDfjyd3+t8WNtutogARq+Cg==
X-Received: by 2002:a05:6000:21c2:b0:399:6d53:68d9 with SMTP id ffacd0b85a97d-3997f939949mr8863871f8f.38.1742839819049;
        Mon, 24 Mar 2025 11:10:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:a356:8d0:d4d:bb5f? ([2a01:e0a:3d9:2080:a356:8d0:d4d:bb5f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9b3ff7sm11435193f8f.48.2025.03.24.11.10.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 11:10:18 -0700 (PDT)
Message-ID: <1526d8a4-9606-4fb3-bb86-79bd8eb8a789@linaro.org>
Date: Mon, 24 Mar 2025 19:10:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/6] phy: qcom-qmp-ufs: Add PHY Configuration support
 for sm8750
To: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Bjorn Andersson
 <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>,
 Manish Pandey <quic_mapa@quicinc.com>,
 Linux regressions mailing list <regressions@lists.linux.dev>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
 <20250310-sm8750_ufs_master-v2-2-0dfdd6823161@quicinc.com>
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
In-Reply-To: <20250310-sm8750_ufs_master-v2-2-0dfdd6823161@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 10/03/2025 22:12, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Add SM8750 specific register layout and table configs. The serdes
> TX RX register offset has changed for SM8750 and hence keep UFS
> specific serdes offsets in a dedicated header file.
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |   7 +
>   .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h    |  67 ++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 180 ++++++++++++++++++++-
>   3 files changed, 246 insertions(+), 8 deletions(-)
> 

<snip>

This change breaks UFS on the SM8550-HDK:

[    7.418161] qcom-qmp-ufs-phy 1d80000.phy: phy initialization timed-out
[    7.427021] phy phy-1d80000.phy.0: phy poweron failed --> -110
[    7.493514] ufshcd-qcom 1d84000.ufshc: Enabling the controller failed
...

GIT bisect points to:
b02cc9a176793b207e959701af1ec26222093b05 is the first bad commit
Author: Nitin Rawat <quic_nitirawa@quicinc.com>
Date:   Mon Mar 10 14:12:30 2025 -0700

     phy: qcom-qmp-ufs: Add PHY Configuration support for sm8750

bisect log:
git bisect start 'ff7f9b199e3f' 'v6.14-rc1'
git bisect good 36c18c562846300d4e59f1a65008800b787f4fe4
git bisect good 85cf0293c3a75726e7bc54d3efdc5dc783debc07
git bisect good b2cd73e18cec75f917d14b9188f82a2fdef64ebe
git bisect bad b247639d33ad16ea76797268fd0eef08d8027dfd
git bisect good 9b3f2dfdad1cc0ab90a0fa371c8cbee08b2446e3
git bisect bad 8dc30c3e4cf8c4e370cf08bd09eb87b0deccd3de
git bisect bad 100aeb03a437f30300894091627e4406605ee3cb
git bisect bad b2a1a2ae7818c9d8da12bf7b1983c8b9f5fb712b
git bisect good 8f831f272b4c89aa13b45bd010c2c18ad97a3f1b
git bisect good e45cc62c23428eefbae18a9b4d88d10749741bdd
git bisect bad ebf198f17b5ac967db6256f4083bbcbdcc2a3100
git bisect good 12185bc38f7667b1d895b2165a8a47335a4cf31b
git bisect bad e46e59b77a9e6f322ef1ad08a8874211f389cf47
git bisect bad b02cc9a176793b207e959701af1ec26222093b05

CI run: https://git.codelinaro.org/linaro/qcomlt/ci/staging/cdba-tester/-/jobs/229880#L1281

#regzbot introduced: b02cc9a17679

Neil

