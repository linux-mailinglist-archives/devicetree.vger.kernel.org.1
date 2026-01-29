Return-Path: <devicetree+bounces-260892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBb8CrBge2kdEQIAu9opvQ
	(envelope-from <devicetree+bounces-260892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:29:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85074B063B
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:29:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3BA9630097E6
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B3F52BEC20;
	Thu, 29 Jan 2026 13:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oQ8c05IG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A505127816C
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769693180; cv=pass; b=WZIoSm1kKhWP18RXJZqMLcbyoYpuYcZ3IPK9gJopf9dojgLtflcxCfPcZZ9tZmwmGZrFCb4GbW18X32SypuT9EXVv536olwSLVDSQ8wcBtSD+IrS5OzYeumzopv0ZzUNIh3UozVc6L9jP+D/4MbassmaMaodUojAYHmmdApzRXM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769693180; c=relaxed/simple;
	bh=wsidljbUOheDDhJRTDJXoKGXzNID+L+tmRs8iTD+1bg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NfUUZEu6x+Qx42x6oN+X9nBXD+wb04pyXL5ujyEmfUK3/e5ezbvoR3IAhiT0shOzaX+bZFlUoTuWVyGeLznVtp7XQudn7TeYqR10DdJ+T6mPbQg/58QA36As91OBlAhGDMVTW8XAAYvmq3kVMhTS42Cahq8uUrP2NImlocDyn1g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oQ8c05IG; arc=pass smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-658cb3ee91aso1653078a12.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:26:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769693177; cv=none;
        d=google.com; s=arc-20240605;
        b=RowvXMHr2xIrprXPW2jUKfk7getK4DvIujawFmUgHrLuBOrYb7IouICaKjIJbCymWr
         yMwE8Orm36b1sfw6dy1rCpO3EjKAw9RuTF84iaxZr+YVYnFwe5Xn7hafoQDNK7h/PiB5
         b7y6lyq9e+KSL7/0uS1m/umrydNJm0Af2JoC4TqBpF2tN0yLrI2gisFnqfMTvbuw3oHX
         FwvqS5qEIkNOtXHlyz1M87Wb3JTln5f0SJ5KPJi8u9wX228NcrZR3NffxqxQhCEZyBkj
         DFu3Da6K6iiDG3XlCdy1v5yefMtzJ6EBoleQYRm1OeOTdjwsFKvF/YkpMrrcjkHBtwSS
         LHtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3FAbLg0n8TvG7sx8QobTC/6/6GD1GFWRF9jfzZ0OiBM=;
        fh=ar+c19/WVtbkLVEK2wNXUxFpyKVoGqbTXmKbzsVGxmw=;
        b=PGBpdM60L+hCfr7CCLWGwDONQJY54+dSiK8rWIVEZtTJ1Xs/WEaw2MNh6PcLEnCPWV
         1DK2YlzNe30Vz/n2FNU3OMr6/kem5oxHDovyzkX3vYSd+QFvEGjIh/tlV8NVK5H3H30b
         V8S5vD8ScFpHKR+vebIIKkj8Wfo8m8lIC36VOrzi7iY6yC3EZ9p8RYp3u5oYWPuWTzu1
         FKtI+kMJ/cYa7AMxZXb/AMY3k7ctmSCl1W6HelcYn5fj7LaxEDD+btww0eBlYepB5gP9
         lZQQUCfxTn2r0eIGckXT9oYDfSe9iZp2IKdI643VibaQRLmSgVGcDDl6CjHGnSq9eS9p
         HcyA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769693177; x=1770297977; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3FAbLg0n8TvG7sx8QobTC/6/6GD1GFWRF9jfzZ0OiBM=;
        b=oQ8c05IGXOqyhroNUuHiaW+NzpdpvSHBIsNSXk4BVfyLFHBEWbOqy7B+3jff0P/bYL
         WqBoLGdKIYJbpTrLX68nIv2+vBklLhWxtvE3dPCDw0zecHc1Drvvoy5PDjvu5zMK/iqY
         OjKGpX2cdlZgZK12SiJPYP+n3vrLII1t2Ux5wdgnxdR5iz70bPXJ05jb+CYKrSfoeFZJ
         qY/y1I7mLDE0w645m3EYQo0g5Tcq75yMJWtIVTl/xGFEwJiy5fOIie8dRM83zpzFtiYf
         ogv1PjW5EOEh+ByLRx3UtMc8Xg2T/t7OVgY9eM9vPXpVH+oClx02joW3WCX/20Q397g2
         ibaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769693177; x=1770297977;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3FAbLg0n8TvG7sx8QobTC/6/6GD1GFWRF9jfzZ0OiBM=;
        b=fIT4RDZnOEycb33oAx9M7WXdAnd/5yvob52/ArCGh7chP/Od1dC3QIjECtIUITAj7L
         xbes9CVaK0msx9NFm7QVXYENyoYkGsbeMMYoNHj6wIp/6EUu0w8r20kjDmSiPhJzVasH
         KuiAIdpxhPqfMSggFPloAl4HwCVOiuxxpJAsZufcT769w8LQeOddeizol+/hjVLx/gHy
         IjuZFG6/F0cJdyXbEmmXdL1wj36rXmD48aC6Zxu0tQpzkgtB2V7T53XVzecmXVRmcPeE
         fsf5FKZGSa19uu8IOTNbix5BuVYskVzqsnJza5J7XqJOTThfa9mVhvpIfO/dSdW6+m2c
         XmYg==
X-Forwarded-Encrypted: i=1; AJvYcCXICsjYhMY1QD10tGM5d3qBJdknngQ3uLBY7iESap/J2k5k3vodgTXNQ9rvMIdaNLAglh6zYHA8yMVK@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1zBPV/9R8E9DCAZB4i5M6KnYZp62pFAAjTU0LCM09PryHSJUq
	yXAAN/Bw3SCDc2vtVZHk39zfhTKeKoHbvb0+QxCAx1GYl8R/ZWl9M6Vi+XzqTHuMxg5bls9UkNn
	SVO1FTzfI/ZPk6B7Fe6tbdSPbR3Im6sipHIvIZeFR2w==
X-Gm-Gg: AZuq6aLIDnO+v2cNShL5PzAVAJCsEa5chz1YI0ztMOELtxnotgYt0NOX3T6UmpyoCUR
	En/GD9YV55xF4Vcdx18SKRhRi6BVoPQxrrkzpGruV3e10+0yQbF1Chi6D2ZsraC1FESi7nklaCg
	7Mi3l3ptGRf/EfUiyIoKbxiRPtySdmfsnhucekAmBM/jY+pR/SDmTyc/Ft0Fk1KlBcs7xUQ0PFO
	dLFm0o/4os823VZxCDRS64ogCSqxi/LZfo5VMZv+EFdiUwxYWOpFrLMFLZTynEbtYHg5GA6QKLu
	ZVZm6pDA/E9pK3F2Hb71Q0Oy
X-Received: by 2002:a05:6402:1d50:b0:64b:6e44:217 with SMTP id
 4fb4d7f45d1cf-658a5f8e7cdmr5148739a12.0.1769693176886; Thu, 29 Jan 2026
 05:26:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org> <aXtUNxEmxcvuNj6J@shell.armlinux.org.uk>
In-Reply-To: <aXtUNxEmxcvuNj6J@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:26:04 +0100
X-Gm-Features: AZwV_QjGAIu9W6_VpH3QHcTFTkleDIzRR41H4AQo5SaX9LTdvMXOOFKWjz1rXio
Message-ID: <CAKfTPtC6TOnrHbyS4mH05wF78OFOMp_ST1UOeEgNZ7+hhh8gvw@mail.gmail.com>
Subject: Re: [PATCH 0/4] Serdes: s32g: Add support for serdes subsystem
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, Ionut.Vicovan@nxp.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	netdev@vger.kernel.org, Frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260892-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	REDIRECTOR_URL(0.00)[aka.ms];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aka.ms:url,n:email,outlook.com:url,xp.com:url,linaro.org:dkim,armlinux.org.uk:url,armlinux.org.uk:email,nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 85074B063B
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 at 13:36, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> Please drop these addresses from future patch series:

Yes, will dorp for next version

>
>   alexandru-catalin.ionita@nxp.com
>     host nxp-com.mail.protection.outlook.com [2a01:111:f403:ca09::7]
>     SMTP error from remote mail server after RCPT TO:<alexandru-catalin.ionita@n
> xp.com>:
>     550 5.4.1 Recipient address rejected: Access denied. For more information se
> e https://aka.ms/EXOSmtpErrors [AM4PEPF00027A62.eurprd04.prod.outlook.com 2026-0
> 1-29T12:31:01.197Z 08DE5971FB66165F]
>   bogdan-gabriel.roman@nxp.com
>     host nxp-com.mail.protection.outlook.com [2a01:111:f403:ca09::6]
>     SMTP error from remote mail server after RCPT TO:<bogdan-gabriel.roman@nxp.c
> om>:
>     550 5.4.1 Recipient address rejected: Access denied. For more information se
> e https://aka.ms/EXOSmtpErrors [AM3PEPF0000A798.eurprd04.prod.outlook.com 2026-0
> 1-29T12:31:00.781Z 08DE596525364766]
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

