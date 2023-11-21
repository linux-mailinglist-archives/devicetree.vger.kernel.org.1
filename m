Return-Path: <devicetree+bounces-17514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 697D47F2B6B
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B1A0B21995
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D08F482E7;
	Tue, 21 Nov 2023 11:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kQlDTd/Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A63C83
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 03:04:53 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-332c7d4a6a7so1155262f8f.2
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 03:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700564692; x=1701169492; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kIK/f1U9gj42KtTbzVAHFRC1UQ6zgDgmA86Cyhg1HRw=;
        b=kQlDTd/Z1AJlM/l+B45q6ErNGd/rYZQOTQ5dOlGkkZugjP8cBLgiaJrqB4q57eU2KC
         SJOGj0HmVdbiJk+cg3twUUKrRSKFLgdeVveLTy4dBPLPUuDeydC4Nsqn2MdMoi9SdAoT
         4DHnCRuKL346viW2l4WM0Vs5ac1MVZMsdGBeWD5T6i5uSGdXmcRMj1z00vOj+BfiPPhh
         JAXDFHteJETn+tK3RmoVdCy0U+rqJo/q4qIGXrlVNubdYtlA3s0NIzXLT8LyAzutdFhj
         6pcpnVwl1HaZYLsyzg2g77Rmei7CTgGfYaBsGbzXsM3H8Y9N/aqbdyVM/B0xoNMJR1hD
         ZouQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700564692; x=1701169492;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kIK/f1U9gj42KtTbzVAHFRC1UQ6zgDgmA86Cyhg1HRw=;
        b=U6fVbhqeDEPr0h7M/w+sNURLvOm/N15oLXI+itv6ut1oilZsKELDUInYc2IuRxSobg
         xe7Pj49C2k9fGE9sIKxXfUMr38O0OG72o5Nnc+X9QKZkM2SvLWNes7Qu4W/l+t6gBK6S
         m36CSVDFg2MQy8qwnXwIjD+OpzbZBcTc6hKLdnpOJhxcxjYslpj6mEOBVZKzMAPH6sUA
         6PZPV+82DYhcCEJnjhbme38E8XXeAWJOMZ0VLGrqe+vHu29XfP54anAsARWlqLB2d7TF
         BkMFf0LwVy86b56JQpRDpl2FVGSH/n2nDn4UWmUR5LloxYDQKMZIO2XWJcksQ/3zehCg
         jUfA==
X-Gm-Message-State: AOJu0Yy75+2Xtg/nnXHH3D4eEllbPvNJ0FHNLvtbO9ZFC4IlT0XOixz2
	nOMxjYl8R2/Ps8GJOvSnk17a5g==
X-Google-Smtp-Source: AGHT+IHIYLaPdDRrbJE5uQgQlOj1dJoooND6JHpZCP3BrMLOAYeMAn/fpW4er0klLi7y3R6yE9dZMg==
X-Received: by 2002:adf:f4cc:0:b0:332:cb97:2cb6 with SMTP id h12-20020adff4cc000000b00332cb972cb6mr2183534wrp.21.1700564691910;
        Tue, 21 Nov 2023 03:04:51 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:2a39:bc19:20b6:16a? ([2a01:e0a:982:cbb0:2a39:bc19:20b6:16a])
        by smtp.gmail.com with ESMTPSA id e1-20020adff341000000b0032f79e55eb8sm14010312wrp.16.2023.11.21.03.04.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Nov 2023 03:04:51 -0800 (PST)
Message-ID: <a69e5dd0-8efe-4415-9747-0554f8370fcf@linaro.org>
Date: Tue, 21 Nov 2023 12:04:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] pmdomain: amlogic: meson-ee-pwrc: add support for
 G12A ISP power domain
Content-Language: en-US, fr
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Daniel Scally <dan.scally@ideasonboard.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20231114-topic-amlogic-upstream-isp-pmdomain-v1-0-f01e6fca67a0@linaro.org>
 <20231114-topic-amlogic-upstream-isp-pmdomain-v1-2-f01e6fca67a0@linaro.org>
 <CAFBinCDe3yoEBd6SzozNZtC=zGaUHt4VeO_uhV1s5XBaWp0w1Q@mail.gmail.com>
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
In-Reply-To: <CAFBinCDe3yoEBd6SzozNZtC=zGaUHt4VeO_uhV1s5XBaWp0w1Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 20/11/2023 21:15, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Tue, Nov 14, 2023 at 11:19 AM Neil Armstrong
> <neil.armstrong@linaro.org> wrote:
> [...]
>> +static struct meson_ee_pwrc_mem_domain g12a_pwrc_mem_isp[] = {
>> +       { G12A_HHI_ISP_MEM_PD_REG0, GENMASK(31, 0) },
>> +       { G12A_HHI_ISP_MEM_PD_REG0, GENMASK(31, 0) },
> I expected this second line to use G12A_HHI_ISP_MEM_PD_REG1 (note the
> number at the end: 0 vs 1)
> Is this correct?

Indeed you're right, let me fix it in a v2,

Thanks,
Neil

> 
> 
> Best regards,
> Martin


