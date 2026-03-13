Return-Path: <devicetree+bounces-275566-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGQpIsSLtGlUpgAAu9opvQ
	(envelope-from <devicetree+bounces-275566-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 23:12:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9239528A499
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 23:12:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C31633007216
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 22:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D11934E74E;
	Fri, 13 Mar 2026 22:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="knQie6M3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D5130EF8B
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 22:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773439934; cv=none; b=V9poNtwVgKE3Z+YKv4POo71iLP8ewaYn17UOpnT+8wmRprSA/idoZkQC2sFvvU0ci6DDaPS9YMJnUz7q9Lqm+TCZ+0XgzEqz2bQx51lnN52VFzxEh1A0zFBcDUDp3pPnM70MlV6gvrymeL/rukaIoTRquIciBmg6zUOoG12WH4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773439934; c=relaxed/simple;
	bh=a2rwxeP+2ofZlPZBX7gOlh0HHUDp4hDosMQ759hpulc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SS7gT6li5nxTk6VKVWffM5+na2ZP78Y0dmqWjg/nIYG3cYg1nu/PFdL3YBuPTk8EXqiJcTth3sOUjpYngWYJ9U6C21oG0tm7ThG5ZOVCmjEGvEKgf2vjzt65kbJJ/wItk44vrK8la1BXHe6ulXuQ8w23p4CuODyVKrLaF3yS1aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=knQie6M3; arc=none smtp.client-ip=74.125.82.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2ba895adfeaso2843401eec.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773439932; x=1774044732; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fdJ8YTk3Y5PWsipane+dpCcPmUZ5IoU6AqaNYKwWMkg=;
        b=knQie6M3ubc1kmvb0Hr9qRwlcfBXY69uVEgKWftaH6zgvu03TVmZYzpGvB8OSXgMrq
         PTJgcROdvQzJndWonrpUaFxfy0xQLLhMUamqXSby3YBtouOa9L0icyIEfOHHMO5aUm/t
         651KWXYK5cjnPcp8prR1JmxNJaP9qD7+YAUe5/lRybKKFhuyOmut+CTrsfaK1IexyqBr
         ZMZNXQse4rbbnnqjRbL1yY54oojxdnrCMBo/VXY872V2GJMVbW/NrnCfdbjtsZfOrLhY
         MitdbnfPbQOeqexP2EH3vSfBdESFlAaO3+OnSmUt9jkyRioUVslWNoRoJpxEwKA9qcRg
         IfNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773439932; x=1774044732;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fdJ8YTk3Y5PWsipane+dpCcPmUZ5IoU6AqaNYKwWMkg=;
        b=JMbHlm7o719SsLCoEnTQFxNVHB8ZnUaiuWK5i52Fj9z3xJxFtHfjilciUak7irQEJO
         Cy1AUbPOa/F6LDeXoFdY1NN/miLKBtx++nF7Hcbfrtp7+7C67atRFXVOM5/wUEwDxjV2
         N2NncAo5kIvPDEDQl3PeMLuaENN3Ao5Sp+xGBeOg95/Zv88W5/jDcNNZrhJvN5YXSjs+
         4xPqzIpHhXDI3ek8qAPOZAKvrHLoCXYB5mF/xkCELJP/eXogz/Wrun9DJeCeB9brdaav
         g4TGt5cbAFzd7KwFc+hcSUSy7uDQqTtWROpkZT9/hwIfgTdM7KDyA4K4BAizBdiZ4V3M
         XO0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUHJZbnCVvG6fHspZHes30CPsc8sdML7HAapAsayLqfTfNckZjMiNDuouriXiqhmgNJygJAZ87AAYyO@vger.kernel.org
X-Gm-Message-State: AOJu0YweMbok2a5OW75vnlhImpnHFeklWmZNaimg/s3xTbnwaHTBy7aN
	vOECQh+Zw9TVjxaQw4M61XXeCtyO7Fgm6Hisx/LHVp/Jrlqkwa9fn5tZ
X-Gm-Gg: ATEYQzzAhXx21b0FN7QwBARiDdQUHs3vrVG63KC3y8gEuy9N8gtf61VjxZx9XvRBNYy
	XzDJDj3ko9bss+EITmmh8LmsPcS1yTeA979W07g7WSQ7h2B1FH0t2PfdihlaWdq5K3xXwJx3y2O
	A16jlynRBajvDU6vxBZT4JQg9ewjFYugCpukxUEkd6FR0t2FpXRTDBG3EQngdUpORRy5cYgYvtO
	F9K+zyWSp9jf25KSx84Towzwo6g/IQJ5TFJpe2VRtBOhP5wfUE4ehA+E3DHQ982C42HrsBMMBQP
	IhECYetcmN6Z3yi09CTZWlzUcwNbctwihJ/qJIgZPlVPinueU9Lip61WW7S9eyFNOVKRbJrUQOv
	w7FKPKQrUijuGckOjn/JlCppaeMP8xK82uNwjFKi7zH9SXKveOr204b2Z/7+vhT+z+RKw8q+ean
	BbFq4uUyxv35Gj2lnxCXPcYmHTMwp5lnMKrtTnIm3QbAuax+9Vvjr8Ta9BLA==
X-Received: by 2002:a05:7300:e887:b0:2bd:cfce:4c4b with SMTP id 5a478bee46e88-2bea5434677mr2436598eec.2.1773439931999;
        Fri, 13 Mar 2026 15:12:11 -0700 (PDT)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab526d61sm5063802eec.17.2026.03.13.15.12.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 15:12:10 -0700 (PDT)
Message-ID: <338f0f79-1eed-4c5c-9966-04a2eaeb3d98@gmail.com>
Date: Fri, 13 Mar 2026 15:17:24 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 0/6] riscv: support EIC770X/JH7110 noncoherent devices
 with XPbmtUC
To: Conor Dooley <conor@kernel.org>, Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
 david@redhat.com, palmer@dabbelt.com, pjw@kernel.org, gaohan@iscas.ac.cn,
 me@ziyao.cc, lizhi2@eswincomputing.com, hal.feng@starfivetech.com,
 marcel@ziswiler.com, kernel@esmil.dk, devicetree@vger.kernel.org
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313-uninsured-desecrate-06d51e8c100d@spud>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260313-uninsured-desecrate-06d51e8c100d@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275566-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9239528A499
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi

On 3/13/26 05:30, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 01:44:01AM -0700, Bo Gan wrote:
>> Starfive JH7110 and ESWIN EIC770X both have non cache-coherent
>> peripherals. On JH7110[1], GPU/VOUT/VPU/ISP are routed to the sys port,
>> making them not cache-coherent. On EIC770X, all peripherals are routed
>> to the sys port, and none is cache-coherent. To make drivers work on
>> such platforms, the standard solution is to use Svpbmt and map the DMA
>> buffer as uncacheable. However, neither SoC supports Svpbmt. Instead,
>> they map the system memory twice, as cached and uncached. The uncached
>> alias implicitly applies the uncacheable PMA. To support such platform,
>> a special form of Svpbmt, namely "XPbmtUC" is introduced in this patch.
>> It's a synthetical PTE format where a single bit (UC) is controlling
>> the cacheability and the bit position can be configured at runtime. It
>> is intended to model the physical memory aliasing with minimal effort.
>>
>> On JH7110, it aligns perfectly with the HW, as the aliased UC region
>> happens to be offsetted by 2^34. Thus, configuring the XPbmtUC with
>> bit=32 (PPN is shifted by 2) is all that needs to be done.
>>
>> On EIC770X, the aliased UC region is put to a awkward offset, and given
>> there can be 2 NUMA node (dual-die) with 2 separate memory regions and
>> their UC alias counterpart, we instead ask the firmware to provide a
>> thin-layer hypervisor to re-arrange the memory map. The XPbmtUC will be
>> enabled with bit=38, thus map all UC pages to 2^40 (the upper-half of
>> 2^41), and the underlaying hypervisor will re-map the 2^40+ addresses
>> to the appropriate UC alias regions. (See description in PATCH 1/6)
>>
>> We chose bit 38 (PPN bit 40) to make the 2-stage translation efficient.
>> Hypervisor can utilize Sv39x4 G-stage scheme, and map all pages as 1GB
>> huge page, consuming only the first-level page table (16KB total), and
>> several TLB entries. In practice, it's the firmware/bootloader that
>> configures XPbmtUC through device-tree, based on firmware capabilities,
>> and skip the enablement on stock firmware. This is tested on Hifive
>> Premier P550 with the modified OpenSBI[2]. It runs the host Linux in VS
>> mode, and provide the aforementioned remapping. The performance penalty
>> (if not running KVM in Linux) is minimal, as the CPU is never switched
>> to HS mode. A very slight, unavoidable, slow down is with the external
>> interrupt delivery. Due to the lack of AIA in EIC770X, all device irq
>> now needs to trap to M mode first, before forwarding to VS mode. The
>> overhead of running KVM in such setup is yet unknown, and may well be
>> noticeable, as all HS-qualified instructions will trap to M mode, and
>> there's also the extra cost of flushing G/VS-stage TLBs. I'm analyzing
>> it in parallel.
>>
>> I'm aware there's an ongoing series that Samuel sent for physical
>> memory aliases. I haven't been following too closely, but if you're
>> worried about it touching to many areas, I hope my series can shed some
>> light on the problem. My change is very minimal and local, also fairly
>> easy to remove if we later decide deprecating it down the road.
>>
>> [1] https://github.com/starfive-tech/JH7100_Docs/blob/main/JH7100%20Cache%20Coherence%20V1.0.pdf
>> [2] https://github.com/ganboing/opensbi/tree/eic77x-vspt-physalias-wip
> 
> For those following along at home, Samuel's series is:
> https://lore.kernel.org/all/20251113014656.2605447-20-samuel.holland@sifive.com/
> 
> I've been meaning to try it, but never conjured up the time to dig into
> it...

Thanks, Conor. I don't mean to step ahead of Samuel, just want to find a
middle ground that's easier to maintain from kernel perspective. I know
riscv HW is evolving rapidly, and we just don't want to add way too many
workarounds for each SoC. Hence I decided to move the re-mapping logic to
firmware/hypervisor to keep the kernel clean. If you'd like, use my v6.19
tree for testing on Hifive P550 if you have one:
https://github.com/ganboing/linux-eic77/tree/ganboing-xpbmt-uc-v1-eic77-clk-v15
I'm also sanity checking on my JH7110.

Bo


