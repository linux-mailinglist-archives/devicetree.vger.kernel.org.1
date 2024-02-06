Return-Path: <devicetree+bounces-39099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF57484B666
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:31:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EA89285FA3
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 13:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E33C8131E29;
	Tue,  6 Feb 2024 13:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X5x0DN8Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D9A131752
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 13:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707226249; cv=none; b=F7JA/JlZ3Kb3WTtYZ2Do+u3WwPE8moj1NdKpTDI1ygjgPcwusoPbJ8E091cHelDzAjghR855l19aOFhR7ja1VMcmaZtQoxDsiPE4rssiz3SyNOZDnNITDKow9yVbdMHwM3p80OndzDAtxiPHNwHjKQfU+FS3+CKDCjfVN1tmXwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707226249; c=relaxed/simple;
	bh=q8PBChyn4flbFOqgkDtQboNHKbBZ/iSQ1egSrR+QXMw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hRIyOmgCN0XV9G6WcYMb862fvwxGX91tNY3UDmyWiLAYZZByRXAPKpG8QNswYmuym5okoTRglQfc6DsgS43r/SApA2vtBRBEcq+v1B++w+B6qEya7gTc4Rk14eL43U9UlPc6nGgPAfRuMptgA4siV01ghX+FZyJJntbRJVTET4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X5x0DN8Z; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-60481f30c2dso3790957b3.2
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 05:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707226247; x=1707831047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y5MrG6KJ2h0ocHoW3P3efQdtjIXhzJJv+SpOY6lhOJs=;
        b=X5x0DN8Z5ld+vvwNVM4kOMH/63H3ohd+uQiyBuhZ90baFACIyb9CRNFdEGs4M/zp/2
         Z2l9XeSYq7+7AUFt7/gzlQwGEfwy8hplQxdsX7DzYAaqXDbZYOe0yEKqgEOofuaqnr5f
         4aoBvk4X0MHFrRojHIOw1uXbGIN2xfQiY+V5D+cIxO4IdgTNS+LwpB++xAim3qS3qcVY
         NueHKNb99RO/3ydlWgg1LGIGJuURS/DoTzmuPFgMJr/jx6qCcqFlssLw4vcs8lSD265X
         tglo8bzZ1efwc9bGSh0zrXI1/SOy0qCQSoNh2fDsFauI50YPHA5GF/3rtTbq1e5AVPUS
         LXfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707226247; x=1707831047;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Y5MrG6KJ2h0ocHoW3P3efQdtjIXhzJJv+SpOY6lhOJs=;
        b=Mro8C7RKnU7oVWz5TD7WNbSzV7yrk/8S8DBqT1VCp0gotprsQBF7xo7DundeubmwDj
         lCU90PKhuP5l63qJTJvDBOa31dIBq4JjXxcpddDYb+KMrIUpTMh+L16rlwbD7A3rjCT6
         nswLGxnQAMtnNTyBwzh+360h4NcT6rB4I2ug6jUetXYNZii2NtGmB5Rg8B7Iuc+MyHRy
         v053TybqyQruM/l3JmNwiCPDpy03HFFmv/MdyLzurHW/nsNczYCAQ+r3F7P1jRzT/IO6
         GaLCiTqWn0zaYh/y+yQbIEAzvUyMkqLm4XFpEMpN64zqWUkGwe+E3zSs7eGD6YxeIpS2
         9acA==
X-Gm-Message-State: AOJu0Yys8alepjMnwBCw7bzJgPgtvysQLjezs+uYuqLMrnES8u9IkElP
	TlY35gaksDjz8byYlxbjh7Glgx9+v3GL9qmLZOqmqG3ZuUIUUpk0WrBTfz8mb2U=
X-Google-Smtp-Source: AGHT+IEzs1Oc6Uv9Ui8CAZofCtSgiVRA802AaFGwuDKpPXVDkrPKOEryIuwrS39UXIrFl9BCfI0v2g==
X-Received: by 2002:a81:8b54:0:b0:5ff:4959:1da8 with SMTP id e20-20020a818b54000000b005ff49591da8mr1311304ywk.50.1707226246826;
        Tue, 06 Feb 2024 05:30:46 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWTHR1f8CC5a9UESoGNNb8JdK1elDwQys5PMfCLVpxh8M4DYu1WoPlvyB6p92GwfxjQ/rvcoBtsDUeavMlhTFSEeDqm9Zx8BCrh7f/zImNFznV+L0+EKPV17yKHXGCVJYNRYoBDnD/JQensrIas7ZFaR2wR8XnQQqu7RnflCO6q0FkeL5WBstb7e8jUNZ0o9Um3d2JUXVtKHizgpO22gdGmqpGW1TQrWwV+bgq/7FN0xDJ8ssCmClDdK25eEvjs/cNHaKAs28y1YQwtxghabLBcuM33W6zne3cLXXc7dLkU8Ko013jUYPEQSKAmQigKp85/rS9JfCDi8QQ+TQ==
Received: from ?IPV6:2a01:e0a:982:cbb0:ba23:8574:fa8:28dd? ([2a01:e0a:982:cbb0:ba23:8574:fa8:28dd])
        by smtp.gmail.com with ESMTPSA id fd2-20020a05690c318200b005ffa141d9f4sm466055ywb.18.2024.02.06.05.30.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 05:30:46 -0800 (PST)
Message-ID: <59ef3824-13d3-40af-9a3a-9b1ec8add9d3@linaro.org>
Date: Tue, 6 Feb 2024 14:30:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [RFC PATCH v1] arm64: dts: amlogic: Add Freebox fbx8am boards
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Marc Gonzalez <mgonzalez@freebox.fr>, AML
 <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
Cc: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>
References: <8c865c62-cd80-4c78-9fc5-c85491c037ca@freebox.fr>
 <b69a2132-25c0-4acd-808e-d134f5034e58@linaro.org>
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
In-Reply-To: <b69a2132-25c0-4acd-808e-d134f5034e58@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 06/02/2024 14:22, Krzysztof Kozlowski wrote:
> On 06/02/2024 14:12, Marc Gonzalez wrote:
>> From: Pierre-Hugues Husson <phhusson@freebox.fr>
>>
>> The fbx8am boards are based on the Amlogic Meson G12A S905X2 SoC,
>> and the SEI510 board design.
>>
>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>> Request For Comments to spot obvious mistakes before formal submission
>> NB: on IRC, narmstrong mentioned:
>>> adding dtbos for variants seems to be the new preferred way to handle such case
>>> the fdtoverlay utility works well for this case
> 
> Please run scripts/checkpatch.pl and fix reported warnings. Some
> warnings can be ignored, but the code here looks like it needs a fix.
> Feel free to get in touch if the warning is not clear.

I don't have checkpatch errors, I'm running with `--strict --terse`.

I do have some dtbs_check errors, but those are expected since they are not specific to this patchset.

Neil

> 
> Best regards,
> Krzysztof
> 


