Return-Path: <devicetree+bounces-177367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4C4AB71CB
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 18:43:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42B68162242
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 16:41:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 919B728136E;
	Wed, 14 May 2025 16:40:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MNymLfdW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5B727E7C6
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 16:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747240809; cv=none; b=Lt9+PJY5CjYWd2Dj2BMetnxXdk2HzqcAqtvKXcT/NIRphh2l+HqFJSYBmWxyzjc6/oKZjagHOuSgvyvCdWtBfwTQCOJKxgyB+lhhhCrHUvuuV+28Jf/8CfHUCEFqtpY2A9ySfaEXXXMRDhVjI7CDq5m78duo+HZPRHCgx5zruWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747240809; c=relaxed/simple;
	bh=qsRC4rtpzeZl/HCQxJZ/jiHUAZWLUGs7TC++Y1ifxbs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=HR0Jgu01f+0l+zqAkjUUU/uMmwpEemeeaJ0Ty50qyYZh/dGYEX45KBuzXg3pLCrbywDrzZNJMT70vz3u5FyZRUtfup0i2XS3PsrlHaRlxZD01i6O/CTPpqmMUACEPv2dYfPgVQRsmT8Scjq3etmb0sHu+5FBlgbfNqrfAWmebQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MNymLfdW; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a1fb18420aso5155119f8f.1
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 09:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747240806; x=1747845606; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z8WZ1b2439ywq9jfEuQpDBO1suID2dCRujieJMdn7yE=;
        b=MNymLfdWywwCMD3mwZeiObXjVQ3vpq9Bh0G9RTErj3NGj5K4LQke9kKt8huzcg4/ws
         AOp9sKusNTzGnkfBzL8Jd3bGMftfuT1LtcFHDrgvB2FlEsPIpw0UmXPuYShlzcJ5IyeL
         u5JN+3wE2PPuReT5dUATNGZiD+bu2E48zXWaSqWYo6pDxMm53WIB4/5UETfYrJ3EfL3L
         SO2V3yDmc8nnlYesFtqv2f+ZlXRRf8JFMGKsN48OXJqdUfafBOdivq7g7t1rtZeJYHZG
         TF6hEjqT4k4d9TDJ89aq9qdr+giXtmK0vVeW8L2Ng8qGDs+AnV8BeFjdOmEIh/QplHqh
         kVMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747240806; x=1747845606;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z8WZ1b2439ywq9jfEuQpDBO1suID2dCRujieJMdn7yE=;
        b=LJDcf3uptdYxdyOqKxZqJYmXxTiNwkld8IX/2lg7bPOt7+GeLmj+iOKKWIHaANh+o1
         pwYJ9X1LWqoPR78GvWLKYfiL99z0b3XqM/npynilulerE9FAw5ACN98V6qUcA/ITyp9x
         mViaLx1dmmbVPxVARN/lkg2zNikFxIefmXspTicdUjyzsvgvy/vdxuKYMI94iUruJJfF
         enzBhB7AGavnfhHPE0vPQCLE/v1YuvxGjLvIHTLaHXHBaSpLlIVI4NJe9Lt3nM/VzSKq
         kE5OfoXVTu1xHX+zeLClsu6Pb/v0e8PPQBXg8wTYfIln5EQ7QrefFwx9oNU3M3nO+kGY
         cpgA==
X-Forwarded-Encrypted: i=1; AJvYcCVJSH2EHPPOMpjxX0IdVmABi5zjSs0rDECDPPc1EdNDVrsUsiWLE2JmXBRpoYGOo0zBTpopZyTD2qc/@vger.kernel.org
X-Gm-Message-State: AOJu0YysojXBrMjW8C8+SxXBDdbxcrJgxApWHkug+W98D4Hh0/zj+us+
	L6//Uu22rGAZyt5ZJlcyjK4SHlvD5SkGkWFGxEnqW5fn/p+Mxe9tzBJPWi+9clk=
X-Gm-Gg: ASbGnctXK8tXmkL7p6k9cM7OPYeHDjJbM40aA+yFLjQRdmD5ltjWKsdqtV3iG/U3NC1
	5xGfIzYQxshe4aX38ttPuuVVxBrbFXjYBNurU0sFzsJeH3IAtASd/8n7A5Wr3SboOmpqiQMt9E7
	aM/krX8xBRAQrYwRkMygkOWv+yKz23K5wx0I8nstCLIKUWrl3Hn0NFPbr2DECplw8jm8xcw/Iqn
	ZCNAB9n+KiPo8CzqCQMYqEfC5nEx7XzaTsdddD6S5vVpQjG1SaUxXCE9h6FOwcPpiYkDkFDRnia
	Ng/wYTxr2nJrtvYCgLSB+W8IxzGreouqsCfAcCHxgTtHSXKpwVyvuHs998eqTwSRs6SAb+zKPnf
	4O5M0YGDiFzOUEM1Id70ODgg=
X-Google-Smtp-Source: AGHT+IEPbAF4Q3bMuaTmqRM9qQbhF4Gz5x0v56o5JMbzAafCu6BVNra2bXvw9299wzIEP0EieOV7oA==
X-Received: by 2002:a05:6000:2088:b0:3a1:f5c6:2bd with SMTP id ffacd0b85a97d-3a3496c36d5mr3666848f8f.31.1747240805928;
        Wed, 14 May 2025 09:40:05 -0700 (PDT)
Received: from [10.61.1.139] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f5a2ce36sm20542941f8f.71.2025.05.14.09.40.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 09:40:05 -0700 (PDT)
Message-ID: <43aac8b0-1fec-4b2a-8046-c26f96ca532e@linaro.org>
Date: Wed, 14 May 2025 18:40:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 1/2] phy: qcom: qmp-pcie: Update PHY settings for
 SA8775P
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
 quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
 quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-1-d4f319221474@quicinc.com>
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
In-Reply-To: <20250514-update_phy-v2-1-d4f319221474@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 14/05/2025 13:37, Mrinmay Sarkar wrote:
> From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> 
> Make changes to update the PHY settings to align with the latest
> PCIe PHY Hardware Programming Guide for both PCIe controllers
> on the SA8775P platform.
> 
> Add the ln_shrd region for SA8775P, incorporating new register
> writes as specified in the updated Hardware Programming Guide.
> 
> Update pcs table for QCS8300, since both QCS8300 and SA8775P are
> closely related and share same pcs settings.
> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
>   .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
>   drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
>   5 files changed, 66 insertions(+), 41 deletions(-

I think the subject should be "Update PHY settings for QCS8300 & SA8775P".

As my comment on patch 2, what's the relationship ? does those PHY settings fix
the "Gen4 stability issues" or are needed for the Gen4 equalization ?

Thanks,
Neil

