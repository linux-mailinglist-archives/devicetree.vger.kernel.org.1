Return-Path: <devicetree+bounces-104674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC58983C99
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 08:01:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DEE6A1C21E78
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 06:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7998374F1;
	Tue, 24 Sep 2024 06:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EBz9l9pX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA83C1B85E4
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 06:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727157711; cv=none; b=tCGf1jlSRgbbzb07WfVMHu8L38xXshPR49C6RVUtqmdvI1wGSJNb/1kkTVyUFu+q/UokchwbWSVYX1yO09qYjZFOUbZUMBVxM3EdtMipWFCM1NlDhz94IArLgaiIGi2gJ2UtmexpE+13ZvhjdLjOTgDOpF97w2IbW6d0lSZI1nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727157711; c=relaxed/simple;
	bh=kh8x1Rp7dbhcna/+LcQu+7PgKIn/712nBD3KHRHreL0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DGQ3VxNcvPEPuVWpyQ3DcePlWepfiblhkSuLyG/MropS2aHxTD7FbNOLMrdu3PcHLfBi+aT0AxrBJbZA7rscf2F5oSbq91x+8D9Av7afeYM0bRzs2rRfxLuwBm55ZUhDacLUW7WmzgOfeQeZRvHUBP0rSmYCh2IyrsStMntzh0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EBz9l9pX; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-42cacabd2e0so43521085e9.3
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 23:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727157708; x=1727762508; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ob6JTIBEgbtmPq1rO6JYwsnKZNVP+SaaSo/Eueelb/I=;
        b=EBz9l9pXv3lSG24QiBNVs2RLEM3xewC7qNDwOMpvlaJCSPLzIUIZ/ltHo8GhGc7Pw5
         Pvyuft4BKzXJ3WcEUlc/oYWOVqvtSSnFt6slPqhyHrJ3bD097v7p6Si2gGXix2ZyheVr
         txYEUjuOiON2drz5OtOrLakPyFG9YT/djS2QRKuWxF6HpEywXI7ifh56e+R+Oluugo6E
         egezx+JDagbfgs9vaae8HhGfNN6GiOaG7ExDr7bO0BuoY22KSkhn3PAEARIm6r4EiwJk
         M+o4muz5fcd87rrW0tP+CLVoKZNVd5m6CQ16Dn6RUfX11t7vbEnbxaK+u0uqrUPfF2MV
         6UvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727157708; x=1727762508;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ob6JTIBEgbtmPq1rO6JYwsnKZNVP+SaaSo/Eueelb/I=;
        b=FlzUzqp6LdL76AbuEKZzxtP/2NJAe+yxfBEkSdsK9FTX6g6CyHSYksRIO/RIyDPIss
         Bt148DSICzJb0HikQx9zgJCMPQVVwoNz0ydoN+J+oGjQPoqWD7OLKGrFT3aAITsJWoBE
         +kP6snWZgCbAc1B/05DE5eQFtHNhdX3kv2OPKbHXPl4+mtHJKPXW2DNFanmJjKe4TPYJ
         +5dWL0VKd0v9YlXcoeAOihESfPhYGL7JD6dTvgqrTsuq1Pz2socJNTEvly2OjAg0BfS2
         QN5gLILYq8pFXel78lXvlnOrVE36OKrFinRQcZHAHHUOIrOa+l8+KuipkGpZJtyhWGU7
         vlvg==
X-Forwarded-Encrypted: i=1; AJvYcCVEq6X5LCdRgdfAyS1fwezn2Sg9mBW5/TStlvxHE5k0qd5slUTnuuaCRTPVf5tdp/yWo2+pFkvMeBtm@vger.kernel.org
X-Gm-Message-State: AOJu0Ywx8bSUhJTs6mGnXhPRSObH9cX8NF8k42OGUheV4nS/59x4Atj/
	C+umY5zurrvvF+wkO2UymsEZ9lR+WYyfNifXovI8wnkqeJhBicbfIvud1198aB0=
X-Google-Smtp-Source: AGHT+IEc8dE1z8mjns2BVZvJiZddndWZFguZectKEyuhnGt4xCUxbxBYcfUzToBufPGSfnqeHYygsg==
X-Received: by 2002:a05:600c:3b17:b0:42c:bd4d:e8ba with SMTP id 5b1f17b1804b1-42e7abe7af6mr102913185e9.8.1727157708060;
        Mon, 23 Sep 2024 23:01:48 -0700 (PDT)
Received: from [192.168.0.157] ([79.115.63.20])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37cbc2cec13sm655158f8f.51.2024.09.23.23.01.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2024 23:01:46 -0700 (PDT)
Message-ID: <d10ab191-d75b-4fad-aed2-33d08815f7a5@linaro.org>
Date: Tue, 24 Sep 2024 07:01:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] mtd: spi-nor: core: add manufacturer flags
To: Erez <erezgeva2@gmail.com>
Cc: Erez Geva <erezgeva@nwtime.org>, linux-mtd@lists.infradead.org,
 Pratyush Yadav <pratyush@kernel.org>, Michael Walle <mwalle@kernel.org>,
 linux-kernel@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Esben Haabendal <esben@geanix.com>
References: <20240920181231.20542-1-erezgeva@nwtime.org>
 <20240920181231.20542-2-erezgeva@nwtime.org>
 <4e0cf43c-4843-451c-ac6f-86775dbccb2b@linaro.org>
 <CANeKEMOmhAPM1j1_ihzcC2wL6jKsWXPCGfZs+euS8mRvtqgE5A@mail.gmail.com>
 <2c87568d-3caa-4162-91de-094684f1b268@linaro.org>
 <CANeKEMO4ckeJZHKEOKHVeamPzR045jpwkXWfJS9S6rBiMTayuQ@mail.gmail.com>
 <688d3e68-c339-4a44-b6b5-366dd5f12965@linaro.org>
 <CANeKEMNKF5WtVgzxbMnLFsqRHNOz=+gD-if8aBqsWwjgDvz3GA@mail.gmail.com>
 <ca2c03f7-0769-4b2a-b743-3ebda9e29755@linaro.org>
 <CANeKEMNdGvteumpvLHhDoiVoZwPJ4iOs+Ej8KDoXR9-Vz0-rvQ@mail.gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CANeKEMNdGvteumpvLHhDoiVoZwPJ4iOs+Ej8KDoXR9-Vz0-rvQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/23/24 8:30 PM, Erez wrote:
> On Mon, 23 Sept 2024 at 19:53, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:

cut

>>>>> You ask if it is possible to deduce it from JEDEC ID and SFDP,
>>>>> I answer that this is not possible, at least in some cases..
>>>>
>>>> I'm interested just about your case, not all the possible cases.
>>>
>>> Actually it is the MX25L3233F and its previous chips.
>>
>> Which previous chips? Do you have any such chip at hand? If not, why are
>> we talking about collisions?
> 
> JEDEC ID 0xc22016
> MX25L3205D - No SFDP, 2 OTP  regions of 128-bit, 384-bit, Status:End of Life,
> Recommended Product MX25L3206E
> MX25L3206E - support SFDP, 2 OTP  regions of 128-bit, 384-bit, Status:
> Not recommend for new design Recommended Product MX25L3233F
> MX25L3233F - support SFDP, 1 OTP region of 4096-bit, Status Production
> 

Okay. So you have just MX25L3233F on your table and you are worried
about possible ID collisions with MX25L3206E and MX25L3205D. But you
don't have access to MX25L3206E and MX25L3205D. Is my understanding correct?

If it's a yes, then don't worry about ID collisions at all, you can't
test the other flashes anyway. OTP is not used by the older flashes as
there's no support right now, so you don't break anything. Just add your
OTP organization to your flash and I (or other SPI NOR maintainer) will
decide on how to handle the ID collisions when/if they appear.

> JEDEC ID 0xc22017
> MX25L6405D - No SFDP,  2 OTP  regions of 128-bit, 384-bit, Status: End
> of Life, recommend Product MX25L6406E.
> MX25L6406E - support SFDP, 2 OTP  regions of 128-bit, 384-bit,
> Status:Not recommended for new design,
> Recommended Product MX25L6433F.
> MX25L6433F - support SFDP, 2 OTP regions of 4096-bit, 4096-bit, Status
> Production.
> 
> JEDEC ID 0xc22015
> MX25L1606E - support SFDP, 2 OTP  regions of 128-bit, 384-bit,Status:
> Not recommend for new design,
> Recommended Product MX25V16066
> MX25V16066 - support SFDP, No OTP. Status Production.

Thanks for the dive. We can ignore these because you can't test any of
them. I'll worry about them when someone adds OTP support for them.

cut

>>
>>> This is not because I oppose probing,
>>>  this is because you ask for indirect probing, against Macronix own
>>> recommendation.
>>
>> What did macronix exactly recommend? Did they say that we shouldn't
>> interrogate the SFDP data in order to differentiate the flashes at
>> run-time? If yes, why is that?
> 
> 
> I forward the reply from Holger Schulze, Field Application Engineer,
> Macronix Europe N.V. I received on the 3 Jul.
> 
> I ask:
> "But the OTP setting is not in the SFDP.
> How can we know which OTP size and number of regions to set?"
> 
> And the reply:
> "You are correct, the OTP setting is not defined in the JEDEC spec for
> the SFDP table. The only way is to refer to the data sheet."

We already know that the OTP is not defined in any SFDP table. This
doesn't mean that we can't compare SFDP tables to determine which flavor
of flash is present. That is the reason why we ask for SFDP dumps when
someone proposes a flash update or addition. So that we can compare the
SFDP dumps and correctly identify the flash or assure backward
compatibility for it.




