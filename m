Return-Path: <devicetree+bounces-263649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLB8MECzh2mRcAQAu9opvQ
	(envelope-from <devicetree+bounces-263649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 22:48:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DFB10738C
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 22:48:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28C8F3011767
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 21:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3E233D503;
	Sat,  7 Feb 2026 21:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SPziiTFy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0C227D77D
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 21:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770500925; cv=none; b=H7o7koScd8cN2edglCnQcs2jZqIyy/7QMacBsl6Lq6InUrXM042RYSAnx2SvPidc+F1ITKDKR3B+ybyVy7/GRWqo5obJJa20VkxXUU6bm0taaLinze4qRTrA5MYqltjMO3GVWvI4ElKbm4wFWi7BaJtAqbRU2UczgchsqJRRNCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770500925; c=relaxed/simple;
	bh=BEttTxK2g38HFhZg6BCcOMgu3YyUl6eWVY4U9mJKKaE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dLj/UM2v1Uljfw53etH0gKM9x2XHwk+koCprb00uZJS6vPmyVN+i022btMmdUk1mmRWsTIBvxR5WDsBS8RmvOAI13lqcmZbC9noA6L6XCjft5jDsmYdobmkc//nJL1bnnrOjcagj0tacZU/M9JpyC4skT1Khm2iDnqbg/2JgSSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SPziiTFy; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4806853efb5so4036855e9.0
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 13:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770500923; x=1771105723; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JoJErSjgk9C7+p2PVEn1YN5fdKhqbS1ZXMPfhjCDJYI=;
        b=SPziiTFyceewkp5wGwgynBtwmO/8Y6OCZNdTG46CALTqL+vMhO3RTerjE28d1JKWUc
         R+8agdau6OyEbKpTx1FXMXIX6xzd5l5UEGKzPUvSxFmFTHBpwx/lauxdDjN8vXHsnO3i
         xgXZVr9e7lpXcbKPZihKegBU32h+mwkMpBDF8Psxb+q7VXu/G+WqAsJv5FgxUb/eQtQL
         v2UPvLizz5EVj1fFkE7QJowHHU3AGQZ7V+WkFv6x46d5dek8V3JXDMdTigrzHrS6Cu4t
         I34V6H3NMo8+ED4xIr2kwGzX18xM3ZqVFcW0DSEaRNtGt62bdnrpkeuS6pG0xjr2h21M
         Vzvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770500923; x=1771105723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JoJErSjgk9C7+p2PVEn1YN5fdKhqbS1ZXMPfhjCDJYI=;
        b=VnHxguiM4Yiv/TT167wq7mreSKsZvKD6r6/8fzCnyOdaa8WGT2/4ksr0b6YdgaIsHE
         WK6nBIUSlgxvZMB5yJWQovGbJGRIH60Jnksj67eT17KI7pgXBiUxbM5egwE+V5fMST+s
         pJiUB0qo7MGMNZdhA6SneQocrBW0Nri4YZ0vmZZOoEQZb57QBMMKG4R7ypaOTYpjRLoF
         wi8hk66TuDlU1P80dpIjyI8juSn/qiLy2SbodKeuDCz2onOce6ehjLst5AYvUwmhnivP
         83caEcUGi0BA0xReNd3KlB3t/GxQUdNqiQ3um6oqwCxJXLzDmxsgXHVYXxS/8+Ar7I2r
         8UNA==
X-Forwarded-Encrypted: i=1; AJvYcCXoozLTKhtbKVzKRcpXhqG5RwIMvdIpG83eoFwBKbQ0U/8d3unRzjtI+xRvryuACfzLxV5CAyc9MvSL@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0OrE/j++b/FTSxDvlazSLu1tgTsZ+2MZc/NYPJT5cPoWbsSQ/
	gqR/QyjPk2E6/HjnogB1iAMTKC0S6X2dOSLt5En4A5NcTwK5OBvLNOM6
X-Gm-Gg: AZuq6aJyjkwY0vWX+uHOVpIeAQuQjCDBh62dkYBviuB+TM980bKg28SJhoOMRUurrFB
	IGhjNwz56l7DETnI7JDpDTQhlwVDjtxdLHD6L8n/M4NSMXpfNDIl226pkIYI+K7z2XOwjJbNls5
	v9poP3bW2Gh2mzMDydXpQe78TDb0J+pIPse8/3/nkdUdnn2eBecxtZv4cmgSQeCUzLHL5WLKHzF
	5flWLuXg8Eh0tHmbGpxLlMJPGrWfEy85LcOE3o45ZueOFzBgDM9T5BVEMw6DHv75US9ZAP31OsL
	snG6vLyQGEgC1sxHuCg67nv128A9PCCqtS1OQa3yNsXdoeR80knY5QIRGGepqGEJYJV8bG2XWQR
	Lv34bhWcgAjeHSj6L+2rbw3bsshuzi8ZsUIarrWUuofNn0/oHos4FwmcEeJIgfEAaQqzGQBXPZF
	icLns=
X-Received: by 2002:a05:600c:1549:b0:477:a16e:fec5 with SMTP id 5b1f17b1804b1-48320195de3mr57363405e9.0.1770500923276;
        Sat, 07 Feb 2026 13:48:43 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:c705:d6fa:62de:90a5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48317d8341csm211713325e9.13.2026.02.07.13.48.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 13:48:42 -0800 (PST)
Date: Sat, 7 Feb 2026 23:48:39 +0200
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
Subject: Re: [PATCH net-next v14 1/4] dt-bindings: net: dsa: add MaxLinear
 MxL862xx
Message-ID: <20260207214839.2es25wonmtzvzhzo@skbuf>
References: <cover.1770433307.git.daniel@makrotopia.org>
 <cover.1770433307.git.daniel@makrotopia.org>
 <22a6a3c8c15b932ff4b7d0cd8863939f06a0c2b4.1770433307.git.daniel@makrotopia.org>
 <22a6a3c8c15b932ff4b7d0cd8863939f06a0c2b4.1770433307.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <22a6a3c8c15b932ff4b7d0cd8863939f06a0c2b4.1770433307.git.daniel@makrotopia.org>
 <22a6a3c8c15b932ff4b7d0cd8863939f06a0c2b4.1770433307.git.daniel@makrotopia.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263649-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.9:email]
X-Rspamd-Queue-Id: 22DFB10738C
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 03:07:04AM +0000, Daniel Golle wrote:
> RFC v4:
>  * remove labels from example
>  * remove 'bindings for' from commit title
...
> +examples:
> +  - |
> +    mdio {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        switch@0 {
> +            compatible = "maxlinear,mxl86282";
> +            reg = <0>;
> +
> +            ethernet-ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@9 {
> +                    reg = <9>;
> +                    label = "cpu";

Sorry, it's my fault really for not checking since v4 that you properly
applied my feedback to "Please remove port labels from the example."
https://lore.kernel.org/netdev/20251216224317.maxhcdsuqqxnywmu@skbuf/

There was an effort a few years ago to remove label = "cpu" at least
from dt-binding examples, if not from device trees as well, because the
"label" property is defined and parsed only for user ports, which the
CPU port is not. [ and even for user ports, it is discouraged except for
distributions with a sub-par udev implementation (OpenWrt) ].

This line should go away.

> +                    ethernet = <&gmac0>;
> +                    phy-mode = "usxgmii";
> +
> +                    fixed-link {
> +                        speed = <10000>;
> +                        full-duplex;
> +                    };
> +                };
> +            };
> +        };
> +    };

