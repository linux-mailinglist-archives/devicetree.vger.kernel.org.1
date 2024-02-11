Return-Path: <devicetree+bounces-40502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42264850A09
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 16:39:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 614701C20AE8
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 15:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564285B670;
	Sun, 11 Feb 2024 15:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J/N7OR0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E07C5B5BB
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 15:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707665974; cv=none; b=ut+Cn/5yjICOSZ3Fec2RbVGbEhCv8RKLre6NTDD9GNIk/i29ivOaqRZMY3lYixbCpmK8QcKVhdrBb4yGbIb5DttRT9Idn0g0YQXPe+vhEPaz81XVLSkiQetGpl+unlVry8Nw1Osivm3VvVxJJfiDzf8wx00cKzvRCmXDpLmqku0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707665974; c=relaxed/simple;
	bh=p2OrY5Sntk1BJ2038kpst2b2dqLgitfCh8kdLSqPOSQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oaKsApdJy78SoPBvLqi9DFRBHcqJfv3zCxQbtkRgy293l5rvs7Yhw2aKWe1xfWnTBvlwga9knQ3dpRQg5z5dv/GKSkSRKmHxwqhSqN1PF7HP/Ban1rWBEGroKsHk9FaoypGO3ZPA/2QU7KqNlyO+HHsfe41C40Bj6z7NjyJRZPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J/N7OR0n; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-41090edfeb3so8123005e9.2
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 07:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707665970; x=1708270770; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LSjWqhkf6+v8Y6bhbWzIso8PIeD6RApLquHv7FdvFeA=;
        b=J/N7OR0nOJDIK4fuTzeCakw0ysQm2/L/+d2R5m9hWWg4b63vMHUIxMHNYtrylCS4Vi
         mxD+gltRbqVWhEOOIXN3w0yWZYT9u7XHOMVcyXojS6FKr9wYh0p2/picjahL1SZ+zz5x
         vlahLRYM4AjcQ4y59qp9sxR2SnZ1qpTM3DtbL6QJJxDPzXJ1+APuy9IIqYE5xujlblQy
         MrZAYDhxEG8lvSt0l8TO82yalBpQa6KVJXjn5cNPAguxA+Yfe63AIB0y1rY0V+eeyKru
         FcI7+No4vH5tdf+ydjDGViAta1JZgU+60pILqocs6QFOk21LrmtVtPKkImJ2E62OSM9z
         5S0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707665971; x=1708270771;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LSjWqhkf6+v8Y6bhbWzIso8PIeD6RApLquHv7FdvFeA=;
        b=TL2oSCuWm2EEY4iWN3urBn237ZR6gta89BjITO5Rm4bTtlbhp1x3qQOyGrkTb7bLyu
         LubVbnX0ZALBECfj0Lb2GRV05Pn/rgWHOqxk7Dqi2NRmnk06oGj2n2BkU8FDKaQJEh21
         HaKXj0Tc032yHWQN+yHcjetAC6m60fm7XEc6Ey8Cz0c0G0TBR2duM/gphn0Aw34pGco7
         zGL1nc8I+6JIAzMjE6CaHm+EVV1lD39xixxFrY70Cpf3Eme4ckTLq/W3LOyRptlfxFmC
         8V60QkSSQEX9FMd+tH3iOiQ904P1kBrp138FxGyyxt62syFt9yXMM4d/qJO3I6B3X8T5
         yrPA==
X-Forwarded-Encrypted: i=1; AJvYcCVvwKDpp7GWvad8bhnU6BZkVa36P1/gbpSVRWPYJI3wRyuFDU+kr3vrxnSL7jroOCdNlzMQ4j3Yp/9ixqZuXZze3WkZKz/YntSUYg==
X-Gm-Message-State: AOJu0YziQxT3BgIBbC1Fj8AF/0XP6cWuvK6aD9Eo1m6Mh+AisMz3Kkc/
	7UcNokxcNqNKtGLvucClyAn2P22IrsPoAJg3kcBriY8HSRIcIYrreu7jY2dgYwc=
X-Google-Smtp-Source: AGHT+IE0YvrJ0dkHWV5/x42Grnb0S2MrQ1HrVcFZVtPCnQpfmV+fyVtfU8EhEvpV3gyZpQFNGt7PCQ==
X-Received: by 2002:a05:600c:46c9:b0:40f:ddb6:a63b with SMTP id q9-20020a05600c46c900b0040fddb6a63bmr3994127wmo.24.1707665970669;
        Sun, 11 Feb 2024 07:39:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVsiyEI2Z9Pp+hRaOVLqjtrReTL/kAEY0qZqvMv8xMFoSkdvOgA5uPakOMQdkI838j5lgF+VOkJDWJs6RDTAYCIRA0hxCDsp718P47Jh5FNGbDkQ9+fJognD/8I8Hu+IDr/iuL17WpICceMD3dGsFcIACos/LyPehOOIao9Ljw9lP3yGwZvJnjZHky3yzQiBb03MBMR0DBwNSG36OC/aJTLEh8bYNYEDWzDcONyI9Ip07hB48an9N39G7ns1TXK2m6WZu+3IpeuHnyZWJm3OdKfTPbYqxAdFcDAwIO3wCRISbSkupCOKCV1wDTxa1+NB5m/j5ZvJcBAThFfFwromzvjuOtU0D/TaJqpCOFMZ7hkSz154MnqZJ2yZjl6+RcjszsfXsII34E3ktIcj9k3vGcXD9tqHUgOQ7tI++H+Dfq8p1qZC706Nv7Ejvlu/+QRoGe/O9yihtK02dCmnFbW0b1Ry2twEuQ1ohTfTeSm9O9RXfdcoEVTwGObo+cQ2Y2H80+pbIqg6a1a
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id n12-20020a05600c500c00b004109a5ccd7fsm3885151wmr.47.2024.02.11.07.39.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Feb 2024 07:39:30 -0800 (PST)
Message-ID: <69679d9a-02e9-498f-8f5a-7c029059a8c1@linaro.org>
Date: Sun, 11 Feb 2024 16:39:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] dt-bindings: fpga: xlnx,fpga-slave-serial: rename
 gpios
To: Charles Perry <charles.perry@savoirfairelinux.com>, mdf@kernel.org
Cc: avandiver@markem-imaje.com, bcody@markem-imaje.com,
 Wu Hao <hao.wu@intel.com>, Xu Yilun <yilun.xu@intel.com>,
 Tom Rix <trix@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Michal Simek <michal.simek@amd.com>,
 kishore Manne <nava.kishore.manne@amd.com>, linux-fpga@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240207180142.79625-1-charles.perry@savoirfairelinux.com>
 <20240207180142.79625-3-charles.perry@savoirfairelinux.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240207180142.79625-3-charles.perry@savoirfairelinux.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/02/2024 19:01, Charles Perry wrote:
> By convention, gpio consumer names should not contain underscores
> (prog_b here) and shouldn't contain active low suffixes (-b here).
> 
> Signed-off-by: Charles Perry <charles.perry@savoirfairelinux.com>
> ---
>  .../bindings/fpga/xlnx,fpga-slave-serial.yaml        | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/fpga/xlnx,fpga-slave-serial.yaml b/Documentation/devicetree/bindings/fpga/xlnx,fpga-slave-serial.yaml
> index 614d86ad825f3..650a4d8792b64 100644
> --- a/Documentation/devicetree/bindings/fpga/xlnx,fpga-slave-serial.yaml
> +++ b/Documentation/devicetree/bindings/fpga/xlnx,fpga-slave-serial.yaml
> @@ -36,7 +36,7 @@ properties:
>    reg:
>      maxItems: 1
>  
> -  prog_b-gpios:
> +  prog-gpios:

Please deprecate old property and add allOf excluding the usage of both.
Driver still parses old property, so we should have it documented.

https://lore.kernel.org/all/20230118163208.GA117919-robh@kernel.org/

Best regards,
Krzysztof


