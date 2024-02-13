Return-Path: <devicetree+bounces-41305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D48853138
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 14:04:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 851941F27C8D
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 13:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1F244B5AE;
	Tue, 13 Feb 2024 13:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KFt+kmr9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF24482EE
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 13:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707829424; cv=none; b=ZXWCjf56JsDovyg+UQpAXRStB+lnOOHlUjQCIeG6fU6FU56dn20+2K6y3/qKCBRymNHPUAhzCOU18GQjfR30ekhhq74q+cyYlrOcfd+L1m96pmMX6rzw4UiGk432TBfR72jcZ+raXkyKFZx6dRSdDMHm/wFyrvO8doAI4L2wrHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707829424; c=relaxed/simple;
	bh=6/8cJXoSjzIifXMl8cdj9SqNamhz3R4iwV033H5CW7A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AxO7V4zV4GW8qmXe38df8nk6MXiVrf9MBVcO6oWv9pdLxwT7JT4PqJSEHf4AYuk5INf6+66RA/dDh7lz86xQu4qV1FBRYlEsBlZBvLicZaR5uQ3TNMG6iH1IR9rgpp7ZOGMAX7YVpXwegOGJcqaZJpdDsh4oQpEZm7bWPtGsYGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KFt+kmr9; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-410db155e57so14016275e9.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 05:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707829421; x=1708434221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C5NrW5FTTwB3Xw2yt6Nvx3f3s8HF+s3K3TJHJX5IeCg=;
        b=KFt+kmr9/hABtqx72UHB+4CnzcdDUudvj3QPMqKq6sRBzJtEmlIPmS64kUPbl3GVyT
         MYl+VFVBH8FuLP+Nm3I31ZKoFDO+FK9st0aj3rjZTVklcRMafgGFoX1LbFRgosK8fQqa
         Lqj+AHSi7XRtj+2Bh7DzuM6AunaQfL2Ms0wwGLmKEh4M3WDoRTOjZSw9BVkYY3aVs/rX
         sTpmUk9dyNxzlAhrm5s3L5jzJA4Sb5+67brzjkDaTh1eI606As2+50wTVKaJfOVwUj19
         e1yLVg8rZJ68LJ3JzC9cdhKs69ZbwfRmj/kg1DO9lKhpBryZozsB7Dty/t399ZPmBYY2
         VL2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707829421; x=1708434221;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C5NrW5FTTwB3Xw2yt6Nvx3f3s8HF+s3K3TJHJX5IeCg=;
        b=qxFaeaP34CpCxDSFcQCcubaRXnT2yP+fteprGk0AKjS1aRqcnLxqdhtjkz3zRmzUtl
         uaW2ZTbePzVrsdr9noGY2IO8CazSlakBeZJdJmNlT0aetgDwXTMzOseavP0Ips4oE3RU
         9c/RJAl6fQ2CWfejf41/wN8E51xgpGosghZb+0cswnkJ330mfRTqi01vXTgEi7pkPGpe
         1+WxklR0bIogDXlyMMgwgIydPKZ/0hf+ALURb2bUFEN73vBpwIJngYz+yv7iJ/aeicBO
         YweLPTBBnOlknpWUMQCZ6FsqK3WT3FGyxi1WAwh2X+E0DDR68rFZIaT0cNHHPRxe+Q+w
         wf9Q==
X-Forwarded-Encrypted: i=1; AJvYcCW4VZwCNRS8aDS7Gu4B9WQyrh5pn4qc8UsnIf3fZGMoHmvkkVoMnQivMytwVe+1ZQPrbTMJWPLDC32DXRlmPT0FWjfED5PH/G234A==
X-Gm-Message-State: AOJu0YxfBenRoh/310qcPvzZVU/NMpH11Z5twQr6u/nu5ZA0EYjKepZy
	NW27P00mJfqXPo5/ZCPFu4i4vsk9/3wezeBY0GvvIaCUrEXb/xZF9SMBVRSZ8WY=
X-Google-Smtp-Source: AGHT+IGff4Ny4f1WeJGCs+3nuZxbToyUFx8GempT/EH0khCzbnM4pZaGfiEmTfd7EjnRLIAX3EhG9A==
X-Received: by 2002:a05:600c:3b86:b0:40f:fe1a:6baf with SMTP id n6-20020a05600c3b8600b0040ffe1a6bafmr6994110wms.1.1707829421015;
        Tue, 13 Feb 2024 05:03:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW7CtLuect2QEqcymxQGaUVmVCPIyY1NdHNUpoLLZHXRt9+n/gP+2I6mH9ctZZlAnwNCbloiXyQRv9bQh+MF5UWYu1yRjChSKHqVrHw8wnHuac0mRrY1Gj7p9X/s2YJDdaZ5mSMdtRpTNTm6GaISrpY1EQpQ+b6t1VrU+0xsYEm8bwBlZmUtkBNxcN5vVx20fwpOp6xICEzXAypqtVuaZoL/C7RzpDGn+aRrdZJieEGE/btmHIpyWNcL8dPDbdkE8zLdibnJa5m/CcTl5lC/oHHy7v52s8tA4V/zcBwIUUbmI6eks6zokE63AeiPVHcU/UGEAIWk/7/kuIk0ephB0BuEVIm1+vtMFWk90ZljITNTf6YVyg8QHCbvqwL32VOUlerYK0QGoRBeACZD4ijWSgdiWGABW9JkLNzK2MF7xv8iD1PQ7UAJbJm7BmmVaQNK2/vhxQEhb2tnJPR3PkbKensFAb7wKFZMGtBXV+dO9zdpn45vC/xXjXkxs3ARiFVNyjydEOvQ/kTHjVgNzVLqhb+6wlM10wrJpW05sV9e6HW7jIbKVqZEhMyh2DAWiDqr1yk/Vz2S1lDfjL7K1XkIc4+OPQqqWfxcskmUJmbbFBkWgqVQP/AGwqU50T0L4psZXPemJdpkXwoyOU=
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id v1-20020a05600c214100b00410395dc7d1sm11615850wml.7.2024.02.13.05.03.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 05:03:40 -0800 (PST)
Message-ID: <6092ee3a-4a28-488b-97fe-538e619f8983@linaro.org>
Date: Tue, 13 Feb 2024 14:03:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: timer: renesas: ostm: Document RZ/Five SoC
Content-Language: en-US
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Chris Brandt <chris.brandt@renesas.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Magnus Damm <magnus.damm@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20231115212908.33131-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CA+V-a8tN-qn8zuimte=-riahJBWGgGi8i5botNfWqdWwJ7w-4g@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CA+V-a8tN-qn8zuimte=-riahJBWGgGi8i5botNfWqdWwJ7w-4g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 13/02/2024 11:22, Lad, Prabhakar wrote:
> Hi Daniel,
> 
> On Wed, Nov 15, 2023 at 9:29 PM Prabhakar <prabhakar.csengg@gmail.com> wrote:
>>
>> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>>
>> The OSTM block on the RZ/Five SoC is identical to one found on the RZ/G2UL
>> SoC. "renesas,r9a07g043-ostm" compatible string will be used on the RZ/Five
>> SoC so to make this clear and to keep this file consistent, update the
>> comment to include RZ/Five SoC.
>>
>> No driver changes are required as generic compatible string "renesas,ostm"
>> will be used as a fallback on RZ/Five SoC.
>>
>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>> ---
>>   Documentation/devicetree/bindings/timer/renesas,ostm.yaml | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
> Gentle ping!

Applied, thanks for the head up

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


