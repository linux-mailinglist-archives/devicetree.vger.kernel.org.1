Return-Path: <devicetree+bounces-272597-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yPmOCRanrWlm5gEAu9opvQ
	(envelope-from <devicetree+bounces-272597-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:43:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 179FA23119B
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:43:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 79800300699B
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 16:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C8DF3358BC;
	Sun,  8 Mar 2026 16:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="mDvkB83m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D8D3346BF
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 16:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772988174; cv=none; b=L8E2/xoMG7ZEil7XFyTy5bNdeXQKsMNubYiFJYJ9S1hpwQulWxPqSHEWAO7HBuaI2thpEXaVrCYDDKS502LbsW22ZXbwYWeL/5YSVzEwCos7fKHeJY3+KtRi7JQtZj/uNuHl4hkPXjrA9l4LztHlrmEbJzZdycwBTCtY5obT2lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772988174; c=relaxed/simple;
	bh=OeH0I8DlVaArA4exlIvdQ30+K74/rg+TRPmWoK5JWtA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=G+aSXAnErD2/PNQFX4Gxf8LLA71JRZYYsC903D+9xuWxPK4FTHwJoDzaC81hMl+nJuNHWAsQEDUDPz98TKzPT1u+kVFQYQA4ouFkXR57qYzv8yJ/UctyM+lqNEx8TiRLIW/BcdipE8sgiTjSQDyhKKC18XjdN/goc7GIq68Ntl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=mDvkB83m; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-439c56e822eso5259122f8f.2
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 09:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772988172; x=1773592972; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A2k+tUSmAU+cizjj171ExMhB4UUnW5oz5jUnwF8rErI=;
        b=mDvkB83mUBgNloaTdKGjkcgYcD/GayY6OlIB8d+xtiAaGONSF9DTjFjZKT8uakAr3F
         X5Ro03Fh7sR6gdag0ihpyXd0Ogn0uJ38xxTtjOhmVcPlPBlvfqn2ziubQrKSHp1e5syf
         y23lHN5yEtUoiJyFxy8K1GNxFzCnGtjbov67weXqQUEcdPUTspSDXKM8dbhK8aN+Di1J
         DCBG491yycGE6ZeCs6FQ7IbVZAeJyQbpxWjywz39x1/bRwrO7dIXkpDWiUBp2hrb+oJo
         WgaYPkJYqGOVjsW/os40d5ORoAHEerKCxhpywYhphqi+uts7mwFC+IlAy6dGb9ZVEL3S
         Kg+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772988172; x=1773592972;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A2k+tUSmAU+cizjj171ExMhB4UUnW5oz5jUnwF8rErI=;
        b=D76dgN6kGmPZrqQwHiaXsKyZZM5icxrlH+gPv9jfnhzaGpcBzSc2/4WQZ34P0CtEzz
         97y6t7xlICdhw8tNnSHfBn5b+sQs1aO9iTN0X/2nsL9FwGUlFxbgWc0c0+2JJmWqPdCg
         QLa0BLY6Il7IuxC9V1C/gOQKoKdpeMG6C8uy/5BISzf7H78d9bPz/dQ7G6ZSvOCTvAjm
         Uxmzc7pY1Q3cHKgxQKgb0TFIUB1g9mdtNGvq64NXX2blsBneELJh4aPNnUhRM1SVYPvv
         QpiFroCODXhwwsjuStJilDMqPH/j47KzxsRjPQAFa94nEmQLzEFIGeW33A1CV7vJj7GH
         NLTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZjhdSnX1Tqks7xJny4v1Z4dp9m2rZL/1YfZNV3GLxMJqdWXm/6FIepKyKYAymlRNpZg3604B57yzF@vger.kernel.org
X-Gm-Message-State: AOJu0YzW5XDZUvqyXi1xT+aoK2rSU72hh//nsdoX/aEqoVV9zY7sf5HP
	+UeVBaOzryDiQf5OO0haGfCPIbWxMojsIztKHYnPoQK3cXlR/+IGNK4LRMc8yG5Q2HI=
X-Gm-Gg: ATEYQzzXC1gtUSIPOQ4n7KUoPVUD9KkVorxyXE9Ne6fMgzWu03ySXc+De0Ao0uLbLbf
	IOVb4d4KcFTfD28TFCHUlWA4oBwuJENE4jUfxTe59/MQQe9L/+o0zpYYvNEk6RROH/gHevRlBba
	s2M6LX/skibpp47wrVHrymr9UxOYATzPp+/WMj5DUWRKr7fPLiylS4dk2nKFx2magDQz3vU+ESD
	h0doP8YVufTMeUlHGdPgS4KnFXwvpF3+e/nzaNxVf2tggKMRPw6hdWiO1Pbu437/3lYtrl+XjQB
	NKSvc9YHcPpsrHLXbBi41TCEP2ikfJKDecJ/GrwH6pB2ioedqh8S8/P64Gtb2PENFKNS5v0koc1
	dQz3I+5+90+guKO2zMCD4p8MQv6flKhNZwov4EtGfV05E9suIElJZP/c/DpAQBfYGahAonTBSHg
	tqWxnKnn8UwfI+9GcL3PYnVlIJVmxdHg==
X-Received: by 2002:a5d:5f93:0:b0:439:b791:f920 with SMTP id ffacd0b85a97d-439da656af4mr15645490f8f.17.1772988171670;
        Sun, 08 Mar 2026 09:42:51 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dadb85b8sm19331707f8f.17.2026.03.08.09.42.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 09:42:51 -0700 (PDT)
Message-ID: <cebf4298-4dff-481d-9a77-09d4fb4f7fbd@tuxon.dev>
Date: Sun, 8 Mar 2026 18:42:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/19] dt-bindings: nvmem: microchip-otpc: Add required
 clocks
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-3-ada@thorsis.com>
 <f406abde-c7d1-4ed6-b7dd-5336956bc795@tuxon.dev>
 <20260220-bloomers-runny-e69ab1966b9c@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260220-bloomers-runny-e69ab1966b9c@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 179FA23119B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	TAGGED_FROM(0.00)[bounces-272597-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi, Alexander,

On 2/20/26 11:58, Alexander Dahl wrote:
> Hello Claudiu,
> 
> Am Sat, Jan 31, 2026 at 05:47:05PM +0200 schrieb Claudiu Beznea:
>>
>>
>> On 1/20/26 17:44, Alexander Dahl wrote:
>>> The OTPC requires both the peripheral clock through PMC and the main RC
>>> oscillator.  Seemed to work without explicitly enabling those clocks on
>>> sama7g5 before, but did not on sam9x60.
>>>
>>> Older datasheets were not clear and explicit about this, but recent are,
>>> e.g. SAMA7G5 series datasheet (DS60001765B),
>>> section 30.4.1 Power Management:
>>>
>>>> The OTPC is clocked through the Power Management Controller (PMC).
>>>> The user must power on the main RC oscillator and enable the
>>>> peripheral clock of the OTPC prior to reading or writing the OTP
>>>> memory.
>>
>> As this was not mentioned in the previous datasheet versions, the current
>> driver don't handle those clocks, and it probably worked as the clocks were
>> enabled by bootloaders, I think the clocks should be marked as required and
>> this patch to be propagated as a fix along with fixes on driver and device
>> trees.
> 
> What do you mean by "clocks should be marked as required"?  Where?

In the bindings as you found that the IP don't work if the clocks are not enabled?

> How?  Is something more necessary, than already done here?

Update the required section in the yaml file with clocks, at least for the 
sam9x60, as you found it is not working w/o it.

I presume it has to be done for SAMA7G5 as well (as this is what the newer 
datasheets states) but that would involve adding required clocks now which were 
not needed later. I'm not sure what is the procedure here. I'll let DT 
maintainers comment on this.

Thank you,
Claudiu


