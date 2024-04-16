Return-Path: <devicetree+bounces-59679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCD48A69B0
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 13:36:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 988522830F7
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 11:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F29A81292FC;
	Tue, 16 Apr 2024 11:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RSaCR/kS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629B31292D7
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 11:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713267370; cv=none; b=frHHxJpS1P3TgMkYur/SWAQWLdlTv5gmJU/VXUkjP8WcSUR67e7yUNO2vc4EINwNUVUW7WCBzqvWaI2sRa/W/AahLNVFtwR54SaOryw9BEwtacazCSl75CHPdjrbgFIQC2IauyJ2qlGYpNyf8EcFPtNyRaaEQxekagS5J9oB35Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713267370; c=relaxed/simple;
	bh=dMQSx8CCJTZi0c0vMxyWRS6E0AI8Ut2Td+Fzfj3dowg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B4faS+2st+c8lPobfbb2R2GZZ4++vMh8Ic6mkChqaNg7f1CAoxGkmyvodJcqlq6q69eMah/zVxnLEOXLeAGk4bA0f6IToZISbN9yJlPlB+7nhvZm0bU2R+siechODYtq+DQjrJ84dqYKty6U3fKltKBhSwe6crybi9laLeS/MFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RSaCR/kS; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2d718ee7344so42395341fa.2
        for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 04:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1713267367; x=1713872167; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=okFG0DnwE5R50C1UP70PPaJXyomv8+BdqCRrBYX27h0=;
        b=RSaCR/kSZybnVrUMDAh5QrYXEt3EtmACW303bCHj+nrSRUuFjNyemCtWUThQ5jh/AS
         OHRXjx9GRd1kdocOELO7TYC/XUMylG/Lqc7Ot7pa2xiEA2ernr4xt08izGJYMfkz49/U
         mSwj/L+1HweRBdxjp6Svkr9yrP/NkcBRMPndugLAIL52r+g8A5ReXecrR2/gm5LNwYuy
         Adl13fhL47ClJLhqUdhM1Lw8znXWmNhDxu//fIzsD/jXUcXVbOA1ZsOZQWFq6Zs/0Nbu
         qkygo2ZChb9XnxxpgXi9BRCYnXNMiRENQcZHS9Lsy0PKjLwFKP1F4GP+EfCLpYo8advq
         mlrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713267367; x=1713872167;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=okFG0DnwE5R50C1UP70PPaJXyomv8+BdqCRrBYX27h0=;
        b=ZRM4w5qmBgIKiGrLJl6wCvRdYd1MPd7BVZc7646ipgZQ9SKQqWrYw6l52/BTSwjqGE
         w2WaBrJtGji8g/kt0o0LMfsLWMFDWxLDX3qEsgAWrHDSZ0S3lU1Tp5VTbXZMWxV6pVzV
         SK5hrlRLA+n1XOk+AnH6DwDEKuqsHSmqNhGI4McrWx4RjBhUensNwirMmTda3g0IdWZZ
         OhoN09VzBGFq5mmYsP6pDhlG5Et0enylsAWU/FSFtCp6M685/XIN3Z7ieD5sIu8Lrm3j
         vM4WUOigaAGPmORB7ArXRoVadMEh6ctwyEDaJiTKUjaDZZx1/Cgc8+GjjeSiQzJVNvBb
         IFsg==
X-Forwarded-Encrypted: i=1; AJvYcCXWMzozG62QR2y9Xsqv2DNERANay6Wfv5ORJn6AnmKqv76y+cozdHcg2unUji/OPnfTqYTJyJcnQw9QOEF+uQG5Ao19UgB2cCOVHg==
X-Gm-Message-State: AOJu0Ywd9auW5kZAOT6n5u0RrIeRiZbRLueyDX4hCZocNUH1E1p5eroF
	v61do8mOeOCZOhBxRrXF+6dzeOn8tPFSUk6mfzt3qBMoK3IKZN57K0qeMdg4aMM=
X-Google-Smtp-Source: AGHT+IFuxrJYpKT46xpDoYSQlh9kRKqJVNyvZUvf2JQsE9jM/VsfStjJqR7Leh9rvEkjKCCzelhBJg==
X-Received: by 2002:a2e:91c9:0:b0:2d9:b2be:bc7 with SMTP id u9-20020a2e91c9000000b002d9b2be0bc7mr9463931ljg.4.1713267367375;
        Tue, 16 Apr 2024 04:36:07 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.8])
        by smtp.gmail.com with ESMTPSA id t13-20020a05600c450d00b004171f151a5csm19556794wmo.16.2024.04.16.04.36.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Apr 2024 04:36:06 -0700 (PDT)
Message-ID: <e50bb9c1-e094-4868-9403-fb7430195ad9@tuxon.dev>
Date: Tue, 16 Apr 2024 14:36:05 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/9] clk: renesas: rzg2l: Add support for power domains
Content-Language: en-US
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 magnus.damm@gmail.com, linux-renesas-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240410122657.2051132-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFr405qt58wrqNdSn8bQPRqPKJ1omUZHS_VpQrX5zxUJug@mail.gmail.com>
 <CAMuHMdXRwcYMt7p+xT3svo1RmJ2Tvbamrx4++iYQ-mffKb6ZQQ@mail.gmail.com>
 <CAPDyKFoMiseXbSEK4ANOeWSuVhREibm0v0zg46Q3kJHX8jYpgQ@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAPDyKFoMiseXbSEK4ANOeWSuVhREibm0v0zg46Q3kJHX8jYpgQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Ulf,

On 16.04.2024 14:14, Ulf Hansson wrote:
> On Mon, 15 Apr 2024 at 09:28, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>>
>> Hi Ulf,
>>
>> On Fri, Apr 12, 2024 at 1:31 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>>> That said, maybe we should start separating and moving the
>>> power-domain parts out from the clk directory into the pmdomain
>>> directory instead, that should improve these situations!?
>>
>> The clk and pmdomain functions are tied rather closely together on
>> Renesas SoCs, that's why the clock drivers are also pmdomain providers.
>>
> 
> I understand, it's your call to make!
> 
> Anyway, I just wanted to help with reviews and to make sure genpd
> providers get implemented in a nice and proper way.

I'll keep in mind to also add you and PM domain list for future patches, if
any. Would you prefer to re-send this series and cc you and pm domain list?

Thank you,
Claudiu Beznea

> 
> Kind regards
> Uffe

