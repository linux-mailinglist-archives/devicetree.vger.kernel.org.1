Return-Path: <devicetree+bounces-59081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E83C28A4299
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 15:31:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A9404B20D45
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 13:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 763F24437C;
	Sun, 14 Apr 2024 13:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vcQBaCuA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409143D56F
	for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 13:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713101463; cv=none; b=Q7B4Vvbu1ZKZh32lLDF2sLFEMSP3W9NSqYuuEEJgVEQ6JPQy6ul9wktXhCsAeoB7swQbcsxRiXRaN9tmKsJ0gwdfAJ4RkSqe9CWc2nAnfS8ZrZ6txJS1PniMEZYs9syQTwMsTwmjkc9lRkCgi3prbumQC/SvNOjU1s0pNLuF8fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713101463; c=relaxed/simple;
	bh=v59sEYucCoDWf2Ig0lZ4iJeEsrTUTk7NSIRSjvXoncQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L6jZX04Kb6vgPU9WkXxP1qdft2mZ+3v8EaKeDLQJBGx642wkmern+5dvhzkg3XGtExAm0DVE0n9yDSflB9yxIQJXmwphu+EpZj3DYe9QbnEHjBhq3ZYBAVKqqKlq2uy0bkZv1RI4b0EIkkU/HEzcTnAjZ63NYMQT69mf5/mLeHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vcQBaCuA; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a51addddbd4so270078466b.0
        for <devicetree@vger.kernel.org>; Sun, 14 Apr 2024 06:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713101459; x=1713706259; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=au4aH6i0qjtegAk88ufgXU58AX4/uaMc0+jehYykgeg=;
        b=vcQBaCuAaKAm9fSeTxwZjDHZM53C/YZkEOZvK486F8b7BTYEZ89LLo01cE7uVdv+2G
         YhPRzOovwdjzGSltVGKnZhEkwlZPZTwJuNCQdMmOviTaVE5Gb4Adg4QciDLxj1KIq6lz
         WzdFGI1Iz1dUIR6yifkpQSxVJu13ctTXFTtMJ6MGXGAN2JCrdP27G0xB3ubwG00odh4T
         ihDYZhZ7mpzRHqDu30a2CaJVpLoSmyhDTmqKNWEM6LoG0yEZQ05iOG8qDlzPU1RWqoSk
         czNliAlQoOS4fjWzFdkR8XT9l5R379E9EpJUbHUcZtnlL3k2+Oao3iMb7uRW2mRpBMqC
         iNNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713101459; x=1713706259;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=au4aH6i0qjtegAk88ufgXU58AX4/uaMc0+jehYykgeg=;
        b=MhApkHD9odz8MXm4HpqwfOz6LkY9LY+DbdgeGClcdyhwJbisFLZ9hlj+opPJ3sOYxC
         C5bRVn5qr2WkDmuw8a8C9AqLgdbXriOUGN/Tp1slUxeREUGtcVXWihvnBZ+VH9wN/Qu7
         RW9cBWl1qt5qr/thJybleDbs7QcBRnu9IGr0FwzHk2z07NS31U7lb5LjyFIrbDOTi/xu
         l6HM/hZi1PnVI/gEw0w9fBISrDInoA5BcmKerL8XYYUyFokEToxlGtyCYK881aW25hyQ
         BHvNlpUzji9DwXNutPdElnSJM96UNjaYvHqarRRnBaI5Uh+8zJtByQCEoUHQmfUAi1vl
         grSw==
X-Forwarded-Encrypted: i=1; AJvYcCXRoXGqrAE8TH2kvptrfb3XZoOHK+ra3SujHdr1RDrMDC9m4t3kI0BVgLaevN+bkQqvuIeVJE2eRf771F4v0xNyIJ6/v1NRk+MEeg==
X-Gm-Message-State: AOJu0YxEL9wFQPns46eA/9C8hgIxpd3vN+ofoTrw2E+1omIyJkx7fb7b
	Cyj/QMELchywsUu+QS0+7kK9iK+JzhzPRopX43k9x0r+dEpX4GbkBRA0MaIe6Tc=
X-Google-Smtp-Source: AGHT+IFs0Me9enc9aHD/yZ6qQ6Cqb6UAKD6LgxC2C5lAa2605SbT5Xhd6bPFXeron2VXa+Lg7Jeqfg==
X-Received: by 2002:a17:906:b0a:b0:a52:5125:9723 with SMTP id u10-20020a1709060b0a00b00a5251259723mr1995154ejg.71.1713101459522;
        Sun, 14 Apr 2024 06:30:59 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id 15-20020a170906300f00b00a521e5856f6sm4186553ejz.51.2024.04.14.06.30.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Apr 2024 06:30:59 -0700 (PDT)
Message-ID: <12e2f3b7-6b2c-4fd2-a19e-d4802df95a71@linaro.org>
Date: Sun, 14 Apr 2024 15:30:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: add description for solidrun cn9130
 som and clearfog boards
To: Josua Mayer <josua@solid-run.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20240414-cn9130-som-v3-0-350a67d44e0a@solid-run.com>
 <20240414-cn9130-som-v3-3-350a67d44e0a@solid-run.com>
 <8d0cd34c-ca04-45db-a95b-3bf5e3800958@solid-run.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <8d0cd34c-ca04-45db-a95b-3bf5e3800958@solid-run.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/04/2024 15:02, Josua Mayer wrote:
> Am 14.04.24 um 14:58 schrieb Josua Mayer:
>> Add description for the SolidRun CN9130 SoM, and Clearfog Base / Pro
>> reference boards.
>>
>> The SoM has been designed as a pin-compatible replacement for the older
>> Armada 388 based SoM. Therefore it supports the same boards and a
>> similar feature set.
>>
>> Most notable upgrades:
>> - 4x Cortex-A72
>> - 10Gbps SFP
>> - Both eMMC and SD supported at the same time
>>
>> The developer first supporting this product at SolidRun decided to use
>> different filenames for the DTBs: Armada 388 uses the full
>> "clearfog" string while cn9130 uses the abbreviation "cf".
>> This name is already hard-coded in pre-installed vendor u-boot and can
>> not be changed easily.
>>
>> NOTICE IN CASE ANYBODY WANTS TO SELF-UPGRADE:
>> CN9130 SoM has a different footprint from Armada 388 SoM.
>> Components on the carrier board below the SoM may collide causing
>> damage, such as on Clearfog Base.
>>
>> Signed-off-by: Josua Mayer <josua@solid-run.com>
>> ---
> 
> Previous version had received an ack from Krzysztof Kozlowski,
> which I dropped because I made additional changes.
> 
> To simplify review, please find below
> the incremental changes from v2 to v3:

If you send patches correctly, b4 gives diff, so no need for this diff here.

Best regards,
Krzysztof


