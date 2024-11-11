Return-Path: <devicetree+bounces-120720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 221809C3CCB
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 12:15:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 419251C21641
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 11:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E5D1189F2B;
	Mon, 11 Nov 2024 11:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OnwcAa7i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2F31184556
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 11:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731323741; cv=none; b=g8EHg6ZCnXSFIzz8dQ16aDOVBEwbpZ36JbL4Uoq1IuqbBfw4nDb1QB/tBhncug2jwCCMwf3tFGpk0FBABiadhitH3q98014bMt1qkDRdPJ6MzfrTbe89Tp1762MC/YIFNtsYfiN7uyQx3E0CI1Sm/bJz9fUg7xRSeR5CBmtd48U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731323741; c=relaxed/simple;
	bh=UVMY3jncP8KlbJgHSOQbnrh0HSPCD2duUy36Ssl4JeY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EcGiUP/ehUr6nN6EabNxPhtoLSvysP6DmTEBddseZB8YHSVesu4Z1O6RmM6EEQReCwIiVccJ0pBeBKEtPWnmNTclhxahRsO5Ywz4+EktB01HQT4uuMpYUQHbpGsIiTVLiC7ijisozCG9hX+xRzmGzrGI4w8fX+h7gZD3pxVbH3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OnwcAa7i; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5cec7cde922so6084609a12.3
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 03:15:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731323737; x=1731928537; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bhZZuPjatSrdZhX9k+zXeie/9aFPE96IB3h2Z1yS2Hc=;
        b=OnwcAa7iFccdMPXmNNfuo+XSwSVwwhr08r0lXMAp/OEFWu00qv7wHWnONDdCu/5q7C
         W+/EI+WP3Z4aGv/Ppvei6+w6/cbz/ivJ1SatoGSfcVKgMOCcmzaLKkwV1G11XNH6ap7P
         4csA/TfJeSCCpI9ss7PEYectSu1/wz3ulgSj62rdCy3uN3X/rG3ip6lo302p20aszzWf
         J7j5szIPJqSllJjvLBWecWqsy9XqeDSJLTBldqwznATzvsQT9vUSJGUcbQ6+bY4if8Y4
         HOBtESNHHgYU2Ok3fGARnCPQDliwu771U7Z11sWnW0I+BBPQ1Gd6PZSkb3JN8n72IqO/
         AXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731323737; x=1731928537;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bhZZuPjatSrdZhX9k+zXeie/9aFPE96IB3h2Z1yS2Hc=;
        b=Qrr9UkEBuW1oprVRuvhmHnX84JAJioUYUWVE2KuI0yx5ej0VHG8riYzTVw3LYOBPmp
         QLP+nM/ZMTPuIYlFk72InzajywRZZSi5D9QFJ1Lc2REBey3O8ATZPauLUHAQHRq9ZVQp
         dL+jeNoJ3/az07qGpbITadtsLEDUV3pr3nOXFCIZxQEHDdP8MP1gjK2p14vVdYVqtsMN
         XNKhSTTpRB07OmpU8j1ugU35ANDJ2ATtCBLKY0aQjlvvCmI+gDJlAjDxeJcvz4o6ceWh
         E5ewaiTHsQblEc5crcMRVdbiYhyGM3lSg7EqEETfqlE9n5zNnWAUU+Vg670d51A/cWB8
         EhRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpes8tvKo1b9ee38oVhWgvxVedS+9C1hEFL/+ikRJuXBXi+A9mr2EqO0575usODz4izgIPZ9wcdr1Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxYs0RB2zS1SuzygACgQ3toJlzrSFhFiGPAZ8kEys5jzj+Z/Z7O
	PqMJm/I16rCXLEsDKbOr41BV0WyxBmqykqlhiI5ExKqHdpWglkx8afVv+oPZ4+k=
X-Google-Smtp-Source: AGHT+IFbp4VgcqWBYLe3U0yCi4vd7nmqSuzbqzRywA4zlYZMwP+tOs/p2A4kYUW8+VEuOgG9xmufbQ==
X-Received: by 2002:a17:907:6d02:b0:a9a:60c1:136d with SMTP id a640c23a62f3a-a9eeff0e570mr1147950966b.22.1731323736778;
        Mon, 11 Nov 2024 03:15:36 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0a176cbsm593593066b.23.2024.11.11.03.15.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2024 03:15:36 -0800 (PST)
Message-ID: <9ef0d9df-3d6c-470a-913c-55698148d00e@tuxon.dev>
Date: Mon, 11 Nov 2024 13:15:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/25] ASoC: sh: rz-ssi: Terminate all the DMA
 transactions
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "perex@perex.cz" <perex@perex.cz>, "tiwai@suse.com" <tiwai@suse.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
References: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
 <20241108104958.2931943-7-claudiu.beznea.uj@bp.renesas.com>
 <TYCPR01MB1133233B458F3AC5F7C3602B3865F2@TYCPR01MB11332.jpnprd01.prod.outlook.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TYCPR01MB1133233B458F3AC5F7C3602B3865F2@TYCPR01MB11332.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Biju,

On 10.11.2024 10:37, Biju Das wrote:
> 
> 
>> -----Original Message-----
>> From: Claudiu <claudiu.beznea@tuxon.dev>
>> Sent: 08 November 2024 10:50
>> To: geert+renesas@glider.be; mturquette@baylibre.com; sboyd@kernel.org; robh@kernel.org;
>> krzk+dt@kernel.org; conor+dt@kernel.org; Biju Das <biju.das.jz@bp.renesas.com>; Prabhakar Mahadev Lad
>> <prabhakar.mahadev-lad.rj@bp.renesas.com>; lgirdwood@gmail.com; broonie@kernel.org;
>> magnus.damm@gmail.com; linus.walleij@linaro.org; perex@perex.cz; tiwai@suse.com;
>> p.zabel@pengutronix.de
>> Cc: linux-renesas-soc@vger.kernel.org; linux-clk@vger.kernel.org; devicetree@vger.kernel.org; linux-
>> kernel@vger.kernel.org; linux-sound@vger.kernel.org; linux-gpio@vger.kernel.org; Claudiu.Beznea
>> <claudiu.beznea@tuxon.dev>; Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>; stable@vger.kernel.org
>> Subject: [PATCH v2 06/25] ASoC: sh: rz-ssi: Terminate all the DMA transactions
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> In case of full duplex the 1st closed stream doesn't benefit from the dmaengine_terminate_async().
>> Call it after the companion stream is closed.
>>
>> Fixes: 26ac471c5354 ("ASoC: sh: rz-ssi: Add SSI DMAC support")
> 
> Maybe add fixes tag for full duplex case as the separation of 
> Playback/ Capture is introduced in that patch.

OK

> 
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> 
> Cheers,
> Biju
> 
>> ---
>>
>> Changes in v2:
>> - none
>>
>>  sound/soc/renesas/rz-ssi.c | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c index 6efd017aaa7f..2d8721156099
>> 100644
>> --- a/sound/soc/renesas/rz-ssi.c
>> +++ b/sound/soc/renesas/rz-ssi.c
>> @@ -415,8 +415,12 @@ static int rz_ssi_stop(struct rz_ssi_priv *ssi, struct rz_ssi_stream *strm)
>>  	rz_ssi_reg_mask_setl(ssi, SSICR, SSICR_TEN | SSICR_REN, 0);
>>
>>  	/* Cancel all remaining DMA transactions */
>> -	if (rz_ssi_is_dma_enabled(ssi))
>> -		dmaengine_terminate_async(strm->dma_ch);
>> +	if (rz_ssi_is_dma_enabled(ssi)) {
>> +		if (ssi->playback.dma_ch)
>> +			dmaengine_terminate_async(ssi->playback.dma_ch);
>> +		if (ssi->capture.dma_ch)
>> +			dmaengine_terminate_async(ssi->capture.dma_ch);
>> +	}
>>
>>  	rz_ssi_set_idle(ssi);
>>
>> --
>> 2.39.2
> 

