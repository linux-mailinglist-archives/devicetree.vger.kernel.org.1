Return-Path: <devicetree+bounces-275559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIi+JrGBtGlTpAAAu9opvQ
	(envelope-from <devicetree+bounces-275559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:29:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E6D28A248
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 73D9D301DC14
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 21:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47C29382F3A;
	Fri, 13 Mar 2026 21:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TRQJvUIB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E253750A3
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 21:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773437358; cv=none; b=fM5N2/7FMQQA85tdMFzaqH7tVbRkITmPHfrWwWKYek7yC+7NF/8KZwPpD8wlWtL1VWPWoA12rtdwfwhIVR9lD4QAgBZ8o9wdttEyHgTVZrxgNe1d97HVPdwYnLxQxElRJ0OKT0GmQFUO49g25TwEOCquHYUMObUwI72vWTSacdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773437358; c=relaxed/simple;
	bh=laVAuq4kys4b9E4V9rg4f+TzBumtEquGMW7XpBVbfkQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L62upcq3ZRFzptoCvAgnau9Akj+oTrWIrSS2hBN9P5zfwsSROx1DuQN04gkzZu6DZYw/XduMH8fu++of4HJ7k5p3Y3yiL15WtJdPTv/AQj4eABThQdFTyRFbZyBA6IoBzKsWKuWM3sb1nthPvl8eWXZskFX6pnqJSMUmFHGDOC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TRQJvUIB; arc=none smtp.client-ip=74.125.82.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f48.google.com with SMTP id a92af1059eb24-128d2e3074fso3772445c88.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773437356; x=1774042156; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1IyD/QFjiB4F3V0bSsrb/CnqUpdLxKmx3PhmqTmoLis=;
        b=TRQJvUIBEt2ZLAX+MJk58QIHwx1W5fOpXsX2KhUUvtFpOABeuy1KiFx14IYAweS+Mc
         QU93l2Q1aF35xtVYmZ9MmN6rV0OAbXzRP6zXrMr8eOD9G7LcD2SStSvLbP21M2MRmSQT
         kL9YaHsTDIWr2cKqqlD0ceiXJV8N73Im725SDbvwTzu2YNT9V4/PmFa1yjew3W/9MDgq
         Ll4Hxf99xV8r9imXmpLYhsWwejxFXsSCJLOJyYOROy78RQODOmdiBNvB5gtvMNlLJfrW
         DElRGktV08jrx3N+sgetFn+1Fccxt3yyHAg9VS/GKu28DUcmK5OtYqWsniGVePzwRgLt
         ocDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773437356; x=1774042156;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1IyD/QFjiB4F3V0bSsrb/CnqUpdLxKmx3PhmqTmoLis=;
        b=Eriq8ThXX3aPJdRCBH+wF3bQjtSSl84aQs1wPfcW/g8wI9TZlm00AlphleUyXfyYS6
         +p7rHI8tU+TaMyRHlTRHwZq/K88vZfNCIyEh/I4tkMbovB+wEn2ST8HRdV2lOIP2HiYB
         WbSTC1/wyxlq9kE5cDnQv39NP/uJTNQj4BbKTt1u/wfVWBN6Me4iWK6e6k6tOfUpE4Vl
         OtTTKjnekWGqrWxnOm/ILSEhFmOl6kHQx0/sA7Z5gOGkUYMj8sjZMR6EZprMQE323A+W
         8COpYs4u/43/iY/zu3eGoPBgLLI73mywRiHqU4GnLVGeNTbUJsnLG9jf190v7SzwtLDD
         Gl6w==
X-Forwarded-Encrypted: i=1; AJvYcCVQhR+o5DkGQTKqKqngFe+Yw0ws1n4vwTJYBDYGfh1MgoJQhv8jiwdcRyZGJxfJFJzUk/ybDFg3mow5@vger.kernel.org
X-Gm-Message-State: AOJu0YxrbuHjpuRJZ0I8bvk2M5TuLUVjpEmRVJid/0PWD89YFYyqSwBb
	RnaXYRo0kHpigkmk+8KFPvd28LaxD0uALnXMwxr+HiXW5uXYL1YS/NmW
X-Gm-Gg: ATEYQzxd5mJWOOiC8PqZ9k+9bHfTGod4ZiK7Q/pT2q5EmO/oTtNpoAIsHOJxG976ttS
	kvqbouJWzblsCuATG1fhFmx8LWZoVauItIYgMW0rPOb/U1d52bojwq3FQR2SyT3vnVWHFPZnmGl
	tCVt3iZt1gI4tx8FcvAsE9LP4mEVj2pi+FpJo13lgyj5hCxk7SjDj+CPW52qP5s/v/qE1Mss7bU
	lNwDRLpBeGzLOL+2VzTQSBPBbBoaj6CeWYnP6/W4d4fPrmQqb0/NWhvy2W0HoGpmvZqCt4XIo9A
	NiHSyVFxh4Vh/nYHOrJJyKftHHaMU363dtjbDSAOwSJtinlYpdd9zMMLR/wKLkawNTuZzGECidz
	JadQ9aOd6SgmwcHSKlmKIOZzRjTuf7Jm5y7zXsjT47//wk73cnLNWaqOnTYkzST13ROYx1y58OY
	ZhUtMB9HsDkI6MeFXt5r/7eiOcKAiBJCS0F3lI53/XJmvNOxw=
X-Received: by 2002:a05:7300:d717:b0:2be:fe8:8b0a with SMTP id 5a478bee46e88-2bea54de394mr2020946eec.21.1773437355602;
        Fri, 13 Mar 2026 14:29:15 -0700 (PDT)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab3eec8fsm4224208eec.13.2026.03.13.14.29.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 14:29:14 -0700 (PDT)
Message-ID: <31b0abc4-b107-4c95-b6c8-51941330b0f4@gmail.com>
Date: Fri, 13 Mar 2026 14:34:27 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 3/6] riscv: apply page table attribute bits for
 XPbmtUC
To: Conor Dooley <conor@kernel.org>, Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
 david@redhat.com, palmer@dabbelt.com, pjw@kernel.org, gaohan@iscas.ac.cn,
 me@ziyao.cc, lizhi2@eswincomputing.com, hal.feng@starfivetech.com,
 marcel@ziswiler.com, kernel@esmil.dk, devicetree@vger.kernel.org
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-4-ganboing@gmail.com>
 <20260313-breezy-from-6b5ad9e9a5ac@spud>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260313-breezy-from-6b5ad9e9a5ac@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275559-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 04E6D28A248
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Conor,

On 3/13/26 06:24, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 01:44:04AM -0700, Bo Gan wrote:
>> Apply the UC bit like Svpbmt and THEAD_MAE does. Also changed the
>> _PAGE_PFN_MASK definition to exclude the UC bit, as it's position
>> is now determined at runtime, and can be part of PPN.
>>
>> Signed-off-by: Bo Gan <ganboing@gmail.com>
> 
> This should be squashed with the patch adding detection and the Kconfig
> option.
> 

Sure.

>> ---
>>   arch/riscv/include/asm/errata_list.h | 17 +++++++++++++++--
>>   arch/riscv/include/asm/pgtable-64.h  |  9 ++++++++-
>>   2 files changed, 23 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/riscv/include/asm/errata_list.h b/arch/riscv/include/asm/errata_list.h
>> index 6694b5ccdcf85..ba0f3d4dd0cbb 100644
>> --- a/arch/riscv/include/asm/errata_list.h
>> +++ b/arch/riscv/include/asm/errata_list.h
>> @@ -53,6 +53,16 @@ asm(ALTERNATIVE(	\
>>   	: /* no inputs */	\
>>   	: "memory")
>>   
>> +#ifdef CONFIG_64BIT
>> +#define ALT_PAGE_CUST_BIT(_bit)						\
>> +asm(ALTERNATIVE("li %0, 0\t\nnop",					\
>> +		"1: auipc %0, %%pcrel_hi(riscv_xpbmtuc_mask)\t\n"	\
>> +		      "ld %0, %%pcrel_lo(1b)(%0)", 0,			\
>> +			RISCV_ISA_EXT_XPBMTUC,				\
>> +			CONFIG_RISCV_ISA_XPBMTUC)			\
>> +		: "=r"(_bit))
>> +#endif
>> +
>>   /*
>>    * _val is marked as "will be overwritten", so need to set it to 0
>>    * in the default case.
>> @@ -60,11 +70,14 @@ asm(ALTERNATIVE(	\
>>   #define ALT_SVPBMT_SHIFT 61
>>   #define ALT_THEAD_MAE_SHIFT 59
>>   #define ALT_SVPBMT(_val, prot)						\
>> -asm(ALTERNATIVE_2("li %0, 0\t\nnop",					\
>> +asm(ALTERNATIVE_3("li %0, 0\t\nnop",					\
>>   		  "li %0, %1\t\nslli %0,%0,%3", 0,			\
>>   			RISCV_ISA_EXT_SVPBMT, CONFIG_RISCV_ISA_SVPBMT,	\
>>   		  "li %0, %2\t\nslli %0,%0,%4", THEAD_VENDOR_ID,	\
>> -			ERRATA_THEAD_MAE, CONFIG_ERRATA_THEAD_MAE)	\
>> +			ERRATA_THEAD_MAE, CONFIG_ERRATA_THEAD_MAE,	\
>> +		  "1: auipc %0, %%pcrel_hi(riscv_xpbmtuc_mask)\t\n"	\
>> +			"ld %0, %%pcrel_lo(1b)(%0)", 0,			\
>> +			RISCV_ISA_EXT_XPBMTUC, XPBMTUC_HAS##prot)	\
>>   		: "=r"(_val)						\
>>   		: "I"(prot##_SVPBMT >> ALT_SVPBMT_SHIFT),		\
>>   		  "I"(prot##_THEAD >> ALT_THEAD_MAE_SHIFT),		\
>> diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm/pgtable-64.h
>> index 1a6d04884111d..aab6990d92238 100644
>> --- a/arch/riscv/include/asm/pgtable-64.h
>> +++ b/arch/riscv/include/asm/pgtable-64.h
>> @@ -76,7 +76,14 @@ typedef struct {
>>    * | 63 | 62 61 | 60 54 | 53  10 | 9             8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0
>>    *   N      MT     RSV    PFN      reserved for SW   D   A   G   U   X   W   R   V
>>    */
>> -#define _PAGE_PFN_MASK  GENMASK(53, 10)
>> +static inline u64 riscv_pfn_mask(void)
>> +{
>> +	u64 cust_bit;
>> +
>> +	ALT_PAGE_CUST_BIT(cust_bit);
>> +	return GENMASK(53, 10) ^ cust_bit;
>> +}
>> +#define _PAGE_PFN_MASK  riscv_pfn_mask()
>>   
>>   /*
>>    * [63] Svnapot definitions:
>> -- 
>> 2.34.1
>>

Bo


