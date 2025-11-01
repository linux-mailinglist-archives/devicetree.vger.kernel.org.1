Return-Path: <devicetree+bounces-234027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC935C27DAA
	for <lists+devicetree@lfdr.de>; Sat, 01 Nov 2025 13:14:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00BF940235B
	for <lists+devicetree@lfdr.de>; Sat,  1 Nov 2025 12:14:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EED6F2F659C;
	Sat,  1 Nov 2025 12:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KBk0neOd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FAC2E2DDA
	for <devicetree@vger.kernel.org>; Sat,  1 Nov 2025 12:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761999279; cv=none; b=A1dKPncV14lCpubEpOIDBeafHXVip5r+IG0b0ej3+lApX6eXtz39JWPqWRc9RZQXDXIdnp2fmCkw1QFWDivUC0ey3gkcVCeKBtbskwl2kJYwXL8Zsxv6GOHwkr0HQjL90aVo+rqPg2TYjE3eV9hkHA1rTiF1TQAiMXWxMim/lPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761999279; c=relaxed/simple;
	bh=QWQRfctde/i6733HoeiN3BEKCruQKAcajbElJ53s+mc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DSeSvCcPKn+y06YU8lRlKohESzNXbU4mC/ox9CrL5rW8rc2iQAqx4VsRgoGSNvIifeQNZ1dFiMSBo7WfTEIcogPqMT8uM6dSvkOndYVyBid8YVjebpuW0bgGJodUfFequgelnxT5GkUYuzwdGXdiJLXKM4dc0UmOvkJEeQvyWBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KBk0neOd; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b550eff972eso2179185a12.3
        for <devicetree@vger.kernel.org>; Sat, 01 Nov 2025 05:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761999277; x=1762604077; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ujdLBAXhZY2AOY4FZZ6eP/3+PsXNveO7Mezvnen8AY=;
        b=KBk0neOdk1GOQd5Mrf4G3k6kzK/IEFO/zZI8fFVmDjhvaBgffsk+lP8oYQn5Zg26WB
         fwG4l/UquNHuijL+bvQPQLryphsPr6fpzJ7kNtlnEC8DlnTSr/F1c/W/i+RLXlOSyHvb
         MnWIDrxDuDIoF292Oik0zihKWF3U1kpTxA6qXFX8aE4Sf558S3avmX0bUynXMucflO6b
         FNK1DEvMAWmGyvjyl9o1KyYeN/FFh+Knzcq04rhWJbu6SAxIVuofqcjb/K66gTaDG83t
         Ard5eQyjG1TuiuzT6qN7GSqZTu6aqW1g/igVs/v8nQi1PxNdLf85ARvbJZtffe7ooZ+l
         c5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761999277; x=1762604077;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2ujdLBAXhZY2AOY4FZZ6eP/3+PsXNveO7Mezvnen8AY=;
        b=DJm1Ss5Ps5VmlN1sKQLlSJKIynaYyMJ4tVjoepmHvIDiPR5xee7rWktZ4sCIpNBDi9
         KCv7EG3Z6JC1nZLI0Wv6/HcWJLHW8jBjRR5vwx28AwKAPKH6mHn/YEp25iza/g95nLm6
         eW/hVJxfdb9dKvmOb8eME/YXjlS1eOksRbZmhX7yq1k6wRV40z6KxsBcqVs12PXQL7NN
         9SxK4NUnzySZAYykm5ST/9Sj1I8UbY8niR92GMGUj/25xaB72Sasm21EQAHsXzNUFehB
         lkQoSuW42QivUoQ28BoqfN3oeExvhdsue8fFyLeLVQRIo997PjHsyqVSFHc+z+HVOfSH
         8hxQ==
X-Gm-Message-State: AOJu0YygehVZ/EqiXabgrl9i7aXNTdtuPKUseciQo7bX8dx6w5iuehir
	ykzA0gNa+Mscu85Al2jZnt51T1SZcRsgKTb3dnwKPod+YxQ/XKZcs6u5
X-Gm-Gg: ASbGncuWftJq5BlekrFJO01FkcWSC1Q8J65pDseWzeZo6lzGbfBbu6hyNep0P9TWnpf
	hnH4FBb4eCSPmpuFxBEeX9O4TLdAxB0aO0utNmH56lHpTqaMPmMHzojswdQY5NTHWp2ddnWZ2TM
	3UU6nyVquYXaBcIkNlkKatPaUS3Eqqg/cwjysem6YvmBb1omMZ3mboV0Gjy5MEoRz+f5Yl6kkkc
	N0BeLTBZW0/ytHqUcet4Xbjk44Cv4YdXcVIqlKa2GgxL/mlUaEhAb89Ca7CHUIHAui928UMxWjo
	AYaGWIja7fz96YopcVA9Yb2wAfM/JLzEKJy8654aoloYsnuvmVIbc+z+vh5Z1JwkzCX/FWuIg0t
	7cexLFDUNQwSyMgQMnMRln/lc6kacbR+wxfFOAEyHEDoqT6Mvn815Ac4vWFgTupo=
X-Google-Smtp-Source: AGHT+IEeRk+2DxXb5yHODDdJKSDxSfi10vJFhmh11HwS87jb+u5luDPpAWnpSEzbksr4arETIJtz8w==
X-Received: by 2002:a17:903:2343:b0:27e:ef35:2dbf with SMTP id d9443c01a7336-2951a55b4e1mr82703355ad.30.1761999276934;
        Sat, 01 Nov 2025 05:14:36 -0700 (PDT)
Received: from CNSZTL-PC.lan ([2001:df0:a640:1::14])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952e9a3972sm49654205ad.46.2025.11.01.05.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 05:14:36 -0700 (PDT)
Message-ID: <3cba9996-228e-4086-99ba-4a2a00de57ab@gmail.com>
Date: Sat, 1 Nov 2025 20:14:31 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Grzegorz Sterniczuk <grzegorz@sternicz.uk>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
 Jianfeng Liu <liujianfeng1994@gmail.com>
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
 <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com> <10751338.nUPlyArG6x@phil>
From: Tianling Shen <cnsztl@gmail.com>
In-Reply-To: <10751338.nUPlyArG6x@phil>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Heiko,

On 2025/11/1 19:54, Heiko Stuebner wrote:
> Am Montag, 27. Oktober 2025, 18:34:25 Mitteleuropäische Normalzeit schrieb Tianling Shen:
>> + Jianfeng
>>
>> On 2025/10/20 12:44, Tianling Shen wrote:
>>> Hi Shawn,
>>>
>>> On 2025/10/20 9:53, Shawn Lin wrote:
>>>> Hi Tianling
>>>>
>>>> On 2025/10/17 Friday 15:39, Tianling Shen wrote:
>>>>> From: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
>>>>>
>>>>> Some NanoPC-T6 boards with A3A444 eMMC chips experience I/O errors and
>>>>> corruption when using HS400 mode. Downgrade to HS200 mode to ensure
>>>>> stable operation.
>>>>
>>>> May I ask you to test another patch I just posted to see if it fixes
>>>> your issue?
>>>>
>>>> https://patchwork.kernel.org/project/linux-mmc/
>>>> patch/1760924981-52339-1- git-send-email-shawn.lin@rock-chips.com/
>>>
>>> Thank you for the patch! I will ask my friend to test it but he uses
>>> this board as a home router, so it may take a few days or weeks to
>>> report the result.
>>
>> Hi all, sorry for the late. My friend has tested this patch and it works
>> fine after 50 times dd operation. A big thanks to Shawn!
> 
> So I guess, we don't need the patch reducing the speed anymore, right?

Yes! ;)

Thanks,
Tianling.

> 
> 
> Thanks
> Heiko
> 
> 
>> And hi Jianfeng, I found you made a similiar patch[1] for the ROCK 5 ITX
>> board to lower down the mmc speed, could you please check if this patch
>> also fixes your issue?
>>
>> Thanks,
>> Tianling.
>>
>> 1.
>> https://lore.kernel.org/linux-rockchip/20250228143341.70244-1-liujianfeng1994@gmail.com/
>>
>>>
>>> Thanks,
>>> Tianling.
>>>
>>>>
>>>>
>>>>>
>>>>> Signed-off-by: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
>>>>> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
>>>>> ---
>>>>>    arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 3 +--
>>>>>    1 file changed, 1 insertion(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/
>>>>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>>>>> index fafeabe9adf9..5f63f38f7326 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>>>>> @@ -717,8 +717,7 @@ &sdhci {
>>>>>        no-sd;
>>>>>        non-removable;
>>>>>        max-frequency = <200000000>;
>>>>> -    mmc-hs400-1_8v;
>>>>> -    mmc-hs400-enhanced-strobe;
>>>>> +    mmc-hs200-1_8v;
>>>>>        status = "okay";
>>>>>    };
>>>>
>>>
>>
>>
> 
> 
> 
> 


