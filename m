Return-Path: <devicetree+bounces-85230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 018A492F65A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 09:40:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 81A0CB229B0
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 07:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1213913D8B2;
	Fri, 12 Jul 2024 07:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="CA8kS6KN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4106C34CC4
	for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 07:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720770047; cv=none; b=GAx7g+Coypwsg5lCxEb3t9JN3pdn9m4TQOBqNNsEVVJYrOd0YLim/dV5oVhzG/ii65xfNAggfcbDEtCaWf4jGIyXf0RoQGt4Ozyg46lB4wLxfTabuFzuWx+xb3UKIqU+HS0k3s6v5+7Ot4VVtdYcyyfjTi9+nfko5nNjhrXvkiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720770047; c=relaxed/simple;
	bh=Vn9rZrE5J1S4y+ZxLtFjsyzCQW1T6boIalR1+6/ziwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kd72gHfDQyAoDhKR0RTwhQoHzP8h/o1djmP5n4+OQme+GpXFCB8iRcp6I5vJJ2Lul9LZQEhT3UjWOdc9svbHNcf6muNy28VFK71jHBzsIu8BJdwjeQ+8XURrpwCVApl4Dr1TWUHgRpeRo0QwrHXLrq3bbZumIi9MUS1Obzwc8zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=CA8kS6KN; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4257d5fc9b7so13442515e9.2
        for <devicetree@vger.kernel.org>; Fri, 12 Jul 2024 00:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720770043; x=1721374843; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YxsV1DaB2BAXUJ0b+LkR7z83J/LwRf5oTyArBzhpxsY=;
        b=CA8kS6KNeGT8wiIZJ/aGevrfX/lzwoykMagV3eWqwxD6RZor9jvN6l4wjLIRnfo1kP
         1TYTTIAkV2SbSgxaeQw78fmbkXYlXTDstZ2qNlh2Wmrm0l8NxzY3idtR5kIcvnaOjnC/
         huJC25tG9ntdvL7zEmCSCTUDHHC+aLyhuNvFXdheCxPjrrG9YPiomHe4uNFtBq4/27K+
         Dhy/IgqRT6CeK/gphxxjtASJzkGeaS9ZGocNbG5QUqPp5vd2bIzsqJYDXzezLrAxlhs+
         YYGxOW8NVrr+6G94Krh0J41bCuvsnl+SF22oJ+fCWKAEvUk4d8ajSrS5FvwR5Au04BU5
         zMwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720770043; x=1721374843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YxsV1DaB2BAXUJ0b+LkR7z83J/LwRf5oTyArBzhpxsY=;
        b=L0Nm+mtjYCMK9Lmm0s6osqlLqe1z1YrUZa4AiYnH8qiGnjIGE58jSQpHiA+0J/C05a
         YOaFWmsNsLq6neZvWUDCnAAerymooDyafg7eUvewazFEToGgv7UbrEK4nnsKuHayWfF5
         dRySYFV5qsiYGPx8lXauU9vx4vG68q2qIx5z6f3RaYUG760kg05Fhxeg67QMnwDb4Pai
         JAkKQihtPvuRVBORu7fvpKrazMRYNt6rAdoCqLu6LvEFGKwHUi10IgILdi80rQju7ezS
         OmsvSSGQNDiW6TVSfGEgGA/6JjZcqtgff8/NTKHpqBI8326hBzxeHdVA8wTXxNMyFIJ8
         XWKw==
X-Forwarded-Encrypted: i=1; AJvYcCWLhcMx72WEMe1HbKwW5Rbor0UEZBCykKan8rII1ZWTHQ0k369SnVgIsnWLtbtJ+bWAIRE24ScW0SxArx/kVAti48grULPVuIjSHQ==
X-Gm-Message-State: AOJu0Yzp/f2Uy/AFyWofIXFmMy9WFM2NPULjzA6c0tJ06QYv3GculAbZ
	Eil31Q/YusXCDn3jbMTR1YuHVgtjFLYfXEzGkU+QG6IwkgS3RWFqrb8yJl9v07c=
X-Google-Smtp-Source: AGHT+IG93jdF7q7AZWkRfB3ZttA3BD/SA6SEXg5pMIx+vsqPMnxKsTYuiuOYUd9DxSpDGuOVVC8ZhA==
X-Received: by 2002:a5d:45c9:0:b0:367:99fc:238a with SMTP id ffacd0b85a97d-367cea91efbmr8985482f8f.32.1720770043433;
        Fri, 12 Jul 2024 00:40:43 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367fba1b15esm3065787f8f.22.2024.07.12.00.40.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jul 2024 00:40:43 -0700 (PDT)
Message-ID: <e574e2a6-b231-4737-9501-342445923542@tuxon.dev>
Date: Fri, 12 Jul 2024 10:40:40 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/11] i2c: riic: Enable runtime PM autosuspend support
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Chris Brandt <Chris.Brandt@renesas.com>,
 "andi.shyti@kernel.org" <andi.shyti@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "wsa+renesas@sang-engineering.com" <wsa+renesas@sang-engineering.com>
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240711115207.2843133-1-claudiu.beznea.uj@bp.renesas.com>
 <20240711115207.2843133-5-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB1134615117603F62796558D1486A62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB1134615117603F62796558D1486A62@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Biju,

On 12.07.2024 10:15, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: Claudiu <claudiu.beznea@tuxon.dev>
>> Sent: Thursday, July 11, 2024 12:52 PM
>> Subject: [PATCH v3 04/11] i2c: riic: Enable runtime PM autosuspend support
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Enable runtime PM autosuspend support for the RIIC driver. With this, in case there are consecutive
>> xfer requests the device wouldn't be runtime enabled/disabled after each consecutive xfer but after
>> the the delay configured by user. With this, we can avoid touching hardware registers involved in
>> runtime PM suspend/resume saving in this way some cycles. The default chosen autosuspend delay is
>> zero to keep the previous driver behavior.
> 
> On the other hand, you are saving power. Currently the driver is highly optimized for 
> Power usage.
> 
> Before transfer turn on the clock
> After transfer turn off the clock, this is the optimal power usage correspond to suspend delay.
> 
> By adding suspend delay, you are consuming power corresponding to
> that delay.

The default delay is zero, see the following diff in this patch:

@@ -479,6 +481,8 @@ static int riic_i2c_probe(struct platform_device *pdev)

 	i2c_parse_fw_timings(dev, &i2c_t, true);

+	pm_runtime_set_autosuspend_delay(dev, 0);

With this, the previous behavior of the driver is preserved, nothing is
changed.

Having it this way preserves the previous behavior and give the the user
the possibility to adjust the autosuspend delay (e.g., though sysfs) to
avoid enable/disable the power to this IP in scenarios where this might be
a bottleneck.

Thank you,
Claudiu Beznea

> 
> Cheers,
> Biju

