Return-Path: <devicetree+bounces-270824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJc1DZqIp2nliAAAu9opvQ
	(envelope-from <devicetree+bounces-270824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 02:19:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86ECF1F92C8
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 02:19:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 29A20307A081
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 01:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E94F3093CB;
	Wed,  4 Mar 2026 01:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WV6MAc78"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487DA1E1E12
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 01:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772587159; cv=none; b=uQtWoPH+fAMGOb7ZmKkDQPXuCBE5RLjGvxTf8dNeEWU4nc3SZKUuOhyfeESrCFH5dhxdv7YRHmUhRwk1pF7lSZnabOA5J+OBd2N6DvD9Nnt7Hsj/IlNFv1xLsY0MeJ+xCG1o5GxRyZNfNDgF8lW26F5/C0wToS6HxWy1U3j0LXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772587159; c=relaxed/simple;
	bh=rdDyhELc7hSIr6ByJJWu3JPfPVveq+7o3+8nhUm+zc8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m25L6HVeOTCAOPiVptEhOCTziNULSAf+kLvlE3ZTqUTmK+nE4JsBP8ga/vA6a1cPVjQXiAXtQlSTGeyhW5/lzYHZzgiLf5mPFWh8vJet153nvlXouL2zb00wKKVt0ZYC4iPJv1PJWVmg5wATUb5iGEQCP1GAhsGfFNFGU8KCLCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WV6MAc78; arc=none smtp.client-ip=74.125.82.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2bdd80beee1so2020905eec.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 17:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772587157; x=1773191957; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gvvy8mrMhzjULjG/waJaGKSbWOymXRI0aiNwOWuVKAk=;
        b=WV6MAc78RB8PldkwMpwzKY2soJ4AMRocvWmV1o73BS0+vfQajVl4Mo8WIBlI0idUzo
         MWVNLFEvHi1L3FG4jwfCucdOqCEAYH9s2Ia7StCK7C+h+mwedKQuODpfbbNWU10x0hBM
         lSgB7sT9piaqU3TDThacV5Q2mUxiJPXpVcXB74Pd7HWufh7h+76iJH4b0lR6K+ssprKO
         rT2glzNJSnLNw7ruMJWv6EBEtH+GOImml5jfRrh2L2FRf2UGEiby9O1GFo893Fm16K1F
         JJBOCz4QHUTkP9C36fAkOJlZyTQHbrWA5teT3V4a4lPuVMNqmNhxmXf3+xHLRnAfGWuL
         PACQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772587157; x=1773191957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gvvy8mrMhzjULjG/waJaGKSbWOymXRI0aiNwOWuVKAk=;
        b=wnfSCYelcm8lJgrV6R8L8kE+rNsf61urNAVwHxzAglxnM/Y0lUYbdZ8+sbBs82XIJ1
         OXGlJcMtxt5Wps1pEmnm0sXU9Gsyiws1tnKDgUlYSJNIzYku7WP7CRM5oFWIi4JK3TYI
         WA5EZJWa+A1LoLxiLundcxojFvw4gIwYmEZx4CJOqTfkd86/WIZ07jdom247qWTyWcUH
         aSyJdM1JUTCKcj6K/AHXgFWYm0FBRlZ9gMlNP8yyaNckZYoLdRDQt2lPYCF+YqAb4r8x
         dxjSlOnVItgnYO2n1NQUdXiqa3NDdLwM/HVqYEpQ1UdkgMXzGoicwmeMASSE5qw5lfC5
         +nBw==
X-Forwarded-Encrypted: i=1; AJvYcCXYc9GQS1RIG1IW5gywhH/8e+dX57z2iMfXvaqobEvAHNz6+eUQNhPrT9wDoJJlbQmtkGxVCA736VgO@vger.kernel.org
X-Gm-Message-State: AOJu0YyoJG4kqh6hwzp0aN9tqvucgZh9oRjW9Nqc3eDcwm0Wf5REd6pO
	J/NJI+gI8XQoxx4KCaBlNxG7ZA1C8kaTSUo60n4oWK9uku6jl7QmrJMm
X-Gm-Gg: ATEYQzy29OA1MgcB1R2BPaZYvoD8mgUaYNa5f5RQJTsHYfFvhhXOb88zNogLlzWZ5MW
	grEkXh1oLfJ2mQDt/b53J6uvVftApGOU1pdoGWuBgraBe6lNLJK2pEJ4iKGYs/W/Z9dPMxYlZlv
	4GVggDyLBJ6nG2tAV3Q1Y/8bU9kzCxINCWwRruse/8wNIPfuXfpaSv/Ce+OkVdCH7yFE75u0m1Y
	5y9F50a59816QcIwL2CmNTF3X4Axsv+NYaQgmH8frgd9tUccat+PlmKVrOnBgdb+8S/UC9JZ4w2
	2QweTvWytN6VMRSDf0kdZTyxHUJXf5tbvFPY3w3hFGgSV6ga39HLEECUWnenmB5goP/RMAwqTqb
	wVisP7tWXmVBmnqf+doFGPUkHxBsZJUzdqVixtmCv+bZORvd/5AEdw0ZXthzexvIYer4bSlJvrh
	sONCDM9fKolK+H1oDCEl4KxWKFUxPuhU7fWxOEKxuJWFKKlME=
X-Received: by 2002:a05:7300:ac81:b0:2be:969:75f6 with SMTP id 5a478bee46e88-2be2344da48mr1494176eec.9.1772587157326;
        Tue, 03 Mar 2026 17:19:17 -0800 (PST)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be0d7e0d40sm6999679eec.12.2026.03.03.17.19.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 17:19:16 -0800 (PST)
Message-ID: <05a15890-392c-41c3-9566-8eb506ddfe5f@gmail.com>
Date: Tue, 3 Mar 2026 17:23:18 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 1/3] dt-bindings: ethernet: eswin: add clock
 sampling control
To: Conor Dooley <conor@kernel.org>, Jakub Kicinski <kuba@kernel.org>
Cc: lizhi2@eswincomputing.com, devicetree@vger.kernel.org,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, rmk+kernel@armlinux.org.uk, wens@kernel.org,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 linux-riscv@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 ningyu@eswincomputing.com, linmin@eswincomputing.com,
 pinkesh.vaghela@einfochips.com, pritesh.patel@einfochips.com,
 weishangjuan@eswincomputing.com
References: <20260303061525.846-1-lizhi2@eswincomputing.com>
 <20260303061637.872-1-lizhi2@eswincomputing.com>
 <20260303163846.156d18f7@kernel.org>
 <20260304-regulate-verdict-c3a361d2dc83@spud>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260304-regulate-verdict-c3a361d2dc83@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 86ECF1F92C8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[eswincomputing.com,vger.kernel.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,armlinux.org.uk,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lists.infradead.org,st-md-mailman.stormreply.com,einfochips.com];
	TAGGED_FROM(0.00)[bounces-270824-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi All,

On 3/3/26 16:47, Conor Dooley wrote:
> On Tue, Mar 03, 2026 at 04:38:46PM -0800, Jakub Kicinski wrote:
>> On Tue,  3 Mar 2026 14:16:37 +0800 lizhi2@eswincomputing.com wrote:
>>> There are currently no in-tree users of the EIC7700 Ethernet driver, so
>>> these changes are safe.
>>
>> What do you mean by this sentence? The commit under Fixes was part of
>> Linux v6.19 already.
> 
> The "funny" thing is that caring about users doesn't even really matter
> on the devicetree patch, except for this hunk:
> |@@ -81,7 +99,9 @@ properties:
> |                          or external clock selection
> |           - description: Offset of AXI clock controller Low-Power request
> |                          register
> |+          - description: Offset of register controlling TXD delay
> |           - description: Offset of register controlling TX/RX clock delay
> |+          - description: Offset of register controlling RXD delay
> |
> | required:
> |   - compatible
> And it only matters here because an item is injected mid-list. If this
> was moved to the end with the RXD delay, the **dt-binding** changes
> don't have issues with safety. I've not looked at whether there are
> knock-on concerns about users in the driver or whatever yet, but from a
> binding POV only that hunk can break something that currently works.

This was already discussed here in v1:
https://lore.kernel.org/lkml/e7183ae1-8b8b-4e77-9f4e-3bc1b4b63556@lunn.ch/

The device-tree is not checked in yet by ESWIN folks, so there's currently
no user of the dt-binding. No need to worry about backward compat.

> 
>>> Fixes: 888bd0eca93c ("dt-bindings: ethernet: eswin: Document for EIC7700 SoC")

Bo


