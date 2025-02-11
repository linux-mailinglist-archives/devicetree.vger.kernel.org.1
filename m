Return-Path: <devicetree+bounces-145156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA9DA308E9
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 11:42:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBFC01676ED
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 10:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA28C1F91C8;
	Tue, 11 Feb 2025 10:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N+yIjRxl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640E11F8AC0
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 10:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739270520; cv=none; b=n4TMliPwuPrIs/CMiasDYrWjeSwxtMPAN5JWlURCd1wEqiU2wQ60Dmj++pDKq0goNJzQDTksDYu95mnLG7upwF7UeH9MQSp+UW00y7ROEwh/nmSF4C4u5aiFmu+Je8FTiHJYpORFnrRPFQ3Lwzx7FkTNKsjo63S/T+LIT+7adoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739270520; c=relaxed/simple;
	bh=FooWr0ldHoSRyh8SIaja1jRnbPQlXMMzgjUp2Lh9IBw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IbOMmEWziKEgVqioWP7wGeeFablfzg9ybniYL3NlOj1qbzZz0UdqKfwyGRWvFJm00YUS4EDJ59zzL79ldQtev/Y6QAcqLVLouYqXUXLtIBrNWc74Jrj6SsWQBhogb8p+lOd1nasLKhIml2Rqi6TcSH1FKiDB4QezMZ/ux4dBEpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N+yIjRxl; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-438a39e659cso37037085e9.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 02:41:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739270516; x=1739875316; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0cUkixBgpYEn4aAeaI+o2I3hnF9EtEfIlYRTahALjTQ=;
        b=N+yIjRxlucioHo9mr5yUxrXMpkixvJEuV/qvFwgCfppA9QRr7LAivUl2zuIYUGmm3A
         XebAE7SuRYjY/5AyhU6vm8Y+98sslA7vOxArxfYlFt3FnJteQ63xvSciILlQ7QIBiXsA
         4WX0Np/YOQxpr+8Oa5CfkLR6SjXLWkpISxjZf3NzNXL1TkbAU8SwuyGj1v01amTXDYR9
         Kj2vNWJ5fwME3nbHN7H7dNVCeHVBJPNsEy+tUr9s+FgJ+AUOiUg0N/7pRAXjxSTSXM5g
         Z+duvoWjocKd3EGayBjXGfWKCXXwQ+twZ5dzEAvmXwS6YPR4NpHeo6hMHneekwwoMx0Y
         BTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739270516; x=1739875316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0cUkixBgpYEn4aAeaI+o2I3hnF9EtEfIlYRTahALjTQ=;
        b=MibThv4Uc6DthzdZfFV1UmdTUs9hqxQh02lbwLiK8ONjVajX2G+fXE6IG5vwIgegK+
         m1i3he50YiK4rt3yVcaBYaYFxtvHMRteScE/VsbDtTZ1TWVSr2ALjOrbV6c2Hx87VwdA
         nn9gucpogvVaKoxMTkzSeiPNBFvzzMwWpHcfOQp3C+jFL1ACAYLJrTeyGCwBumIaYSTU
         rOgxXlCSLVxNLa8Ag+72sAPPoNieaXZ1m1ZcssDKaDQ9waREXmNZ261kaL2eNu7EUfpK
         EguzzTEHH2BAxeE1jsxcnaANc2000WTzWoWfYWGZEdIrLsS4YtQC2VUPirPnG08gc6mm
         SLZA==
X-Forwarded-Encrypted: i=1; AJvYcCXHNBXBOZEwbnERQqk+QQ+RmLPl4t5/z2sX5K4RqrsLcKz3J0CRfk+c5R0VC4ie/pnjHIG3dmiW7GG6@vger.kernel.org
X-Gm-Message-State: AOJu0YzJTyjZpafXIrUKIFA1AUohTd2p/VMPpbVV8bovjKZ8VJefSgr3
	tYY9WhhMGDHo8l2MWZ2OkORffKf9ivIZ7ITuiGCb3judWTz2gg49opt0SowXpbZ2masB2GSqNyt
	9H/c=
X-Gm-Gg: ASbGncs/9IbSG8JKps4ny80S3EnJAghZv1UlADwXLxenmusmgnoSEc01SwUjUvcvHeS
	B2RLmWNR8NtXo7OOa+OEyWcgkWjgY9MstNov+8z05v1SsvAT4LFPkISR8KGNtbURA648GlieHbi
	mspYEnfgEL1STByDDLK0gXcZGvq1HqPAYDRhRHNwbIbVJc8RSiluLZoD2TFVeD1RbUG4+vhNULQ
	HWQE3ZB+OysoXA9RGMxEzCOpKG198flnnYtFcr7fR6FC82Gy6wjrL/RQi5WX8ujgWVKpna5E49g
	Nvbz+1cijcTZ1xYwJO5XSCE=
X-Google-Smtp-Source: AGHT+IHiznFHRTCwShZbEfQSfsP4ZlgsTN5VR0Awq+vBQZzykOkPVdMDgz2P9LDFE6gk8RKX6JBiyw==
X-Received: by 2002:a05:600c:310f:b0:439:48f6:dd6d with SMTP id 5b1f17b1804b1-43948f6de9amr49946795e9.22.1739270516524;
        Tue, 11 Feb 2025 02:41:56 -0800 (PST)
Received: from [192.168.68.163] ([145.224.65.3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43946bff4d4sm49091965e9.3.2025.02.11.02.41.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 02:41:56 -0800 (PST)
Message-ID: <ea5d18c1-0cce-44f7-bf7a-7c69ffb05bb6@linaro.org>
Date: Tue, 11 Feb 2025 10:41:54 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 0/8] Coresight for Kernel panic and watchdog reset
To: Linu Cherian <lcherian@marvell.com>
Cc: suzuki.poulose@arm.com, mike.leach@linaro.org,
 linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, corbet@lwn.net,
 devicetree@vger.kernel.org, sgoutham@marvell.com, gcherian@marvell.com
References: <20241216053014.3427909-1-lcherian@marvell.com>
 <da7dcddb-d407-41b2-8343-a0ec21914606@linaro.org>
 <20250204120216.GB1525185@hyd1403.caveonetworks.com>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <20250204120216.GB1525185@hyd1403.caveonetworks.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 04/02/2025 12:02 pm, Linu Cherian wrote:
> Hi James,
> 
> 
> On 2025-01-24 at 17:38:58, James Clark (james.clark@linaro.org) wrote:
>>
>>
>> On 16/12/2024 5:30 am, Linu Cherian wrote:
>>> This patch series is rebased on coresight-next-v6.12.rc4
>>>
>>> * Patches 1 & 2 adds support for allocation of trace buffer pages from
>>>     reserved RAM
>>> * Patches 3 & 4 adds support for saving metadata at the time of kernel panic
>>> * Patch 5 adds support for reading trace data captured at the time of panic
>>> * Patches 6 & 7 adds support for disabling coresight blocks at the time of panic
>>> * Patch 8: Gives the full description about this feature as part of documentation
>>>
>>> v12 is posted here,
>>> https://lore.kernel.org/linux-arm-kernel/20241129084714.3057080-1-lcherian@marvell.com/
>>>
>>> Changelog from v12:
>>> * Fixed wrong buffer pointer passed to coresigh_insert_barrier_packet
>>> * tmc_read_prepare/unprepare_crashdata need to be called only once and
>>>     hence removed from read path and added to tmc_probe
>>> * tmc_read_prepare_crashdata renamed to tmc_prepare_crashdata and
>>>     avoid taking locks  as its moved to probe function.
>>> * Introduced read status flag, "reading" specific to reserved buffer to keep the
>>>     reserved buffer reading independent of the regular buffer.
>>> * open/release ops for reserved buffer has to take care only about the
>>>     set/unset the "reading" status flag as the reserved buffer is prepared
>>>     during the probe time itself.
>>> * Few other trivial changes
>>>
>>
>> Hi Linu,
>>
>> I tested that decoding a crash dump of ETM1 (trace ID 17) from panic kernel
>> works:
>>
>>    $ ./ptm2human -i cstrace.bin
>>
>>    ...
>>    There is no valid data in the stream of ID 16
>>    Decode trace stream of ID 17
>>    Syncing the trace stream...
>>    Decoding the trace stream...
>>    instruction addr at 0x140c9afc, ARM state, secure state,
>>    ...
> 
> 
> Thanks for trying this out.
> 
>>
>> I noticed that once in the panic kernel Coresight becomes unusable, and the
>> Perf Coresight tests fail, with no obvious way to reset it other than a cold
>> boot:
>>
>>   $ perf record -e cs_etm//u -- true
>>   $ perf report -D | grep AUX
>>   ...
>>   AUX data lost 27 times out of 27!
>>   ...
>>
>> I didn't debug it yet. I thought it might be something to do with the RESRV
>> buffer mode, but it doesn't look like that should be the case from the code.
>> Perhaps its the claim tags and coresight_is_claimed_any() lingering, so it's
>> not really an issue that's introduced by this change?
> 
> 
> Is that problem reproducible without this series applied ?
> 
> Thanks.
> Linu Cherian.
> 
> 
> 

Yes looks like it's unrelated. I sent patches to fix the claim tag 
issue, and there is some other state that needs to be cleared too. But 
we can do it later.




