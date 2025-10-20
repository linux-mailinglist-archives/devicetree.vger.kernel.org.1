Return-Path: <devicetree+bounces-228991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FD7BF2DB9
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:06:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BCED3347920
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 998892C21E2;
	Mon, 20 Oct 2025 18:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="yL2syj3y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A372828DB46
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 18:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760983611; cv=none; b=pvy4CrzUqe/Dvy5X6xVOcbBMa3OpFyFxxFREOojtsbFhEhG5XRGkkeK4bZ3qbOJbEwmfNXpkOON9ZCNtN+UTw7vbTVzC3cnqyBxEql8V3u/rG4vA2PI3u3lSujDM9lRWYecZNUnuIE+XDKF769WALYDgUazDKKjm33XXKo2EduM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760983611; c=relaxed/simple;
	bh=JSD7zMinFfnI7sgmhr156UXVmdLj4D4xD4iX+dvck18=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bmTKVTOxBpKQAedpbU9FsIxZ8sLIGWhPsSeX5xdDaLKLZqz3wGKWjQCnToYkkuqxRqn4f2mSEZ7aVzgYwvzDHrNM12J5LDkXaL77VwY1Q1h0XXnGI8d0Y6n0sgXsvZW9bxcxBd+3me9oO3AJERPl3inMDa0lbBxR6MACvx25fjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=yL2syj3y; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-430c151ca28so17965755ab.2
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760983609; x=1761588409; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5AQlGU0mYQ6QSlBwOOl9dIxsMJVc/9az/WvQw51SeIA=;
        b=yL2syj3yBgiXoEj8bb/B4DosqxIP+OWLeFYusqaYaOFKse1m9BUCVCw2xd6rosL4Ge
         b61WVl1U8teBPjgTYcAZ485yPevfWJVl16PANjLe/pSOxFb/M69XPbFZqikhj2YcfuCm
         2VnEYENQX5mhJdGrn1p1WG61d0g9FB7Xo3aT4YnawCag4KKV5ItO7xDw6u9YUNNWoThr
         RDPfNB/+oc/dDBpfkOBfeR1SIk/RhCiklfJYLe+wc8UCOyuRJHG5p7zx+o4ejt2MxtRv
         nfTIFI2/fpsNT4W6VULv+NLKqAD2JlTJ4uS2eJBIP6o5mS3YrrsMxwAcOx+QZTcMyA8H
         uskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760983609; x=1761588409;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5AQlGU0mYQ6QSlBwOOl9dIxsMJVc/9az/WvQw51SeIA=;
        b=UEGNro5/T0gFXgF6av/bPfl86UVbOOvFqMFxYKpgP7LBY+/S+NOC60nNzzi9SQDJg2
         p5U1i/h/9fqEOsA9ojl7JXlV3LBeGHzrVL3Vm9mc51GSaKdEDm8ERBCb9yu4IO9p4fF9
         UH+vt6HTdbh96HoEhT5RnQAjVn336UNjU7wsTfSg+1hYb9gjuUVC6Ao1WDdOTzP50Qw3
         FPZ9ia7zI8bKsGs/XYc2swKNA0cXGXEvypXIkBwLR0al4cD4yJge5y/m8cfqEyylJ/3Q
         bXzqoKx8vwgZC4S+b2bgT4wBwWpaRab+mkUWW16HkTEzECdYmqtUAyCv9Y3MboFBn/n5
         J6wg==
X-Forwarded-Encrypted: i=1; AJvYcCWWbumKp4fiBmSuUip96M6GQYvOEWr0bd5ryCXTIfEeMoU61zZlZaNwBI6pgnj98pPT5oPF2CIYqi4Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxPVUtOHf8nsHBcNwiG4SoqMc7RiX8ptEeqdC3Ox6B1pcTU1rFU
	vPgHhVdDYhM/1irlggMPBo0ZyP8V27HCcMJ4+w6pBxUY63D+i+U/8KgaU22jAgOrvtY=
X-Gm-Gg: ASbGnctyaxBlo6WTCUbJW6mlNCpuE8OJyYk2CCC1JuWoDPNIH4rqbhkjD7bRJ+tMnMZ
	u3ccwE6NIguugG3bRZAIk0T2FuCdzgjRQtqQ4zhZBtMBzk66ExGfkh58dMIBGpvZ9dRvvx24WBS
	Cy5YRPnx9GP9QE4MYYv/IfDOWWd9kVt/ZXN841KbAzR9diBOUFiUaej/At1v6RQbcmWZUEIq6Pl
	WTlZ/uE1733ZeRkWu997PuHwvTqSob1wuvCRrRO7QBX4KVxgL3CSuP73tY20pd2JCoxKT4Ku8e4
	g67iSDXqaeOaEzEd1+Qqf+9NBrxAOhFSoGRdqtI0kTYgoCXRuxrvfhC6Otndr+ftbtleLQq0149
	5EphCC5p6cj4xdd2FtoL9GFZB+lLh69TFN6lnYmrRSrs+RoPSAMcnoEGw9oL0MbbSFwu+IhlgFy
	KjLAfXKL8rqz2X+yRG1dz4/ZasnFwwwbILIXhqdKc=
X-Google-Smtp-Source: AGHT+IHBHKCx2YHdGAi+SFpNeca9RlxGKdmS/mH/TPdmxuSdnx64GJbh4fpZfHVsL9gExE3U3dhRbA==
X-Received: by 2002:a92:cda3:0:b0:430:b4ca:2696 with SMTP id e9e14a558f8ab-430c514e290mr212982775ab.0.1760983608698;
        Mon, 20 Oct 2025 11:06:48 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a961e88csm3172542173.15.2025.10.20.11.06.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 11:06:47 -0700 (PDT)
Message-ID: <b28d71c4-d632-4ee5-8c4b-270649fca882@riscstar.com>
Date: Mon, 20 Oct 2025 13:06:46 -0500
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
 <20251020-blinked-primary-2b69cf37e9fe@spud>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251020-blinked-primary-2b69cf37e9fe@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/25 12:39 PM, Conor Dooley wrote:
> On Mon, Oct 20, 2025 at 11:51:45AM -0500, Alex Elder wrote:
>> Add the SpacemiT K1 SoC QSPI IP to the list of supported hardware.
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
> 
> Are the newly added resets mandatory for the spacemit platform?

This is interesting.  I never even tried it without specifying them.

I just tried it, and at least on my system QSPI functioned without
defining these resets.  I will ask SpacemiT about this.  If they are
not needed I will omit the first patch (which added optional resets),
and won't use them.

Thanks for pointing this out.
					-Alex

> 
>>         - items:
>>             - enum:
>>                 - fsl,ls1043a-qspi
>> -- 
>> 2.48.1
>>


