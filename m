Return-Path: <devicetree+bounces-228993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B63BF2DCE
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:07:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CB93422D86
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 484C43321CF;
	Mon, 20 Oct 2025 18:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="0nZmb1Z8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE712D0283
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 18:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760983616; cv=none; b=YbC1N5ToGWZ5j221a1V5/EhtzrZEmUMbqwUIM7HbX6cJ1v2LE2TIOoheMJiWOugsGiFGDeVy0koVXNxK4MK4h72wVM5ne8v/9IXfChL2h9Q1ZiWiqjdZmA5C66C6goSc9Gwj/+Qy/triF31NRWP6s2ftenyK6RGeVLzweviEwds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760983616; c=relaxed/simple;
	bh=QTpmX6jrERRcIBu+6XueQEVtWkDEmNTcFOC27A5EpZk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LCeE+/xmJhyD+t3hVtbClbE+8rTwpJ8AbA3ENbOWt4Et/NOhO++Fo9ACSuDcztJtDGXt2rS2M2NUydt57Md2TUtCfKDS3Ms1UOd2+0mvF/U6ywUBoSWXbu23V2GeGL46M8ayhwSjZsW6uVj1SK0nnHuulSfZqD56MUQJTG/JfC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=0nZmb1Z8; arc=none smtp.client-ip=209.85.166.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-430d08d56caso9820895ab.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760983612; x=1761588412; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oXBtLkkB0DB8TY2tig01PgEU/TWly7nbkJIcjJq9f9I=;
        b=0nZmb1Z8dWaYBPpYKoUT2O4Ruc5mhORaMeLww3efuRkYNWl7gT+sdmc3ibERGDKVge
         trAOOhJ6CaAl83Og4PPEPsCvMdKothS2ysTKcPesgzgksWv9svNy07++dg1dSZrDhXGM
         tOM6SqmvBEcnRuAX735Y0EtK8+tTV/MYtsYwt47aurke7P3iWSrj0gU7fgWu6i0aiPqR
         /NhrpJbDY7Jqbp0qkVBWfFxAjVv9KnilV7Wv7iYKXHo3L+5I1fbBoap9b6J0RluBJ3e3
         3xBwASyvb2y5pnHO8M/HWzIVJkxW2lHKg3wMtP0udRJIpV5U5o+/n6+nsuBhVrMX4YPI
         uP6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760983612; x=1761588412;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oXBtLkkB0DB8TY2tig01PgEU/TWly7nbkJIcjJq9f9I=;
        b=uavI2KxmbGxAACJ79YyBhtMsLYc2HS2ODnAN9bBRRCYcQvnEH1Dxcsy29ZAesV7Nvm
         yQVCLtpYELx/MDalTC+R/DwrIcq8Hhx2oxGtIR2ZwXmVPX2TV3AJIbdVdCLjxC0sczWM
         jFNgiUKrewK7jeaaALT6SZezxbwQZTjCfmh++jIpguo511VaSfWWjdhJvC2d7ty/pP2b
         6MmkCuaqKRMJpv06ZipPMzILopOZcrG7vlY3yBEo2N4oNfqDs3WkUZsaMZUNVvDIy268
         Grr7tWitNNeOlfbkv0/yJSxDYQj2eZjUmwU1n6WGDsAAn8slqHMKUdIXs826Qs48GT8+
         Q/2A==
X-Forwarded-Encrypted: i=1; AJvYcCW0ARHX7TvfjN17Z+pBt3RHbJXBQ4pElEVOmxJJXw468Nm3wHCnxaN5BEopHHMV3iT/HucHFicZnz/Q@vger.kernel.org
X-Gm-Message-State: AOJu0YwfYmMukjWlf+iN/IruyMY3wh3MhzNCZ+lagwV0dnSgFdJ0GQzc
	yXf9lIXxWa7Y4bBDgbSPyiHAdRZxlWMS6INvHGs9ysgNwpIcLyypgfYU6VCeZQl80fs=
X-Gm-Gg: ASbGncsZLaWPsTkYJBmyJFGMIUIFi24ZwUHGMDcZ33eebcwGMcyr1D22B8AaxTbhtyn
	o2A+n50TjngcYMuE7XZwqNfgOPV8LIRmBRpgN/WgELpZ9xxC8nkge1CPQA1WML+6b/SGRgNQzTu
	CWW+lJ3oXtfLcsoTzEj+M2SdWsfWWdOV0yEcJtAsT7ychaHIrT55rECH2nd4g6zTc+ARzCBQ8qO
	dK9ZRGaSuRg2bytilMvx0rLMJBPDLd4LW8Khx0NnIS7Py6PuNbXechJhW9Cj18A5Jss8LdQkh9u
	OuFxdxY4wl8XYhGOoD+NCDJgMLFRfuuTqzRl9x61r83mxzIHLMJ657HAJiBGW0ituYCnGn3r6Qr
	5Gbzg/4v7c42bqVXJnd6DSa71xX3ozswfGCflgFTiQHgMghviPpxwMfbmHmLtoVSAj8hJ+UJoPu
	PBEgXVnFg9YNRzQQu7+FtkfyV5lO6a/709EEWeAJbxyohct+oLsQ==
X-Google-Smtp-Source: AGHT+IGevb4egGjj6KWxQP35Nq0zUYSUBGNvYU6Luo+078jNAKiHY5b+2d/guD5dVmi2NJ4AhRB7Qg==
X-Received: by 2002:a05:6e02:190c:b0:430:bf84:e941 with SMTP id e9e14a558f8ab-430c51ecf81mr209120355ab.3.1760983612156;
        Mon, 20 Oct 2025 11:06:52 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a961e88csm3172542173.15.2025.10.20.11.06.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 11:06:51 -0700 (PDT)
Message-ID: <08d99fcd-4d0c-4d81-a314-7e1a8bfaa64c@riscstar.com>
Date: Mon, 20 Oct 2025 13:06:50 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] dt-bindings: spi: fsl-qspi: support SpacemiT K1
To: Conor Dooley <conor@kernel.org>
Cc: han.xu@nxp.com, broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, dlan@gentoo.org, guodong@riscstar.com,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org, imx@lists.linux.dev,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251020165152.666221-1-elder@riscstar.com>
 <20251020165152.666221-3-elder@riscstar.com>
 <20251020-utility-remedial-4b4dfc716409@spud>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251020-utility-remedial-4b4dfc716409@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/25 12:41 PM, Conor Dooley wrote:
> On Mon, Oct 20, 2025 at 11:51:45AM -0500, Alex Elder wrote:
>> Add the SpacemiT K1 SoC QSPI IP to the list of supported hardware.
> 
> Also, you should really explain why this spacemit device is the first
> one to be in what's been an fsl-specific binding for now in the commit
> message.

I'm not sure how much of an explanation you're looking for, but
yes, I agree with you, it stands out that it's the first one, so
I at least should have acknowledged that.  I'll add something
here in the next version.

					-Alex

> pw-bot: changes-requested
> 
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
>> index 0315a13fe319a..5bbda4bc33350 100644
>> --- a/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
>> +++ b/Documentation/devicetree/bindings/spi/fsl,spi-fsl-qspi.yaml
>> @@ -22,6 +22,7 @@ properties:
>>             - fsl,imx6ul-qspi
>>             - fsl,ls1021a-qspi
>>             - fsl,ls2080a-qspi
>> +          - spacemit,k1-qspi
>>         - items:
>>             - enum:
>>                 - fsl,ls1043a-qspi
>> -- 
>> 2.48.1
>>


