Return-Path: <devicetree+bounces-96031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA17095C74A
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 10:05:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72534285C75
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 08:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF9B713D601;
	Fri, 23 Aug 2024 08:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QOrJEDhp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1850537FF
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 08:05:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724400316; cv=none; b=NwJPOTnLnLhYSzgXSRbroql0yEORqnfWINl3dlkjzBRXnaOsnAIgFqoBMB97zCGK8g5fMMqtqiaw76KZj2oUbsWoW0lYm/EdG9Ih5YfOHBViOi771/c+hAGQzjpDq3Ml9KeeXDwKVPOS+W/ZxeUvLSCol8wkutAfjJH1nWaEdac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724400316; c=relaxed/simple;
	bh=GMkAOynuywmywXQX2Bs6RozyGSGyxk8MJZXuoUeimAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tU5ff621jbbfoChljZfqtGubCNCyn6iImZnpHaJeCoGX7is77aCt1uuSWyqK4RC77b/3za1ZrKgvgo9lwVrKOb9yCV3eO6uxVMwCehfqFHRCBwvj2zUrlz0lJl2Bc/GaDK7ao0Uk+pbs13Jkc5K4AyDv0jXUGQPFMfUNqmp8nTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QOrJEDhp; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5becc379f3fso2094083a12.3
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 01:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724400313; x=1725005113; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sa2OTpQrBESkhM7AyFlojoPsyzzboKrANMMd0+jjBPI=;
        b=QOrJEDhp8GWk+CyK1IGgLLnF/4CzG0wnKm03j/TatFluiYNEnzR7CkInhPFWPSa/qK
         mPdvEsbc806FPIeyaD5VUFeepWk3iA9Qv+9JYkFQ1ocnOZCT6qwitXr8w0hAiU5PUjqi
         beGJ+z2jEPAxz69TUaO13ydRq6IqZQQAZB2C8R8IA/4Zo9Mi609CvCYBJuXAOkeSW5o3
         zfPhUYBPchSxNIkSX10BzvV+dn+/3dg3eLRV/pbMB3BLnbzsi49Y1aBV8KEX/faFyHey
         ahOSFfXAphvGGPwxLKB7nrDnmeC2qAQ0LqjMhIt01qnbFhMhXAKC5awnOWzE8Tby5BBx
         99yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724400313; x=1725005113;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sa2OTpQrBESkhM7AyFlojoPsyzzboKrANMMd0+jjBPI=;
        b=B3zrFE0GnaGZ9v1Nz/iw4mSFMaiAQSsrnxeO0eKUyuWoSMkWVf2NNp1kD4lBzu8bUC
         QXji1ZcMxQNFaqAxTvCOu/KAJGvM6vtCkc7juWWBA0/HWEnfSjvvILD/Mzc0oxz/dPP7
         LXUqa9xqAKMHIKPLMJjXDFtG++1NzoyNrsztHUQgQyAxF11tthnSktpDSbKbPmzzAGY4
         DObCKaYBBxz8B8ntQVyQtb5B6cRxoCcTMp8NxIjs3Ef+yWdczFhsn/jkgVGqIWet5w0I
         c+oYB1dTKWdt40cisHlByKnuMHBOYuHIcuFVmw9XcQ66fOk2ubpJDbyaOC+8U79Ncemt
         ryaA==
X-Forwarded-Encrypted: i=1; AJvYcCUYXwu6Tzoqmcp48c0iUSdF3QX0LBTt34GiBvnmUp57zbd1vDqanMuq2SJRt+knynu7Ydo4jYMey6/O@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4NkSIAkn1O+Mg6wCneDNLyxAttVTGBrBAk1NU5fep11eqtGmr
	bO0SBFkOw31LDoPQZ2dcLcLEP5nW42FoZdZuEz4QDWQuxkZ4+l97du3UYQHvO1Q=
X-Google-Smtp-Source: AGHT+IFLA0foch1GjV3sZ6TDbZaP3PbxJBTxdcJ9LvOUf0bBMIcrMOGIxsjxdcDtskzYa8CA/ntjuA==
X-Received: by 2002:a05:6402:d06:b0:5be:df28:f6e3 with SMTP id 4fb4d7f45d1cf-5c08916a8aamr730964a12.13.1724400312895;
        Fri, 23 Aug 2024 01:05:12 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c0515ab2f1sm1756491a12.97.2024.08.23.01.05.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 01:05:12 -0700 (PDT)
Message-ID: <5f14dc3a-edff-45f3-a162-3f6fd567777f@tuxon.dev>
Date: Fri, 23 Aug 2024 11:05:10 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/16] reset: rzg2l-usbphy-ctrl: Get reset control array
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-8-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB11346900BCCEB55580C2F912086882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB11346900BCCEB55580C2F912086882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Biju,

On 23.08.2024 10:25, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: Claudiu <claudiu.beznea@tuxon.dev>
>> Sent: Thursday, August 22, 2024 4:28 PM
>> Subject: [PATCH 07/16] reset: rzg2l-usbphy-ctrl: Get reset control array
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Before accessing the USB area of the RZ/G3S SoC the PWRRDY bit of the SYS_USB_PWRRDY register need to
>> be cleared. When USB area is not used the PWRRDY bit of the SYS_USB_PWRRDY register need to be set.
>> This register is in the SYSC controller address space and the assert/de-assert of the signal handled
>> by SYSC_USB_PWRRDY was implemented as a reset signal.
>>
>> The USB modules available on the RZ/G3S SoC that need this bit set are:
>> - USB ch0 (supporting host and peripheral mode)
>> - USB ch2 (supporting host mode)
>> - USBPHY control
>>
>> As the USBPHY control is the root device for all the other USB channels (USB ch0, USB ch1) add support
>> to set the PWRRDY for the USB area when initializing the USBPHY control. As this is done though reset
>> signals get the reset array in the USBPHY control driver.
>>
> 
> Comment applicable, if the USB PWRRDY signal is modelled as reset signal.
> 
> There is no user for this patch. The first user is RZ/G3S and is there is no support yet.
> I think you should merge this patch with next one so that there is a user(RZ/G3S)
> for this patch.

I have nothing against to squash it. I was seeing it differently:
- this patch prepares the ground for the addition of RZ/G3S
- the next patch just enables the support for RZ/G3S

It looks to me more modular like this, patches are simpler, easier for
review and each issue is described differently in patch description.

I can do it either ways.


Thank you,
Claudiu Beznea


> Cheers,
> Biju
> 
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>  drivers/reset/reset-rzg2l-usbphy-ctrl.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
>> index 1cd157f4f03b..8b64c12f3bec 100644
>> --- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
>> +++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
>> @@ -132,7 +132,7 @@ static int rzg2l_usbphy_ctrl_probe(struct platform_device *pdev)
>>  	if (IS_ERR(regmap))
>>  		return PTR_ERR(regmap);
>>
>> -	priv->rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
>> +	priv->rstc = devm_reset_control_array_get_exclusive(&pdev->dev);
>>  	if (IS_ERR(priv->rstc))
>>  		return dev_err_probe(dev, PTR_ERR(priv->rstc),
>>  				     "failed to get reset\n");
>> --
>> 2.39.2
> 

