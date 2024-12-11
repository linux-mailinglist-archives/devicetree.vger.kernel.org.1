Return-Path: <devicetree+bounces-129734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC3B9ECAC3
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 11:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B1E2D2820B0
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 10:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C9E8208985;
	Wed, 11 Dec 2024 10:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="e0FEzTWC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8BA208986
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 10:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733914721; cv=none; b=F8jS+rS9q75Qj6RXMGZtNIU/APXvdpziS2yxcErnOmURAJVmYRFjBLoW8+Xh5Z/6dsQb7gTBbwEydJ3UZVezqw023I3RrNvmocLqYbxUoPrNfJO/C2/HPBxl4XLVl5nBaqjditFdafWB0+ppSDxNEK6D9AJMODpjwi1VGywLfyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733914721; c=relaxed/simple;
	bh=UU7wGIFVwc7A92weIOxTKl0bgrJSaXpATJdbNVhkJ00=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=TH7615/8ap0YegnZj/j1sLwmoSumgdjhXmcK+mk2TaymT6VipdG4Tr05ZonZAyANUnoPVQ1Sx45/Nx4uIKQ4wL+R0JGrypPW8rqqYZ4v9eb8WDVyhsJfzsr+ejeKl5mmB226bCY821yrZLv2srb8G3uHeIVQ0KNVsNZk3JvD5gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=e0FEzTWC; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aa68b513abcso565730166b.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 02:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733914716; x=1734519516; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B+QMPoA/1y0fWjReWgsjDWnr3AvpUP6I2Hx7jhli3G4=;
        b=e0FEzTWC85gnHD3xzy9r3jF39i8ONEvYyaktEditbhER4XCDi0gBRRvCb0V19QBaDp
         3Xo7BK7QmTiaG9qEbsyK812bCUFpbgw1+Bf9mZo8b1Ugk01QvFeGzXkos4EiA3WvdMdc
         6kIsgdjYMZj6lO4yZ9IPQvQLyCTmdRwu6uL9eYcMWTpW255bX4OGxpAbYJ5pQCsmlpSD
         jvz1HYaVXBmy2hkL/WQyWlTYC2HBrtAeWd0AbD1h2oL2BGrtFq4xCaoWJjI/OQ7BSJBL
         Lf0bFN+vJBxF+ptMDphGyYR9fUTXk1OMbXCXcpHK+UXuaKbFJdZXuxFF/qc38e/kIh1Z
         hKGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733914716; x=1734519516;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B+QMPoA/1y0fWjReWgsjDWnr3AvpUP6I2Hx7jhli3G4=;
        b=GNhSz56QjMwVfp3bk9mrnmTTnE2NP8FIyZ4mRTqRGbiuGFQO2Z0SVMIQZaRsxPPhzp
         mPUJZMVDLYCCjq2Nw0QwSzBbuiC1pD+RYXOnTLaNomXcXUI+ATL9n8ZamEI8/yO8TfVf
         ArMEaD3zfXI2N4F5qjHwzox8c42MyFit72VT+QfFc2+TSbnKVzfSrZPJ7zGa+Y5tuncl
         Q/RFGsCVAo5ulImqMo7oEQP6wfCKHLtgdiuHfqas+VD5kGSsJGrWX45tY6S+3zTZur+t
         fJ3Y0a2+0J0HVqILd1Ie3Gxs0TFqS45AiGMpX0mimDdyAe8CzHfx+TF+K5nUV0uMP744
         DwlA==
X-Forwarded-Encrypted: i=1; AJvYcCWdJuhPWFD84kBtc8WnseP6IZq/B/DsAdFGkI9TU8dl597l0y85h9s4zaHlSlqdyJNc0VuAM5RTm4dM@vger.kernel.org
X-Gm-Message-State: AOJu0YzLCOTdoEk7yjw2KojJIm/3pNl2XkW/RA7Ck3sMjU23BjNURXhn
	sBodmDM2fCY9qK9GMMgmrYtC6Km67GUuEAHoBZab4I6PrHePJCkLzAGe0oq+0JM=
X-Gm-Gg: ASbGncu//DMxPWOMbHnoRRQ7Qtx0mA0s1KRLPYP1s5mKehuUWFsIbMIwxKcbmoShXiW
	uO0JfcmR0zcDq/rjr8M5ymTfTwkr8r5crbt94kL+aBL10fWWxoMG9emb2lig5t9KhmlSFzBVVE3
	jRKKp3g/ppGWPwj9xfWXeNANQxacY7RJEPaY5NfYm9U4dEWFAVCtr+nWmuAPAiIxZqTZYE58qgQ
	9gREvP6bDkE2ECgi8jwlKNTg0SlTN2qMtPz3clI74F7p1bErI0MDrgFonPB+Co=
X-Google-Smtp-Source: AGHT+IHboENFUeCz1S8YpLyRolieL5N9mA97YUKKuxLi+L7mSNc3bXrTRTxR7tmo3UlKFMHhDNoW8A==
X-Received: by 2002:a17:906:cd2:b0:aa6:730c:acf with SMTP id a640c23a62f3a-aa6b11b2777mr175222066b.13.1733914716389;
        Wed, 11 Dec 2024 02:58:36 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa689a0a6fcsm428156066b.30.2024.12.11.02.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 02:58:35 -0800 (PST)
Message-ID: <e55dab68-fccc-4239-8368-94f942a50218@tuxon.dev>
Date: Wed, 11 Dec 2024 12:58:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 8/8] arm64: dts: renesas: r9a08g045: Update
 #power-domain-cells = <1>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, magnus.damm@gmail.com, ulf.hansson@linaro.org,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240422105355.1622177-1-claudiu.beznea.uj@bp.renesas.com>
 <20240422105355.1622177-9-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWhRRdfoqg_o6bU7jjt5_Di0=z7MJ4fMh=MJ0m8=u4tgg@mail.gmail.com>
 <80d56236-2499-4c89-8044-6a271e47515d@tuxon.dev>
 <CAMuHMdXOztsoKp=9-TDXirJN8voRy0O5mYXcVy=Uz-GX0B2N_Q@mail.gmail.com>
 <CAMuHMdXXTRUiToA3r8+xgS0uUrrfOF8iZA58_na0V9+JB6hg6Q@mail.gmail.com>
 <a1b60809-cf72-4d4d-91f4-468a47900ca5@tuxon.dev>
In-Reply-To: <a1b60809-cf72-4d4d-91f4-468a47900ca5@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 11.12.2024 12:50, Claudiu Beznea wrote:
> Hi, Geert,
> 
> On 11.12.2024 12:31, Geert Uytterhoeven wrote:
>> Hi Claudiu,
>>
>> On Thu, Aug 1, 2024 at 7:34 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>>> On Thu, Aug 1, 2024 at 7:28 PM claudiu beznea <claudiu.beznea@tuxon.dev> wrote:
>>>> On 01.08.2024 19:13, Geert Uytterhoeven wrote:
>>>>> On Mon, Apr 22, 2024 at 12:54 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>>
>>>>>> Update CPG #power-domain-cells = <1> and move all the IPs to be part of the
>>>>>> IP specific power domain as the driver has been modified to support
>>>>>> multiple power domains.
>>>>>>
>>>>>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> Now the watchdog fixes are in v6.11-rc1, I will queue this in
>>>>> renesas-devel for v6.12.
>>>>
>>>> Only the RZ/G3S support has been merged.
>>>>
>>>> The watchdog fixes that allows us to use this patch were submitted as RFC
>>>> but got no input from Ulf, yet.
>>>
>>> Oops, postponing.
>>
>> The watchdog fix is now commit bad201b2ac4e238c ("watchdog: rzg2l_wdt:
>> Power on the watchdog domain in the restart handler") in v6.13-rc2,
>> so it is time to revisit this (and rebase my renesas-dts-for-v6.1
>> branch to v6.13-rc2)?
> 
> In the meantime, we got some input from HW team that particular order might
> need to be followed b/w MSTOP and CPG setup that doesn't align with having

s/CPG/CPG_CLKON_<IP>.CLKx_ON

> MSTOP handled through power domains. There are some contradictions (AFAICT)
> b/w that and the conclusions that one might draw from the HW manual, so we
> are in the process of clarifying.
> 
> For that I would propose to postpone it until further clarifications.
> 
> Thank you,
> Claudiu
> 
>>
>> Thanks!
>>
>> Gr{oetje,eeting}s,
>>
>>                         Geert
>>

