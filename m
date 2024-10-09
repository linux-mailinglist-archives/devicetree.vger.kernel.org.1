Return-Path: <devicetree+bounces-109337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A6566996157
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 09:47:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DD4C1F21A23
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 07:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C19F6185B54;
	Wed,  9 Oct 2024 07:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="cHYT4Fab"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC08183CC2
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 07:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728460020; cv=none; b=S3a5CokpQ6F4lJb4a+0nF5fCnLqs35VEwT0UnfTwPM2IDCsnq2CfJm6ysU793CpDmuJouW2DxOs3dyv3U7qbmlrVtTKCJbdiA0VyRa2LhTSDK4xQwr+dBlo2uOZXduA6x1Ya2dpaH+ZB+E+FnxMMK15n260O5n4ZXOBpg8hW2sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728460020; c=relaxed/simple;
	bh=CJ1mmlRnOVbL7bj7Jzo5Jaxx5QSu/mjo7x9FVjv19I4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L/sQIFyeA2/mMZUCSio0yZMa6OYWL7+fbaXvNFYWWcv3ELG3LksOfomTtQ40CZqJX7yEJ/BL+bm38P9TbCYlBaiIy1QMDG3lQpM79ICiV5G4kVax8Fx+fRGa3H1B8AmwpQXVgpzGmjliu34Eqcv0ThR4qUPeeAUT5FRqaoHP2CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=cHYT4Fab; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5c42f406e29so8411474a12.2
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 00:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1728460016; x=1729064816; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VPaYnchsefJ9+jf5dO/i399ASp7UF5Mjoo2vYC0OZYE=;
        b=cHYT4FabK7HFKyhGAH6CSiFMNIr/D+OAuSN/bGSj2yr57o/rJvZH5xlKvU+X/wihsf
         7ERUShCySM/eLvIlVT7v0wqLqWAXJxjeICF45q9I5n7LmMa4q9nte2VQjj4GMSwqzSdA
         ZVAjltRGoITaFaqJvmOqMaWYmnNMlRMwAFWGK6mR0kjRCDLpbVhEplBhhxwg/xAKx1Ql
         JqfUzSojjXO/X+P7eWTrq9cNdJOGVYIt9lRsvnOJrmWxwQIkFRXcq8pnneP+iDJ+7du+
         05PMf8nwo67Ih1J+3BMQ2ugdFjan7EanSyPROZT7qDtmshw90Ae9r5i3fe3nW3i2CFVK
         Nvkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728460016; x=1729064816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VPaYnchsefJ9+jf5dO/i399ASp7UF5Mjoo2vYC0OZYE=;
        b=mwSIO6zSi82ym0uc5YPzWTYFRhTG2ju/7od8yXdhHHs5q+vhf/Zo4c+UCYuqTkhRzV
         zFBywaXHzE3c3M+MgL+3OqB1hDr+Tz5EsS6Dm3sx+PEAzwTIED5RijW5VHXLEfFxKbVb
         E2M0q9DZO4+BNBXB6LBD7znRlUcifDmHW4ng2DUCs7oaXaOOlwf28dCuROjZlILEwA3L
         B/E/iCML4B/y0SBNX9JXHWybm3lcn/qHN79lG2jbM5+uvFgEo3Kfd71HTw2KNlWr+FOP
         23/MOLfE9KMjp64KdpkLFFld6EsXUIw6xa9lnu2hT8E+129BsXS3vC2g+PS8ttWVVVf3
         ++tw==
X-Forwarded-Encrypted: i=1; AJvYcCVSrxicZ7rsdrUsJU9kZC4lCYqRAso8HOMBzCTOQHVJ4APk17m2GBUkObLjxljsEE0XPQNb9QgJzdAc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7yGKuaC/PrrGggGyWVVgnTQqldEqBVTDQGaWc2xHsN8bNo0Rb
	RYqpBkdrDiNkTcQC4AkUNxZMarSAZb7a57r28hEppCJU4ggycd3iyJSAxUSVwOM=
X-Google-Smtp-Source: AGHT+IFLYpaVa4myK51F5sFrBbzP/gt1vP62hMUZMd44RrtvoA2V5gAZwGoafijwBLPQyY4YuNC+wQ==
X-Received: by 2002:a05:6402:1d53:b0:5c9:1c16:cbff with SMTP id 4fb4d7f45d1cf-5c91d5ac705mr1339513a12.14.1728460016302;
        Wed, 09 Oct 2024 00:46:56 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.23])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c8e05eb5f8sm5054521a12.60.2024.10.09.00.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2024 00:46:55 -0700 (PDT)
Message-ID: <fbe4d99f-92fc-4731-96a8-74b38dace006@tuxon.dev>
Date: Wed, 9 Oct 2024 10:46:53 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/20] arm64: dts: renesas: rzg3s-smarc: Use
 interrupts-extended for gpio-keys
Content-Language: en-US
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
References: <cover.1728045620.git.geert+renesas@glider.be>
 <6214cd8ed068e3fc60a7b972093e4d99cdc0be1a.1728045620.git.geert+renesas@glider.be>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <6214cd8ed068e3fc60a7b972093e4d99cdc0be1a.1728045620.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04.10.2024 15:53, Geert Uytterhoeven wrote:
> Use the more concise interrupts-extended property to fully describe the
> interrupts.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Tested-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

> ---
>  arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> index 7945d44e6ee159f4..4509151344c430de 100644
> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> @@ -20,8 +20,7 @@ keys {
>  		compatible = "gpio-keys";
>  
>  		key-1 {
> -			interrupts = <RZG2L_GPIO(18, 0) IRQ_TYPE_EDGE_FALLING>;
> -			interrupt-parent = <&pinctrl>;
> +			interrupts-extended = <&pinctrl RZG2L_GPIO(18, 0) IRQ_TYPE_EDGE_FALLING>;
>  			linux,code = <KEY_1>;
>  			label = "USER_SW1";
>  			wakeup-source;
> @@ -29,8 +28,7 @@ key-1 {
>  		};
>  
>  		key-2 {
> -			interrupts = <RZG2L_GPIO(0, 1) IRQ_TYPE_EDGE_FALLING>;
> -			interrupt-parent = <&pinctrl>;
> +			interrupts-extended = <&pinctrl RZG2L_GPIO(0, 1) IRQ_TYPE_EDGE_FALLING>;
>  			linux,code = <KEY_2>;
>  			label = "USER_SW2";
>  			wakeup-source;
> @@ -38,8 +36,7 @@ key-2 {
>  		};
>  
>  		key-3 {
> -			interrupts = <RZG2L_GPIO(0, 3) IRQ_TYPE_EDGE_FALLING>;
> -			interrupt-parent = <&pinctrl>;
> +			interrupts-extended = <&pinctrl RZG2L_GPIO(0, 3) IRQ_TYPE_EDGE_FALLING>;
>  			linux,code = <KEY_3>;
>  			label = "USER_SW3";
>  			wakeup-source;

