Return-Path: <devicetree+bounces-45479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B81862112
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 01:13:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 157DC288717
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 00:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 850301113;
	Sat, 24 Feb 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NIFi6WYO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE0BD29E;
	Sat, 24 Feb 2024 00:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708733543; cv=none; b=APNbCejsPFgyRD/cekH6XvAl+gOO0IlUGNqoG8ahMoA3kRmWkyPF8eQZjioCWSyLPJScNGLPFSE5JbXYvx5kT+DTV3LnLfHvF3txIYobTCeqUAlvNFewxyJmoGpVcftvBUT+ECgqmWDE0SqZOlCsrbS76rhaviqHTuAkfhk0f7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708733543; c=relaxed/simple;
	bh=a2Ue4Xc8qMwWiS3Bt81c9s5g0kopykSQWO38rEx1gMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pQMjh5QbuhmXBkgay+8AARdE/u3CUnUw/hr6J4EMxpSF/0nSzxqMO4b7NdVlacJpGAj9YaVMlug5PWOUDERqvto1L3vm4DC0qtl23eMGGe9RVyr+GhMJmb6kPaVa4duXQucQJ/K3dA6RlH4CM6NAVGapTB/IIAjCsTEgbx/dHRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NIFi6WYO; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-59fc4d05861so747274eaf.2;
        Fri, 23 Feb 2024 16:12:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708733540; x=1709338340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=s64lSy32beOezx3NrTFMsAWOUKSkA8l9EG5hBJSlaGg=;
        b=NIFi6WYOZ8iAeFkQ83d6sJsWQspfaAvqRetTbAq34+Z6lxIuS6WfuLS8OcN+7clgkK
         AwPWTzazV4LC5r3N6seiPdHf9HgCG+4pbOxCLicYGvqd/r9fRbGqOn+vV/72njUkdNFK
         aSoSomswn2tRZmI/dt+9riio2nMNjYFOecd/LN5KO8CD42WDKamfJomV9Ys+CywZ5Qch
         cMn3G5FxFt1OXyp6xZkdoD4MJAzQmS8Vb3gMqitvwKYoKOr2f0i8sw85Cx/1eylKOxW+
         rMt8PX/b0CHL/bz2usTNYdI0eGhVqJ5RiPE9ZyMHIPyr9468lfyQI6BeQLGTGITdmWPY
         z4NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708733540; x=1709338340;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s64lSy32beOezx3NrTFMsAWOUKSkA8l9EG5hBJSlaGg=;
        b=Mke0CLpB9w0tY2DPbLn1eNH7qgdaUckMfzN4L20wdotT2IMvo7sH6EI1CEYlhVhm3Z
         D9RfPA3hqQ4EdFsnoCdf2GOvdd41d2nOOSTqs81tVdmUeQVhnk7p+6KEiZPS/dYJ1LTN
         KgkHTNkeCRuqOUj3wsCh3VPMyUUMPkMn2pYmDm2+Dq7Ig/X/JuNda2J5128oTUT9lLKz
         RJmxJHChmeBhahhzYXVySUlqUZOonZ8SucRRCiVGNi4+Jb/KMX+73WiGFUlnP+8TC9XQ
         16vNXWxDDaq5EsA7kBMSk94KPa8a1P1qVTGDjLaGU0U5CKzrRn6tYgE606ne4eN2047d
         OPrA==
X-Forwarded-Encrypted: i=1; AJvYcCWr9rw67Uau23k6H1lSyjkV2Wvznc/McoFydFqbpULczf5xfiiqgV0QuiniPrCHgwq14yF1JVEcSZ7Wkn5mcbYwbH/6CC76iIETbl/KC4kBbqjcXwqn/ktMm1QV/+ltu7LZA/yO7IB1miAjPCLePzuP3WMbhqlgnAQAMZdV3K6bg5z/vBli
X-Gm-Message-State: AOJu0Yz3dDQYTKoFdc4HFSNr10BFLqrzZJW63KRxmt19jo25tHw9TUZO
	EBPH9YCcPBpfAXCJYb7iPZsYTwB92ZCFzDtbRa/eSbq1XOHTVR0k0FyTx56N
X-Google-Smtp-Source: AGHT+IHVK0c3OxqMQxVGn+CYHKIAT6GbJgmaWUE/NOYrcI4/TFUOBw/2E2jGGzDhpjM6Fim+crid5w==
X-Received: by 2002:a05:6358:76a4:b0:17b:5e34:7186 with SMTP id e36-20020a05635876a400b0017b5e347186mr1472190rwg.11.1708733540389;
        Fri, 23 Feb 2024 16:12:20 -0800 (PST)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id r25-20020a63fc59000000b005d6a0b2efb3sm69834pgk.21.2024.02.23.16.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Feb 2024 16:12:19 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <eb3254fe-8419-4ef3-84ec-0ac37284b95e@roeck-us.net>
Date: Fri, 23 Feb 2024 16:12:18 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] hwmon: (pmbus/lm25066) Use PMBUS_REGULATOR_ONE to
 declare regulator
Content-Language: en-US
To: Zev Weiss <zev@bewilderbeest.net>, Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
 Jean Delvare <jdelvare@suse.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,
 Patrick Rudolph <patrick.rudolph@9elements.com>,
 Peter Yin <peteryin.openbmc@gmail.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Naresh Solanki <naresh.solanki@9elements.com>
References: <20240223-moonrise-feminist-de59b9e1b3ba@spud>
 <20240223-player-buckskin-01405c5889c4@spud>
 <684ee927-2287-420b-aee5-f323e05ada47@hatter.bewilderbeest.net>
 <2a06f633-9dd2-4ef0-8cb8-901348ef404a@hatter.bewilderbeest.net>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <2a06f633-9dd2-4ef0-8cb8-901348ef404a@hatter.bewilderbeest.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/23/24 15:26, Zev Weiss wrote:
> On Fri, Feb 23, 2024 at 03:16:28PM PST, Zev Weiss wrote:
>> On Fri, Feb 23, 2024 at 08:21:08AM PST, Conor Dooley wrote:
>>> From: Guenter Roeck <linux@roeck-us.net>
>>>
>>> If a chip only provides a single regulator, it should be named 'vout'
>>> and not 'vout0'. Declare regulator using PMBUS_REGULATOR_ONE() to make
>>> that happen.
>>>
> 
> 
>>
>> Given (AFAICT) the >lack of any combined dts & driver patches anywhere in the kernel git history I guess maybe doing both atomically in a single commit might not be considered kosher, but could it at least be included in the same patch series?
>>
> 
> Ah, except I realize now I neglected to pass '--full-diff' to 'git log' when checking that, and after fixing that I see there is in fact some precedent for commits changing device-trees and driver code together, so ideally that would be my preference here too.
> 

That is not going to happen in the hwmon subsystem unless something slips by.
In a large project like the Linux kernel you'll find precedents for everything,
so citing one is not a valid argument.

As a general rule, I don't apply patches in .dts[i] files through the hwmon
branch at all, not even as part of a patch series. Architecture maintainers
tend to strongly oppose that idea, for the simple reason that it creates
the risk of merge conflicts and thus of bugs during commit windows.

Guenter


