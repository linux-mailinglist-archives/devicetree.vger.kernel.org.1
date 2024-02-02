Return-Path: <devicetree+bounces-37942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CF749846E79
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 11:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F300A1C20C01
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 10:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C149D13BE8D;
	Fri,  2 Feb 2024 10:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BWP0PyfI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B4880040
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706871535; cv=none; b=b5x5477Js7b6QlS0/3vP5x+inaqvO8mXpHwbL/CuwwM5aw6JnilnNvVi5niobnQwRBsJFlzWPk4X1nVJla31Dg2TAj+afftmHM3/HEIk/Q65XmldWn9V7MtpMHy7A+Hem97FvAoi2a50SdsY2yGDjJkHrCX+fZjNvcH/yCc0OSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706871535; c=relaxed/simple;
	bh=KKLOo2UMVr4G+/v1i5f0jDik+0v3nO4WaF3+RQvnxgk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W4pvAXKiL/4Jn0k1OaW7lfjE1QvJq0g7DnKDQxuejWp+xd8sq/+ngeCXAxbZ88gSyHJh1kE4VK7fby6jK+nxITAvzp4H/cSKUgoZZWQYbPdCDh9IhR9v0ujx9cQ+hsnY9MlAdSbKQHw3qP4koqtY1aWIqtX1VxH2yHUDu0fizKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BWP0PyfI; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a34c5ca2537so281169466b.0
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 02:58:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706871532; x=1707476332; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3mZJtsuUhpLgRm6K29/sbH1fz9ZV/gafRus3vx/CI0U=;
        b=BWP0PyfIMlupmMUxIQkE83AV5euIbKhmplZOt/PLH21iiDWDg6gjE+KXxpO9ZPEVip
         DrRZFpUChYPFCLSe+3/fLgMv+LjWgBlrVOtcSZ/9Hua0n+CueSxtCqR40w0lmHOgyEOl
         r/4kTUE76fiTFwcuW/NaD7BJIIfbUDwCCed6F3WBEdUIGYHAAbXqdKWcEHnpm2j2TdZD
         cXDn4NJ+XfmByPz7WFnzgdT+FYvksL9MD2jkytfL2kS+sLa4GUIzj/Q/aNm6XE05oiDT
         KGdU26nKJoMSUIT5Lnkw+3ITHI8fkKcS/7WlAiCDUImANVupvY0uRztfGSyoNMdwSrbK
         ekGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706871532; x=1707476332;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3mZJtsuUhpLgRm6K29/sbH1fz9ZV/gafRus3vx/CI0U=;
        b=IX1JwrDC1ZFlMXDYhnlmpBg6IhPH2FF/6lJf2s4FWk42pmaW9RimfUTUmF4we1fpY+
         QBeHA7p90Zfyvi0g0UcSmS8Z54utFinVTomeHfTfcEr67FFrfwfez1zBqJvewEBuVYsm
         gxDBSGrG900KoQjuQkdGYHvOculuw9d+zlMiEBGjHTWSDQcFY4Z6hmmAHmLgIXEp3EHt
         K6G10UpSzzyy6QGoG+zlR2QuSufwSeBPpQ+Kep3UCwe4vTGN4mz7qYnaIVF8Q/FcU/+s
         WBGN/3Ew0nLHkwpFz12MFt4/1+3p65P564W7kN1UBJ6vBvWIv4dYWp188P8HeKMt0sVT
         fuqg==
X-Gm-Message-State: AOJu0YzjeOuck691eBRQFJQCxYkIqdkY6jKAEMtjNafC5IdZ9tuUUyRo
	AJCrKzc+XNRmDENK4Af7lb87Gy4/3YYwko5/RvwLU8bWUaoLlAf4SVl8f5g1YcU=
X-Google-Smtp-Source: AGHT+IGevUIZrZ67IIM3v0mt+LvqP19kVFsU543KbhAyc9CyE5vhvyCpmw1xg7ldWGRg72KeGDUEyQ==
X-Received: by 2002:a17:906:13d0:b0:a36:7c26:b6f with SMTP id g16-20020a17090613d000b00a367c260b6fmr1207765ejc.52.1706871532058;
        Fri, 02 Feb 2024 02:58:52 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVt2KyYQUcxu5hGuL8mAgnHpyBZ4Ykp6sd9qwUmLz+wUZLMMlAQbdCzsDqdz1ATkmTx1IEEr4ogDnUneUc0BGq4RyhSWyrgqQWz7id4dzDkmUcLf3A5nSvMNa3W7GMDdJFb0ouuoTa+Ib59CesR6S85idpzru6SJooTTqTicY9E
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id vo3-20020a170907a80300b00a36fee1350dsm610865ejc.130.2024.02.02.02.58.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Feb 2024 02:58:51 -0800 (PST)
Message-ID: <e337bfdb-34dd-428f-b0c5-defd93b24822@linaro.org>
Date: Fri, 2 Feb 2024 11:58:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm: topology: Fix missing clock-frequency
 property warning
Content-Language: en-US
To: Stefan Wiehler <stefan.wiehler@nokia.com>,
 Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20240201123605.3037829-2-stefan.wiehler@nokia.com>
 <dfccb849-67b6-489b-8e83-3df1f9b29877@linaro.org>
 <9da01fb1-9bab-436b-af49-783e44821b26@nokia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <9da01fb1-9bab-436b-af49-783e44821b26@nokia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/02/2024 16:03, Stefan Wiehler wrote:
>> Does this mean the /cpus property is like a default for when a CPU node
>> doesn't specify the clock frequency, or does it mean that the /cpus
>> property should only exist when all the values for each CPU are
>> identical and thus the individual CPU node clock frequency should
>> not be specified.
> 
> Good question, the device tree specification in Section 3.7 [1] says:
> 
>  > The /cpus node may contain properties that are common across cpu
> nodes. See Section 3.8 for details.
> 
> And in Section 3.8 [2]:
> 
>  > Properties that have identical values across cpu nodes may be placed
>  > in the /cpus node instead. A client program must first examine a
>  > specific cpu node, but if an expected property is not found then it
>  > should look at the parent /cpus node. This results in a less verbose
>  > representation of properties which are identical across all CPUs.
> 
> So I think it is pretty clear that it should only be used for 
> common/identical values.
> 
>> Aren't you adding new property? Is it already documented in the
>> bindings? After a quick look I think this is not documented.
> 
> You are right, clock-frequency is not mentioned neither in arm/cpus.yaml 
> nor in any other <arch>/cpus.yaml binding, but the DT spec has it as a 
> required property [3]. Should I add clock-frequency to all 
> <arch>/cpus.yaml bindings? Only the ARM one explicitly mentions 
> following the DT spec.

It should go to dtschema. dtschema cpu.yaml has it, so you need to
propose such to cpus.yaml, probably you could experiment with:
not:
  - required:
      - clock-frequency
  - patternProperties:
      cpu@....
        - required:
            - clock-frequency

Anyway, you cannot just keep adding some OF properties to the code
without documenting them.

Best regards,
Krzysztof


