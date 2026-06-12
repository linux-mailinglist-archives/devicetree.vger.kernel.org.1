Return-Path: <devicetree+bounces-311126-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fsWdBDtOLGqEPAQAu9opvQ
	(envelope-from <devicetree+bounces-311126-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 20:21:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 667D867BA26
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 20:21:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=gThJk19K;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311126-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311126-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9AA53459676
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB1713A3835;
	Fri, 12 Jun 2026 18:12:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B1738F63D
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 18:12:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781287927; cv=none; b=VNRAy+2n8t7wvVBFGOiLMbS/lxisLXJoNsw4qEgckmMi1bgPCf6nuJUtOrqwHs06DThTj/uuLrIedHrCL9CzYzIqvIaP6oxbFxElsN7PnRjF8kiJVq2ICTGabL0s7Pto6lIuaotdBS92ZyDbVxvFRzol29aT1w8FDyUANgM2Vxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781287927; c=relaxed/simple;
	bh=7IIqb4D3Ufxwv9dIMnqYQZgG1a69XUSwUpjnCG9zdHc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=mria7M2naYZ9/yrPQo6LqDgFsZ6V6a02r3k//9plSxCIQHnRfrgWUoe6hqfOdhAoE4+fmSv5WmMWr9LpRJ3zh4pb44IGOHB8EzhhA2rcI0kRIhbUABpyvDPtGLX+1/w9XeqOugJlqbNSvZ4rVajBKTOwKJaKxFi2SwVZk1yVCvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gThJk19K; arc=none smtp.client-ip=209.85.167.47
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5aa5f11deb2so1359740e87.3
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 11:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781287923; x=1781892723; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PURibjNrq6Q8aIzpLwTE6eJkvCDifdjL2ifGZ3jMX0w=;
        b=gThJk19Kb17EGhGR9pFRNpS/vr2tWnpNEAGYhrTMphG1H9Ayh51PwjRK8daI5M6dVF
         zVYovUmNZX8a7S+oH3zdBXsJ/420srsnL22LBxx3Xx5ZSVJP1gO4xfZV1HUyksqN0SUm
         Li5M0+ODd8yWRf1MwTtDXCrST/l3ClSvJ1LmOs7muuGUr0K+kFr/5VyxV0BwgVSOMG3o
         PWt5HRRJf/nYyHnUqiboiybyaqVRtTkQjk2aHSAoOJ48pdM9FjY1anz1OHrI0l8esoDt
         t6HEyqejb2AJ2ERW67QU0j0Yv/ZN8T1vb035vtBEv4oJATWc7QB8FP9cPeGNDvZIxsjx
         QRog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781287923; x=1781892723;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PURibjNrq6Q8aIzpLwTE6eJkvCDifdjL2ifGZ3jMX0w=;
        b=YL/oeJfy70dt1j9g8p6AdAuT40c1BoO+a3akTHFSpLp1R4QXECnXodYljQxkdhUgQd
         qZDLSJrjepxm+WK5yAmBWG4mipmZAxlc8MGddQ8d2FkWU1towLOt9HXHE3F2JCuG092c
         BnKH8S8r+Iz2DnapwTBu8wMInumzLfNRvXmtxh/yYJJFHqrK8SJYS6CSiwbTkoMztSf5
         aL4p3lK3tW2PV+fnx0bDgwiB4NElD4bDs6+OiDy3IZyR2AFYUQbCdjxlZbqTLdQ5FmNn
         9bWm8sc4VIR6+d2wAGx3zxhfG/2c3fGfOx4+U1I37ptsIG3BjuxCezdjmY00NLYPzrTS
         Lr3g==
X-Forwarded-Encrypted: i=1; AFNElJ+4NwpV+IP4hsjRXz1dH2ayPH4WDyAsRspkVFeFpOzdrClEHGRQedfXynATa26qRFS2JCI/gmDYHsNJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxsKW2eXNRQzBPChH+/hjhFCjcTfPE2fLIphkmHMSt7i8vZiDhp
	cmo51IYbGDKBHVZhVVWnnZPL2JSpYBW/v9fSCcIUxe2xX+g1kjclZCW5
X-Gm-Gg: Acq92OHXL7DsxBdENnrKtjpXbCqvJ77TPlObisahbGCAp4KjEMAMpn4znPDtiTEyn+J
	b3YNlntHUocvdexaPskHFJJCGYimvqgWgbXi8nzzxdTj/ABpQhjfTgDqp4jzzOWcoosS1TIyafw
	8Me1X+cM4Lx7YSpYfAR5WS7vProKVdX085zFaPT7ypDj/5g1NhtrsXqgy2M89ofOkFCsGfA2Lhu
	vtMLp0W99M8j2HrunYuTPTVfOG8N5dkCIbzu3NHA88ycs3DrRMtV/bZiGeld0k8qyiLh2MiPy+Y
	yCQwXfGqh4yYUC6v12bMvKHOi65pCCAmjXW4/ZgNdENHidko4ebRVqzYIIrzSEbW9/3MylLyKB6
	P6tOfKQjEB9kwWGBISfodIhtTWQ3279SR9H+0zoKnCIjsAHcoZbvOBhxlG0nNDWAR24Li1SW49a
	kJEm38VAKx9JcA0d0TuhgdvoTJii77xYD8kyGTZZ9vMkIPPt1MHILevgdXvQB4WPM02nzuU9ESz
	sg=
X-Received: by 2002:ac2:5199:0:b0:5aa:7880:5246 with SMTP id 2adb3069b0e04-5ad2db5be8bmr870757e87.31.1781287922714;
        Fri, 12 Jun 2026 11:12:02 -0700 (PDT)
Received: from ?IPV6:2a00:1fa0:742:25a:e03e:6c9c:49d8:2fee? ([2a00:1fa0:742:25a:e03e:6c9c:49d8:2fee])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2e16a0fasm730873e87.20.2026.06.12.11.12.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2026 11:12:02 -0700 (PDT)
Message-ID: <2027adf1-6b09-49e3-84d0-ac89cbcd8b24@gmail.com>
Date: Fri, 12 Jun 2026 21:12:00 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [net-next 1/9] net: ethernet: ravb: Remove gPTP control from WoL
 setup and restore
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
 <20260610102432.3538432-2-niklas.soderlund+renesas@ragnatech.se>
Content-Language: en-US
From: Sergey Shtylyov <sergei.shtylyov@gmail.com>
In-Reply-To: <20260610102432.3538432-2-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311126-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:niklas.soderlund+renesas@ragnatech.se,m:paul@pbarker.dev,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richardcochran@gmail.com,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:netdev@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:niklas.soderlund@ragnatech.se,m:andrew@lunn.ch,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sergeishtylyov@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[ragnatech.se,pbarker.dev,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,glider.be,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergeishtylyov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,netdev,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ragnatech.se:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 667D867BA26

On 6/10/26 1:24 PM, Niklas Söderlund wrote:

> Since commit a6a85ba36fd0 ("net: ravb: Move PTP initialization in the
> driver's ndo_open API for ccc_gac platorms") the gPTP clock (if
> supported) is stopped and started by opening and closing the ndev.
> 
> This makes the special case to stop and start it when resuming from WoL
> redundant. As the ndev will always be closed and re-opened when
> suspending and resuming the system.
> 
> Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>

Reviewed-by: Sergey Shtylyov <sergei.shtylyov@gmail.com>

[...]

MBR, Sergey


