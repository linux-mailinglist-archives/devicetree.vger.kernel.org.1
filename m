Return-Path: <devicetree+bounces-261813-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OoLF2SfgGl2/wIAu9opvQ
	(envelope-from <devicetree+bounces-261813-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 13:58:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B2903CC889
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 13:58:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB06C3013A98
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 12:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 914FB2D8377;
	Mon,  2 Feb 2026 12:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GTYq6444"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04539283FCF
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 12:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770037038; cv=none; b=HNyIDSudNHwkNEMUojTLBIIc/PhGqomoh2TPqOWd9dTtcvghScFxolMHqY8xQ+g6lMuNB2L8wUyR/pLvcxHvBpI+SMJvuOy/T6kBZj2yAL22bJaP8c3wVhWJQlIGXYsdnOC+ar7YysY9C8R6aSqJ5BZHzwQndpogbh4X/J65OdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770037038; c=relaxed/simple;
	bh=Oz7cSlpWv2rTvsEtR1ob+H0tSzf3EinZBNAWl+72ZnI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vBatktuRxo1VFEQfAhNY8WZzO0P0AdN8vO8OVy5MvnZrakwk4625VrMw7NNTmVVmZs82f4PD0XdcwSGLvVdmd5AUZkwVFT40dredE2olyenxhSbHKKX+SHvpFfDE5ddshCZlb4+PKpTiIa4NibzL1jdr2UA95xdLWkP/L7bTtS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GTYq6444; arc=none smtp.client-ip=209.85.167.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f65.google.com with SMTP id 2adb3069b0e04-59de2ad4af8so358205e87.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 04:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770037035; x=1770641835; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4qwYyMOQT9qf7oY7jtB+Qe9HHFdlKNBAoMbngEsefKQ=;
        b=GTYq6444Vnq+/Dr0l1WZrecgLiZh2SGlGOljVazwWEtma6GI5LV/ThHcB9NyAqDgW7
         mE7ag4DcM5wO5xX31TgZnCbo0rSSPDv7I/99BtX4UN1O8JG1uxxaSRsHDnjHlOO3dyY5
         TRRHwZ57A0zxzCNwdqSNhiD4bVxpUPhHqE4ZOrxan/13EhQAd0pEXEJq3kp9VzWKsmBO
         Xks5FCNqDT9yj3JxFF/w7PwENz34aJ6S7G1b+NGrWMI6Lw5kGf2LsdMNM3nBJYeGsV7G
         3+0ZZ3nGplG87DFkIj/UA69Gxi4HqS+npEn1xfjXC4VZlwIvFzGs3WHh/txPWv+yuUzP
         lqzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770037035; x=1770641835;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4qwYyMOQT9qf7oY7jtB+Qe9HHFdlKNBAoMbngEsefKQ=;
        b=neVjGmMo0n+i/qPn9/mkZjKMNFqPAxebNnqa6/Uwi4hK6zFiE4BN+oRzURINiVu95w
         K5QbGcjFUgAXp/ADNHM2EVJ84Ff/fBHSVyaOs6Gq2infC9m4I1kE0qHNeJKOd1EnGjZv
         vtdpsA+NZT4fXuywgMU3fVLbcPkKFwBFA5A1FHskOuRSzykOoClWAmQSSy8xD8WAQZrf
         GoNE+h+wU5zsINHwflkK/jCCizHc+Q2pAS9ovzFx6Sa5jUewb61LQxOr2stEhB5uiEjg
         5e/NhncM+P4d5Vuq1kcOt47a3u/9xREcpHQZ/ghtR93hV3fcs02E866kdW8hrvSIqysO
         oE7A==
X-Forwarded-Encrypted: i=1; AJvYcCWBfXoKy/uU/GINL9+g1TgOdZlo0V6hyZPKH61vks4j4v10N/+aEnQ1q0GPZC8fznDG+r6Py4vQnjUa@vger.kernel.org
X-Gm-Message-State: AOJu0YyiVJM58ONP64zci471piwH0XpWMYA7weDxHs4xrPKh6GP26lYJ
	QP0a3yMi7s+hHTd7VDyO5N5fe88Mep4MjR6tS/WBwHx5FIgww7xQ46DqAO99xEUh
X-Gm-Gg: AZuq6aLVdMnLc1chfBJne3ec3Lzgl4oTLb/IrghL34yIB9RHWgdRNAQMXBEcQmMHWdF
	2g+QP73JVvX5A+vuTPGB3RKupoLXh1BG3+diPJl1rp03w0FtoFADdvsm7wfzUl5vNplOJeokEKb
	tH96Cjz403I2aC9pVpYwBGD3g6YwDw7NO1fFhUaAEz8QvuPZJWw021BezOyLOHFhNK7ChLQJYmk
	xqtVaQQYvh+gPgw2UBkI7mcNlETtBglGdaweY6J1LMRRUG4g9EHuQfoZHjUCwD1/c85NCnjT+up
	GpWCUwKyaJ721iZI/g5nfRbBHvjLMlKkjkbrXiwYqUZi0l+mgKsytznOaEAIrscJyy7FiaipRz2
	lpYAvWdPNsYfvwwDHDMUQHsbYOzyAPpsXn1CBHM+qFdkahZAMkcmhLvzxyzO3v9taHJnhowEi7v
	rxW38=
X-Received: by 2002:a05:600c:3541:b0:47d:4fbe:e6de with SMTP id 5b1f17b1804b1-482db4ac12dmr88549885e9.6.1770030948249;
        Mon, 02 Feb 2026 03:15:48 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:74c4:3a65:f9a9:6c29])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1354114sm45572421f8f.42.2026.02.02.03.15.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 03:15:47 -0800 (PST)
Date: Mon, 2 Feb 2026 13:15:44 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Jakub Kicinski <kuba@kernel.org>, lxu@maxlinear.com,
	hkallweit1@gmail.com, yweng@maxlinear.com, ajayaraman@maxlinear.com,
	andrew@lunn.ch, netdev@vger.kernel.org, bxu@maxlinear.com,
	krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	lrosu@maxlinear.com, chad@monroe.io, conor+dt@kernel.org,
	devicetree@vger.kernel.org, robh@kernel.org, edumazet@google.com,
	pabeni@redhat.com, cezary.wilmanski@adtran.com, davem@davemloft.net,
	john@phrozen.org, frankwu@gmx.de, jpovazanec@maxlinear.com,
	linux@armlinux.org.uk, fchan@maxlinear.com, horms@kernel.org
Subject: Re: [net-next,v11,4/4] net: dsa: add basic initial driver for
 MxL862xx switches
Message-ID: <20260202111544.r2mlklwdvviqq7q3@skbuf>
References: <46226b74030f76bd04149ed5c92b3e263abbe6c2.1769817939.git.daniel@makrotopia.org>
 <20260131175243.1122906-2-kuba@kernel.org>
 <20260202094405.rsojaz5xmorubjfz@skbuf>
 <aYCBS40IO_GwAEBy@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYCBS40IO_GwAEBy@makrotopia.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261813-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_CC(0.00)[kernel.org,maxlinear.com,gmail.com,lunn.ch,vger.kernel.org,monroe.io,google.com,redhat.com,adtran.com,davemloft.net,phrozen.org,gmx.de,armlinux.org.uk];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B2903CC889
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 10:49:47AM +0000, Daniel Golle wrote:
> > > The dsa_to_port() function can return NULL if the port is not found in
> > > the switch tree. The code stores the result in dp but doesn't check if
> > > dp is NULL before dereferencing dp->cpu_dp->index.
> > > 
> > > Looking at include/net/dsa.h, dsa_to_port() returns NULL when the port
> > > is not found:
> > > 
> > >     static inline struct dsa_port *dsa_to_port(struct dsa_switch *ds, int p)
> > >     {
> > >         struct dsa_switch_tree *dst = ds->dst;
> > >         struct dsa_port *dp;
> > > 
> > >         list_for_each_entry(dp, &dst->ports, list)
> > >             if (dp->ds == ds && dp->index == p)
> > >                 return dp;
> > > 
> > >         return NULL;
> > >     }
> > > 
> > > Additionally, even if dp is non-NULL, dp->cpu_dp could also be NULL if
> > > the CPU port hasn't been properly assigned during initialization.
> > 
> > mxl862xx_add_single_port_bridge() has been called when all other port
> > types except user ports have been excluded. All user and DSA ports have
> > a non-NULL dp->cpu_dp pointer after dsa_tree_setup_cpu_ports() runs,
> > i.e. also at the time of ds->ops->port_setup().
> 
> here, as well as in mxl862xx_setup_cpu_bridge(), right?

Yeah. If you think adding a comment helps keep spirits calm, you can also do that.

> > Technically ds->ops->setup() runs under dsa2_mutex, but the "static int idx"
> > is still not ideal due to the ever-increasing index upon unbinding and
> > rebinding.
> 
> As mentioned in my reply to Jakub[1] many drivers follow this pattern and it would
> imho be a good idea to agree on a convention or even provide a helper function
> which names the MII bus for DSA drivers. What do you think?
> 
> [1]: https://patchwork.kernel.org/comment/26768088/

I don't really have an opinion, the internal MDIO bus is part of each
driver's housekeeping, and DSA tries to stay out of that as much as possible.

Maybe PHY maintainers may know more what user space tooling may break if
the mii_bus->id gets changed, or may prefer a naming convention irrespective
of the bus being part of a DSA switch or not.

