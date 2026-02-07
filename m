Return-Path: <devicetree+bounces-263648-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDgyCAKzh2mRcAQAu9opvQ
	(envelope-from <devicetree+bounces-263648-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 22:47:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B57107365
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 22:47:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94A3D30117B2
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 21:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86E7E33D4FA;
	Sat,  7 Feb 2026 21:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b4NNn+HE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC2A3112DB
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 21:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770500859; cv=none; b=PcKExJkF+xxu8jmmP5Rd1Xk5yxjnx3Ux0aSjP14O3RGoiNuKccS+DCCWxMM8LjsODM2noz+Fc5/Zn4UiODA/NQWDSQ4kQX/3OHCmXgKjD/Q3uZnAJzYKINodTe1lMlIzVPnGCuvgSLIpVLC6Uk+Bhx0l9CHANV7BfT0/taImisQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770500859; c=relaxed/simple;
	bh=Nap+MeiExbs2Ky+10HhauwyKHCc42uBEpa1rspvQNVY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SiAEgNFSGEYSLEO18U5eenvJU7vxm7+pfjlpA5rN7qk5HAEbchbuM4pIjKuoq4HAJHFLLNRpVr6OKDB5rymhZbBkR6MptkaYHPzkPdgGJ9dd/NPMmI/Gq8QbItVcC/l5JtwrdP7sjgp4Yw9N8o0CXA+SM51v77+O0O/C67SA66A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b4NNn+HE; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47edbae8307so1774035e9.0
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 13:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770500857; x=1771105657; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Nap+MeiExbs2Ky+10HhauwyKHCc42uBEpa1rspvQNVY=;
        b=b4NNn+HEgkgbxPLz0surishB2NmaDRzRDnTVfPCkLiVp01o667t9eC7xfW39jRyqAg
         fWKKpXkstdWVb1u7zOx5gQT8gIPNHdQqWxzDL85/DN9e9VwJiLiQc0ZHEK55TpGKSftn
         rIs3ta0bbhpfUzIW8MCntwtZ8vsDjxyfT7Iez5ePLBl9sXoKpa7PGucBu6dYLhWDT3N1
         xoATwzTqXWRMwUlXHtq0aruWflkPbqpkqyrjxOERtSSDc5kUk07MpUnl0+JOExjBu/6e
         xS3cgs39Lpee6DtDL1cPDqqDXMQaPj6Q1/s88ayO8Whsi8uHXgHcE1RvWNgNDsPt7Dsq
         X3ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770500857; x=1771105657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nap+MeiExbs2Ky+10HhauwyKHCc42uBEpa1rspvQNVY=;
        b=mqsTdgxQGPQ9QmzL5Rlc1AO+X7aYPIvFgVaVEmeHG+AXEKv1NO6wvLK+Y1wSX8dxBE
         7zRA3HTGZ1UZWI52+WJl8I9kM3DnznL31IDpmmGv81sherddUTT2GJzrJdSKF71w4T6p
         s0ivSPn4+/UDvyCBCX5uOEMASsDxV0+p/IXdAFfGZvHLCz1BuCminXkX1yeQzFZpy19M
         CzGiru5n7QFN6OytBqG/rVphjNjAzI3gpE517n6OFgH+RvbxsX3bq9yMMA5Q5/psZZGi
         bBXAIMaJnqeZSWI3OtxmPrpitMtb24S//dWtViIkn31Av8T4I5sBy0FNDXBndKjg3h6q
         gaTg==
X-Forwarded-Encrypted: i=1; AJvYcCUmz4moO1rt0PV0Kes2MzNlCakmKVMzDfD8zAdidfg+8NKyF0zHapV/fEv0grbbjd7CjkQDpNDTQQh0@vger.kernel.org
X-Gm-Message-State: AOJu0YyjSyWEEgiXNFuB40MuWvA7uqNEHOLHWiN2rjDo6aVS4cm1VcCt
	LyCFWnJmyshI6JTfzvkHYDuRwDH1IEwlxcEt1ojcfbKT+sgfa2BMa3sT
X-Gm-Gg: AZuq6aIKKCGUcW8VSktYIlvU6A0JiFn3hkQ231VIsKtYOIB6F380qlgvqmx8tBtTUmr
	iDZmdJy2uF0hp7Nluxp/T5AbxGQRLTzYpdguRp5qwFRd8/69YJB0gFkdh2zLqx3HIfZO8iPJaBA
	gJaRdzKK0lGn/3anYchKR/7Z2Z6GnG4BzFKrISNAmj1J89DAuemyLAhPt35pUPRrB5kzr+XpGMh
	l/VWcteDy7vKffynHXCul4bj7eyJTJ4bhlcjmA4WYi1S3Stxu7thcscvvKIsBfd17c1CmnPiz/o
	wadWwDGpngeMagHA63YbO0Ww5eys7wuDrtQpnHRuTcPNhNewbsKPtRwJZxG2DsHLTfFXoqUoyfS
	7x/SPNkejwbhZw2MCpuWMAht/5S06LpgiBw5+ZojxthZmwFtW0k2ISwFaYxzGp8grvkSCFWNw9x
	jCUWE=
X-Received: by 2002:a05:600c:1c0a:b0:477:9dd9:ac57 with SMTP id 5b1f17b1804b1-48320177c15mr54493865e9.0.1770500857176;
        Sat, 07 Feb 2026 13:47:37 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:c705:d6fa:62de:90a5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48317d2ba61sm339174875e9.1.2026.02.07.13.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 13:47:36 -0800 (PST)
Date: Sat, 7 Feb 2026 23:47:33 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
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
Message-ID: <20260207214733.m2zvh6ozo7vsc5hj@skbuf>
References: <cover.1770433307.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1770433307.git.daniel@makrotopia.org>
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
	TAGGED_FROM(0.00)[bounces-263648-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,armlinux.org.uk,vger.kernel.org,gmx.de,monroe.io,adtran.com,maxlinear.com,phrozen.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 97B57107365
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 03:06:48AM +0000, Daniel Golle wrote:
> This series adds very basic DSA support for the MaxLinear MxL86252
> (5x 2500Base-T PHYs) and MxL86282 (8x 2500Base-T PHYs) switches.
> In addition to the 2.5G TP ports both switches also come with two
> SerDes interfaces which can be used either to connect external PHYs
> or SFP cages, or as CPU port when using the switch with this DSA driver.

For the entire set:

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

with some minor comments I'll leave in individual patches, which I'd
like you to address.

I don't want to put anybody in a bad spot, but given what time it is,
this set should get at least _some_ time in net-next before the upcoming
net-next PR, to allow for some reaction time in case of some unexpected
reports like from static analysis or similar. So it would be good,
because of that, for the fixups as a result of my comments to be
separate patches rather than a new version.

