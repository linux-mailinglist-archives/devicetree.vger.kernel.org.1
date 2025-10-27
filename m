Return-Path: <devicetree+bounces-231680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACACC0FB0B
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 18:36:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4881E429698
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 17:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A005319611;
	Mon, 27 Oct 2025 17:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VYw70aUB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D669C3195EB
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 17:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761586474; cv=none; b=ovq5oMikSwDndKkj90Ec1FjIJ939LH96ucKK48YifvdGYVmRSK9d/5zJGza/SfsATE+g5A84wUtMpbp4bv5KSRm3HI348I15Q3VojMUEcTOgIJPRwV3339o0LUXJx2rhGU0Kj+iVMeRkPSVPHEUOeNNNmyqDZgko6QotCvk9gVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761586474; c=relaxed/simple;
	bh=JSsEa2sILCUrGBa+/eAE/HWgRWWieuXbaUfhsDV6jNc=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=JekLagyl+Kkiw7p6w8oCf9Bdi7YQXEWoY//A9bOQjduvB6irctnX0ZZyJEESSYd3xCEptUjiyY2Qkq1w0x2cg+k+//oN3TTUCY0H3H7DZOAeUR2KmBDUgvWUiui+qex8Rhg/8IB6H48snRcEgkQa27VLQHjNRRUKOIgWTwjeG5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VYw70aUB; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-79af647cef2so4225831b3a.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761586472; x=1762191272; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kEjlvHcQp4lpZ1m36wlxzDAnqifTiWNPk+NjQID7RjI=;
        b=VYw70aUBDjvNozfwZUJU7Z6/RudPWS1nALHegSSAl36GAVnbrxtD9IZhHcIKNGg0oF
         Q0igwqpgkDVyG6NnPWzc8Ng1VdSBLRHZ8nOZJUoR5VLzm9fzY9kldTyF4ptVVrkD7sZ8
         8h7LA6wMG00exAnNkYY/NEOuQS68Xd0bay/ccv1tuv9L/mZVKqFa6+gKrl4JnzJy3mCN
         12ZpgxiTHyEtmSfjAUoZrs9jcgCbufyBT2v2KoqczLGrutzAaIqAk9M7h3+loXcPzltE
         w0J/OAS4Pkgu2GAIHJqXrJY7GLqNAYFjG6Gj53idVFoBSgnP8f++385yixAJk71KynoX
         5uSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761586472; x=1762191272;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kEjlvHcQp4lpZ1m36wlxzDAnqifTiWNPk+NjQID7RjI=;
        b=FIRY60cDWvHqbjP25hVSfVNsXSH2izMcsiHCCjgTHDvMAaUFVwF71sKoaFfdbWBfJw
         sQGVnEZN7eN9v1VZeTZdvlPODALWoonU+YjV7fF57FGIzRS3pzm64aXPEYjOrL1Cfvea
         RQTTKArwOToV0abYJdAY2IzBUUKUk7sokVNPzlU4HS+NYfXaQ4qu6H9g9rsCnjtkLn6D
         RatK39tjjMygncIL+CtoTgIehljLH1AGaljesTcZf2fk5oOy+jF6znCJmstvnQwFaALQ
         4PhCSpr08ITVranX3P9wTm0V4k9rxeUZxCOWjfOkEFzdOJN7I9EYOXP2NSUJlHCXR0fe
         2Cbg==
X-Gm-Message-State: AOJu0YwXv+Ny7+0DetzPAVdavIHi/cXNdtZwESG1hwUziTbAnoi20A6I
	ruLxt8n670pU32A4x25jJQDBlTxjqL3f5EYp7/5/HxSjb1EgE7rNCaC0
X-Gm-Gg: ASbGncsJ2aFHqEUSIpTxfm5sFjbFJJGeDSCkvHh9mfUCLebEDFED6k9j5880Uw7OPrM
	QUaWVlJDNynTZ7IKgOsaygvenFhaz36HAdC2SipSbke1UNlbzvUFKf9qMKKpRnGeNaTYaebPQH2
	bFUZ2grqJrncoB6i1i7cPdTTZyZi97ohgEvBE0sVy4/n6e5NBgCrKEij6bBgyXXRAgq1TErQ9WC
	EqK51wdzG+0Ve2zSHYdh9gmVqosklPSxpeU70J4wKPObufqqbgOPSm1KL00IY3B28beHTbfq31f
	vgYonHEEawSHQqCPHE/5gK2uN9G8dastLof6fb2hYk3/L+5KfBcbvnI/GR+58dfDgG2Rho9au04
	hIYbxh+b+fKnLo4aAutPfv3+T7WGKNLg0sleMRKp6Cb+Css/YSrbts5culbaIUIQq34s2zMi4yD
	g3tQ==
X-Google-Smtp-Source: AGHT+IHAljstHcaoMHk/lLRlsppwJy/V1KHAMxtXlEIjZrVw2dfhWs2pVvM+g1XbMmpxHBsC5hDZxg==
X-Received: by 2002:a05:6a00:13a0:b0:7a2:8853:28f6 with SMTP id d2e1a72fcca58-7a441c476f3mr801487b3a.22.1761586471576;
        Mon, 27 Oct 2025 10:34:31 -0700 (PDT)
Received: from CNSZTL-PC.lan ([2001:df0:a640:1::15])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a4140a0d47sm8684282b3a.73.2025.10.27.10.34.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 10:34:31 -0700 (PDT)
Message-ID: <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com>
Date: Tue, 28 Oct 2025 01:34:25 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
From: Tianling Shen <cnsztl@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Grzegorz Sterniczuk <grzegorz@sternicz.uk>, Dragan Simic
 <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Jianfeng Liu <liujianfeng1994@gmail.com>
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <d70c0eb5-9aa2-47b1-8205-81b724180319@rock-chips.com>
 <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
In-Reply-To: <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

+ Jianfeng

On 2025/10/20 12:44, Tianling Shen wrote:
> Hi Shawn,
> 
> On 2025/10/20 9:53, Shawn Lin wrote:
>> Hi Tianling
>>
>> On 2025/10/17 Friday 15:39, Tianling Shen wrote:
>>> From: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
>>>
>>> Some NanoPC-T6 boards with A3A444 eMMC chips experience I/O errors and
>>> corruption when using HS400 mode. Downgrade to HS200 mode to ensure
>>> stable operation.
>>
>> May I ask you to test another patch I just posted to see if it fixes
>> your issue?
>>
>> https://patchwork.kernel.org/project/linux-mmc/ 
>> patch/1760924981-52339-1- git-send-email-shawn.lin@rock-chips.com/
> 
> Thank you for the patch! I will ask my friend to test it but he uses 
> this board as a home router, so it may take a few days or weeks to 
> report the result.

Hi all, sorry for the late. My friend has tested this patch and it works 
fine after 50 times dd operation. A big thanks to Shawn!

And hi Jianfeng, I found you made a similiar patch[1] for the ROCK 5 ITX 
board to lower down the mmc speed, could you please check if this patch 
also fixes your issue?

Thanks,
Tianling.

1. 
https://lore.kernel.org/linux-rockchip/20250228143341.70244-1-liujianfeng1994@gmail.com/

> 
> Thanks,
> Tianling.
> 
>>
>>
>>>
>>> Signed-off-by: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
>>> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 3 +--
>>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/ 
>>> arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>>> index fafeabe9adf9..5f63f38f7326 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>>> @@ -717,8 +717,7 @@ &sdhci {
>>>       no-sd;
>>>       non-removable;
>>>       max-frequency = <200000000>;
>>> -    mmc-hs400-1_8v;
>>> -    mmc-hs400-enhanced-strobe;
>>> +    mmc-hs200-1_8v;
>>>       status = "okay";
>>>   };
>>
> 


