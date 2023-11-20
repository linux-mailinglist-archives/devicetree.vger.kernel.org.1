Return-Path: <devicetree+bounces-17027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD92C7F0EC8
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 10:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A0041C212CF
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 09:16:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 232881097E;
	Mon, 20 Nov 2023 09:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="gBzXWcIE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6266A7
	for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 01:16:42 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4083ac51d8aso14197075e9.2
        for <devicetree@vger.kernel.org>; Mon, 20 Nov 2023 01:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1700471801; x=1701076601; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jj/JcJ1w6jMcLWugwriCsGtGF1LS8H53xH/+54K8aDE=;
        b=gBzXWcIEgBGOKdQjXLAf2xyieH+hH8D8ZHygyUC58emY944uWneG+dqpYgL/0MKlae
         13zyty7q38MPRxtp0/PcFCIShCXO7kJ/xQiJKfJTrYn1VA6I/SXlguGZzv3f2rDlVNhE
         Y+4NvwcOjvHbs7tHn0+iQLwdYyJqsMdmz9b/qSKETvXcCeVrZRsCwJA90a3qM8MWUgmh
         O/uWHVT5E9foH/dicSCxeOQp+Scy04Bun8vGH9mdS4OxGa8NwXfhCGfOMKBWHRiBfsO4
         x1wLdf6UonAR6E9Jeo11v879u8370eFHnkuhE674VuBFj8FdKAE57/0o+JVIlT4nyrrr
         P3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700471801; x=1701076601;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jj/JcJ1w6jMcLWugwriCsGtGF1LS8H53xH/+54K8aDE=;
        b=CeQQaeOHfU/sEahGRtbyUCnsRL3s5Km+LCGK0QBDiap/M6qakO4gGTIhxzikKM+Mv4
         jSI33jOEHMYvD0vGxKDqFJtwZi1V0tEXK2UOoced2vTbghIympH3or6zINeUFXF7zNzd
         dsnC0lLkX/ALItwHJmI5X2M4h3iCIll3So4sZ3YsNceEnOZe64l2TEiZH4aIKDef93ux
         jZhyqBA6Nh42Eeey7EArFCTZuPX1VhCmFanXoHEE1uzrnC/vi4r/qEZewN+IBHo8+rLH
         E4TjtsIQfHvuk2mdiqyV1Qclx4QQyPoKQMWcWU7IeMrli+niKgxLc7L0yz8ESV6gPiKe
         qOEQ==
X-Gm-Message-State: AOJu0YyPznRl9iuYPDXmCfuhK8zf7FOQJfEtXVyvr94Kt0O7ejnmjUpL
	XJGq18iJZGaHOIF/3kJQEatzdR3Q41Uu4F+Uwes=
X-Google-Smtp-Source: AGHT+IFmNtoBSEfrBJtehmlEhkIThZNICwsUjDwLzD9OxRFoGO87Aq+aIatfgr+R8+E6/ugqWeowNw==
X-Received: by 2002:a05:600c:450a:b0:408:386b:1916 with SMTP id t10-20020a05600c450a00b00408386b1916mr5031688wmo.8.1700471801204;
        Mon, 20 Nov 2023 01:16:41 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.183])
        by smtp.gmail.com with ESMTPSA id t13-20020a05600c450d00b004094e565e71sm12752063wmo.23.2023.11.20.01.16.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 01:16:40 -0800 (PST)
Message-ID: <57cb53ea-f49c-475c-9523-9b2b3d4b59e3@tuxon.dev>
Date: Mon, 20 Nov 2023 11:16:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Add IRQ support for ethernet PHY on SAM9X60 boards
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: cristian.birsan@microchip.com
References: <20231109131149.46397-1-mihai.sain@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20231109131149.46397-1-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 09.11.2023 15:11, Mihai Sain wrote:
> Add IRQ support for ethernet PHY on SAM9X60-Curiosity board.
> Add IRQ support for ethernet PHY on SAM9X60-EK board.
> 
> Mihai Sain (2):
>   ARM: dts: at91: sam9x60_curiosity: Add IRQ support for ethernet PHY
>   ARM: dts: at91: sam9x60ek: Add IRQ support for ethernet PHY
> 
>  arch/arm/boot/dts/microchip/at91-sam9x60_curiosity.dts | 3 +++
>  arch/arm/boot/dts/microchip/at91-sam9x60ek.dts         | 3 +++
>  2 files changed, 6 insertions(+)
> 

Applied to at91-dt, thanks!

Please note that I've changed the commits' titles as follows:

s/ARM: dts: at91/ARM: dts: microchip/g

to cope with the new microchip directory for DTSes. Please let me know if
you consider there are any issues with this.

Thank you,
Claudiu Beznea

