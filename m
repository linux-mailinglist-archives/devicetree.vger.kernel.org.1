Return-Path: <devicetree+bounces-223837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A7262BBE184
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 14:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D9D41897173
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 12:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B7A9283FCE;
	Mon,  6 Oct 2025 12:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="akLfpc1i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FE32836A3
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 12:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759755019; cv=none; b=lGxp3g9Tt6MQTbzzb7qo9l8FHPrYq7YZkR8I5nVavJRI7YqdYU5LN4E0oybcsZP1lYpdmbDMPiaLFP3l1T8iRCRV/PTMOHl32fhqr9SPKw1Jt7ei0+TI9z40rce0JeRnPxGkBMF+f8o9irOtjWcoXwPD3UhdhtCc1xopv3Ztp1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759755019; c=relaxed/simple;
	bh=1+ke2TkHctZOigrivj+U7Q7F20sV5pMDl2nkjiByetM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=tkYkvRdodhM8OlX7IFQOOssKOZR35YIGji7TfT4Rxh4NwmT5GivRrJ5uHwyeoUwnAbk2flR/sa0J1oRhOHms4tmsWQ51g0x+DVNvYhzyvWw+ebHqT4viph6DwRtaL0CCdKQQeWpWC6bWyZq07mM5oAxv084LhCHuplTIYm85EVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=akLfpc1i; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-46e491a5b96so28013175e9.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 05:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759755015; x=1760359815; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TvDhuie6qY8dt8ec7g1A3HAHuwzFnTbr7gEWQFFeMLg=;
        b=akLfpc1i4vHLpXIQu7/IBGKFhjAR6cVqc0ts24uQF1GlW+XePrzg9ttrtW8B/lfe0r
         hSMk8k2KcaQ49lUys7bRRnlXOStad0jZ+XtAo02ALepbVltK2dgDlRovCOiyzXruepdV
         Eef/8cMwXR7mWjAOXF17GeIL+OEiIXN39L3IBEFHiNftc+RqJSIahVEe+F18XJZBHnJj
         ZObUb/fOd/GGUoFyxBrTy6UsJ/+6JzBxK23l6v1Osnotvw2GNelKa23JXHgMGk1FrcJp
         uARvcH1BC0dgEPuduSbo9ynlG7+zmD/IcMWIlCrJOlbxXnOwvzMBtCot+yGWm06ejER0
         tsnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759755015; x=1760359815;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TvDhuie6qY8dt8ec7g1A3HAHuwzFnTbr7gEWQFFeMLg=;
        b=WFoz5OSnMzCVp3W4DB1ChR38HTCz4K4efcy0LE1YyW4MU2pJ2XwcRZ+9cBsRtngkXU
         PelkHqoGJGp+beosTo/EDl0C0uHn4KtVd28DxiaZt7fIESLoI4SqHOgCf1H8CZV1m3b8
         ItTkQGQC6LnQsQVtqXtJdj+Ep6RR8rzYR3FZc64HyCUNqFN9CCb/G2mRh5e3QiYlI+E4
         pJIunOcg03/bhBWPGmEDwcg2pnYo0SpdzpCYJJJsO8cHzZJcxHmz3/YmHj8uh9S6EWoI
         +qTnbzXsPJlhxgFNh0hYdNTezKaJuEjPRwJrEh8N3+cb2OfupEGzT7QCy0LRNM5g7kA6
         323A==
X-Forwarded-Encrypted: i=1; AJvYcCWIHHgGUfKsvCz6fKygxR01/8/GqlLRdWiCHD+1mWSyqtW/nDsSn2utbvVLojCdWNFSEdSdKDNzd0Zm@vger.kernel.org
X-Gm-Message-State: AOJu0YzKeM+fNMj2kmpHJWzhIZJbJk0ebhi5YqlWqQK1SrwGSjbzz20C
	yXyd+OaVSwrHKc5Dm+d/cgnpWPL9DYaQa7YCVgI42f5W1s/Cc8UZg9qDeBmnIwLDMig=
X-Gm-Gg: ASbGncu8zzhS5Klc6Cno1h/lD2U+sHjseqobuu1/rJXbqlYWrgnyzJjaO9O5nCsHSSC
	qTudmUIfQinWMZ0Oytj8aSQq/VVSsFE845+F21HhuQyNp2/A7qotoaoYp//8/zKtMMKeQuYx92d
	5lvCfwCc1el6d/ud16YlSjzpoZgdTk8HVcBDsXIN6nOX2+1DEFq1wd3JvvQ4hI7UDdBmhOltm3f
	Qu1PBF4bkrkn355A9rt9MaeQ9eeq9Bn47I/eq3+R0gZhl5wQFAwzcwLoZlqzxlgqYzWzCVCfD5j
	rOTWx5HW4PMPiwulev+bRvfPDhYBFQ+HcIOC/r9mlEk+JQKZlib45qglIOpIG5en8z2C3+cSgNV
	fCdGCvX+uawh1CN7jhG1FmnM64hHaIDQhQ0ZsrYAGRyF/sUxWsr9e0g6rZe6/IBFr7FyYQl+l42
	IXldl6psy3Sm/Btr6jPGbwAedstqI=
X-Google-Smtp-Source: AGHT+IGxYNrhR5rb1hMdZacbBTASV6s/vat0+OUcrWk/mznR4enIUg1haus1BRrmnxmBozboXRQ6Ug==
X-Received: by 2002:a05:600c:3b08:b0:46e:396b:f5ae with SMTP id 5b1f17b1804b1-46e7110cf6fmr95364035e9.16.1759755014953;
        Mon, 06 Oct 2025 05:50:14 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:2dd0:9118:d7f5:51d9? ([2a01:e0a:3d9:2080:2dd0:9118:d7f5:51d9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e723593d8sm173623055e9.11.2025.10.06.05.50.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 05:50:14 -0700 (PDT)
Message-ID: <4bb1c10d-b8fe-485e-b4aa-faa43033be76@linaro.org>
Date: Mon, 6 Oct 2025 14:50:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
 <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
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
In-Reply-To: <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/6/25 12:08, Konrad Dybcio wrote:
> On 9/30/25 9:39 AM, Neil Armstrong wrote:
>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>
>> The routing of the lanes can be:
>> - 2 DP + 2 USB3
>> - 4 DP
>> - 2 USB3
>>
>> Get the lanes mapping from DT and stop registering the USB-C
>> muxes in favor of a static mode and orientation detemined
>> by the lanes mapping.
>>
>> This allows supporting boards with direct connection of USB3 and
>> DisplayPort lanes to the QMP Combo PHY lanes, not using the
>> USB-C Altmode feature.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> [...]
> 
>> +struct qmp_combo_lane_mapping {
>> +	unsigned int lanes_count;
> 
> "num_lanes"?

Is this significant ?

> 
>> +	enum typec_orientation orientation;
>> +	u32 lanes[4];
>> +};
>> +
>> +static const struct qmp_combo_lane_mapping usb3_data_lanes[] = {
>> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 1, 0 }},
>> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 2, 3 }},
>> +};
>> +
>> +static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
>> +	{ 1, TYPEC_ORIENTATION_NORMAL, { 0 }},
>> +	{ 1, TYPEC_ORIENTATION_REVERSE, { 3 }},
> 
> This is not corroborated by your bindings change ^

Damn you're right, I'll fix it...

> 
> I'm also frankly not sure whether it's pin 2 or 3 that 1-lane-DP
> would be TXd on
> 
>> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 3, 2 }},
>> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 0, 1 }},
>> +	{ 4, TYPEC_ORIENTATION_NORMAL, { 3, 2, 1, 0 }},
>> +	{ 4, TYPEC_ORIENTATION_REVERSE, { 0, 1, 2, 3 }},
> 
> Would it be too cheesy to check orientation based like:
> 
> static bool qmpphy_mapping_orient_flipped(u32 *data_lanes)
> {
> 	return data_lanes[0] == 0;
> }
> 
> ?

Do we want a proper check of the property content or some random check ?
Sorry I prefer something formal, since perhaps sometime we will have
a full lanes remapping available instead of just orientation and if
we have some random input it will explose...

> 
>> -	ret = qmp_combo_typec_register(qmp);
>> -	if (ret)
>> -		goto err_node_put;
>> +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
>> +
>> +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
>> +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
> 
> of_property_present()

I'll replace with that.

Thanks,
Neil

> 
> Konrad


