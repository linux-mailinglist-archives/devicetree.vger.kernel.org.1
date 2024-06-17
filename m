Return-Path: <devicetree+bounces-76622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB8590B5AA
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 18:03:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D6961C23072
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 16:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE5B3224DE;
	Mon, 17 Jun 2024 15:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="My1RucjQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A3729D19
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 15:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718639879; cv=none; b=cQ2lPkjuVPovR0gi92Y+tBJv+yCZfDP27rDu7P9IymTbQexrHh2H9kZfOtDffrRnMCz9y9mWxobTMHVqFM3jl5WGzzyaub+5h5CQz8aRZteDAGgSl5+yClGymP36XWO5j6tibEfRPF0FZxfv4Qf24kbncmP/OjdymDfLjrD3lRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718639879; c=relaxed/simple;
	bh=o/XSTzFP14wJ/VXCxYhl9P/8Z7RljHIX2ASE78vBQyo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DwM6g9m4IZAgKGXSUZWjsJdEdhl0BQonNbbXflbWc8iCypLByXEsP3UUIiWJQPKKbdgGXwdiRfeKA/HZ+wq4tFpemrqHPI+A+YBcWJwnW8FiUy1tiMciEjhF4wkGpUBN96G2ERQk0wFsDCWvMQGC6IbSmw0rvaR4P4/PhwGzXRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=My1RucjQ; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-7eb6aedcabcso169849439f.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 08:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1718639877; x=1719244677; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y38wEtgp0CoFHpwb8izsys6Wx6Cga/obIFlEHj8WuWQ=;
        b=My1RucjQrc8ABjQwBRR3EbtEaYeoFBRMizY+xRYc/728gZzkU2zGqKlGwdbHqj0YAL
         WG1lNEva8BMYGQuMsDMRJ1CyXpxbuUJPG0JHFqnyczwQuz1EYDeKoAoQTmfBW23d+ghR
         92Ma/zX/QM6CvuKMjLk6iJOGgzRM90o1h+Hdu7mnG10jlW5q7kDLcGNlBAazY/VmzKvO
         VBjlk+mHxvIEroEB7/EqXpyyNZ5dVr+TDsvhEtZg7hYFpl2W/0WZ4yMhbAjoKNcggpot
         WkNaPr3bOJSsRY8DKlx3cpP4Ejzyuw0dwHep40vpCMy890f10xHmGT/PvXB0eCc3Cr+0
         noGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718639877; x=1719244677;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y38wEtgp0CoFHpwb8izsys6Wx6Cga/obIFlEHj8WuWQ=;
        b=Qwms0tBGW81A65/5BiYc2awM7+3l4laItFIvdXb5k7Xmjv//JtEv9qCUrPEG7WBMp1
         jO4lLW+C984Mt0Int8av0VyZjga+sLyy+r9U871l6gjff+8BXVvh2cXvANmGIKWjdOsr
         a8gOhq9zXxhqivfioRZ0RbRAdtqr9b+XaTZlRlPEQyDTnrtwyWKw3vdyikZE772gAiI1
         SKhNVmizwojwXd0CtwbOLDDO4RMyD59Nf8mzQvrBpzc4nm9wHBFQdxTMnTmrys5pdagj
         FDKMOTKmcrMMsbTvscYhxPUAlMMCoxDU3ruS+A1UyqJsRmUnHpsgJF38r31vS2MKCrHv
         Pc9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV4mOD1VFWYBXmWrqle3/qdK7e0/nQtF48Gdfb1SV+h3uAnoqYvS/QUzpQunFCRZjWZFmZpf0gYEycPtPFoGsGFpLJLN0LIhSHxnA==
X-Gm-Message-State: AOJu0YzClWU3kv5PWiGXOHBNj4osCYCVXp8h7gm4KB7+/wWULaRK+1Px
	UVtTUblppJjbu6hsBtJmP4Oh84KtJbBgLE+t8NzLM9v/Ij7UBctpsQDI0s21UEo=
X-Google-Smtp-Source: AGHT+IEJELr9ZwWrlnrxxlTJV+RE9Cqefzg01BVij/9FdIlNARMSU5nXKlFNcI47+7j/ic27zHRtMA==
X-Received: by 2002:a05:6602:2cca:b0:7eb:8cd0:a11f with SMTP id ca18e2360f4ac-7ebeaef231amr1154395739f.0.1718639877398;
        Mon, 17 Jun 2024 08:57:57 -0700 (PDT)
Received: from [100.64.0.1] ([147.124.94.167])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-7ebdbad4745sm234238239f.44.2024.06.17.08.57.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jun 2024 08:57:57 -0700 (PDT)
Message-ID: <6a993b58-3d9e-4f92-bf47-7692c9639314@sifive.com>
Date: Mon, 17 Jun 2024 10:57:54 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] riscv: dts: sophgo: Put sdhci compatible in dt of
 specific SoC
To: Jisheng Zhang <jszhang@kernel.org>,
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: Yixun Lan <dlan@gentoo.org>, Inochi Amaoto <inochiama@outlook.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Chen Wang <unicorn_wang@outlook.com>,
 Chao Wei <chao.wei@sophgo.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Thomas Gleixner <tglx@linutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, Conor Dooley <conor@kernel.org>
References: <20240612-sg2002-v2-0-19a585af6846@bootlin.com>
 <20240612-sg2002-v2-1-19a585af6846@bootlin.com>
 <IA1PR20MB49534C9E29E86B478205E4B3BBC02@IA1PR20MB4953.namprd20.prod.outlook.com>
 <20240616235829.GA4000183@ofsar>
 <c75601a1-1389-400e-90b9-99c1e775a866@bootlin.com> <ZnA3O14HOiV1SBPV@xhacker>
 <20240617-exuberant-protegee-f7d414f0976d@spud>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20240617-exuberant-protegee-f7d414f0976d@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Jisheng, Thomas,

On 2024-06-17 10:40 AM, Conor Dooley wrote:
> On Mon, Jun 17, 2024 at 09:16:43PM +0800, Jisheng Zhang wrote:
>> On Mon, Jun 17, 2024 at 11:16:32AM +0200, Thomas Bonnefille wrote:
>>> On 6/17/24 1:58 AM, Yixun Lan wrote:
>>>> On 18:47 Wed 12 Jun     , Inochi Amaoto wrote:
> 
>>>>> Is this change necessary? IIRC, the sdhci is the same across
>>>>> the whole series.
> 
>> sorry for being late, I was busy in the past 2.5 month. Per my
>> understanding, the sdhci in cv1800b is the same as the one in
>> sg200x. Maybe I'm wrong, but this was my impression when I cooked
>> the sdhci driver patch for these SoCs.
>>
>>>> I tend to agree with Inochi here, if it's same across all SoC, then no bother to
>>>> split, it will cause more trouble to maintain..
>>>>
>>>
>>> To be honest, I agree with this to, but as a specific compatible for the
>>> SG2002 was created in commit 849e81817b9b, I thought that the best practice
>>> was to use it.
>>
>> I'd like to take this chance to query DT maintainers: FWICT, in the past
>> even if the PLIC is the same between SoCs, adding a new compatible for
>> them seems a must. So when time goes on, the compatbile list would be
>> longer and longer, is it really necessary? Can we just use the existing
>> compatible string?
>> DT maintainers may answered the query in the past, if so, sorry for
>> querying again.
> 
> For new integrations of an IP, yes, new specific compatibles please. New
> integrations may have different bugs etc, even if the IP itself is the
> same. If there's different SoCs that are the same die, but with elements
> fused off, then sure, use the same compatible.
> 
> I expect the list of compatibles in the binding to grow rather large, but
> that is fine. No one SoC is going to do anything other than something like
> compatible = "renesas,$soc-plic", "andestech,corecomplex-plic", "riscv,plic";
> which I think is perfectly fine.

And you can do the same thing here for the SDHCI controller: if you think sg200x
has the same controller (and integration! e.g. number of clocks/resets) as
cv1800b, then you should keep sophgo,cv1800b-dwcmshc as a fallback compatible
string. Then the driver doesn't need any changes until/unless you eventually
find some reason they are not compatible.

It's better to have a SoC-specific compatible string in the DT and not need it,
than find out later you need one and not have it. :)

Regards,
Samuel


