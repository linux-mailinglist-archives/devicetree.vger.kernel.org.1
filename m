Return-Path: <devicetree+bounces-5387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4170D7B624F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:13:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E801A2816F3
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 07:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B4A6D27A;
	Tue,  3 Oct 2023 07:13:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0C8D274
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 07:13:07 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C7C0C4
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 00:13:05 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32003aae100so2348708f8f.0
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 00:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696317183; x=1696921983; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3V6H7E6MABzUSTnDXLzcRuuIcpD2rL4vp8HMUWli4Q0=;
        b=yoi/kt4HxM2Vv413Jhn5v+7ciYTyti1koX29voNxl6QOj7YircK7KvEDQ4F3rTq5T4
         CVc/Tvm9R2zZnFQH4VPljz8I9IUGo4h5XyjMvpdAQNs1Mij7Ncqrmj7mEGSlbxRyagOA
         vjY6f3T4TKmsc0nfOA+VGbTS/fbDQxTJDiJanqmqOSlS/8Qwm3hRMacwpy8vbRaRDlot
         Er+r8eylP/so7RLMeT2XCz//RGy+tP1P3W5MkT+N/FYEaMf3ix288BKeN1qjgNK8J0yX
         idf9ASsR/u9DQhkLVMfeTXOM8WHCjdUDovGKtiW/bfKyTZW0rL6C9U6J+XNNNepNy7Hg
         pvyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696317183; x=1696921983;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3V6H7E6MABzUSTnDXLzcRuuIcpD2rL4vp8HMUWli4Q0=;
        b=EyQzs7DXUA7VHMS+dsQQjPYiXbMCDwPUGU9rlBhMCSoCnpOqVBVd4r8TcmcnpZKM0c
         RZwcJyRAktvUeOR2Ad74tIpcLguPXYqmLaInTLjbq7XMuDoXT+VbYLKk57YTUxtD8Usl
         gIF180R/EbjR7mAfaKHXqIGw6BoYhlKHvtV0xUrUhxd94nrU9LWCVE8RwICnqwdnMqm4
         vdGWiAHsbkwsbgLcPTPhYOdn677lQ2/GXkj8xHUD4nXsqwLe/K372/TxlsS+53f0cyhH
         +78UgORxiCvV3Reeai7RXn79XnH7xhOrOw4Vjs/DFn7BwV3rYACOH6RqYDnzoWBQ/CBd
         D0uw==
X-Gm-Message-State: AOJu0YwcccCq47nOZgRssQXA621loExuGwd6NVetrlmjWGmx1Tdjy1GN
	9jUVFKM/YTBGnHTAtHRXX7nb6w==
X-Google-Smtp-Source: AGHT+IFojXzmGEY/9CK9lLL0H6XZ+p11DjOHaCyqO/FQBv127Syoxxzgqnh2F0dB/m2WdRetgkj7TQ==
X-Received: by 2002:adf:f643:0:b0:316:fc03:3c66 with SMTP id x3-20020adff643000000b00316fc033c66mr1279236wrp.3.1696317183478;
        Tue, 03 Oct 2023 00:13:03 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:e31a:fe1c:e925:9858? ([2a01:e0a:982:cbb0:e31a:fe1c:e925:9858])
        by smtp.gmail.com with ESMTPSA id o16-20020adfead0000000b003266ece0fe2sm832373wrn.98.2023.10.03.00.13.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 00:13:02 -0700 (PDT)
Message-ID: <a30c60f0-1710-405a-bb18-813ce30d975b@linaro.org>
Date: Tue, 3 Oct 2023 09:13:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/4] usb: ucsi: glink: use the connector orientation
 GPIO to provide switch events
Content-Language: en-US, fr
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20231002-topic-sm8550-upstream-type-c-orientation-v2-0-125410d3ff95@linaro.org>
 <20231002-topic-sm8550-upstream-type-c-orientation-v2-2-125410d3ff95@linaro.org>
 <CAA8EJpp2_eW+YukTq3eAFGXxtZ+YWYVkzEP9Qhs20TxoXy-v7A@mail.gmail.com>
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
In-Reply-To: <CAA8EJpp2_eW+YukTq3eAFGXxtZ+YWYVkzEP9Qhs20TxoXy-v7A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 02/10/2023 19:26, Dmitry Baryshkov wrote:
> On Mon, 2 Oct 2023 at 13:21, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> On SM8550, the non-altmode orientation is not given anymore within
>> altmode events, even with USB SVIDs events.
>>
>> On the other side, the Type-C connector orientation is correctly
>> reported by a signal from the PMIC.
>>
>> Take this gpio signal when we detect some Type-C port activity
>> to notify any Type-C switches tied to the Type-C port connectors.
> 
> Have you checked, which UCSI version is implemented on SM8550?
> Is there any chance of GET_CONNECTOR_STATUS / bit 86 actually
> reflecting the correct orientation?

I checked, and no, the UCSI implementation is based on the UCSI 1.x spec,
and doesn't have the UCSI 2.x new bits.

Neil

> 
>>
>> Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> 


