Return-Path: <devicetree+bounces-275560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AK+AvGBtGlTpAAAu9opvQ
	(envelope-from <devicetree+bounces-275560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:30:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A683928A274
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:30:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0DA10301EF25
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 21:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D41921883E;
	Fri, 13 Mar 2026 21:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CWnMGosS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1178A1A680E
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 21:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773437422; cv=none; b=SmZV6dDMKvuYPwWjeDakFj7RBZFzcMkr2mH/q3eLA1ohEsJ2RyG1kBv1SqSIL/dKkeLx9/DKqImHRTMtVW6EVzjVGUpfUIjq/5245UMx0qUt4YzpQe1YSYROVl9/ZBkC62FqrHN1xbhdCELj3UDB8CubttuAxrlP1rGHz10iIpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773437422; c=relaxed/simple;
	bh=Uotx3MQrwIx3iFxB0cjjlhVUvsNU3wEjOsOU19n1iXA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z+9hCwZJ44dWi0OOTkYIGTxs2IwfumEjEh8K8XCO+gFTtTUd6BXvDL0sHFitRRCySIm9mpaarxOEHrk5UumMCBkENpnYeqYFUDP8LOMVIiWsm51dnMDjPS/9DEFpPlgtwIStB6rtY1b+p/6zLVnruXrz6WuQ4aLQ0iVZqztQLy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CWnMGosS; arc=none smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2be1b5fe11cso4225536eec.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773437420; x=1774042220; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TlrfzWsjPUE6veDC3r0tKtgFvPrhedUitAlzl2kQ2Yk=;
        b=CWnMGosSmZWAYxqNPWCJGzx3gB5xrRvthr1KzbGeOUiT2H5QxSfo+n+z8KuiI+pr8z
         K46vx/SJKrltQLRkydlczONSwJ5sX6wtimyg0fxwlu8WXwuW3EwkR4lV0UaTGMLAzCTl
         uju2wC7aFlz6YVeZSYS+d3nKWezePrd70npWUn4GNIPNu6VQeTu7Fujt2og/aB9Qfhfc
         AzCjemuKm+sRZSbDrZHM0sw+KOhOuKRv2XXN/HWlyTe+cYFwrs0hEH24cKpIk2W8tdak
         UzbDis4fljCeHxSsjZDFdNi57dlyYxPqCcvlZrentxvs+f2dED/BSo8idHHpOGKBrXUa
         X0sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773437420; x=1774042220;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TlrfzWsjPUE6veDC3r0tKtgFvPrhedUitAlzl2kQ2Yk=;
        b=PRB7iMWWw7ArBYQj6Ce40PYxde1ho4DtVfZkoD7Up3PmPiqYgrapyac9bggr2HiI7k
         SkSALMA+FSCW9vAP0ByrsFJfbGRnS30TOxaiTBll8e4tddpQ+gJYMtvP/7JtfZxGzot1
         X7+ciVJPZRK1GmsWUS+Kj7vasSPwjpJLLoqcJwRd1Iw2F8nDMq5a7/kOVuOUllgtIoIR
         1xzGk1WWYmm+hjhpJqTf7GEyC7XhLCQW84y3RRpMP4WaCbxKLuiand/CTE/CJympwKP4
         HjQbOo1ck/beGnDo61tZP9gUPMYogN96w2zzmYPmN5giuC46Ch+J6vBFYzw4O23S8ZDK
         Y94w==
X-Forwarded-Encrypted: i=1; AJvYcCW/b/0yrrgddWHKSBgF39jZb4v45QwRqvTQqyeAAYllx94qDo2ppmZf8696l8dnO/FBiu9Szrq+axdj@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy2gMoPnqW8S9kpCMD5pquivCNN4Tr/TRkd4QeJWzGdTubqGT6
	hFiJZstLacHBmoiw7xohQI/V8x1xA9t30zqhOYd0Xc0ndrTvnlzzvFns
X-Gm-Gg: ATEYQzwMzzernozQTI7zhHQwXgIV8o/Penlx+XHNZJCfEtGv8cAcuJqHoBK3hSSB3W0
	4J10tvcDRUMs9bQbEWo4uV/Egrmppz/ANFWtd/oprIk+0qYx3UOyEABe1W8bDS7O8TOD+a3E77h
	gFi9S4lHfW+KoHyQaKN5P3+ijC1vQf9V+UbF2h90scDpYg2SdoFWz04VotxJ4srXNJXsWKn/PBk
	Fh0KtW2HcnX/wZ05A9TesbJlGD9dQ1fPkRAWJ9p3mm1TYoINs8h8YjcyAqib5nDVLsDdnw759GT
	I6+htuk9TDzT9Ru2iD+NChVsXQeCmKM4/0BUqnYQeA+xXEsVvv3waYqs8+vchnSNxC0sy6ogXDf
	Sli+SuzX6NM+GhiA/AVd2/MnEq7BOYIIrs7cE2yi/8D9HHy8lLnMIeL/BTcgj9hpMza06ulvaSL
	SvucmJDFlerF7xEaELTxj+0KxfsuQUqqi4wa1qOrVrDUJY4tU=
X-Received: by 2002:a05:7300:b54a:b0:2bd:b325:8d91 with SMTP id 5a478bee46e88-2bea5542097mr2083037eec.29.1773437419216;
        Fri, 13 Mar 2026 14:30:19 -0700 (PDT)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab527170sm4197910eec.21.2026.03.13.14.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 14:30:18 -0700 (PDT)
Message-ID: <5129988d-a75f-473f-bb9b-b8da006d52c1@gmail.com>
Date: Fri, 13 Mar 2026 14:35:31 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 4/6] riscv: select RISCV_ISA_XPBMTUC in STARFIVE and
 ESWIN SoC
To: Conor Dooley <conor@kernel.org>, Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
 david@redhat.com, palmer@dabbelt.com, pjw@kernel.org, gaohan@iscas.ac.cn,
 me@ziyao.cc, lizhi2@eswincomputing.com, hal.feng@starfivetech.com,
 marcel@ziswiler.com, kernel@esmil.dk, devicetree@vger.kernel.org
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-5-ganboing@gmail.com>
 <20260313-backrest-shamrock-0c651c405686@spud>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260313-backrest-shamrock-0c651c405686@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275560-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A683928A274
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Conor,

On 3/13/26 06:28, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 01:44:05AM -0700, Bo Gan wrote:
>> Enable the XPbmtUC feature for Starfive and ESWIN SoC
>>
>> Signed-off-by: Bo Gan <ganboing@gmail.com>
>> ---
>>   arch/riscv/Kconfig.socs | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
>> index d621b85dd63bd..0584511707c7c 100644
>> --- a/arch/riscv/Kconfig.socs
>> +++ b/arch/riscv/Kconfig.socs
>> @@ -14,6 +14,7 @@ config ARCH_ANLOGIC
>>   
>>   config ARCH_ESWIN
>>   	bool "ESWIN SoCs"
>> +	select RISCV_ISA_XPBMTUC
> 
> Nah, you can't do this. Either RISCV_ISA_XPBMTUC is user selectable or
> it is mandatory for these platforms and selected. Don't mix and match
> please.
> 

Sure.

>>   	help
>>   	  This enables support for ESWIN SoC platform hardware,
>>   	  including the ESWIN EIC7700 SoC.
>> @@ -56,6 +57,7 @@ config SOC_STARFIVE
>>   	select PINCTRL
>>   	select RESET_CONTROLLER
>>   	select ARM_AMBA
>> +	select RISCV_ISA_XPBMTUC
>>   	help
>>   	  This enables support for StarFive SoC platform hardware.
>>   
>> -- 
>> 2.34.1
>>

Bo

