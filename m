Return-Path: <devicetree+bounces-34586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D57BF83A441
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:38:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D686287046
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 315951775A;
	Wed, 24 Jan 2024 08:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="krn/OveB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7081773D
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 08:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706085512; cv=none; b=MBM+pgbla268BGTejLDeyx2mCKVRp+eVXCm3+OOazNjiZ2UDQVrJ8Fi2rxKmM4Xv+lSMaEbkLTl9fS01AXUf5BBNe4VQVkP7s6WUEp7Qvw8tlimW1/dPsQnYjw51HUe4LCp8d/AACoDmAZS/U0cHwYFE/Wd8iYZZ9vagCFOC7lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706085512; c=relaxed/simple;
	bh=jlz6yDARmYRfIwcJEftzYZRs+rGjhCsFQhkX+BsxAu4=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=RZGPaJs+44PQNhbhLRqTDxncBdpPA0gOsW1JN1U9nu+A5bBstzBO+kTtOzMiNj1IZ7AMq6/FqcaUbVqhNGZ2YmC7YCKguABCuIFE+ZFTQbvfOAe/hVdlf2FC7T36/2rsS+ali5710Wa/Zp963kMVbTDgSNXOkY0wQjRn+llnYcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=krn/OveB; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-33924df7245so3926202f8f.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 00:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1706085507; x=1706690307; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=h1FUWfiTuw8iaOnUVAaUBuSlg9Mxe6vb31eu30jmGPc=;
        b=krn/OveBgwleslyeOJOyOKtmVAp4dAQsEM5wZawFiBK5IPvQW57QAd+7dcwE96kJKN
         HbOsxi8SWTGY+61VE2s3PeteyevJKeyupkzERqr8sCHIJNQB39zTM7tySOXKbMp6lY5W
         4bZo3t5Z1axLrnTzVc13n9QDvS38kdwig3gO5r/qPcdbSxLRl/lBc6z2Fk2Pf3wB9tzG
         Y4glRu6mVW1cVa0Gg42LctbGJ57p/JGP82FH6h6aSPSeQzoD5DR0lIts2BOgOS+IvGOf
         7wzbXaxc+S7GF4eeDdLM2nrtK1xWz9hEiKZRWb5HIj3it7rpQMO0zSf0B655TkJOMErr
         SmDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706085507; x=1706690307;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h1FUWfiTuw8iaOnUVAaUBuSlg9Mxe6vb31eu30jmGPc=;
        b=lb/xnJJsuV9aqLIjxB6OuVGUT8AEOg85436r5/joI2V16pJqDNGTfC3igQtD9iD1aZ
         3NkFpdb9FNNsFVN2Leo4xZsuI8Gaq3VZ8z3jeC6yei69U0NcY2uz4emS+k/7UC8tltuV
         TVP0iQBUsrn0gHwS8J3eXfqm4zBI6DfGFNuW2TSZ+NCLsVnwulSKIfxwmN6jhBSYgXk9
         BFdFkmK973jnSXHuRdnX8kjI6ok5xgIu7AzZU2tskG0laOuCK/QiS89yO3OA+h/zZC2q
         4FNkiNfj1ZlKIIszPRnoOFzPrTWsBLpCET8mHavoZwmmUCGJ9RUYF2bH7KTXlXG+Xqe+
         rTog==
X-Gm-Message-State: AOJu0YyVmIiDyaTzPJzHd/4HOXBW1QxNxaMxx9rVzktSTZAZSd4LGFvW
	RMDOthTw/eGfK4ebyXSwAS3Zes1GgkPEzVD5ct9l+XPmIX5hgElGUegpeGvE62I=
X-Google-Smtp-Source: AGHT+IHWDnX0w1SzsoI8DA0xPySEzo5xJtqS7XZt2YHYZTHRfUc5D0hbaLhIUuqtBbzsb1EykQ2hjw==
X-Received: by 2002:a5d:6d52:0:b0:337:bcec:d45e with SMTP id k18-20020a5d6d52000000b00337bcecd45emr300741wri.35.1706085507028;
        Wed, 24 Jan 2024 00:38:27 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d8b6:17b6:386f:c67b])
        by smtp.gmail.com with ESMTPSA id df10-20020a5d5b8a000000b0033947d7651asm2936415wrb.5.2024.01.24.00.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 00:38:26 -0800 (PST)
References: <20240123165831.970023-1-avromanov@salutedevices.com>
 <20240123165831.970023-3-avromanov@salutedevices.com>
User-agent: mu4e 1.10.8; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Alexey Romanov <avromanov@salutedevices.com>
Cc: neil.armstrong@linaro.org, clabbe@baylibre.com,
 herbert@gondor.apana.org.au, davem@davemloft.net, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@salutedevices.com
Subject: Re: [PATCH v2 02/20] drivers: crypto: meson: make CLK controller
 optional
Date: Wed, 24 Jan 2024 09:28:00 +0100
In-reply-to: <20240123165831.970023-3-avromanov@salutedevices.com>
Message-ID: <1j34unxh1a.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Tue 23 Jan 2024 at 19:58, Alexey Romanov <avromanov@salutedevices.com> wrote:

> Not all Amlogic SoC's uses CLK controller.

That's fairly short description and very likely to be wrong.

Of all the SoCs I have seen mentionned in the bindings, they all have clock
"controllers"

I'd assume you meant "this crypto ip does not take a clock input on some
SoCs", correct ?

If that is what you mean, giving the list of the SoCs which - according
to you - do or don't take a clock ip input would be helpful.

>
> Signed-off-by: Alexey Romanov <avromanov@salutedevices.com>
> ---
>  drivers/crypto/amlogic/amlogic-gxl-core.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/crypto/amlogic/amlogic-gxl-core.c b/drivers/crypto/amlogic/amlogic-gxl-core.c
> index 35ec64df5b3a..a58644be76e9 100644
> --- a/drivers/crypto/amlogic/amlogic-gxl-core.c
> +++ b/drivers/crypto/amlogic/amlogic-gxl-core.c
> @@ -263,16 +263,10 @@ static int meson_crypto_probe(struct platform_device *pdev)
>  		dev_err(&pdev->dev, "Cannot request MMIO err=%d\n", err);
>  		return err;
>  	}
> -	mc->busclk = devm_clk_get(&pdev->dev, "blkmv");
> +	mc->busclk = devm_clk_get_optional_enabled(&pdev->dev, "blkmv");

Assuming some SoC actually don't have an input clock (I'm not
convinced), the clock still ain't optional for the ones which do.

Use the compatible to properly claim the ressource (or not) 

>  	if (IS_ERR(mc->busclk)) {
>  		err = PTR_ERR(mc->busclk);
> -		dev_err(&pdev->dev, "Cannot get core clock err=%d\n", err);
> -		return err;
> -	}
> -
> -	err = clk_prepare_enable(mc->busclk);
> -	if (err != 0) {
> -		dev_err(&pdev->dev, "Cannot prepare_enable busclk\n");
> +		dev_err(&pdev->dev, "Cannot get and enable core clock err=%d\n", err);
>  		return err;
>  	}
>  
> @@ -300,7 +294,6 @@ static int meson_crypto_probe(struct platform_device *pdev)
>  	meson_unregister_algs(mc);
>  error_flow:
>  	meson_free_chanlist(mc, mc->flow_cnt - 1);
> -	clk_disable_unprepare(mc->busclk);
>  	return err;
>  }


-- 
Jerome

