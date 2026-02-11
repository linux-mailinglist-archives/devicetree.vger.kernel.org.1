Return-Path: <devicetree+bounces-264721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEDOBYRVjGnblAAAu9opvQ
	(envelope-from <devicetree+bounces-264721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:10:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DF6123313
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6CD853013A44
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6369B367F32;
	Wed, 11 Feb 2026 10:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="VyMNLaaT";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="DR6GI+98"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178BC367F4B
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804582; cv=none; b=s/vdU5iwbjwJE9kX1O9UqipN51Dxo9meA6ylhpP/9RG1xbdnaHG74SLwzHX0Rc14PEJbLAJH+ohObq8IeD8h+/DyMKEs9c9elrVGp99/5cwjB6sZbS3uRIRRaNlhvqFH8wmWr4KFMArlLKuL1hvV9aQnPIR8tbrUHQSV4GZ2ij8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804582; c=relaxed/simple;
	bh=ZPjRyU31APU7RK+sFqcDy6SS9GGMdijYRP7U1OEE6G0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Th3reSAWBZ6ZMoIul6KxKS89PzshA0W6att7WGhXQcKa+XeEW3mWD/4VKqYxbTAwoImUu3kADNAHKOFUqja3S3Lta80tIjPuUcM3awJ8uOZJ+mf5tM3AizKGZtsygVPiq/OHpingy4FONIZleuZsh/+sIAQoSmK/n/BSanERh7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=VyMNLaaT; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=DR6GI+98; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770804580;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nes1YEB3axZcHEvkFJRYgsZwHGyNm2gCan9bsDPgDbc=;
	b=VyMNLaaTUFvP6ej8dyblU60Tus3l4ukgnDqeO6ltg4BbyPJNHj7mkZf/Y7KU8/+Cnh6APN
	gYRtu7JmgwAZTWILBCbOrgRT7RPdpoRLkyaNlhhQTLZHGo2zy+K8S1Lqn1lSJteQ+zWI8o
	AsTpmOlUeUdDjkE3dJBtWkP/Tcqw8a8=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-343-mxdKrxfbOjWmG9Vjcpn_gQ-1; Wed, 11 Feb 2026 05:09:39 -0500
X-MC-Unique: mxdKrxfbOjWmG9Vjcpn_gQ-1
X-Mimecast-MFC-AGG-ID: mxdKrxfbOjWmG9Vjcpn_gQ_1770804578
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-4362f8b5a65so515339f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1770804578; x=1771409378; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nes1YEB3axZcHEvkFJRYgsZwHGyNm2gCan9bsDPgDbc=;
        b=DR6GI+986XgCy9VLYkRetRS14BwDjnvSjmqh1+kO9IcrM4XJVs4l9UY183QYYVMdRU
         oH8Y/rzP9D74z/NHijlHtx2dXKZIFewh9EiWRXJ7v6IUPMGZU/A1vm3GgZB0NH6ETJ3r
         30JX8ku6mPaZZkcSzKc7hQSke9lhNYnayW0teq1V7oyBcBnJMTfBDGABGrkaehRXnTa1
         8Ci41wCMoR+sYPoJC/xz8/ebByhIAroPdFKw2cgLXR7Pw2Jx8/e3f5G8YXn01jDaeX48
         Hx80vCXodYyR4oZCdjUwX2lmXXXpZGI9Pyrvm9qMhMPu8AzWbdD0DzAZ21TaqgmLE4R+
         ZODQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770804578; x=1771409378;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nes1YEB3axZcHEvkFJRYgsZwHGyNm2gCan9bsDPgDbc=;
        b=MAtDkK44/ctUQzOzsDpCfMA9Syi171FQwlBquq9ymt2MUwY7wDeiEuS3GyW35NZptT
         hM+W+CuLOJ74DSB5ISWd4p9G2gUfpWctVoXAkGNwn/tfIVx4tVdG+w6CC2DRhwRFvFYw
         B5knG4pZbRZlr/s+U7v+EeoguMre9tIr81ido+llqX4zLpZW46lmAQJMwTpQFTSbM/x1
         Y9uXnpJf3P84Wne7DDCyTOCZxDyCuSDV9PLkY0lebqweNc2Kf4o9LBkG7Ogt49CKA/OY
         eyfTTDe+ySFAgg5v3If9TP4gD8M9+eiZoG4dGz/JhqiKtGfMshKBexCkmT3RC8au3VlJ
         667A==
X-Forwarded-Encrypted: i=1; AJvYcCW9HKl/QoJ5DqV4E77xfSEWuraWW3X3qClFyB1nDVFjk8DX/jt35ORtum3IiDeAhHayD/o9AsF2yluo@vger.kernel.org
X-Gm-Message-State: AOJu0YzEGIo/KzicKRr8pREhctUORNK6vzhGDvNVrt5t0r7k9Jon8Hyz
	wWQTsW3KbxLMoscVa1SrcrcZOAWxikM5QJ/JaYEHiWNJxrEYErPq8IeNof/FoyKTsI9uY5TKa7u
	gYwbx+Jjf85NiLhCbkBt64rpClqCZRKZ0XJ8aRkvMGl6UfQZLS8BQJx8JqmQD04E=
X-Gm-Gg: AZuq6aKf35U6LBigLIrNEcx4LMb+GqmQcued45UnVzUACWFU+s3QORR1BEqQQuSdhhM
	2w+UjNrdBuD28XJwMUu82eQSjMsLnU5Va6vAI7wsgC0MxzFrd5uIcP+q6wIaTSqCnfynxTOrDng
	XnrvBWjyX2vsNOqYfSNJQtfR4brfmTS8SfoZpcM/GvPFuqXqkqXlyobSUnyjyzwTNfpGnOe86P2
	lzWrZSYYE8IdUO1SNthPGeEp3DmR8JpTlR8XetA+FhxbF8Wn+6vMUEBOhOEsw2zJa2oe5+oQkKp
	1WRUy4WEwFCq043Fav9HDR+094aMUzu/fSuCQaRVx++zOMjNgLKp8pgrW0LPl4cu5YVfHZo5Oy2
	DdoJnrl6ZK8bO2DJ8+yMpi4mXzA==
X-Received: by 2002:a05:6000:4211:b0:436:1597:7c7c with SMTP id ffacd0b85a97d-43779e4e2aemr9793885f8f.13.1770804577696;
        Wed, 11 Feb 2026 02:09:37 -0800 (PST)
X-Received: by 2002:a05:6000:4211:b0:436:1597:7c7c with SMTP id ffacd0b85a97d-43779e4e2aemr9793843f8f.13.1770804577291;
        Wed, 11 Feb 2026 02:09:37 -0800 (PST)
Received: from [192.168.88.32] ([212.105.155.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43783dfda71sm3801899f8f.18.2026.02.11.02.09.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 02:09:36 -0800 (PST)
Message-ID: <07210577-7bc3-4af9-b559-1b861a2be209@redhat.com>
Date: Wed, 11 Feb 2026 11:09:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v14 0/4] net: dsa: initial support for MaxLinear
 MxL862xx switches
To: Daniel Golle <daniel@makrotopia.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Frank Wunderlich <frankwu@gmx.de>,
 Chad Monroe <chad@monroe.io>, Cezary Wilmanski
 <cezary.wilmanski@adtran.com>, Liang Xu <lxu@maxlinear.com>,
 John Crispin <john@phrozen.org>
References: <cover.1770433307.git.daniel@makrotopia.org>
 <20260207214733.m2zvh6ozo7vsc5hj@skbuf>
 <d6393a14-fe50-426d-9dd8-5a33b2af0a0d@redhat.com>
 <aYxTiJW03q1DN9XF@makrotopia.org>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <aYxTiJW03q1DN9XF@makrotopia.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-264721-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lunn.ch,davemloft.net,google.com,kernel.org,armlinux.org.uk,vger.kernel.org,gmx.de,monroe.io,adtran.com,maxlinear.com,phrozen.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[redhat.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 79DF6123313
X-Rspamd-Action: no action

On 2/11/26 11:01 AM, Daniel Golle wrote:
> On Wed, Feb 11, 2026 at 10:49:56AM +0100, Paolo Abeni wrote:
>> On 2/7/26 10:47 PM, Vladimir Oltean wrote:
>>> On Sat, Feb 07, 2026 at 03:06:48AM +0000, Daniel Golle wrote:
>>>> This series adds very basic DSA support for the MaxLinear MxL86252
>>>> (5x 2500Base-T PHYs) and MxL86282 (8x 2500Base-T PHYs) switches.
>>>> In addition to the 2.5G TP ports both switches also come with two
>>>> SerDes interfaces which can be used either to connect external PHYs
>>>> or SFP cages, or as CPU port when using the switch with this DSA driver.
>>>
>>> For the entire set:
>>>
>>> Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
>>>
>>> with some minor comments I'll leave in individual patches, which I'd
>>> like you to address.
>>>
>>> I don't want to put anybody in a bad spot, but given what time it is,
>>> this set should get at least _some_ time in net-next before the upcoming
>>> net-next PR, to allow for some reaction time in case of some unexpected
>>> reports like from static analysis or similar. 
>>
>> As I'm wrapping-up the PR right now, and the series is not applied yet,
>> I fear the above is not going to happen.
>>
>> Since a driver is involved (as opposed to the core stack) and there will
>> be the usual release cycle to address issues before the code lands in an
>> official release, I tend to think this series should still be merged -
>> unless someone voices strong and valid concerns _very soon_.
>>
>> Thanks,
>>
>> Paolo
>>
>> So it would be good,
>>> because of that, for the fixups as a result of my comments to be
>>> separate patches rather than a new version.
> 
> Meaning I should send them *now*, despite net-next being closed already?

I'm sorry, I trimmed badly my reply leaving irrelevant and possibly
confusing text at the bottom.

I mean that I intend to apply the series as-is.

Please follow-up after the merge-window as needed.

Thanks,

Paolo




