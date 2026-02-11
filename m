Return-Path: <devicetree+bounces-264707-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAAMHtZSjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264707-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:58:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DBF12311D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7956B3026595
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6190366073;
	Wed, 11 Feb 2026 09:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iGyPRlJc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D078352958
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803884; cv=none; b=Tq82HKhx071jhRGywzU7DPTH4H5hqFhffyaJ+S4jRNOvUtzOoSvaPdCnDkdIfU3d6fnhNiChb/n+dbbHEoOasitaNiCUuu3F8xnZwtzNFQUvbbSN7+Wbce6bXNHj41nDrZz6P7lF3/++oXCbtUJRM7p4zwuNcAAZV0ecVU0W960=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803884; c=relaxed/simple;
	bh=j1gGwzFrPEp55EzVIdvTaxzf5VDVeMo4Ihv3OYZ5rOU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GG9/y5rX98jQWsJJmOTCpjqFje11baeqdl537RCBc5/Q/rgn1R38d9ge7+dPytmPsjzXm+uDVOd43Icf17cSe4C4dAlLWPRtbeaL/FLsCNlikcUrxiTqbaUt5TaEND25RNkmAkz1L3pqZyIU8epdzVYWVkSuDB/nd824EZRnxNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iGyPRlJc; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47ee57c478eso5881115e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770803882; x=1771408682; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uLronaqmOYx9+5+0YsCI13INff1FSvhU4CEpmAvdKu4=;
        b=iGyPRlJc25xse5U+nEAT7D7xFYzl6ZRhWXF69+2p6Knvr4EeRFZYXWT/ratiAb+6nu
         emjdMVkjjEBHLNEUHdJXbdwHBYOEbr73U9N4ZIJiiTHBl6l/grN1h9Ytk+/3blLwc3nO
         iRpqyQ9CPiGKdQauEgV9+ZEOcKfLQcsU2gEPpMyhiqulymOs7UDqgX4/AeYBBUZkxAhO
         g9ZFUAaPO8OZOHEu/xTxCL7zdXb0x/csAXd8xweCvlmbOjBkwYthpV4Wd4EqUWGwlCGb
         b5EdC2w38enNCgQFneW7dC1ziNfm3s7OhhIwmiqFKM9+sYU8qOLRXtMrOpMpGOjjia9X
         Eolg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770803882; x=1771408682;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uLronaqmOYx9+5+0YsCI13INff1FSvhU4CEpmAvdKu4=;
        b=SRLMks0Ie2nug+2CLtALn4+u1lDRV2Cz8Jbm8m9ALn3b9v1rhL7S0PdG+FNu/qDVzx
         b4I/54HEpZHbLbQbYEuKFSKAiRwj9xC8Svgrl5DHIvDwdJVDXpAvlBva0HZHw4vI2KR5
         7HWLEtvXtsz5SIkl9JGMDTKp6qDA2plmmVWvukWZU3T5v8cLJHVqjgIkMsZTkxhajmpH
         HVSI8t/liQH/LTkEPckFpBvtGGuWzOVeFGcFxOKz/Y3mzi+sPb/aBNpX5eQlt/yHjtDo
         3bAd9VMWVXW4FTqXRPPPO+y2qMAQxiEJtfDrIbpQVgLGIrVrL2ARL9HfrI1gwAA0ZFr2
         1RNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJsTvf8Rmvrwz6yee6EcQZd+8KOEbBzVq5Xdp5blkx50+GJBQRfsurUn0LI5IXFB1KNmlsDhcLWWkB@vger.kernel.org
X-Gm-Message-State: AOJu0YyNgu5U/6v5py+ZMKRg6Z2jxebjTIZiN5UUpb4Y8sApg9bdl9hH
	9NhbaPMEJlpETE6HHmcsoElokBWpyF4aFxlzxZPt1dgJXXYVEKXZIhXc
X-Gm-Gg: AZuq6aJHrdzKxCvmi2v+21ZmvZT5NeOeDM8R6ZAVe6Atwn9lQpcj9rD1fj79FFSbCU1
	E6TimSf1lUn1HEBFF33OYMzpC84aDWkm/IotZf9m8y1VRCysO+CBjyQ0lK7PxibX2QjirwOCZXX
	fHhLdonS/MjZj+6c9GF6RDapfwd964j5IdmtXA0b0r2irQuVuiA5y7wFgcLvR+btgQGS+AXlAwK
	frM8irKjjRPOn2G5qNUMYvgW8SiPx5Obv/vtLUj/06SOhpPQ8DF3o0AUQtpPYuLbYATv/yYO+dg
	kR10st/VcN6ryEoG9bYcTvqhz264fa2CKBpieFjQDOAhK10rOuHbrRRZpvRu/XhQqksXdmN1aTl
	BL2EP7rQcQwhnlHHHpYQe0OBm8zNwpSwnAZTgyqfLu4fDE/+M+eySY+Js566aegJXo7aJvM4AWz
	Hobc2J4C6e5NeK5us=
X-Received: by 2002:a05:600c:a02:b0:477:7bd8:8f2d with SMTP id 5b1f17b1804b1-4835e321172mr11637965e9.8.1770803881559;
        Wed, 11 Feb 2026 01:58:01 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:d8ac:c964:9b43:1b13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43783e5c550sm3671505f8f.36.2026.02.11.01.57.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 01:57:59 -0800 (PST)
Date: Wed, 11 Feb 2026 11:57:56 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
Cc: Daniel Golle <daniel@makrotopia.org>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Frank Wunderlich <frankwu@gmx.de>, Chad Monroe <chad@monroe.io>,
	Cezary Wilmanski <cezary.wilmanski@adtran.com>,
	Liang Xu <lxu@maxlinear.com>, John Crispin <john@phrozen.org>
Subject: Re: [PATCH net-next v14 0/4] net: dsa: initial support for MaxLinear
 MxL862xx switches
Message-ID: <20260211095756.cejtseyheagu4pku@skbuf>
References: <cover.1770433307.git.daniel@makrotopia.org>
 <20260207214733.m2zvh6ozo7vsc5hj@skbuf>
 <d6393a14-fe50-426d-9dd8-5a33b2af0a0d@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6393a14-fe50-426d-9dd8-5a33b2af0a0d@redhat.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264707-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[makrotopia.org,lunn.ch,davemloft.net,google.com,kernel.org,gmail.com,armlinux.org.uk,vger.kernel.org,gmx.de,monroe.io,adtran.com,maxlinear.com,phrozen.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D6DBF12311D
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 10:49:56AM +0100, Paolo Abeni wrote:
> On 2/7/26 10:47 PM, Vladimir Oltean wrote:
> > On Sat, Feb 07, 2026 at 03:06:48AM +0000, Daniel Golle wrote:
> >> This series adds very basic DSA support for the MaxLinear MxL86252
> >> (5x 2500Base-T PHYs) and MxL86282 (8x 2500Base-T PHYs) switches.
> >> In addition to the 2.5G TP ports both switches also come with two
> >> SerDes interfaces which can be used either to connect external PHYs
> >> or SFP cages, or as CPU port when using the switch with this DSA driver.
> > 
> > For the entire set:
> > 
> > Reviewed-by: Vladimir Oltean <olteanv@gmail.com>
> > 
> > with some minor comments I'll leave in individual patches, which I'd
> > like you to address.
> > 
> > I don't want to put anybody in a bad spot, but given what time it is,
> > this set should get at least _some_ time in net-next before the upcoming
> > net-next PR, to allow for some reaction time in case of some unexpected
> > reports like from static analysis or similar. 
> 
> As I'm wrapping-up the PR right now, and the series is not applied yet,
> I fear the above is not going to happen.
> 
> Since a driver is involved (as opposed to the core stack) and there will
> be the usual release cycle to address issues before the code lands in an
> official release, I tend to think this series should still be merged -
> unless someone voices strong and valid concerns _very soon_.
> 
> Thanks,
> 
> Paolo

My feedback is non-functional, so it likely won't be addressed in the
RCs. Anyway, it's probably fine...

