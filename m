Return-Path: <devicetree+bounces-311251-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EMCiLYMPLWoQaQQAu9opvQ
	(envelope-from <devicetree+bounces-311251-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:06:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 281B767E0F1
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:06:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=QMIJik0U;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311251-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311251-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2AA230EBFB0
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 407033C456F;
	Sat, 13 Jun 2026 08:05:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D81C1FC7FB
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 08:05:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781337957; cv=none; b=Mc4XNsG6mwd95yuQPl/Ib3YyiNzycia1D3HAaYHKpYB/7ftctZ+v3KRPHMB0vt412Q59C1GJh9Ujntp80GTJBr+J+Tlx5xG3J1kkwK0JVHHj6RBRVDNPHE1iow6h550YPc9SB914PYHEhqkp3G6m3iFAZXP7EdgltVJ//Yc7PCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781337957; c=relaxed/simple;
	bh=nXrtTRt260BnE89e2cFGxqUmeocGv80w4LWjv8LNFtU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=j8P4YQeY0rBHGNlRpUHfim/7yGM6lteHfbbxTBJqTiSX/1MdxcpUTGBWuyc1SbmT9v/VX1IKZm0D4HcWuz6B402ziNMkrm5y0NAS5o7/KR6DKYW6NhIpTj5OBRF2h3rVw6UW0+vrL4WQj30OJtONWBWGP/oIQKJKJ+m0ENdwk+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QMIJik0U; arc=none smtp.client-ip=209.85.208.177
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-39676d82b7fso15932131fa.0
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 01:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781337953; x=1781942753; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cDPjAstWjnCraB70Ptsrj5XTr8SWltOcyco4hBFXzRE=;
        b=QMIJik0UNSyPMVfBk49wHeG3oQejlzJHcz8FQxOAYHRobUHmSLzHU1U9MG56jxqj+W
         x+7Alql8U9/rRK9XRyPnW6CACoFckdYUVzrS8oGgWkRet5W3DQf52T3jtBf6Sh8GSvWE
         PyPnB6HqHGs9vQh4a9nMcyv2ueIUf3GSilqJJ3PS6u1cO4USVy21Xva49FuUSliUFOGp
         2s0CQh6hEBUd4UUXbUbZMKGY8/8oTu/nQFeDN9TSNSzoUX8oY802JeokYHXVlZ4JtjyO
         l0JdJneW7hkfc97RqMB00DZpNuFviDjpzLPfmL4Fmn3m+t7SoOnfVbOQxEadXPKffhZJ
         1isw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781337953; x=1781942753;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cDPjAstWjnCraB70Ptsrj5XTr8SWltOcyco4hBFXzRE=;
        b=rjzDBFbMJZqOTNhEXNsLD6AXd7EHQXkUhVoJjjyg46NYHBvaPDfmEWy89tfetqpSb4
         f7p/6XhkuufB2piXb2ASl2qM0qIGbdjH3MayAlj4dfN88V9DRR2V62OXi//xFl1jTfS1
         Eusa1R55sw3p77BlFng9Icl8cOPvudE3fiFOfgq4YafKXtDdIoMoBYKinYlOZdAMzupv
         +WVZtEYvZ4VcKB2TOvyoK9kdMhP8idKzc5x1P5h/IEy/vDG03hXWKb68XMolfOi+derv
         Nuv2a/OZfy5FNi9vOcptUUc/1vSuNz/wBFv7JPSb9Gs2iRRM7iFaH35ui3+l97OTi1n8
         cMgA==
X-Forwarded-Encrypted: i=1; AFNElJ8qCAqtNXNEgJRBLc8etSGD6chm6a/C1Ga99AjP+Kq0V2A3PRrhGKcWlKKIsZfWNzULZCwzCegMrRLK@vger.kernel.org
X-Gm-Message-State: AOJu0YwQWDTTmE29TzqR8AMtncLzFy7nVqkHMJM329WCOzKfxt5io2FZ
	3tQx3XEhFBJCBDBQc44c/zXacvxGuGsD/QK2+tCHnduwDPn6Jb2kZXoZ+kmkVgXJ
X-Gm-Gg: Acq92OEuJ4SyRZyy7hehGTVohsDMahLVl4EeBzxFhxujBuLwRxBJX9Wc8I2AsnkLJEW
	xo4Hdt80jN52ZHU8X+nvw1/il0N94QFdgw7u7fHeqA/Ps8tN369gR5w4ctnKysD700LoJxY1eqs
	LaVmDD0umtGRWk+t3ZzcANy0912g0m+zie3nl5G9aqKXgBtJtC3/Zu4bmtM0jXR6Mo/DlnZeX5G
	+kMIki8fb9LilbCbH10/PugB6MQRMF+Yz8JtZuloV51kukGSB7ZG3W6usYfgiS5QVLvofipbAK2
	K7jHobmBTLEVXBN9yMLzWPd0uhgoRMPyurPBc7vG//XZmU5jFM40Vf/v4T/FHNKt6hez1Mt6bL9
	Pe/5Fw0hBE+XmFoUWhlSq4F0dnmf+zO5Fdut9BPZeM7J8G94HI2zrmEPauiylH00gx0Kx6np28w
	ftIeC727/sKN4+qtmG8a75T0xpiEqa1G/Af9IBYTBvJPzu+kVBAMkb+dyDXtBJH6UPJotqTjcV/
	COyvQ==
X-Received: by 2002:a05:651c:150f:b0:396:8b66:8aa2 with SMTP id 38308e7fff4ca-3992af676f7mr18989251fa.3.1781337952472;
        Sat, 13 Jun 2026 01:05:52 -0700 (PDT)
Received: from ?IPV6:2a00:1fa0:856:c6e8:742c:af09:78ba:8005? ([2a00:1fa0:856:c6e8:742c:af09:78ba:8005])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39929f5643esm11961331fa.32.2026.06.13.01.05.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jun 2026 01:05:51 -0700 (PDT)
Message-ID: <1a31fc77-c681-4635-adf7-3a6d97c0b416@gmail.com>
Date: Sat, 13 Jun 2026 11:05:47 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next 7/9] net: ethernet: ravb: Add callback for gPTP clock
 index
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?=
 <niklas.soderlund+renesas@ragnatech.se>, Paul Barker <paul@pbarker.dev>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, netdev@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260610102432.3538432-1-niklas.soderlund+renesas@ragnatech.se>
 <20260610102432.3538432-8-niklas.soderlund+renesas@ragnatech.se>
Content-Language: en-US
From: Sergey Shtylyov <sergei.shtylyov@gmail.com>
In-Reply-To: <20260610102432.3538432-8-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-311251-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[ragnatech.se,pbarker.dev,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,glider.be,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:niklas.soderlund+renesas@ragnatech.se,m:paul@pbarker.dev,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richardcochran@gmail.com,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:netdev@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:niklas.soderlund@ragnatech.se,m:andrew@lunn.ch,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sergeishtylyov@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergeishtylyov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,netdev,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 281B767E0F1

On 6/10/26 1:24 PM, Niklas Söderlund wrote:

> Prepare for adding Gen4 support which have an optional external gPTP



> clock. Add a callback to get the clock index and use it to determine if
> the device shall report gPTP support.
> 
> Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>

Reviewed-by: Sergey Shtylyov <sergei.shtylyov@gmail.com>

[...]

MBR, Sergey


