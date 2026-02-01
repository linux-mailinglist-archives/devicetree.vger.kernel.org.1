Return-Path: <devicetree+bounces-261542-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9YkQM3APf2myjAIAu9opvQ
	(envelope-from <devicetree+bounces-261542-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 09:31:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2EDC5401
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 09:31:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68D2C3013D6D
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 08:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B61D62D73B9;
	Sun,  1 Feb 2026 08:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I+zRbNcg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DEB1BCA1C
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 08:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769934699; cv=none; b=uqXanRE7oPRUERs4TwZh9rcnCOBYPgarSva8VIeM7nRPbFbdmvN0tb2Uy1Puv8Dv5UTYz79n8tAO3GBO8agqqtKi5ZoEvu2QfMZeduIFu0HFSXxdBEF6KwX0WDB2EfiO+KYDOtwuGkuXjQk1aMmy4tib7yp/xl8dDfYiqvXoteY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769934699; c=relaxed/simple;
	bh=LQmmiHx5w8tZVOwNLsHgS8a+2UGZKLcitwgGC61lnfY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=slBAP0ANNWCt1e61OjoiLR/R15otQASd7fOG+FHerSU9JcuIZEeO6RhwShMNU/Sd6NnrxSW6KVz48dWNJZucfiFWnMuvp0Ug8Xe4sTQ69P8+1SJqMQIGJ3/h3HOaFL3B9UoBVkYvBZEf3M/lc8myXxYACgpR3+Aq2j4N1ZnxUmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I+zRbNcg; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-430f38c7d4eso143658f8f.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 00:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769934696; x=1770539496; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Tq8p+3GS5rJ+sMx/Auwolk1i3RSb2e6INH/BBCQXxTE=;
        b=I+zRbNcgkZb7WJJ7nJ0ZKuPVc+71AA6KitbtA9awYoMxS7pw9uGOLZlqKeNuRmL5Ey
         Kw3dpY1QQ+t8uSvOjH4qxxGdOPP7keCjyCa29Sa0QiigHpz+IaOUl0teBevnFbl4Cn5/
         2hiHR2GlMljfBsCZcWsQddTZ543xFcXZNB01HOSIt0B07/GHjwyaSPIVbaHpdIQSQb3K
         GN1R93maRaJCz/PlDFAswsyKudc7RjSStxgCriUC90lCvYrDy9nGGuKABzbEbuDb96Xn
         jHxI21NBp1bHtu8/2Zm25sz2Mtkc5c5a9w+P5Ombp7OsJE92psMcEX2jLY1GJZLwK10d
         nUvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769934696; x=1770539496;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tq8p+3GS5rJ+sMx/Auwolk1i3RSb2e6INH/BBCQXxTE=;
        b=pZEU29jUUQ6APQeO9cnteQ/EejkjK/m5hlGfwVHCbhpIwQ+yR6VyPWIKQ/X9Jkwf+U
         qXvxXDfRkv3JPRyduwR7iagmu0/RDSnKkjLl7rI+u2O4u3XF1XUXGZYyHlEzMbYslVM5
         pdYo6GAfsRiUUG9H2EK2dbdhID6Cz5UxkPuP77WNVHsKYHiBAbhnajQFVYMTQhXjKa0E
         288aUaKOdeinYoU88N55Jrfl19wrk9i1/nMiXa/QlgyVFoWPg5DyS5l18DlCuK07xKQp
         eDBSinmw+L1d+3iFYA9V5lESyc4Rpqrd9csLANWReg8IqVYxom/WFJ1rXeywVvcvZTn8
         byhA==
X-Forwarded-Encrypted: i=1; AJvYcCV9/9rbjRHj68L2HClUYyylMYEcQP5UnZqgN5zTHu7YHTimkqMADhltcv3FyqcC9a8QgulCW5eEcsWW@vger.kernel.org
X-Gm-Message-State: AOJu0YxOJgDlmEHIPBop4kmjxVPvJSKnE1ABU4N0V68lltf0xWrPqdVQ
	lcQEk2tYNVY2yZk13cDPYEQOamAhr5fW9TmnSg0WwmHg+fAKfn1GItvI
X-Gm-Gg: AZuq6aLXd37/9YUy6FC4Tj2l1SONDkplIBMSV+sZ2fIxG1gSVO7T5FQqlpDFDUe7Jo5
	HpxWChyw1OfdK893M2JNyCbK7Fxo92PInT+3dl7eZFNZ+p4flo03haZjUA0v+6ZGKYvJ2vF2vf2
	O0LtnCU0shD3EwhUm25D9oi3DDd+6KoLp3x0e7RKVlMn+h8RAQqoFTQbw0uY4DsC4AaaPTd73JQ
	6SxMbWw8/kaNSNI2fAGgl8FIwTSF6t0s5P0hz15wPcy4kfRrRQnFg891Q++ptIaahLIfbe4sj/N
	iQtVGGrT4T4hWl95PS7xXHeMbB47RgrMNzKLAUCDgIWSrqfF4x3hyh6cU+yjtnqcfNEnxeXP7ZX
	eWseKBL6akkFZ3xjNCKnMzMMUmQbyFTh26KbCbj99lquckEOCh56HiYd+0lTwb5TU9+MrQkW1Y7
	5db40=
X-Received: by 2002:a05:600c:8217:b0:477:9a4d:b92d with SMTP id 5b1f17b1804b1-482db4ca9bfmr60365615e9.5.1769934696368;
        Sun, 01 Feb 2026 00:31:36 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:1194:3ac0:7d64:6ba4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1322eefsm36013033f8f.30.2026.02.01.00.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 00:31:35 -0800 (PST)
Date: Sun, 1 Feb 2026 10:31:32 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Hauke Mehrtens <hauke@hauke-m.de>, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v3 0/3] net: dsa: mxl-gsw1xx: setup polarities
 and validate chip
Message-ID: <20260201083132.sfxg7y63duukoxte@skbuf>
References: <cover.1769916962.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1769916962.git.daniel@makrotopia.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261542-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1D2EDC5401
X-Rspamd-Action: no action

On Sun, Feb 01, 2026 at 03:41:34AM +0000, Daniel Golle wrote:
> Now that common PHY properties make it easy to configure the SerDes RX
> and TX polarities, use that for the SGMII/1000Base-X/2500Base-X port of
> the MaxLinear GSW1xx switches.
> 
> Also, validate hardware in probe() function to make sure the switch is
> actually present and MDIO communication works properly.
> ---
> Changes since v2:
>  * be more clear about describing polarity at port, ie. external pin level
> 
> Changes since initial submission:
>  * use allOf to include phy-common-props in dt-schema
>  * use phy_get_manual_rx_polarity and phy_get_manual_tx_polarity helpers
>    instead of open-coding them

For the set:

Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

