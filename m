Return-Path: <devicetree+bounces-276510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIH9KwoGuWmEnAEAu9opvQ
	(envelope-from <devicetree+bounces-276510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:43:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 133672A5011
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3771D3045C0C
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA1013921CA;
	Tue, 17 Mar 2026 07:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JpcIVgEC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBE2347506
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773733326; cv=none; b=FdBop+AQ41SGDiOgI5OsCBQ1AaWKtA7uqrtx6VO/ajhpAj1XT3BJLpdXkDImt4fn0e8kFfZyZSBPpCtB/OeWtnm+ZCJgtp5g5SH128eK4Mel3yHXAR8piBaxz4nEI4J7hrK+suLuAIruY8I+CNlBKVg+xIfjbkvqDUna+R+p/IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773733326; c=relaxed/simple;
	bh=xg9tpnpgfg5SClBenXIK/4GssEYnuYsuYHsNrY8UiCY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lYmuJiiM0Y09LXvtR57R5nRpMGM9lMjxAmWbwWlNq+m7qdSqM4JtmtZDGMxd5M7zL5vRgwqT/QO/l85eJidt2AG4lATPd5jbnqkG8L/JGzOt+HvpGp+K+5FJSiLPzzM5tScjOQeyZ7Q9+cieNmf4BWCJGg1YYmCNgzG+VwzT3lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JpcIVgEC; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-82a3d3235c9so1666287b3a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 00:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773733324; x=1774338124; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3gTRwPvoaoGKMWruMLfYdpsxbqLbc2avIWpIrbVdsbs=;
        b=JpcIVgECwDFb+TNPexhIipO6ke7VswbUB0j0IrxMxTVU9yWPxZ1M3pFpxFTfMjHRqu
         7OZ52HKI2W/WDmfJXv8tRfrAtZTQH1cVshLQZjnz6X2BfQEpaeGA0yrMZHKGVwVTw/LN
         o2j1Gk4n5jTGZYb6s4xRWFmZyZmCJx9ejOVorc98HrPG+w9sGSh5Hh2b2w7iVXGd6fwb
         hGQkvYeQIOG0yUmdr9Ib6Nh3qdLtJTCHc59g3vJX/rxVjXNa+zN7b+hgQ/OyMIdOvfJr
         +DYDXJfmltmdO5ilOMDCzSTlz09u6B2rDcaojNAv7st/53wwMwLe35MSZG1gZDJvT6Aw
         GjBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773733324; x=1774338124;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3gTRwPvoaoGKMWruMLfYdpsxbqLbc2avIWpIrbVdsbs=;
        b=BJkOmzEaZZwVrqvOErBuHQ+uPRtLVVmLzifSz4L0tgq+r7QiY8uM5+bwiQzm9Px+qC
         duFMsz+5hd8aqgfgPPwym2+lgdxfe3IVp7apXiTVVU3c/6xn31ePRgyBt7vNkWiAwTQu
         UqP5EH+3ukW724i/VqZEpPMmiasa8B4Ea1k+uLDokE/zeiwJBvjZuoyWuf4k+X87yhpY
         kAB5f0avjB2tmk1IHiB55xio+yc8h/oji7DWHKKAk0ExJhf+QUAFeVvFKrTyUAi/Hpyq
         G1ZqpEp8dBP1uqZbAve55A8NwpXAW80vPU7V4UxYnN6RgCb33Nqq2u2NAgh8/9zp1RdA
         tWBQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8KgDbHBSwkTgU00nN9FIO/9+bwS+QBYvZY9ilF8PL/ZxMWuFTLACBveJk31C1YwgVPRwSZ3E9rIdV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+q0MBkx60j6E+oEK/oCZiv1otH5Lxw1Km7aNlpd7Ec3GcoF64
	qUl8XlXHkZjdlqaHA3+GlSw3xdtkNR/fxmOQOOoTEbzX0NL49gm8zx8K
X-Gm-Gg: ATEYQzzHArpOnoNV1i07CraOyVtAttYkliRKY6hcGc2ZpiLU8XQKl2SYp63p4/U8zAP
	C9ZlQjQWLIYBCHh9+DUAcganRsQo1GCfa3z8T6eGxLb0cUAd8TounA10c/T7dqjjnKAIONgFGqB
	EtXdel44jMYghqD7XcVbtogyg0ri02vNBUbHbMQpdvZ6/sF+f0DKyUDMyB+/nvgs6jmKExSwFUK
	PAlj5vIPg44c0MS67p8eUZp+l8BVBMTDEFYy0iqD/UpoI0zhHKXhoKsOKW81LsErkl0bGA9B3Rr
	uVtn8fUG6H834YjQIJxgN9xCvCrJscoo8C6ooQ43O8nboQgeifv8qCqNM7/1jrPuoXGNjUeMMeO
	xjD6WG/6bGHWYaW85DKCgDul7JWPlUpZY72QH0QKxrDniU4PxsWuYdIfcAKW5EMewoQz/WiLXPk
	Xn521wpeHHlYC9zRa89XngKYU=
X-Received: by 2002:aa7:88c9:0:b0:81f:4675:c2a9 with SMTP id d2e1a72fcca58-82a1957f3b6mr14731969b3a.0.1773733324070;
        Tue, 17 Mar 2026 00:42:04 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a0736deb4sm15367325b3a.44.2026.03.17.00.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 00:42:03 -0700 (PDT)
Date: Tue, 17 Mar 2026 15:41:56 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>, Inochi Amaoto <inochiama@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Richard Cochran <richardcochran@gmail.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, 
	Yao Zi <me@ziyao.cc>, Yanteng Si <siyanteng@cqsoftware.com.cn>, 
	Vladimir Oltean <vladimir.oltean@nxp.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Shangjuan Wei <weishangjuan@eswincomputing.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Zhi Li <lizhi2@eswincomputing.com>, Boon Khai Ng <boon.khai.ng@altera.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH net-next v10 1/4] dt-bindings: net: Add support for
 Spacemit K3 dwmac
Message-ID: <abkEPCRBkQIgx5rx@inochi.infowork>
References: <20260316010041.164360-1-inochiama@gmail.com>
 <20260316010041.164360-2-inochiama@gmail.com>
 <20260316202147.431d9aeb@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316202147.431d9aeb@kernel.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276510-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,redhat.com,kernel.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,ziyao.cc,cqsoftware.com.cn,nxp.com,bp.renesas.com,eswincomputing.com,altera.com,bootlin.com,cherry.de,st.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gentoo.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[inochi.infowork:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 133672A5011
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 08:21:47PM -0700, Jakub Kicinski wrote:
> On Mon, 16 Mar 2026 09:00:37 +0800 Inochi Amaoto wrote:
> > The GMAC IP on Spacemit K3 is almost a standard Synopsys DesignWare
> > MAC (version 5.40a) with some extra clock.
> > 
> > Add necessary compatible string for this device.
> 
> In the previous version the AI reviewer complained that we're not
> adding the new entry to the select at the top of the file. Other
> compatibles appear in 3 places in
> Documentation/devicetree/bindings/net/snps,dwmac.yaml
> 
> Also I asked whether we can drop the "default m"
> 

For the Kconfig, I think it is better to keep the thing the
same as others. And I guess this question may be related to
some compromise that I do not know, and it is a hard thing
for me to answer.

> Did you disagree with those comments or did you miss them?
> stmmac is a strange beast I don't really know what's going on in 
> the binding, so just double checking this is intentional.. 

Oh, I have forgot to reply to the binding.

Currently, I disagree to add something in the select, as a
new binding is always required for a new device. Even if it
is already supported in the existing kernel, the new device
is required to add at least a new compatiable string for it.

Regards,
Inochi

