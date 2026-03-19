Return-Path: <devicetree+bounces-277591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIxkAjqnu2mnmQIAu9opvQ
	(envelope-from <devicetree+bounces-277591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:35:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1AE2C7553
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:35:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 340DA302E90B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 07:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A76F3A1682;
	Thu, 19 Mar 2026 07:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IvOkIInU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCEF3A0EA5
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 07:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773905642; cv=none; b=kYY4vSm7INI1we1rSP7RSYbpG7U8ME29VTV+Dy1w2dmteKNuqfedQiZv/pjm7xpxr+m7QrA3LQbhEPOL4SgOWw9yFnsPXp6q8liGnZ+dyTRSaTgiNH7Em2a7SaF9J1yLtcMIMlLmprYKfNryxFdpo1/XtM+qPNtzzuMAC9QILi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773905642; c=relaxed/simple;
	bh=AhNDDZecnmD2xFm+TNWATlQbxsUvN8KlFepA01COIwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j251cJEAbPnRRIdctZSplN8NkcEIplWdlxmDwL2qkg9yMrHWWFt5jqZgIw5pktRPoRO+kAT3NrkhsuEYC4eJeWcIpKR8dryFEnnBzKs/MNkihrd9N+GOcmB0me7GeXGcPycoWLADsvMSn1UmcGMvTFEeWCCNvKnuqQviPi6cK1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IvOkIInU; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-439b94a19fdso486531f8f.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 00:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773905637; x=1774510437; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mfnoZII81lwHDQG+q8k3CqLmv9bwI5/ooG/r2BOJypo=;
        b=IvOkIInU/YzZLqaHZgSxaRamre1CKdkvdI70PFUfeH49IfziLVMMlBx8JBwXExRU+I
         gVRhh17h9JfspgTMMC/rrvpb6csmLx8UMmMITDH5bpFdSylsCAMhN1Lb8AzT8GzNRKmr
         N+tZrhu9OWY5JmnPNsVUJjwjoIu07UIG/l/+kGr0XiojwstpSLa9eE3RBkwl3qeFJmxu
         t0lzdAmp1R867dvF3FnUE6WLp2dQXwUnWLam6WCwjp8wJ6DKtsj1brcR/9puwlQMk37V
         sffUCzBXmHbcM6FgB8e0rvmV9AhfAia6M6odtwKzHbGlQfiiTnQpney5fyj3ZKr3Mj/L
         UTCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773905637; x=1774510437;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mfnoZII81lwHDQG+q8k3CqLmv9bwI5/ooG/r2BOJypo=;
        b=iUdYqjMgDMI3r4ULQWkDEADVaBmsL1Q1mEobm/kT7OpXP4Q/kcalKM+Gy2/k7Q/iJN
         jRgLyX0U+Xs+PpApeNxDv6BVr4aAlKZuNevGA93plt7G/1h4/Ci1Yvzq3QDt3p8SVyZV
         Z+UBd0dOakN//1ACtVCIrwSjDWHD5/mXuqxZD8KWCh6RkNYG0Nhj/MlgUhkbebYmUOop
         qO0yB+TI7dy1uBawknrDihvtcwFoVbxEQeGqw/i/YcLjJ5aW/Qabx9ItQGRond23prC3
         I6igFnLkwiJ+kjQ7viNvqO9IWywMhgV0KWD7JxZPBsxFcp+m8Lvx8SwMEAJtPMk1BYf4
         OPfw==
X-Forwarded-Encrypted: i=1; AJvYcCX2tzw+DCsymXPTLG29riMcTp/qC+Wuf5yglr1oarnVBdzA9xtFUZcqGQIpT8d4/nnZToeHmwPAlKW+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/bo9FK4qvj6uWE/mDFLfpdkEAHVIEpIw8EhPnO+8LV2CZRR2J
	4h8SKTY1jlmGxVWS6fuukmtPo6XN9vXxqOmL+TEc2ZAK5DJ+kTjUsYofJqJE1ovXCck=
X-Gm-Gg: ATEYQzzvvCmUEezee/2j9uaBbcZfEWJq43fZzzFc6QcqjW9GFpxKlP9JfNrpcxDQxm2
	ZN8rADha4/ffDO8ZcfxF1OTal/r8RzSdZ3gJy7oKofARs1mLeaJAkNmHSfAHXXnZKktICsDiooH
	Z9bpcGMJ8godLQmyGqsaicxXwNR9gOGzJHAq9NVGM++aaFdN3TgZyii3EZBRi+JNr3vIvLXtMVj
	nYTfpEtriM+eKE//57yr11WPulPMPLgwbwlhprRxYJm8R0xSq4F8fgNSZ5U/8PRAV0MXWKXBmf1
	LSBHpEFsw/9tuU9ayAbwn23RNRbidEcdu3N/1c9yqDfqhAdsMGEOI3suI2C20MV4Ov42rszRozy
	g3cecjbIUqaXVZjODYQBD3mSnLQYMBahuFNnbjwNE6izsp02e5W+B177yVwROZoH64Z3Dcru3aI
	w8/WBXqsB00q08b3OKdNaDlX5MxX1hxys=
X-Received: by 2002:a05:6000:25c6:b0:43b:4ae5:d7c8 with SMTP id ffacd0b85a97d-43b527a50cfmr10368836f8f.2.1773905636943;
        Thu, 19 Mar 2026 00:33:56 -0700 (PDT)
Received: from [192.168.0.34] ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51899622sm15875212f8f.28.2026.03.19.00.33.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 00:33:56 -0700 (PDT)
Message-ID: <46c47101-2672-4970-a212-71e2c8555d80@linaro.org>
Date: Thu, 19 Mar 2026 09:33:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/25] Introduce meminspect
To: Bjorn Andersson <andersson@kernel.org>,
 Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, Dennis Zhou <dennis@kernel.org>,
 Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@gentwo.org>,
 Andrew Morton <akpm@linux-foundation.org>, Thomas Gleixner
 <tglx@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Anna-Maria Behnsen <anna-maria@linutronix.de>,
 Frederic Weisbecker <frederic@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Juri Lelli <juri.lelli@redhat.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Ben Segall <bsegall@google.com>,
 Mel Gorman <mgorman@suse.de>, Valentin Schneider <vschneid@redhat.com>,
 David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <ljs@kernel.org>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Vlastimil Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>,
 Kees Cook <kees@kernel.org>, Brendan Jackman <jackmanb@google.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Zi Yan <ziy@nvidia.com>,
 Chris Li <chrisl@kernel.org>, Kairui Song <kasong@tencent.com>,
 Kemeng Shi <shikemeng@huaweicloud.com>, Nhat Pham <nphamcs@gmail.com>,
 Baoquan He <bhe@redhat.com>, Barry Song <baohua@kernel.org>,
 Youngjun Park <youngjun.park@lge.com>, Petr Mladek <pmladek@suse.com>,
 John Ogness <john.ogness@linutronix.de>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Saravana Kannan <saravanak@kernel.org>,
 workflows@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
 linux-mm@kvack.org, linux-arm-msm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
References: <20260311-minidump-v2-v2-0-f91cedc6f99e@oss.qualcomm.com>
 <abdnp90cC5PI9wyz@baldur>
 <20260316181647.m7x4ncmwdjho6yvr@hu-mojha-hyd.qualcomm.com>
 <abtlUQqMOxj5PwGB@baldur>
Content-Language: en-US
From: Eugen Hristev <eugen.hristev@linaro.org>
In-Reply-To: <abtlUQqMOxj5PwGB@baldur>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lwn.net,linuxfoundation.org,arndb.de,kernel.org,gentwo.org,linux-foundation.org,infradead.org,linutronix.de,redhat.com,linaro.org,arm.com,goodmis.org,google.com,suse.de,oracle.com,suse.com,cmpxchg.org,nvidia.com,tencent.com,huaweicloud.com,gmail.com,lge.com,chromium.org,vger.kernel.org,kvack.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_FROM(0.00)[bounces-277591-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eugen.hristev@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_GT_50(0.00)[56];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5E1AE2C7553
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/19/26 04:55, Bjorn Andersson wrote:
> On Mon, Mar 16, 2026 at 11:46:47PM +0530, Mukesh Ojha wrote:
>> On Sun, Mar 15, 2026 at 09:24:39PM -0500, Bjorn Andersson wrote:
>>> On Wed, Mar 11, 2026 at 01:45:44AM +0530, Mukesh Ojha wrote:
> [..]
>>>> , to get all the regions as
>>>> separate files.  The tool from the host computer will list the regions
>>>> in the order they were downloaded.
>>>>
>>>> Once you have all the files simply use `cat` to put them all together,
>>>> in the order of the indexes.  For my kernel config and setup, here is my
>>>> cat command : (you can use a script or something, I haven't done that so
>>>> far):
>>>
>>> So these need to be sorted in numerical order, by that number at the end
>>> of the file name?
>>>
>>> Do you manually punch these in? How do we make this user friendly?
>>
>> Yes, manually.. but I think we can do better. We could make
>> this more user‑friendly by using the section header and string table in
>> the md_KELF binary both of which existed in the earlier implementation.
>> Then, we can write an upstream‑friendly script that reads this KELF
>> metadata file, checks whether a binary with the registered name is
>> present, and stitches everything together to form a complete ELF that
>> the crash tool can consume.  Let me know if you have any suggestion..
>>
> 
> Can we somehow identify that these regions belong to the minidump and
> teach QDL to build the ELF for us?

We could integrate the feature that Mukesh suggests directly into QDL as
a separate command
e.g. qdl download-and-build-minidump

The first region (the ELF header) is mandatory, because all the regions
themselves contain only data. To be able to use any of the regions, one
needs to know at least the physical and virtual address of that memory.
And this information is saved in the ELF header.
So QDL could join together all the regions into a single crashdump-like
file.

> 
> Regards,
> Bjorn


