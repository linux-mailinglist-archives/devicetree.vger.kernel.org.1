Return-Path: <devicetree+bounces-144575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 73448A2E801
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1D207A2FCB
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 09:38:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 232D11C4A3D;
	Mon, 10 Feb 2025 09:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n1A2PBwc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F091C3C0D
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739180351; cv=none; b=pliDvDZA89YYlZND3xoG4i7oVS+fK5UMZL/N3RhrJutZqN9cg//41WtOC9ISRx4scKo0QjDNmxBNIsKlzMZaRJTX3vqSIgGxxQsTpo/7iuvy2pSEX3ScsAh1ME6r2GhE38/224oBRvy0QMc+xD1Tcl29fi5XBYXGSiacFWH/ZF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739180351; c=relaxed/simple;
	bh=Evggzw1mm78crygEZHz0M0KJuKx/SLpnc9JUY2lUjKA=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Ew5WGMSlnj8eCxlPSsmYEr+zbV4dlWN/FOV4Tj8SDzPfUm8oozY+pdGu+FiQtk7QtuaKdW6944Vc5GAsfwNzrSlfCQjFm8HsDSS9P25VkeRUs3hytcTmN5cBvo/YzoKyYD1L4FR93GMYT7UjOgF17fJNwcApU4Qyv1UHh45cJP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n1A2PBwc; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4362f61757fso40759255e9.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 01:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739180346; x=1739785146; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=srrij2tofXvckDkWsV9cjxYMgt/c8bcDWt6f2Pgk2Ho=;
        b=n1A2PBwcA8wJwg5EFY1f62SjVUszsaSqFq6hRdrf91Qyi9wBlt3MftA5yEcL2p22JF
         eTpknOcGBDMQdpoPkLi3kvpIMPfa0c1xyxOiGagUDQ+MTEmVgk96ttBWoMNpnKvZ9pJm
         QFqtPPXERxHcKuFGUXk55OPGJ0nhIZ6WrPlN8Cs2sYyE8T7nBLpnx0yM0n2XoJicmGeM
         ppvfqDnnhCi+VKq/n4TMdeYl8c8pRG2Fkd8AHRtc27RY+IvB47cxdXEIErzxhkdindGK
         FsV4nzoXTmqZMhUk6/EalYUGJ1/gLurr1UWnx8ZU5imKfsD8GR8S2W4PLiTvB9WHb6AM
         D2Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739180346; x=1739785146;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=srrij2tofXvckDkWsV9cjxYMgt/c8bcDWt6f2Pgk2Ho=;
        b=MpezNo2WArbEq7Fbvm0yxsAnkl4VZMt4DHpxJ3vkrlRpUKZVAq1q1al31IJLTpqHPX
         nAHsPVPfSLODQxNjefMXTc9fvSzBZzcAQoIdIBeqbQLGc00vwq5UQJ+zw/LW4kEKxmkO
         skLwE44R0iQ/OYfHyjSe2COK7gtzK86AuIA+lzrWuIwj/rtp+WEez9+ZcrOOoIOpTWMB
         IJNvVM13Q9/o7I0H3kXs2y884ZcWIA2GX7Fa9VA2a2sKo+x13RxVGTl52y16BgU8Tgsp
         6NGg68gBsVE4PhkkIdsnMhGhRcJdb5nR6U+oSHENfsTC+vYkYRVOxHDMWrhYmoX4/5/L
         5/xw==
X-Forwarded-Encrypted: i=1; AJvYcCW7pMgVUov7d2Hlh92pJzF00qU2t6IAD5XiX7hbrWJ2q9CzpHX4efC3q7g1864Xaa+mI4p2BsvL/idw@vger.kernel.org
X-Gm-Message-State: AOJu0YyVIZKUuqYlO8HlZc0RVqjkIE0yvp7Bfi+tpqNiaODWy1YbeyKr
	9WeN8Q2ciSr3h18EZoaV0gUtDpZXldmsCtFh1yRzFlX05i9b/VBl/+qgZJ/MXrQ=
X-Gm-Gg: ASbGncsSpPtHqBhll9pBOPU4HWEq7cw54qj9W2BKbI/DnAGpIH31uMKvurQq+zW0Mf6
	FCVrE/V1wtXeRnoA2orQDWvcS37WeuvMM1oW07q+42uzJEPHbI2WpI9GJx6OJ6JLFKKSwqA0iLe
	0JA9P/8H+21ezT03Idi1DtPxWgEdS6iOVhK69nnD7F2hYoTvqwGfAqllv9InUSkZHHCEj5sDcvc
	7qlZmAfMJdZazPf+t2azJRUwMplXcAaxMbltyVwIURTvwuYVDBp80VEaBrduZEqXRXouS79qtFa
	DmeBKhCug/DG5a2v9aaWU+MTlvecPPePN0XgsJoYVRLoLT2gz5ZWxPgtsmbdCbTGAP8O
X-Google-Smtp-Source: AGHT+IEHtY/xpnewLZHMrP5i7kiQ+idRtu5NbOM9k48vStwcKa1bF7nM6dGfWD5FqFw16XgafuQ3QA==
X-Received: by 2002:a05:6000:1448:b0:38d:b2e4:6d97 with SMTP id ffacd0b85a97d-38dc9343d93mr10722664f8f.41.1739180345812;
        Mon, 10 Feb 2025 01:39:05 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:8235:1ea0:1a75:c4d5? ([2a01:e0a:982:cbb0:8235:1ea0:1a75:c4d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4390d896d70sm174462705e9.0.2025.02.10.01.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 01:39:05 -0800 (PST)
Message-ID: <ae9ba351-53c8-4389-b13b-7b23926a8390@linaro.org>
Date: Mon, 10 Feb 2025 10:39:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/5] Add UFS support for SM8750
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>,
 Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
 Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 Nitin Rawat <quic_nitirawa@quicinc.com>,
 Manish Pandey <quic_mapa@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <c6352263-8329-4409-b769-a22f98978ac8@oss.qualcomm.com>
 <20250209152140.cyry6g7ltccxcmyj@thinkpad>
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
In-Reply-To: <20250209152140.cyry6g7ltccxcmyj@thinkpad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/02/2025 16:21, Manivannan Sadhasivam wrote:
> On Fri, Feb 07, 2025 at 11:47:12PM +0100, Konrad Dybcio wrote:
>> On 13.01.2025 10:46 PM, Melody Olvera wrote:
>>> Add UFS support for SM8750 SoCs.
>>>
>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
>>> ---
>>> Nitin Rawat (5):
>>>        dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the SM8750 QMP UFS PHY
>>>        phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
>>>        dt-bindings: ufs: qcom: Document the SM8750 UFS Controller
>>>        arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 SoC
>>>        arm64: dts: qcom: sm8750: Add UFS nodes for SM8750 QRD and MTP boards
>>
>> You still need the same workaround 8550/8650 have in the UFS driver
>> (UFSHCD_QUIRK_BROKEN_LSDBS_CAP) for it to work reliably, or at least
>> that was the case for me on a 8750 QRD.
>>
>> Please check whether we can make that quirk apply based on ctrl
>> version or so, so that we don't have to keep growing the compatible
>> list in the driver.
>>
> 
> That would be a bizarre. When I added the quirk, I was told that it would affect
> only SM8550 and SM8650 (this one I learned later). I'm not against applying the
> quirk based on UFSHC version if the bug is carried forward, but that would be an
> indication of bad design.

Isn't 8750 capable of using MCQ now ? because this is the whole issue behind
this UFSHCD_QUIRK_BROKEN_LSDBS_CAP, it's supposed to use MCQ by default... but
we don't.

Is there any news about that ? It's a clear regression against downstream, not
having MCQ makes the UFS driver struggle to reach high bandwidth when the system
is busy because we can't spread the load over all CPUs and we have only single
queue to submit requests.

Neil

> 
> - Mani
> 


