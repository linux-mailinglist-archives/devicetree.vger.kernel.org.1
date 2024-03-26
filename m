Return-Path: <devicetree+bounces-53387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3723388C182
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 13:01:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFF0A2E89CE
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 12:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6380A70CCB;
	Tue, 26 Mar 2024 12:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u+WfDw0O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6D96CDD4
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 12:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711454477; cv=none; b=PkMIxGNG2sporgrbky+XDRX3QglFdViyJygCpzo1HBfOfocQJhnePPNU8l3fNXtsYBrib2myB8BTQIEXi1rUNqwlkUYM459IkHYzygwF2KZhPXtRhdemxgEA2HXP8XyojTT190DFSijKJ/nvHghFBRv/ta/aBpfeutNMnsyCsGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711454477; c=relaxed/simple;
	bh=jQyy4m3PLA2HetIhiZ62O7v1zSP8BZmocrAIzP5VutI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oxDbs8Ps+dKe1Pgyd6J6lWfK6tdwBezQB4Ru/TjA+8d2fqF4rAXY/od+sjAMu0fojuqtdbiTX9rdXB3hROpqasTVmB+eh1tFLVXcTt+cRAcfxfwM5+AEA/1gHdOSuVNAVMC41e92QruoqB+iL74MM0p+7G4tZ9giAqlG5zy/m6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u+WfDw0O; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a45f257b81fso629647466b.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 05:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711454474; x=1712059274; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=26TgMjC9ISbX/B2eQYypNpxkY1cb/DAdYOStTkv1Euo=;
        b=u+WfDw0OE1chkMZP7QSdkaT2JhRtfERQomOR0B94bNgpDJK8+z1XYfm5RHs6WN5rfz
         pOcQq+hNdOpPx+SymicwXjievhfdajQgCsRqRNDfjBcz+AzYt0WoXQGxrX0DZ0ndsdYh
         rueMBr3vIafaf81lckeF4lfLfWO2OBzhuBxwEVvFDSPZ5EGknvYeZOSyA5EFib8NBdvZ
         vIXp1ds++3tzW3nCb0r4JgwZ6P0/aTTk0vhu0kOIfGd/JhraIJdWaRGtr3ZKXQ7TqCOo
         SzIWP59/ZoGggMV+n17PTtlZBgyJ6d0pXBm5fXmFF1I30DEbjMpabDlo+zmLQH12TwYR
         D5oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711454474; x=1712059274;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=26TgMjC9ISbX/B2eQYypNpxkY1cb/DAdYOStTkv1Euo=;
        b=tutcn2zKJtvYaWbypEHYbBluZfu1UMuZNn9hMZoWKswqnaRvIBnVzYWxFYWAO2SG0S
         3XVtInYaTNcp66uWiky/vjRv048LCqdbk1mO4xhx2j/T8xLglvInmvRvJU/CwJA/5Ehw
         fRhY9COh+mODqyw5gb0Qpus5TyWSXOfJptBfTyZ2acKz8ThIV/xYinU9jtA5wmHRJjNS
         XNVmoPar2wu3gvhpawja6aoC6F8WurcEjVuIUeIt8D30M3TL3eb0SoxX4xk+UvdoTzUY
         GG+a895zRsp4gzGYUsQclwOhGP9BAD1hOPTmfrO7noBTe9f0ddZyq5mW4aY7MIpah8Qi
         ql9Q==
X-Gm-Message-State: AOJu0YxoXYkCzZwIrXSh9h1jUnfquj7QrAODFxNX0yx17lD/1W7GdudZ
	B97EmKXG5U9NwmZ18H8AtQi+FyPjtIfrqM23xkT6MzwcAx1De+O7PH0HwfPeLYpKi7dziALK+Cv
	a
X-Google-Smtp-Source: AGHT+IGUtUTKJZkdgy0ufc/Ip0X8T7/lVbSgO3AG20/yiaSCORiggdUT17v1PnLfIo499wtiA4CT+Q==
X-Received: by 2002:a17:906:1401:b0:a47:61d:7d38 with SMTP id p1-20020a170906140100b00a47061d7d38mr7894020ejc.0.1711454473715;
        Tue, 26 Mar 2024 05:01:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id g17-20020a170906539100b00a4b27cd1c8esm1569720ejo.120.2024.03.26.05.01.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 05:01:13 -0700 (PDT)
Message-ID: <b311f01b-c4c4-46eb-b6ac-7250f978da61@linaro.org>
Date: Tue, 26 Mar 2024 13:01:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: Add device tree source for the Au-Zone
 Maivin Starter Kit
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, Trevor Zaharichuk
 <trevor@au-zone.com>, Greg Lytle <greg@au-zone.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240325203245.31660-1-laurent.pinchart@ideasonboard.com>
 <20240325203245.31660-6-laurent.pinchart@ideasonboard.com>
 <8fa53bf5-2467-4d21-9ac9-2824c79a0187@linaro.org>
 <20240326091100.GA17454@pendragon.ideasonboard.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240326091100.GA17454@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/03/2024 10:11, Laurent Pinchart wrote:
> Hi Krzysztof,
> 
> On Tue, Mar 26, 2024 at 08:12:45AM +0100, Krzysztof Kozlowski wrote:
>> On 25/03/2024 21:32, Laurent Pinchart wrote:
>>> The Maivin board is an AI vision starter kit sold by Au-Zone
>>> Technologies, developed in collaboration with Toradex and Vision
>>> Components. It is based on a Toradex Verdin i.MX8MP SoM.
>>>
>>> Add a device tree that covers the base set the peripherals found on the
>>> board:
>>
>> Please use subject prefixes matching the subsystem. You can get them for
>> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
>> your patch is touching.
>> And drop redundant parts.
>> arm64: dts: imx8mp-maivin: Add Au-Zone Maivin Starter Kit board
> 
> Including in the command line the name of the dts that is being added
> doesn't seem to be a very common practice. See for instance
> 
> 6d382d51d979 arm64: dts: freescale: Add SKOV IMX8MP CPU revB board
> 
> I can use
> 
> arm64: dts: freescale Add Au-Zone Maivin Starter Kit
> 
> if you prefer.

It's also fine (plus missing : after freescale).

Best regards,
Krzysztof


