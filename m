Return-Path: <devicetree+bounces-90366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B9D945175
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 19:28:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB22E1C22434
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 17:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF001B8EA3;
	Thu,  1 Aug 2024 17:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oh8vdwfk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D381B4C27
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 17:28:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722533327; cv=none; b=QRdNs36KKyWWJdT0DN3Cpm+QqNzqaFWpxs310XggXaCvHw4lnVDyREDbiqIQeQxgXUp2LBAdpnlYUZ9dmL/AM4lAJP7I05L9I1fCfPlvqgFN4+Z/6HKh2b0JlDJewQ7Ds8MlvyzPLHAMVsHJ/dadb/zm4M4j5Hr9lfMCr0qi9Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722533327; c=relaxed/simple;
	bh=xYp1qctPQ3XCpMinrXG+jW9arJfjc0jjCGgwQ6JAppA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tzV7+MStU+2XfsSG+60EVBeL/94MOhTeaV67FlW50wMoO9WnuTaEGGy1MOF0OOoiD9Jz3AefVpgRXFq/ENOaI44Uq+GEqLP7ez/2gVCjqltNAQK4c52GH8EZYoEGnXTFyB3ViraZ7pmi0RNZTDf+tFZhQF5Juos+aNQMdJm7rgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=oh8vdwfk; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-427fc97a88cso48958585e9.0
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 10:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1722533324; x=1723138124; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XnwjnjetY7dv9eCyx710zpOpIL7zDgItoHiS/DQyjbw=;
        b=oh8vdwfk+W1mR2x14bS68ATlOQLJ6HZMU1zdufP5d7Rg6lIs+9UDYcgIvT9WdT7nNC
         OQp+OSJqTASdPbruP/YWNgNMJNjfJQLTQkOShdz3Z0n4St/2AKtNCdxJiW8ZYo6/DI/O
         efgyLeMxmgpZ5eT/Ob0s6nK6qRnl6MwEhqbEZ2X74KpwkSpy/Klks5vPzmmmCSDsnw1o
         zO44yDnWXi7SIW4Cs4s3mlthO+DKzuR9ixrs1cd3cIWFTvNyYiKlRJdLbdcOjx/SaYog
         8WCwhDtQTxsKzz6bWK59vjPHdEfNS60L0waatMGlOsVE2FYRgZkJm3uSeA6VHPwPNpAS
         Gigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722533324; x=1723138124;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XnwjnjetY7dv9eCyx710zpOpIL7zDgItoHiS/DQyjbw=;
        b=lHurY+l++rNb8saKRuLez3s6npJz7tny++1AHH9Ge1uiM4qrVv1MxHFYW2KzNIR3BU
         iVKbu5w8oUit2MPuX1FQ90qmp6biDYt62HtjxOm4e9SJH4kK8MwVaxTrU3r/XSiz6g+D
         ZOhiIOBJ0B1DjxTLt8VUyPwmIgtxsHKbuRPm9b53vnA1dUxnjNlkMuwQgsGYklMqI9gt
         xXzmLVPcW3wxaiJdUqcSekhohIl7i8PArBo38xNMzHjG8zJO6zCIp+Fm1V/TqfJZnw33
         cUTpN1gEVvnGrunQEukORTfDge93/d9EQdOu+oaidyluzuChTeK3YFMR99o+lqjmcAOj
         /YxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcR8ZKvxwYUnVJb3GQ1bLKQ6UhoRphaIpLJUEyBxJ9j1hjWItswzaJphzIgbFTlDlTFDOT7dDhpQsWoyLrPhsNt9cY7qC6/RsC2w==
X-Gm-Message-State: AOJu0YzRoxLsSuhkgGowK9JXEvP0fxtRLsgRDfHlKVoomonrG9ZK9VnV
	qasiw2sTydRyoKzcZJQsCoGtM/meDWHIqRNiN3z2a0/H+grTLbbsQAqk/EHxcxU=
X-Google-Smtp-Source: AGHT+IHS4knhHpTTc3R8fFT40aZdqgWtj3Bjf8KF8/wk14Wl+xIhW2xqBDu0DirWFImXVhfOp8H0SQ==
X-Received: by 2002:a05:600c:3b17:b0:426:58cb:8ca3 with SMTP id 5b1f17b1804b1-428e6b07c64mr5187045e9.21.1722533323640;
        Thu, 01 Aug 2024 10:28:43 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282bb6405csm65736205e9.34.2024.08.01.10.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Aug 2024 10:28:43 -0700 (PDT)
Message-ID: <80d56236-2499-4c89-8044-6a271e47515d@tuxon.dev>
Date: Thu, 1 Aug 2024 20:28:41 +0300
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
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, magnus.damm@gmail.com, ulf.hansson@linaro.org,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240422105355.1622177-1-claudiu.beznea.uj@bp.renesas.com>
 <20240422105355.1622177-9-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWhRRdfoqg_o6bU7jjt5_Di0=z7MJ4fMh=MJ0m8=u4tgg@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdWhRRdfoqg_o6bU7jjt5_Di0=z7MJ4fMh=MJ0m8=u4tgg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 01.08.2024 19:13, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Mon, Apr 22, 2024 at 12:54 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Update CPG #power-domain-cells = <1> and move all the IPs to be part of the
>> IP specific power domain as the driver has been modified to support
>> multiple power domains.
>>
>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Now the watchdog fixes are in v6.11-rc1, I will queue this in
> renesas-devel for v6.12.

Only the RZ/G3S support has been merged.

The watchdog fixes that allows us to use this patch were submitted as RFC
but got no input from Ulf, yet.

Thank you,
Claudiu Beznea

[1]
https://lore.kernel.org/all/20240619120920.2703605-1-claudiu.beznea.uj@bp.renesas.com/

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

