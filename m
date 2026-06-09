Return-Path: <devicetree+bounces-309332-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LIPEEPl5KGr3FAMAu9opvQ
	(envelope-from <devicetree+bounces-309332-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 22:39:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE2E6641CC
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 22:39:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.s=20251104 header.b=oD4dgFfj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309332-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309332-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=riscstar.com (policy=none);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1245F3058825
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 20:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4C4A3DC878;
	Tue,  9 Jun 2026 20:39:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386C43B0AE3
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 20:39:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781037544; cv=none; b=ZfMQFhwOACnQSbTLs1iJcRk2RiJ3DCfxr3QZiJ4QiEVAuOQ6W2RVC5ZI0XgRZyaTFcFsNpBe7tzmvjLhXCGpmreySxcn2WD6k0qVCAwsAJHnjSDxt3ATL8FfgCRt0aPMubm+f8+5Es4j2C9o1bRqfO4VidZoy7YWO0yp8jXQ59Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781037544; c=relaxed/simple;
	bh=08cDWJ1AoJw7XTjy3VUEvgAlD0lie4xSJmxfcTku0Bo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MM3PBfcCiEFNdriLY+9m6Sfk2nwxO3HT9MGA6RvlyX+g61E6HNPFQmahX8glJt/UHgxgM4WuT71gVyL/BHFxG5uXY7B8qsphjHXBO5mnMqrj1iDL9vMnp+DdmnDCW7rGX3aCvpo8aOO+g6+FKlU5Dg853pMaJ8bCScW+I0v4s5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b=oD4dgFfj; arc=none smtp.client-ip=209.85.167.170
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-485ecc0f2dfso4658302b6e.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 13:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1781037541; x=1781642341; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xG+PJcI9dU8eULLGgiwqpsuOnpbG0JGZGxHHivVcL3w=;
        b=oD4dgFfjWcy5YqsNv9HDDx6YWgurqp/+3/dsbW/psa+crQWdh3bLtJK3JgSua94zKx
         OGgxSJe6ygZ9UeHTcUBxf+Zq7pd73f5c0PipE4nAXgtDNNq7T5IRdnhKjcAooK6ySZqW
         h8hdqPMAxtxinkdPUm1ncSzy/ZNyr4+2vdsSyoduLQhCEPOXVTwyXjuFf/yYv1hG8t1n
         fPO01xG3LnWiXJIQ/VXI/zY1DtQ7JQRT075E8SFIvVJPbvfcfgxnw8lBQoxestXrAF9c
         r88Qbxski0tlH58kci7vaBylcFytMwmSrv7I1YoN/qYFTVnTE1MEqdGnT0nbrDng8JH/
         +8pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781037541; x=1781642341;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xG+PJcI9dU8eULLGgiwqpsuOnpbG0JGZGxHHivVcL3w=;
        b=XNeyE4bTvksn+GXAZQdSURjAY6TVf0FMwbs0+smmJPfeRSQK0PHTBikQxnvccwBGP2
         eScIdDiI40P2KnHV1RH06IdsoLU1+UhLDxz9iLWJO1m1tjihLoFGdwOqar8BDBvWCsa7
         +FFTuHq8V9MO2Z0c5FJIeFr6k3amXrJ7Da/PqVbw11e1jK17g0Glta5tNFjeaITqHv/k
         7+yroKSTJf/VZyjIJJDovSw1g/kqUXeb23EiW3AUstyKZivuICsHyC2pqan66ZNWv+Eg
         dVIK9sHCTMp/ggX09EAXKmIe8ZGV9eFeWZl2aR/X7qJ+fEExvTccUpDPhvpvl1n0bG6u
         /cdQ==
X-Forwarded-Encrypted: i=1; AFNElJ8CZYom3+w1my8Mlo5a1Do8Ru3OMTAopYi1i/kIY3cz4gG5XcwWzTIjvotl7Qh99kdhoDCUdM48VNyb@vger.kernel.org
X-Gm-Message-State: AOJu0YzXSr3A2HytcIKBd9/+pBPqBw4ec18oXRGtx3TxZK/rCh25r30I
	ssDfWV3zGFm7ej6MGgXPwU9Ss0wKm5BluLmKo7wFaxkACS1vbdApwuvjESGARE3h48Y=
X-Gm-Gg: Acq92OHnEnwRlgmKPN9KZozOkkeO+Gu812Tx/crBbDC2mviY8wQosSTt9dE58PMHpFS
	bl6aLlBL3m/DcLSFanXK2dFqcQe1VQ2xD/egwjqE5KZphcyA1oK5cOkHgUZrBDjhByfxRVeYGKi
	aZZubh9ZVYeFsDv+6dk9uh+qzUNA/lcIcSJNUD4bKnb1VFmL6YKsQ5zfyLjs+a8dL7KzBnGLMiS
	53QeljvOqwUfMGA2ZhrlxWaY4EYNUWSXzOAnh9LN856m/2J2YXy+0oUq5U4QnV+2wNTf1S3dkyj
	RvRoJqS4RHrp9UE29Uwi3Mz3Nug3kWspuLtgvdx0Muzy7Vc/fwDJEhDGe+KuZy5FFJChxRho3pr
	NDITWtSK17EcM33F2jzza0QqqRQNTZ9P9Fjpie9i+eWnOr3SyHfM6maGKJFHZaMTvfnG1JZbd4h
	1B3HVh8hxbysgpp7alg6JytVG9p2TF2OI3yQ==
X-Received: by 2002:a05:6808:d4d:b0:485:4601:9c84 with SMTP id 5614622812f47-4868de44d92mr12430789b6e.29.1781037541328;
        Tue, 09 Jun 2026 13:39:01 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e6e78e7f9csm15313928a34.17.2026.06.09.13.39.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Jun 2026 13:39:00 -0700 (PDT)
Message-ID: <c2d586ec-84ee-4c25-b5b5-19a0a9819d6c@riscstar.com>
Date: Tue, 9 Jun 2026 15:38:59 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 03/14] net: pcs: pcs-xpcs-regmap: support XPCS
 memory-mapped MDIO bus via regmap
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, bpf@vger.kernel.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org
References: <20260605010022.968612-4-elder@riscstar.com>
 <20260606010123.B07D01F0089A@smtp.kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20260606010123.B07D01F0089A@smtp.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.56 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309332-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[riscstar-com.20251104.gappssmtp.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:bpf@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[elder@riscstar.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,riscstar.com:email,riscstar.com:mid,riscstar.com:from_mime,riscstar-com.20251104.gappssmtp.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CAE2E6641CC

On 6/5/26 8:01 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] Missing colon ':' after 'F' in the MAINTAINERS file entry.
> --
> 
> commit 2d23c3db72012c33d05246dcd5eb68b21952d164
> Author: Daniel Thompson <daniel@riscstar.com>
> 
> net: pcs: pcs-xpcs-regmap: support XPCS memory-mapped MDIO bus via regmap
> 
> This commit introduces helpers to allow drivers to register an XPCS using a
> regmap for the memory-mapped MDIO bus. It addresses issues where the MDIO
> bus is allocated to a register window that does not align to a page boundary.
> 
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index eb8cdcc76324f..2aa6ea012c848 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -25931,8 +25931,10 @@ F:	drivers/net/ethernet/synopsys/
>>   SYNOPSYS DESIGNWARE ETHERNET XPCS DRIVER
>>   L:	netdev@vger.kernel.org
>>   S:	Orphan
>> +F:	drivers/net/pcs/pcs-xpcs-regmap.c
>>   F:	drivers/net/pcs/pcs-xpcs.c
>>   F:	drivers/net/pcs/pcs-xpcs.h
>> +F	include/linux/pcs/pcs-xpcs-regmap.h
> 
> [Severity: Low]
> This isn't a bug, but should this entry have a colon after the 'F'?

Yes.  This will be fixed in the next version.	-Alex

> 
>>   F:	include/linux/pcs/pcs-xpcs.h
> 


