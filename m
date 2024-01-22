Return-Path: <devicetree+bounces-33657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FADF835F38
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 11:12:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 387D3B25100
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 10:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E6FB3A1A5;
	Mon, 22 Jan 2024 10:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="AVCPA/Cw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C43C3A1A1
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 10:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705918317; cv=none; b=WgwTGOwMV5CYMTeOhM5nHFx13TncdhvxiJsrI8yFPjJNnbN0gW2WD2J57wAYwTNPBkycJC69mMzue4A0xX+VnLnHuK0I1KYEhdzh2J6Aw0CzyXPHSY+3h1LlVNpoCCPZU+g8HxBte56gSmVv8D9ZsRdgu1vx7lugUEnwFkn+hQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705918317; c=relaxed/simple;
	bh=rIRH7qGV4LwQUlSmd75KNgh/rX7PLB4udmm2p3CiN90=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h4WsitRKTK/zRpJ85fTL+etzvngKV6xvgVz/8gn6n2Ha8dYQoIqctkK+6GDq3Rvme+jTdHThtTAISE8ZCfuSHmL3SP/ZvwrkiqaroZu4pSzBNFuAvTkBMzHoN5ciOTH17UHe5E5V09ubFNT2j4auH8w5HWKsqGI8HeRCvzhQ0fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com; spf=pass smtp.mailfrom=tweaklogic.com; dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b=AVCPA/Cw; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tweaklogic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tweaklogic.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-290617c6200so531786a91.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 02:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1705918316; x=1706523116; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VWTXLpKWUE/W6xIEaHM5ZR0AyJgnz7tIWu+w6VfHdVg=;
        b=AVCPA/Cws6hixIP8IoIh5dpUClN/VXgrSYJCYm/oMzw14Z0F4Zrnq/lmAPKPb8XYzy
         HLkoFHtKi39tzoy/icqvHKpHX2NvMRcFrOSgR847yUYFWLHNh0deMyNjCuC8TEQ6yyQW
         8V2WIZkeara9Es57sG3NRl+uXtHixw6AJRwd++pZX1gXlHx6jw5zMybcq35srgm1h6sc
         aJ/M1JQZKxERcKZlvMrMEKASl71xRQjSPLN2Lkv2p6Uyap5S0+kueHgsCr6gT+cG2QLF
         sD0W3MEmRC9emE0C4309ma4No+09FEqc9bWCXOaeluEB1GZBCrEV4orR4Cu6VfLIATeT
         ILKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705918316; x=1706523116;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VWTXLpKWUE/W6xIEaHM5ZR0AyJgnz7tIWu+w6VfHdVg=;
        b=YxzssX+3lnAE0OTMLWACJYQUiJBNzAC8myN6Z2970m8aJRMcYztPPh8PaC6INdFr8Z
         KdlHT+ET0U63QX3Y+ykQmXZOeciCfUYMuDA6PfwBa+kf/NYjyGz89PYwvi36VtSNc6eh
         MxdoXNnzs1QQXhXIcPtXV58UAu52FYEJ6WKZp/EI3jaYz7EtQNPaFQhRO9UmJccacW7q
         I8MMrGSi5ZoHXpa3kTi/ujvKDtREe/QQpyxx6HzRarCTpHHlTDIhmBQIJLfpBgXnki7F
         r2yR7jhKT8r1shGZxRbT1yxITE++VIpzLO8tAKuo3+5DBTe9EnFDTDACwwLRcTCc6p7L
         jRnQ==
X-Gm-Message-State: AOJu0YwpiQyFRv1NFditfgJYMVtB6ccO0zkrVEc1MZWf6YzLKnOSNtBL
	Gb3Cg7YQYO4xeRaKdk5Pk/SaHztbsReeUlN0atLGcRWg449cYjlFteR91X80OAc=
X-Google-Smtp-Source: AGHT+IHxuL7H/zkS6mXQH6dOwFgAvopI+j4kQ36pbHhwuOGfsf9cZrcJ0QrXJIEX09diguNp4vWchg==
X-Received: by 2002:a17:90b:1952:b0:28d:c4ff:74a2 with SMTP id nk18-20020a17090b195200b0028dc4ff74a2mr1051797pjb.47.1705918315762;
        Mon, 22 Jan 2024 02:11:55 -0800 (PST)
Received: from [192.168.20.11] ([180.150.112.156])
        by smtp.gmail.com with ESMTPSA id lh13-20020a170903290d00b001d7393f6917sm2849178plb.86.2024.01.22.02.11.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 02:11:55 -0800 (PST)
Message-ID: <e5cc939d-1f61-42d3-a5b8-9a1a0a5c2dff@tweaklogic.com>
Date: Mon, 22 Jan 2024 20:41:48 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] dt-bindings: iio: light: Squash APDS9300 and
 APDS9960 schemas
Content-Language: en-US
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marek Vasut <marex@denx.de>, Anshul Dalal <anshulusr@gmail.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matt Ranostay <matt@ranostay.sg>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240121051735.32246-1-subhajit.ghosh@tweaklogic.com>
 <20240121051735.32246-2-subhajit.ghosh@tweaklogic.com>
 <20240121152718.35c24f9a@jic23-huawei>
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20240121152718.35c24f9a@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/1/24 01:57, Jonathan Cameron wrote:
> On Sun, 21 Jan 2024 15:47:32 +1030
> Subhajit Ghosh <subhajit.ghosh@tweaklogic.com> wrote:
> 
>> Squashing Avago (Broadcom) APDS9300 and APDS9960 schemas into one
>> file and removing the other. This is done as per the below review:
>> Link: https://lore.kernel.org/all/4e785d2e-d310-4592-a75a-13549938dcef@linaro.org/
> 
> Sounds like a Suggested-by tag to reflect the ideas would be sensible here.
> 
>>
>> This patch series adds the driver support and device tree binding schemas
>> for APDS9306 Ambient Light Sensor.
> 
> This sentence isn't relevant to this patch, so I'd drop it.
> We don't need additional motivation.
> 
>> It was pointed out in earlier reviews
>> that the schemas for APDS9300 and APDS9960 looks similar and should be
>> merged. This particular patch does the first operation of merging
>> APDS9300 and APDS9960 schema files.
> You have a reference above which is enough.
> 
> "Merge very similar schemas for APDS9300 and APDS9960."
> is sufficient description alongside a suggested by tag and if you like
> a link tag to as above. Note however that Link is an official tag
> so belongs in the tag block at the end, not inline in the text.
> 
>>
> Link: ...
Thank you so much Jonathan for taking time to explain these things.

Regards,
Subhajit Ghosh



