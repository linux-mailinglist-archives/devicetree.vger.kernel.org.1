Return-Path: <devicetree+bounces-262498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMLCOa3DgmkpaAMAu9opvQ
	(envelope-from <devicetree+bounces-262498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 04:57:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6A6E16F7
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 04:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8A96301FF93
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 03:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6457A2DF128;
	Wed,  4 Feb 2026 03:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bDPhD3/t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1B81E25F9
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 03:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770177397; cv=none; b=VbP5v8TdSM1036rjQCB6MNRTEyipFvUaXuh09twy4ZopYHxPCjwbsLK+vjD/g20T8vxpHg4GBnOrxorrKQis6elfwQNkPcrx4/cJ/F1oEAp/tojbJxcd1hPb9o+6OUPM5gmsiw6oxpQArumLYGmPcmgFiC7vXkf0vBBX+qjItEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770177397; c=relaxed/simple;
	bh=AGkaUKeA48k63GxPvSgLYxDOipDNRk5KS3ygY4PCKG8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t0KxJ+0trOapNOcMeYmyo6LTpcsliKINmyvCGQDQd4rceIGcbBFlCRfVC2udOPIIaP9gggQbX6oQp7TL3ih5vR2LIEyeZGLP1jULcnTXXk09Fl3PXxHdXmJoQNhq+1HiqY0NGGv9FzhKo6NFf+z2eeplSyinfGIgkLRCk+FaB7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bDPhD3/t; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-50331ac1fedso77783241cf.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 19:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770177395; x=1770782195; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kCf4lzrMziBndOsmo8GuusOdBN8cx0cDMD3sdQZPXW0=;
        b=bDPhD3/t+6Jyv1z0La8C381fejCyAbVwzp47Fa1Fhts0mgvbguNkx/ML9yXGp8VaR0
         VZd81/ptdqjvOs7Mp7MWVfEpIrLOOmefzHW7hZVBbI4ypGsMmg1ivR6VfK/JXGsqsBW2
         iswxFm5ImOppyEcb1GnSqZOOimMNK0MnYVcD/KfbChbSwIxNd1RnqusjR1uiUS3i9DWT
         XMx/eg6RTEA6HuQ7VJI82lxp9+GwPijw9thEplqUEIX5f9gjEwMohSgwWDO6mmRE+ajV
         9awdX4SsLcsJtgAUjmPLoQf+n55b66WXGviX2+QTgr4ZmczvyjV5fmyUgsm7aB1xqApq
         v8WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770177395; x=1770782195;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kCf4lzrMziBndOsmo8GuusOdBN8cx0cDMD3sdQZPXW0=;
        b=tA3pXb1IZRErQzB54sfjkDOejZi63NrCYg0bpyUs7LCJ72vUsTjlU7rDVsNJ0oeKnB
         lRYKmtvR7WwU8v97n0zWODyA0G2j43BAKadN/aFR4A50JvB3TxJRdC8DDc4SrAMut83I
         Pppq+RKjI4Xe7mHAV1Sx55yQI4qGi8/FVmOEY7jfg0UhMgqT72o34CYqbrXi1Y3fm5VC
         Xch2vS0MCAmntjnl8aRUCT6wYSK2lFP3M5W1x/3rx4kv8WBgqBCJFmM5kP0bOL5jXAMF
         2r2/NvZABUz7luqogDzl5mFaDEazaYJ11ucEJDJNKMS+fHr43d2f+MJbUjmtvP80f7th
         dUwQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3tu4nKaIiwVPh/rIHF21qyxOV4uhwOXJMExf7+aneYEgy8sBga2gfAx/H+yBjI6OmY3Ik0wdaPT6m@vger.kernel.org
X-Gm-Message-State: AOJu0YyNxkx0D1/xYuHxc/cdq9hpyGTTv40InuDsP7bLLnhskxw6f9j+
	CDgChNa+46vjdfYRe50QwCPLCwegsgrrltUAhvWt3w5mv7uLZZrfM4Ha
X-Gm-Gg: AZuq6aL6FIs+3Tq085Awimqsvcn2rC3+rwRGSqrlwwTntGIsghf1tXDuTS2nEYvvG7h
	TKCE9xm+kPEgWwV+Ac2zkgMqR7VY6j/HhMH4Em4WBWXcfMyTJweTnKiQymvcbfEq4gjCEBssugN
	/eDocIqhBOQ40OWFh10znklmKNeIeZgmvOv+MfbYBRY8uwkFnDQZTZPDkjQlk3Jsx0r+KSqMcoT
	PchwGGUrOiMlWAeROLeJPtQphuV9QHbqU0SFr4+2+97tHgRgnRf5ehPz6PN6AUYqWvXs9LxTCCl
	A1BDzienrGWHQA7oszg2OiZ0OJcaPg4XlSvXSkzxnoEr7G/VX5qy0ef0zphNfQit4cezzbB2czu
	keZxf0KxA9H+0fy7Tqcj9UFcNB1z/ftDzg2yeEhgYyMJp/JXLej9w1U7yOOmowBrfA5zcGH5TFL
	6TQ0aRl3mQ2A==
X-Received: by 2002:a05:7301:7003:b0:2b7:32fe:4bbb with SMTP id 5a478bee46e88-2b832895197mr603971eec.11.1770171121283;
        Tue, 03 Feb 2026 18:12:01 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b832fafc2fsm746589eec.24.2026.02.03.18.12.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 18:12:00 -0800 (PST)
Date: Wed, 4 Feb 2026 10:11:36 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Richard Cochran <richardcochran@gmail.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yanteng Si <siyanteng@cqsoftware.com.cn>, 
	Yao Zi <ziyao@disroot.org>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Shangjuan Wei <weishangjuan@eswincomputing.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Zhi Li <lizhi2@eswincomputing.com>, 
	Boon Khai Ng <boon.khai.ng@altera.com>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH net-next v4 1/3] dt-bindings: net: Add support for
 Spacemit K3 dwmac
Message-ID: <aYKqh7SmoHO83Avr@inochi.infowork>
References: <20260130022705.1059214-1-inochiama@gmail.com>
 <20260130022705.1059214-2-inochiama@gmail.com>
 <aYIyuulFADU_j3V0@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYIyuulFADU_j3V0@shell.armlinux.org.uk>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262498-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[armlinux.org.uk,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,cqsoftware.com.cn,disroot.org,bp.renesas.com,eswincomputing.com,bootlin.com,altera.com,cherry.de,st.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[inochi.infowork:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4B6A6E16F7
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 05:39:06PM +0000, Russell King (Oracle) wrote:
> On Fri, Jan 30, 2026 at 10:27:02AM +0800, Inochi Amaoto wrote:
> > +  clocks:
> > +    items:
> > +      - description: GMAC main clock
> 
> If you know what this is in terms of dwmac databook clock terms, it
> would be helpful to use it here. I suspect "application clock" would
> probably summarise it, that being the clock for the bus interfaces
> that dwmac provides to the host.
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

That's a good point, In fact, I have no dwmac databook now. So if you
think it is fine, I will change this description to the "application
clock". Thanks.

Regards,
Inochi

