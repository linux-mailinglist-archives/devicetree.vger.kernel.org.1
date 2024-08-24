Return-Path: <devicetree+bounces-96403-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CC795DE6A
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 16:33:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 607F12811C6
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 14:33:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6133178396;
	Sat, 24 Aug 2024 14:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="HK+yotmx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEEE176AC7
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 14:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724509993; cv=none; b=GR28v4YUwImBd2rtaOtQ16orz4IAUcwBI8DJdRJCjmRpnPolfoNguOXeSFwP/QNqeaaoLN1X+3d6bYTN1PI1Q16fEZAtrVX1xx4h5JVtkD6slyHhhUFVOSPu73Iit9yAkMk/ahG0JYkancl0F6Pri8Q1I8xUGLBLhdQyOmbdohU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724509993; c=relaxed/simple;
	bh=yFQCbvX0XcyvWVOhr7pamDt4vkarBM3YVS5m8u2MF0w=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=hYgZJTXjqfPaZ3PJgUFAUz0GJfdBvzwt1mMIHgljkIH+m9GoEl4aYULU05jMySl4BigL05CT+Tmw4QEeLIuh3At/bUiYkiB7Ap0Lee6yTx1FBCfr/TXwFk6Jev5KrIUCxfpbxPrdIPb6wAAM+VlQ021V7a5p43WgLyt5OvmV/SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=HK+yotmx; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a86b46c4831so78807466b.1
        for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 07:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724509990; x=1725114790; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fd/72EJuAddMqMbdQhsp51bmCGOPboWNNARyaAHGURc=;
        b=HK+yotmx+ShibF0nOik9pGoUSmJQWfLKWEpW0XOAjgxJE3FovfByn6hhbS1ZRNjD08
         Sgsr1J29PAgDbeaEexsP7p8dLVylGeI6cao1TqOUqIiS57CX9GOQib8looDSJ511Dcj7
         WhA1RnTCYalwgWgd1L3LTZKG2T82DPQwFL5jPgq1j2rjxRjXK3RUUSusaWlPCTVfXgPa
         FuB7xwgBX1qVa02LHDaX+HmtJEjK9CP2k+dDSgaXo5x9i9+hwDoxG1hY//2R+zUmxBZH
         PacVaOfCtgL+0CuPPpHOxjFiw5HNWVOVr6wwXzaok3xvNryP2W+2U8H3uWN2a8ItX2Ww
         Ka9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724509990; x=1725114790;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fd/72EJuAddMqMbdQhsp51bmCGOPboWNNARyaAHGURc=;
        b=DtPNsdBu2HGdsLgMLnzDnaIJUuamqr1ABsiEJzapgMZT0BbLRif8dfvhvbnpfkacLi
         NVewvhb6iQkUlALP9v75IQG0tgEZPr563eM8+dGUULxtseTmdR9LIWdivNHGPWF9uIzq
         1RrrsbI3BlJhyb0oinkX62ptwymVWrb2ATWfYODqIZNYvLbLNVmaTaybABge6GWC1tNA
         w3YVx3lGJv0qpEuyMLhhYehSVTEo06wz+AU0uENuuZICvgHKK4cJ6a6yipodd9f7IPz1
         aDtisTO/LT5Pd1+ZEmFO9BJZZIIwhI1GmB6t66+P7VOxuucdGLkxjMsQpDkSx2d8Ps4q
         NLqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUL83vsYuzkxF2/JOjPo3ArCS52wcae4LgfvX0jyCOv4faoKTaa+1oKPrmNd6R+5h9Ol/WBhWzY7q11@vger.kernel.org
X-Gm-Message-State: AOJu0YzaE65oQ/iFpWHgZJms9OqEAZub+gwfGbLE16gEhQca/uZg+RU6
	5LuzqBjEiKaKMhNSfTOEIAVq3/1/N0Lazwb2pgGeEXZCqZTqBhsQKk5mPoXImPo=
X-Google-Smtp-Source: AGHT+IGHG+LC4JSk3tMfgTN0aiqTIL7qu/eY8tbLwuBjcjxZk37wyzR36/JLtw8vSOtpjZPcEkjh5w==
X-Received: by 2002:a17:907:7ea5:b0:a7a:aa35:408a with SMTP id a640c23a62f3a-a86a52b15ddmr468444866b.25.1724509990536;
        Sat, 24 Aug 2024 07:33:10 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f222b23sm413681866b.19.2024.08.24.07.33.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2024 07:33:10 -0700 (PDT)
Message-ID: <d0d31314-45dd-4669-96fd-66603d2666f7@tuxon.dev>
Date: Sat, 24 Aug 2024 17:33:08 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] ARM: dts: microchip: sam9x60: Remove additional
 compatible string from GPIO node
Content-Language: en-US
To: Manikandan Muralidharan <manikandan.m@microchip.com>,
 linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240814061315.112564-1-manikandan.m@microchip.com>
 <20240814061315.112564-4-manikandan.m@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240814061315.112564-4-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14.08.2024 09:13, Manikandan Muralidharan wrote:
> The driver data specific to each pinctrl GPIO bank compatible nodes are not
> the same and declaring additional compatible string as fallback has no
> specific purpose, hence, removing the "atmel,at91sam9x5-gpio" compatible from
> sam9x60 SoC DT.
> 
> Note: The at91 pinctrl driver uses "atmel,at91rm9200-gpio" compatible string
> to find the number of active GPIO banks and identify the pinmux nodes.It
> should used as a constant across all DT for GPIO node banks that uses PIO3
> based pinctrl driver
> 
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>

Applied to at91-dt, thanks!

