Return-Path: <devicetree+bounces-259902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4KZ0E5W8eGn6sgEAu9opvQ
	(envelope-from <devicetree+bounces-259902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:24:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B85E394DF0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:24:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1CD13009572
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1017C35580A;
	Tue, 27 Jan 2026 13:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cMwaCinD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 946A934FF64
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769520275; cv=none; b=tujMNx8xXEHOZDzWNafCpNW9vwLq7i0l8uNM2yGbciBfU54wElnaHj/Z7nz+QXhkEWH9c4Z3IvCrBLohuWiWID1Aoiy4U8vz8go4kZF2tkVNCfXZ7gsQx7bYxwoBAtC0XMY1BPEHxbXtUsWFnD80xUaUHNlg7i2RPC/YLWl1FWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769520275; c=relaxed/simple;
	bh=YUsPRyblh6OA4hJ1qIocbbGFcDb5UhdcQgBvObvpNuw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LYlTscpl/eZXywbIqneXbWkO0v71Gz+8k8hl5i/8E+Tldi3uoaXOtglEchkSgsSH0aIRxOlAqZd99wCEtGsYGRVwNYbxuHPf18HPicjCpaKHZI25lc3FqSY9ZkI40RZJUN3rkgdPVAnkRXOMtAGGB4FNbM6GWE16w1cnRNk/7Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cMwaCinD; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43590a7115aso711126f8f.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 05:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769520272; x=1770125072; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Le0HfEtrH2yi44mIxoqNju3teHcv4i6mXnmZ1U+6fUc=;
        b=cMwaCinDVhV9cukSqWiuz+5rKxsKxvwhFmmquJcKwxsXDJIl46oeD4fPQ8xMdvMhM2
         KNE4buO5mZVeP4rZixsgqJ8iXg5t55otnYvc29ouxCV8Dl0Y08Na2uCfj3JIC5UKQd7C
         SYasFCY47TCyyLJGRbvwPrRxMmF9Cfrry3+A+g0BYGhBsZB6Syo9jvhIhJEmtKL2BEuR
         2xEQ4wZpIy4gi9NgMm7x2VjyApz4dTEiZnnzsVMkqffU8STabVcHJCBx41alKFZjY9mE
         d8Qb/EbFaac6bltlVMnxC47iSfS1SKDtH1VEiYh0VIv9EwIDcIyFImaj8s1VwqZC278e
         HzhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769520272; x=1770125072;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Le0HfEtrH2yi44mIxoqNju3teHcv4i6mXnmZ1U+6fUc=;
        b=LqfetEPWShH12euq18wBl58QIdkudEI6YMB/EOK41FLw9u8zeS9tUx77S15Okxu0Cc
         qYnC/VFZWThmwmAWESAL54fJFKylXejsXorj64r06S9o+DJUHFHNJkKzT5XfOCFHwXMe
         MzUDKI1SzdXfS9QYn35FvdDUU/X/bUMoLAqD9IKMgXMCTld/xwqk3XhqU9g9OqLGeBdO
         /SlcHWvpFvPSSEMlkRlj045ZxzKY7hJIfCKUlZzkgKoNYq8+2DiMhTUPQgp820xP9aul
         VqhmglWk6Xf9U1dyCkRl8BbmJgg3iNLDbwoalC2JAa6C70O3Qnw+qS5uoESB8NU5VX+m
         aKRg==
X-Forwarded-Encrypted: i=1; AJvYcCWu9frjr7WoUm69uuynl6WlNQke3tV/h2ShGUQc9nNYo6dn2LB/637l7DicctVTax8dgFNiiGczrR4r@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8H6KzbKlEmmLKUa9ivl5vaVcfkXcnXM9J6/dUiXV8unyUIPzG
	eVJhsFiXu5+5/9w0iIEh7McCpedQW5CxsQQXDzezyCtro7p5w+5iKNRQ
X-Gm-Gg: AZuq6aLvmfzBCfVcgzcQU5c4QGg6wL5Tpd+HlZsc/CVHAMuSmsre6BsDpS4kPfkCKFk
	BgEMUpi87zke8PYWySbzoco7toVHEIexal+FjU1KBgkAoVqNfLeClimOAgWdBz7HlUWg9CVP3IN
	1zM+QDujFcuaAVQJNviBPs10GkYMDDSzaP3Dyq7AGSAxM5zJugdqgWTaqCBJ99+6L1CDmb1RQci
	kpS9TfPM9ugmSUwSnRVUBeUn2awjWHT04uy/z/TT4O8o9JQs8jqOPewePs2BfMhWesZD3ive3R5
	hZyclOOVNq5LrWlHbYtM+GAjIA9jG2f7JF3h11w/WqFH/64GTXrSePSZK6y+UegGEmY3yJ0wlvG
	6qG/lg5q3xNyNiWQkPPwqxJvwzAD/cTTEF62zXkYG/9NWOhY7HUq0gOwD8G4d4rxYw8Ah8bY/lN
	mcKMU=
X-Received: by 2002:a05:600c:4e01:b0:47d:3ffa:9838 with SMTP id 5b1f17b1804b1-48069bfb046mr13949155e9.1.1769520271799;
        Tue, 27 Jan 2026 05:24:31 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:739c:1012:de93:325c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066c37433sm59383655e9.10.2026.01.27.05.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 05:24:30 -0800 (PST)
Date: Tue, 27 Jan 2026 15:24:27 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
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
	Avinash Jayaraman <ajayaraman@maxlinear.com>,
	Bing tao Xu <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
	Juraj Povazanec <jpovazanec@maxlinear.com>,
	"Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
	"Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
	"Livia M. Rosu" <lrosu@maxlinear.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH net-next v8 4/4] net: dsa: add basic initial driver for
 MxL862xx switches
Message-ID: <20260127132427.3yhme32ch2nanf65@skbuf>
References: <cover.1769053079.git.daniel@makrotopia.org>
 <18c6a24eef8617abb5073569fee162f1aa1c06ea.1769053079.git.daniel@makrotopia.org>
 <c2e191c4-dec4-4e42-b108-353778d9bd18@redhat.com>
 <aXinOE7KIFIm5dUK@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXinOE7KIFIm5dUK@makrotopia.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259902-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[redhat.com,lunn.ch,davemloft.net,google.com,kernel.org,gmail.com,armlinux.org.uk,vger.kernel.org,gmx.de,monroe.io,adtran.com,maxlinear.com,phrozen.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B85E394DF0
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 11:53:28AM +0000, Daniel Golle wrote:
> > BTW the initial port isolation LGTM, but I would appreciate some DSA
> > expert second opinion.
> 
> +1

I will try to find some time to look this evening.

