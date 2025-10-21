Return-Path: <devicetree+bounces-229257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAB7BF559B
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:48:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8BCE40190F
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 08:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E52D730499A;
	Tue, 21 Oct 2025 08:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IFNWexuG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02001DF75C
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761036506; cv=none; b=Tz1AaUplhJXNec8FYzYUpLyDKaIQdYxVZOb1wPdqKebzhGUpHE0upZij2UWaaYySy3MLt6a9v7AtSXaaWo8HLGDONty7valmNZNt3SUxBL1vNRhaoN8XVElRPzIAanrUm35n4+FIGJibQ2B09kdCL1N8ACgpYaMuSN4LJA/7viM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761036506; c=relaxed/simple;
	bh=GMptF+S5n4kiasdmKEC8kIdkkuMH6YPuyPq0nTtQcdY=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=mGLUZUrKYKz6Xxq1nrYY9eDpnG5Rd/peFNMfD8Hv5NDA4JvARFxg5NEOF7Em04R0NTgnFWHhCnmtpNasS8V8z+x4ocOujucoiEOGl/TsMQn4Bzq8jan+4fdKnst29fx+k3+sMqTT07iXPBxmLLweoR05dlO2BAzwfv/3LYhokW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IFNWexuG; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b456d2dc440so869729266b.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 01:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761036503; x=1761641303; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GMptF+S5n4kiasdmKEC8kIdkkuMH6YPuyPq0nTtQcdY=;
        b=IFNWexuG+YmO9k1O8ix0SQiu7VNsF+yI+/Tx9UPOSTR1NC5ljQw79AqJYu+7Py8ELn
         c01g3bGNYzoMbeuemGvKnW6wOTJCaCSbvuysKDEWJiEV4lQs7I+uJD18X+yMrRdFJPwJ
         KnSx5lhDEs5os8Wp3r1V4SSAANOU9NTZQDIQ3X1Bl1G4UA2rcY9qMr4kFxGEyca78PIx
         iKTvsJJKEexsIaxK2lemsP/pgrEBTx+cOHx5+3zRjRq+fLhN0ghsKifz0/Bw+6pzD/7F
         StRcVykc7ihNn0QOTPXyqY0qIJDZ2wUhHldghC6Fy2xACwkBSbmPbzcOGrzzFtOsmGhn
         Fw1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761036503; x=1761641303;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GMptF+S5n4kiasdmKEC8kIdkkuMH6YPuyPq0nTtQcdY=;
        b=DqUFCPxJMcyV0ASCBiTqc+vITqh8bBwvocM9wQz4bfk5OQzF1ebnlTRHG6tu4CwjfG
         CiU90EF3NY2mZMajfUz1TbE+4GBNrTAE19g5TmjA1/4HIsvQtMUySVNw5tWxvph7Q7e9
         AVAZHxSbunydLFWk5mS3FVmQXvSPvmblzxIm8l2eHKDzb8HOSf9mtKazuSB3mNr64TxJ
         RcGd7nuKOiE7iYDoJn3srolJ6mnfRLwQFFRfrLhoVGkB8UzC2TOi9UXDNcRAyB2n86rv
         rfooFsSNjNKlUbf6lJ+eJHju8x06tnPYB4zdsGxngiUUPM+7OCQBs3IQQdLNGkKKzZCU
         S5hA==
X-Forwarded-Encrypted: i=1; AJvYcCVF6yVgJNmZiKkXSlKBOsUqZHiF/a53KvMy658kR/6cNg4Y76iMdz1v8yEqUQ7cWjJ8opmAGwkfTeCn@vger.kernel.org
X-Gm-Message-State: AOJu0YwljwRyNWAViyB5KXNWYky+nCrhPB4muVJ0UQJ59a4tkzFII7ro
	L50yLNE7JwEIK6n0de1g7fjebOFWMxyGKceVWv/hStpBZmQeRUQw2/17xe54twMfV74=
X-Gm-Gg: ASbGnctIA0JNAXGgrap0F/RvvkvaXhBDvGZwhZsifFbQ8oTswwKqbT4gVuHP72iE4aU
	ZYT7W7tQ/RlHllmYVnq63NUO6zBapm/gt/CSNOXFk+2/j8S1AGTjl1zY6uYVBclxb1KZcvgw5Pz
	W5QDqUltM2z5fEjUyUOcjTbNfVoeONDXyXcaK4gOjNHtGEyY1C1EZLeYcA7/Qfo2MNWesO3Gfsx
	vg/zjMGfKvDOmRwZFC/wVRaZsMPuT8wi8Fmr1fK+bumwadYdostkMllNjfC5BtTwQezg+wQm/uS
	nmWopEmqLs1HIMidRBSr7Gu9MWkDF6aV/VMCl7DU2CvUeYChszSStVy9RtbOZrrd+RSibkMK63F
	Was7UDBtq0V9eXYSoLXe0YR1NdgzsMhSh8fNmgwbNcYazkaPMOZynkZD+US5pRj7IPBf95B2udy
	o3116oYXHk
X-Google-Smtp-Source: AGHT+IH3muwvgQ58m7ty39MBJBhT3+RPeMROjQFDi1D9gzlnGyA7jawb6s+g2ZtLjD3cP/PD/Xl8sQ==
X-Received: by 2002:a17:907:7f88:b0:b07:e3a8:5194 with SMTP id a640c23a62f3a-b6473144281mr1821120566b.22.1761036503084;
        Tue, 21 Oct 2025 01:48:23 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb52603fsm1033527266b.57.2025.10.21.01.48.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 01:48:22 -0700 (PDT)
Message-ID: <dc27ae49-d60b-447e-971c-6b5b51ab9f29@tuxon.dev>
Date: Tue, 21 Oct 2025 11:48:20 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/7] reset: rzg2l-usbphy-ctrl: Add support for USB
 PWRRDY
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Philipp Zabel <p.zabel@pengutronix.de>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
 <c7fc31f1247332196516394a22f6feef9733a0b4.camel@pengutronix.de>
 <66d85e70-efb8-4a45-9164-55b123691b70@tuxon.dev>
 <bcf6113b0025777db1cb2ace1618fed8fac2dfc6.camel@pengutronix.de>
 <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev>
 <6d4bc69c-1571-4d98-b0d4-214c68be118e@tuxon.dev>
 <c1099a8e422abbc5d12bf3f325cb9f2140c8c006.camel@pengutronix.de>
 <77678dd6-071b-4911-a5c5-f1519c92e91a@tuxon.dev>
 <6ba1fd1f07753c9b98a57c87bffbbee16971da7a.camel@pengutronix.de>
 <19746f65-bf10-4687-9e2b-b259220a9ea8@tuxon.dev>
Content-Language: en-US
In-Reply-To: <19746f65-bf10-4687-9e2b-b259220a9ea8@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Philipp,

On 10/15/25 11:19, Claudiu Beznea wrote:
>>>>>>> I see v2 and v3 tried to control the bit from the PHY drivers, and in
>>>>>>> v4 we were are already back to the reset driver.
>>>>>> v2 passed the system controller (SYSC) phandle to the USB PHYs only (though
>>>>>> renesas,sysc-signals DT property) where the PWRRDY bit was set. The PWRRDY
>>>>>> bit was referenced counted in the SYSC driver though regmap APIs.
>>>>>>
>>>>>> v3 used the approach from v2 but passed the renesas,sysc-signals to all the
>>>>>> USB related drivers.
>>>>>>
>>>>>> Then, in v4, the PWRRDY refcounting was dropped and passed
>>>>>> renesas,sysc-signals only to the USB PHY CTRL DT node in the idea that this
>>>>>> is the node that will always be probed first as all the other USB blocks
>>>>>> need it and request resets from it.
>>>>>>
>>>>>> v5 and v6 kept the approach from v4 and only addressed misc comments or
>>>>>> things that I noticed.
>>>>> Could you please let me know if you are OK with the approach proposed in
>>>>> v7, so that I can start preparing a new version addressing your comments?
>>>> If the PWRRDY signal is an input to the USB2PHY control block, and not
>>>> only to the PHY blocks, I have no issue with this being handled in the
>>>> usb2phy reset driver -
>>> Yes, this is how the Renesas HW team confirmed they are related.
>> Ok, understood. I concur that usb2phy-ctrl is the right place for the
>> sysc property then.
>>
>>>> iff it is not sensible to just control the
>>>> signal from the power domain driver.
>>> As mentioned above, that can be done as well but, passing a SYSC phandle to
>>> the CPG DT node will not be valid from the HW description point of view.
>>>
>>>> If we have to handle it in the reset driver, I'd prefer to see this
>>>> controlled with a dev_pm_genpd_add_notifier(). If that is not possible,
>>>> I'd like to understand why.
>>> From the code inspection I did, that can be done. From what I can tell at
>>> the moment, I'll have to register a gepnd notifier from
>>> reset-rzg2l-usbphy-ctrl, before runtime resuming the device and control the
>>> SYSC PWRRDY from it.
>> I'd like that.
> Now, that we found the genpd notifier is not a solution, could you please
> let me know how would you like me to proceed?

After discussing all the possible (known) solutions, could you please let
me know if you are OK with the approach in this series?

Thank you,
Claudiu

