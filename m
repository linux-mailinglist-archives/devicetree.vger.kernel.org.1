Return-Path: <devicetree+bounces-223457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E12A5BB5240
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 22:43:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 23809341D01
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 20:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B49528726B;
	Thu,  2 Oct 2025 20:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aaxpuPeZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFC7275871
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 20:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759437828; cv=none; b=g/Bh4RvR0GoTtSymQ5wdkc1IPddPDjyzCn01sB2oJlUadCDok9xsbTWj5571Li8YVNYgki2/uTClS+v6Xy+IoKLiuchKHbg8PL8pOE7cveHV5KPYby6PjEsFVILWA/k14rWwfVo3nOxEckthDQmvtS8qCcFjnA/z4KStqpJ35V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759437828; c=relaxed/simple;
	bh=hWzuRXDCrUX3zFh4rzWTXm0POiqsAnBBM5ORPbOLcyA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MeNeYf5W+4y18moSzs/bqd/h1YNWwnwD1C5J22R1y+2kbw1iAAoRlzT8t4ihWcvBATEom455Gyc2reLlOuvof4JsyXG6KzsxfqY9W3EzaVe1S2uB5vpRxHAHaW07oYxOJfv6WFpgu95Z+wIGZEDzdiGsAqjd2pvwCu0CIy9NJG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aaxpuPeZ; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2897522a1dfso14055175ad.1
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 13:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759437826; x=1760042626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HRY0VePK+ES3Imbvh+CGHLFf9jXlNxuHmEATSkHnxuM=;
        b=aaxpuPeZIFniEZmRRG0DNgYGX1gAfnykimvvVZbR0V4yEADJj2eQJizB8PebSoR2qu
         lQGtlKyyFvonxAbWWJzrPyM/rD1zz9bbmeMrA97ngZ56fhikfFIzsclT3LfXXM6ZYnJY
         QGgB0F8UtSaNSvcJzNUvF14ePOHqNYOwFs33wE/ZaGmNYYyDKQBZFqZDOYwVv1gzVQgo
         ZR1W3yG9tB8yqG5kYdzj4lK4lR1nKKxnOLzjm9YFQcwJUo3ck9m4SUvLtevY9QwoT/xM
         be0j3W8OulWwu6ln2I3cyO9TbMciEFn5kvpNPmXmueDaq5m55Od4ylDef3vRB8ljHGqm
         1HHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759437826; x=1760042626;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HRY0VePK+ES3Imbvh+CGHLFf9jXlNxuHmEATSkHnxuM=;
        b=q817UN/T/xA8hhGUq10xYky2OkDILk3Xk5ACzStiYl6yFxUMpKw5dkv8bM0OFaldMf
         ufrU7aagzi8/T9ZzT3M/pau955vDtYSlG7Gjs7m6DmEAM4xf/st72hqykTNayUp6ZTGC
         1SjsLUDO4VWCe+iflC2tGZB9hyR/GO/oZk2BkutlHN2EsH0zvjRh5BJ8qgqxPSCShYBB
         vrZ5HpKmhaWd9OAtiT6vYRaoj23PaD8z5eCGoAzIJQo+UDEoq2t9wEsc8Hw4D05OUIa/
         CLSwqtbhuOd9oMtrrYyDgd3DWkMfblRiGaegYkjsTs9st+PJlUJNlbpzQttPiVYzIrsa
         L/BQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2eGwJBBpuATqzd3Fe/0v7jahTUnG9PITbgU0YEmhf+yJgUN2yd+zoDLcAQYjfP8dCqzFb6sws/LmP@vger.kernel.org
X-Gm-Message-State: AOJu0YxPVd7uaQnYSfwlmKQDcmRnbqe/Y0DVY+XV0vbCc1Zu32ZByJ+A
	rgwcetjGkZqhScXd5vASORpmtE4dD4MLbI1ZjfC99GyVzp4HxqP1td6W
X-Gm-Gg: ASbGncs5fpW8Z9nLBYDUvGnWTGTmOxSmO0LnkFeo1naaMFqvJ9L19VDl7DFF12Rvhnc
	09/221t6oQsqxh/FyGHAtvpRi/ArhTbr9svTC6E1ddzN19np8wQzIPdh5IWdnfusrT3k1sEHhW9
	zPotZL2WJmOgFcHvPkFroo4xzqJTkl/KQbfxcXrodYc2pjp5zEDLa+tqb0CpIXN+taT9gaGanfH
	NpRNb/33UEAF7KgH1N5EvugPRRB9xdgsL0SYxj0orQ2PjS8jawbmH7bpkmX+Xp0OzQ9KhoG+Cfq
	JvrILo2S3MpHKPlK9JzjLjV8rN5Yf8HIqldGQqhqtSLO0JouG/CFqL5apTf7as0PGJKosNlVxVw
	c1OLWpY2RPHTvVLT4yrnnUm6wdil4Dw+qs+VedgdYwOzYTUzV
X-Google-Smtp-Source: AGHT+IHwQNosp0cXnn1EJbHqUTcUQOaG4RULI0Bh4YmEkrcrselSen1z+26ZGolK8E4JLN9dpIcDCA==
X-Received: by 2002:a17:902:cece:b0:27d:6f49:feb8 with SMTP id d9443c01a7336-28e9a546360mr7478395ad.16.1759437825699;
        Thu, 02 Oct 2025 13:43:45 -0700 (PDT)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d125e9fsm29618905ad.36.2025.10.02.13.43.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Oct 2025 13:43:45 -0700 (PDT)
Message-ID: <30efd90b-ba9f-4291-b9a1-8739f1c5f24b@gmail.com>
Date: Thu, 2 Oct 2025 13:42:20 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/11] Linux RISC-V trace framework and drivers
To: Greg KH <gregkh@linuxfoundation.org>, Anup Patel <apatel@ventanamicro.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ian Rogers <irogers@google.com>, Alexandre Ghiti <alex@ghiti.fr>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jiri Olsa <jolsa@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Liang Kan <kan.liang@linux.intel.com>, Mayuresh Chitale
 <mchitale@gmail.com>, Anup Patel <anup@brainfault.org>,
 Atish Patra <atish.patra@linux.dev>, Andrew Jones <ajones@ventanamicro.com>,
 Sunil V L <sunilvl@ventanamicro.com>, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251002060732.100213-1-apatel@ventanamicro.com>
 <2025100208-challenge-protrude-d6c3@gregkh>
 <CAK9=C2U9FV6crTL1G2X6tUM=RyRnPBm1dPeFc29n3vmrFTcfHw@mail.gmail.com>
 <2025100255-catcall-drinkable-23f5@gregkh>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <2025100255-catcall-drinkable-23f5@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/1/25 23:44, Greg KH wrote:
> On Thu, Oct 02, 2025 at 12:09:23PM +0530, Anup Patel wrote:
>> On Thu, Oct 2, 2025 at 11:56 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>>>
>>> On Thu, Oct 02, 2025 at 11:37:21AM +0530, Anup Patel wrote:
>>>> This series adds initial support for RISC-V trace framework and drivers.
>>>> The RISC-V trace v1.0 specification is already ratified and can be found at:
>>>> https://github.com/riscv-non-isa/e-trace-encap/releases/tag/v1.0.0-ratified
>>>> https://github.com/riscv-non-isa/tg-nexus-trace/releases/tag/1.0_Ratified
>>>>
>>>> The RISC-V trace framework and drivers are designed to be agnostic to the
>>>> underlying trace protocol hence both RISC-V E-trace and RISC-V N-trace should
>>>> work fine. The discovery of trace protocl parameters are left to user-space
>>>> trace decoder.
>>>>
>>>> In ther future, there will be subsequent series adding:
>>>> 1) Sysfs support
>>>
>>> why does "trace" need sysfs support?  No other cpu platform uses that
>>> today, so why is a new user/kernel api needed?
>>
>> We saw trace support for other architectures (e.g. ARM coresight) allowing
>> trace start/stop through sysfs. If this is an obsolete or not preferred approach
>> then we will deprioritize and possibly never add it.
> 
> Why is that needed for coresight and other arches do not need it?
> Perhaps it should be deleted from that codebase instead?
> 
> thanks,
> 
> greg k-h

Hi Greg,

sysfs is helpful for controlling the trace if not utilized through perf
framework. It can also be used by userspace to discover the topology of
trace components and their capabilities. @Anup I assume this driver is
designed with other sinks in mind (not just ramsink), so it can be used
to emit trace to external probes, right?

Bo


