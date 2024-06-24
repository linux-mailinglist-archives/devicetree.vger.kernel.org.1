Return-Path: <devicetree+bounces-79318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D996F914A29
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:33:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 595121F2243F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44CED13C681;
	Mon, 24 Jun 2024 12:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kDYG0HN3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832621E4AE
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 12:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719232429; cv=none; b=eyS5tJHdHSoLBMJbW31uwhPHBXVqEY+w51uyUUpgg2fmZNiBBP6sDDR/2v70nldcMijEC8QhuH7BBcXGCPjshfKSZwWkxST5w8szfKX+bQgiqBfgTR1+RaIV3eXkaHqvkiceus2/HqE2R4MPdjFmi+GM9+BPirD9EymxlkT6swo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719232429; c=relaxed/simple;
	bh=psqxQdFWv1BMdFqke0VPY2EcxoG25qeZ3lM7t8eke0k=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=N1RDzItUuhzbzdECPVMJqbs1M7l2A86MZaDBmsGhQYuTKQjosk3tcqzdzrvru+cq2gY+xiTbj/3mmg6zMExPd/2EnFrOLVBLlK5hCzauL0PDuJ14K4s6Xp845HYZyTt8sIWbYlxUf6sekTLkRmuDMzejgIZHeY5GIG22QHVAuq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kDYG0HN3; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-421cd1e5f93so32534615e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 05:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719232425; x=1719837225; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZMONBsKkzRKs9hSc2ADQ52Hz5P2VpAkaoNQCA+izqoU=;
        b=kDYG0HN3nuIJpMRmKsQzemeCPvmPGkiBgwk9iynUTzVxTnSlZLeoJuQRHHgxQ8g2cP
         MVkneImXdxsokGlcP5wREis6jqGllYtseI4gdW+sXbgVxB+PiFZ2iPBEnk3DIuEFzvDT
         TEdOBmZiDtAuUpFVVE+hHoW1cdKtDC+aIjaPsgCw8JkuJFfp1K4v+K53po/Ljy4Gq7Ps
         zt+dwjEXMspZD8d/2hhTSd6iCLv2jHdpdQXE+hCLkrjMxAj/Pmb5HxRx0N3/evmFHY8H
         2Cmh8qVXEpz7N0MBhXCIzs682dahs1PmiX25PSo4FtCnkLif5jUy/E5sBNjOt+RzHEvN
         NpKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719232425; x=1719837225;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZMONBsKkzRKs9hSc2ADQ52Hz5P2VpAkaoNQCA+izqoU=;
        b=gHlAwEDZGZc9QB4LnKKdpMROUAxXiX8I8LG3LTtMA5a42zoJcuFu1uquYE5hH/RW0h
         3CKzhFEIW4K4mhWrFBQzgl8ZyZu0vt5c2LWaY6c9RqAj0jyZmPQIIBcMk4DkOEKZmiBb
         3u3OgoigBXzkZkIzDNRLoj/Su8y20joKz4gp+70uxEtTxoUekMAKbWk2P6W6EMLZ180U
         8KM1MgvEOY0wJkPHdnyILHlFflm2vuEesSNNqYqYgHoS9Jw25513kd6+8PUYPOfYNoYu
         IUWyNUHzFSh0qbQbSTGeUkDTgin6saIf1Yivm2GjZu+mU7QRbOdXWmRqbzaB/FZXk7VO
         8BxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqWTkGpPtPzR7Uvl9bvVqZFANBMVEW0JZlLgYrL/oFzdq1505xfN2fsziwfqNY2ohImC97XIpwaysFce9ReZCdjmcauLyN14UPag==
X-Gm-Message-State: AOJu0YwhZuLEkf8DkLB9yMdl/44yD+tRCcVL9qFLAVAAh+afEypA8nT1
	1+1+LqRU7vVBLSXyUbb/uGaDwtrdutrIid/gnP0p7q/Yt1bWl8H17mZGsxxW4Cs=
X-Google-Smtp-Source: AGHT+IGnu+Y9ve3O3epaWSCxWh2Ycx9wAqwb1uAdkj8pCLxUjqllzFl2QKEdGo7ge5tXsVVrcowefg==
X-Received: by 2002:a05:600c:470d:b0:422:7eca:db41 with SMTP id 5b1f17b1804b1-4248cc18101mr40617325e9.2.1719232424444;
        Mon, 24 Jun 2024 05:33:44 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:cf01:774b:55fd:ab74? ([2a01:e0a:982:cbb0:cf01:774b:55fd:ab74])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4247d0b634asm173145655e9.1.2024.06.24.05.33.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jun 2024 05:33:44 -0700 (PDT)
Message-ID: <95a69492-afc2-4215-aa50-5d7aedbb1556@linaro.org>
Date: Mon, 24 Jun 2024 14:33:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: prefer host mode on dev boards
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Caleb Connolly <caleb.connolly@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240624-b4-rb2-fixes-v1-0-8d763ee4e42e@linaro.org>
 <20240624-b4-rb2-fixes-v1-3-8d763ee4e42e@linaro.org>
 <8411fee8-7e09-421a-a52b-487acd3a3e24@linaro.org>
 <CAA8EJpoifd-Z175ZX6f6Pw+bQHY4F-rX05YoqJNr810_1KLm9Q@mail.gmail.com>
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
In-Reply-To: <CAA8EJpoifd-Z175ZX6f6Pw+bQHY4F-rX05YoqJNr810_1KLm9Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/06/2024 14:31, Dmitry Baryshkov wrote:
> On Mon, 24 Jun 2024 at 15:28, <neil.armstrong@linaro.org> wrote:
>>
>> On 24/06/2024 14:23, Caleb Connolly wrote:
>>> Generally, when given the choice these boards should prefer host mode
>>> since they're SBCs. When attached to a laptop (which is host-only) they
>>> should still fall back to peripheral mode.
>>
>> It's really not what I observed on sm8550/sm8650 QRD/HDK, as the power
>> is setup for peripheral by the bootloader and without an actual UCSI/PD
>> negociation it would only be functionnal as peripheral mode.
>>
>> So this is definitely untrue on sm8450/sm8550/sm8650 HDK/QRD/MTP.
> 
> But we now have the UCSI support for those platforms, don't we?

UCSI doesn't care about role-switch-default-mode, it's the default
fallback role to set when no role was explicitely set by UCSI.

Setting host won't make it work because the power support is handled
by the UCSI firmware. setting role-switch-default-mode = "host" will
make the USB port unusable if UCSI fails to start since it's
physically set to peripheral mode.

Neil

> 
>>
>> Neil
>>
>>>
>>> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
>>> ---
>>>    arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 1 +
>>>    arch/arm64/boot/dts/qcom/qrb2210-rb1.dts     | 4 ++++
>>>    arch/arm64/boot/dts/qcom/qrb4210-rb2.dts     | 4 ++++
>>>    arch/arm64/boot/dts/qcom/sm8150-hdk.dts      | 1 +
>>>    arch/arm64/boot/dts/qcom/sm8350-hdk.dts      | 4 ++++
>>>    arch/arm64/boot/dts/qcom/sm8450-hdk.dts      | 1 +
>>>    arch/arm64/boot/dts/qcom/sm8550-hdk.dts      | 4 ++++
>>>    arch/arm64/boot/dts/qcom/sm8550-mtp.dts      | 4 ++++
>>>    arch/arm64/boot/dts/qcom/sm8550-qrd.dts      | 4 ++++
>>>    arch/arm64/boot/dts/qcom/sm8650-hdk.dts      | 4 ++++
>>>    arch/arm64/boot/dts/qcom/sm8650-mtp.dts      | 4 ++++
>>>    arch/arm64/boot/dts/qcom/sm8650-qrd.dts      | 4 ++++
>>>    12 files changed, 39 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>> index c4cde4328e3d..bac4ed5874b6 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
>>> @@ -657,8 +657,9 @@ &usb_1 {
>>>
>>>    &usb_1_dwc3 {
>>>        dr_mode = "otg";
>>>        usb-role-switch;
>>> +     role-switch-default-mode = "host";
>>>    };
>>>
>>>    &usb_1_dwc3_hs {
>>>        remote-endpoint = <&pmic_glink_hs_in>;
>>> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
>>> index e19790464a11..bece4896ca23 100644
>>> --- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
>>> @@ -593,8 +593,12 @@ &uart4 {
>>>    &usb {
>>>        status = "okay";
>>>    };
>>>
>>> +&usb_dwc3 {
>>> +     role-switch-default-mode = "host";
>>> +};
>>> +
>>>    &usb_dwc3_hs {
>>>        remote-endpoint = <&pm4125_hs_in>;
>>>    };
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
>>> index 1c7de7f2db79..17d36f0ef5ab 100644
>>> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
>>> @@ -661,8 +661,12 @@ &uart4 {
>>>    &usb {
>>>        status = "okay";
>>>    };
>>>
>>> +&usb_dwc3 {
>>> +     role-switch-default-mode = "host";
>>> +};
>>> +
>>>    &usb_dwc3_hs {
>>>        remote-endpoint = <&pmi632_hs_in>;
>>>    };
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
>>> index bac08f00b303..fe548d795490 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
>>> @@ -695,8 +695,9 @@ &usb_2 {
>>>
>>>    &usb_1_dwc3 {
>>>        dr_mode = "otg";
>>>        usb-role-switch;
>>> +     role-switch-default-mode = "host";
>>>    };
>>>
>>>    &usb_1_dwc3_hs {
>>>        remote-endpoint = <&pm8150b_hs_in>;
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
>>> index e031ad4c19f4..20d5c54cfcf9 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
>>> @@ -847,8 +847,12 @@ &ufs_mem_phy {
>>>    &usb_1 {
>>>        status = "okay";
>>>    };
>>>
>>> +&usb_1_dwc3 {
>>> +     role-switch-default-mode = "host";
>>> +};
>>> +
>>>    &usb_1_dwc3_hs {
>>>        remote-endpoint = <&pmic_glink_hs_in>;
>>>    };
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
>>> index a754b8fe9167..ebafcbe6859e 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
>>> @@ -1098,8 +1098,9 @@ &usb_1 {
>>>
>>>    &usb_1_dwc3 {
>>>        dr_mode = "otg";
>>>        usb-role-switch;
>>> +     role-switch-default-mode = "host";
>>>    };
>>>
>>>    &usb_1_dwc3_hs {
>>>        remote-endpoint = <&pmic_glink_hs_in>;
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
>>> index e0dc03a97771..1efda478b7b9 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
>>> @@ -1252,8 +1252,12 @@ &ufs_mem_phy {
>>>    &usb_1 {
>>>        status = "okay";
>>>    };
>>>
>>> +&usb_1_dwc3 {
>>> +     role-switch-default-mode = "host";
>>> +};
>>> +
>>>    &usb_1_dwc3_hs {
>>>        remote-endpoint = <&pmic_glink_hs_in>;
>>>    };
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
>>> index 26dfca0c3e05..7b05932f9c36 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
>>> @@ -945,8 +945,12 @@ &ufs_mem_phy {
>>>    &usb_1 {
>>>        status = "okay";
>>>    };
>>>
>>> +&usb_1_dwc3 {
>>> +     role-switch-default-mode = "host";
>>> +};
>>> +
>>>    &usb_1_dwc3_hs {
>>>        remote-endpoint = <&pmic_glink_hs_in>;
>>>    };
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
>>> index 361b0792db4f..744bdc846e70 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
>>> @@ -1211,8 +1211,12 @@ &ufs_mem_phy {
>>>    &usb_1 {
>>>        status = "okay";
>>>    };
>>>
>>> +&usb_1_dwc3 {
>>> +     role-switch-default-mode = "host";
>>> +};
>>> +
>>>    &usb_1_dwc3_hs {
>>>        remote-endpoint = <&pmic_glink_hs_in>;
>>>    };
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
>>> index 092b78fd8a3b..f07a56583e7d 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
>>> @@ -1300,8 +1300,12 @@ &ufs_mem_phy {
>>>    &usb_1 {
>>>        status = "okay";
>>>    };
>>>
>>> +&usb_1_dwc3 {
>>> +     role-switch-default-mode = "host";
>>> +};
>>> +
>>>    &usb_1_dwc3_hs {
>>>        remote-endpoint = <&pmic_glink_hs_in>;
>>>    };
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
>>> index d6f91580ba8d..1a9a31423af4 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
>>> @@ -839,8 +839,12 @@ &ufs_mem_phy {
>>>    &usb_1 {
>>>        status = "okay";
>>>    };
>>>
>>> +&usb_1_dwc3 {
>>> +     role-switch-default-mode = "host";
>>> +};
>>> +
>>>    &usb_1_dwc3_hs {
>>>        remote-endpoint = <&pmic_glink_hs_in>;
>>>    };
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
>>> index bd60c2770da2..031b7ada8eb1 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
>>> +++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
>>> @@ -1285,8 +1285,12 @@ &ufs_mem_phy {
>>>    &usb_1 {
>>>        status = "okay";
>>>    };
>>>
>>> +&usb_1_dwc3 {
>>> +     role-switch-default-mode = "host";
>>> +};
>>> +
>>>    &usb_1_dwc3_hs {
>>>        remote-endpoint = <&pmic_glink_hs_in>;
>>>    };
>>>
>>>
>>
> 
> 


