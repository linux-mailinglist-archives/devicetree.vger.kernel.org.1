Return-Path: <devicetree+bounces-230758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 007FAC056E3
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:51:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0C9A18955F6
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:52:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94D5630C627;
	Fri, 24 Oct 2025 09:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="j9R8JSXv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEFB230BB89
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 09:51:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761299496; cv=none; b=LL0o6esnnTQ17FmKK9Jm5RYhLF/HSv3TR0jtmPXuNwqoglZoagsxYIEXmgIU0Szs9S+iyu4PuJ5umqhsaXuYvS1J5c1xOJC03NQarAb/6xnc17ixUE3tPVlAqshK2NZl/tTQzAOBm+Xk/x/HMsvTiQECpcLa5s5vh0A3rIrO3BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761299496; c=relaxed/simple;
	bh=6wJ5ozxccB/nzgcmHOXuI1xKrq/4DHvB+RURaKbk3O8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sq4+x3wQK5XvQPYQvipZgAqLgYqdzHReDpsaRi5oKVcKLOXex0q4yKDhHiVHaV7VpZguQMzZmnnvHrwkJxl3JIht9jZ8pfL3lp4NDCg5MwJKiWXZyRu+C2MHZBNo8Dy70VcN6S7OEDfkn1SQuxYaJEy12bt47TfkB7nFhatsW98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=j9R8JSXv; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-63d6ee383bdso3944577a12.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761299492; x=1761904292; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ly3AYuLKibQEdYHOL/Htjgp8xjTYNizR6VDMFs2t4hc=;
        b=j9R8JSXv/26z9gYmd0CPlvrWskwALR+V95RQCyh6JqZVXmU/RtT/i0YJW9Hh/Cp6Ta
         GtkkU0IpJeVMAU/y5Kt3DkWRzpbLSbay5DdQk6AY+WkZNsJF9MmQ8mmTpcM8gyVaq9CR
         k95negSWJa2v8h+AQ+nwmty8os8QDp03T60c6gbtF8SzhAbtTY7AtfyKQ7Gx69t6muoz
         crz+73cdzmq9wwy9Gjr+KjcxxgId6f5201wvzOOliok4c+qqGLzeRwGDCdMPu1x4j4DI
         0RaOzV2Xd8Dgq4KEFdoZJnZag9GxZnRcDVwvQigtYVXY0H/8UXn+Jr55EMAQ3ZPpX9Kr
         0ZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761299492; x=1761904292;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ly3AYuLKibQEdYHOL/Htjgp8xjTYNizR6VDMFs2t4hc=;
        b=n37TVDjHdWNcpl2fVKtscbtQT4tnX/l7CKoMc0deP9DrgU4lD5CPPLv283sJCc9u9A
         m5UBwm0ljLykhWnigq5KgM7boQQ0KyggPXgXND7VNAncaBSNk+0bKn0sxE9dScLdmFsv
         wTAbeQhXFexgCTvo3FFskVp1RPvjo6v5jFJG+LKWll2GRZaFjXs0HxRiCxYH/if8cFBq
         pvrWM4+L5z2SrwQnvw/DBWGoMiojIB8SdYZyB6Ac6Gdkimh68jo1dEEODyR/tXEQsrxF
         gj3lQ6GTYdLY21tHSBApTVOwexeyZDJT6DcJP/So23H4oUHg369LaQLaUpSgopETCBq3
         soog==
X-Forwarded-Encrypted: i=1; AJvYcCXUQFRyqadIGlOLu0jOIXXMiadvpbwkzDfm1zdnLUntkkMF0BuZZqVygq3JUDenJirNRE6d7ZdnA8PJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwNwwSB3hHbWeBlgd/x57fmafnPZQ6JVRxBjCCPLtlNlczm5j0S
	LFVxeZnUzvDV6sDQjLzWcKgOmaZL0kVi8myIw/H6pNz5BP+YqpgLB4y7FbCj5SFSczM=
X-Gm-Gg: ASbGnctWSX6BOp9KjhNhD2IFnr7dNCRhjhBIvba98XMa/ztnV+NN43nBAX/ygJO2F/x
	VatYU/DvfnKmmLJXtDRY2eoF3iH2x3Y4j64aDneNZenun8e0YjqHk9ejvcfCXMN2EZ45dnSz7LU
	tuG+MvkjOPmEAQRCcwCL/kVjV3y5LsPW5ReIwlTiYLQixo7UVM8JfIku2ztLtvSCbeXei/YoOuw
	uQLAVffU9YWlpilkZ0JRPNhbzCg7MmsSnYSSKjiArCdSXRxxZxlTxusMykpJuHycs5pOzIIC2v2
	UDDPBk9fHCiW5mYCWVCStxxhAnA01ZxsXs0CFHnl2JDEXy6ne7dehplOhivu7Gz1aeRL5ylWKpR
	CtUzdsjFmJ5Rhibmjyq5aQW2c0mw26wVHisn2m7ieJ+hUN+cK3+uMzSMTtrZKdOsGr8GU8xiMXp
	3M+9DhLQBj
X-Google-Smtp-Source: AGHT+IGmo8RIThQOxDu/Zi1gWcAuc6tFi+Y4rpL7zem9sqyDB03ggroT6vzhcOREXWW2G8nw+BwgWw==
X-Received: by 2002:a05:6402:51cb:b0:63c:66b5:bbbf with SMTP id 4fb4d7f45d1cf-63c66b5c00dmr20265189a12.20.1761299491899;
        Fri, 24 Oct 2025 02:51:31 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e3ebcd2fasm3947160a12.14.2025.10.24.02.51.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 02:51:30 -0700 (PDT)
Message-ID: <e3403b2a-533f-4962-a615-32a4095fd6dc@tuxon.dev>
Date: Fri, 24 Oct 2025 12:51:28 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB
 support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
 <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdV7ScKUw7bGFW4v0wS9caXKDeT02MXkLWpk2LZfYw8GfQ@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdV7ScKUw7bGFW4v0wS9caXKDeT02MXkLWpk2LZfYw8GfQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Geert,

On 10/24/25 12:15, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Thu, 23 Oct 2025 at 20:41, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Enable USB support (host, device, USB PHYs).
>>
>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> 
>>  &pinctrl {
>>         audio_clock_pins: audio-clock {
>>                 pins = "AUDIO_CLK1", "AUDIO_CLK2";
>> @@ -207,6 +230,27 @@ ssi3_pins: ssi3 {
>>                          <RZG2L_PORT_PINMUX(18, 4, 8)>, /* TXD */
>>                          <RZG2L_PORT_PINMUX(18, 5, 8)>; /* RXD */
>>         };
>> +
>> +       usb0_pins: usb0 {
>> +               peri {
>> +                       pinmux = <RZG2L_PORT_PINMUX(5, 0, 1)>, /* VBUS */
>> +                                <RZG2L_PORT_PINMUX(5, 2, 1)>; /* OVC */
>> +               };
>> +
>> +               otg {
>> +                       pinmux = <RZG2L_PORT_PINMUX(5, 3, 1)>; /* OTG_ID */
>> +                       bias-pull-up;
>> +               };
>> +       };
>> +
>> +       usb1_pins: usb1 {
>> +               pinmux = <RZG2L_PORT_PINMUX(5, 4, 5)>, /* OVC */
>> +                        <RZG2L_PORT_PINMUX(6, 0, 1)>; /* VBUS */
>> +       };
>> +};
>> +
>> +&phyrst {
>> +       status = "okay";
>>  };
> 
> This node should be located before pinctrl.

You're right! I missed it.

> No need to resend just for this.

Thank you!


> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds


