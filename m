Return-Path: <devicetree+bounces-273158-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEv7IaRJr2krTgIAu9opvQ
	(envelope-from <devicetree+bounces-273158-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 23:28:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FC124239E
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 23:28:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C9E2308955D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 22:28:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA75938F650;
	Mon,  9 Mar 2026 22:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WOv2SQa4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB1638F245
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 22:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773095327; cv=none; b=D7nKnEZpf3PBmzecv0hQNh0C9uxjWbFC2MA/whillIX1dCHgDcELM2CQhbLYajFjpRnO5UQuwh5aDtP7KqQgbVXnzEiELEAhFwxOyE2kGPf9bhyYYoohOvQ1jkWLWwgXZl/L9ldAokN/YY58XlziWQQrU7lcJ+fSoYVmQxXgJuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773095327; c=relaxed/simple;
	bh=jZe33NHvCpQzQ05RR193bC1srRh1cAqWr65aMtAsAwA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jj9q3M8VveBMLh3k71WUXQGpKNpsxSwiKV8nG8mczeqB3YLqpy2Jd3qCIa8Ny/KawtASmIJG9Ln628zm0FE1JUFkC/fPJ6MVCGVdzbzTwTxmc7aRoHGiR5qTT22esUkoYmdzFyf5QfPzkObstObM9ocKj4be/hWNKajcjrHrrGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WOv2SQa4; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-89a06bc2f1bso139742916d6.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 15:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773095325; x=1773700125; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uelqhot/SS82mnivEOGwZ5YeQ/ZVb2Ub9laQIz/Sv+M=;
        b=WOv2SQa4QVLsDrZMUgqqUxwhimqRna7bBMLT2t7DAgtaPKnMxyzxXqtS9BpvXyBkEm
         LQBG+TTtAl7a2hLZb5CBrdSVY23jQTdaqb/2Gj2zYmBPy5Jfx4/Qy2wfxkhGtHMOQXXP
         katLe/1YrePIKqBWJFeu8EIgxpOIwPnXhaX+NoJfaO49U9bEZDa/ZAx6Nt7Gw9+FxDr7
         TpXOZlp81m/ATHgjCt4eUtJv3wckiErYoEPCNS673GPwdeLzwEIT9VUcgBU/3Gndzi1y
         5TQR8YG2LnEqZtRTNXjPxRJsHa/UPBNzIDwCaUAK60Siph46n13Hb2wCQ4aYdaO1fEkG
         7wwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773095325; x=1773700125;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uelqhot/SS82mnivEOGwZ5YeQ/ZVb2Ub9laQIz/Sv+M=;
        b=b8L5EhOwJW4YucQqaKVqloHj2D0so5XG8d087YlQVAzFuSOc7A1BlSrnQ2aIRmHlJy
         dliLNwGIVLaVE3koDymzkiLbLKc1KXo7x5YV5/RMh97fTUoU7RECu/G2WznqRx4A7+Or
         VchvKq2n7gFGptvIEsVzeYM8/mZPLbfs85SSgI75LLAKCy+RSpLg8lMA3b5MKXpBEmRr
         p0oS1I4JC1BPeRn1u02ZWEsVxMaqmAEDg5LHkFKfuBh2UFuBptXCM8TI6b/EsZ3wqBJI
         UFkVnVBcqEQ3cBk0nfQRfOoQSUnaE3LYmpdYbbF8VwoXtb6VDz4UgrJgpRpxd33vwc22
         Ii0g==
X-Forwarded-Encrypted: i=1; AJvYcCWlk5nMTSUCGjV8SdR8jA9GLw7yrRrBkjJhkOEilfWrtHY7fiEchLlvOYZeBv35SiMd5xlcOracQf9P@vger.kernel.org
X-Gm-Message-State: AOJu0YxoCG04R5EmH2HZempmDxHijf4GAcsTemQTTKoPeqVds1pbdRFe
	iScwcuBIrGZy2o9jjskZnwohaVLTvcJbHyzJfs58aZAxm8f3NMgSe6ck
X-Gm-Gg: ATEYQzyam6VbcrUb5HUDCf8e4cwHr4GOj0+5CpWcNz5eXRotTj/OuhW+cW9ohMrd2z7
	OFxTf2uoaXw+ftURf1qc4JPZ4nbtQ4uVxVoIeKkDoEZ5BytCuvOFZizVE5ADVX7d+l8ZtNJr1l2
	7tiDkgsu4f6fVi4QTGFdhx8aJuCLdqpwhxkEO5VnW0cE8HPo8T7gJs4jsq0CbaDfWJZJxoLTaiY
	5fzhVPxlZkVHXBMRdTWpD7g6iKRZc1GKwc7Ru9g+S1o3xu4rXHMSEz73qtLhhvAr6Ejl5tRMN8Y
	nSSapM96YcvJ5qLkWu983PdeUoYO3d197nSkfRFKwjVjSYICPCrSXiogOOx/WVD2wUFrS4z4MOL
	+VhR7FoumEJ0lvHD2VhaCj2w9IPlY026dZFwqJYF29jQ3EW64gBqz7cLxDoTXE82os/IUFDi/ll
	NCoJ/Q5duuBpAHd5o2cpRjk68=
X-Received: by 2002:a05:6214:e4c:b0:897:255:d5c2 with SMTP id 6a1803df08f44-89a30a4d3cdmr192944066d6.26.1773095325119;
        Mon, 09 Mar 2026 15:28:45 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a57a1e68esm6918006d6.2.2026.03.09.15.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 15:28:44 -0700 (PDT)
Date: Tue, 10 Mar 2026 06:28:08 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Richard Cochran <richardcochran@gmail.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yao Zi <me@ziyao.cc>, Yanteng Si <siyanteng@cqsoftware.com.cn>, 
	Vladimir Oltean <vladimir.oltean@nxp.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Shangjuan Wei <weishangjuan@eswincomputing.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Boon Khai Ng <boon.khai.ng@altera.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH net-next v8 3/3] net: stmmac: Add glue layer for Spacemit
 K3 SoC
Message-ID: <aa9JCWpJ_EJbUzXV@inochi.infowork>
References: <20260309004305.315018-1-inochiama@gmail.com>
 <20260309004305.315018-4-inochiama@gmail.com>
 <aa61v7MQoYq10Jes@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa61v7MQoYq10Jes@shell.armlinux.org.uk>
X-Rspamd-Queue-Id: E4FC124239E
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
	TAGGED_FROM(0.00)[bounces-273158-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[armlinux.org.uk,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ziyao.cc,cqsoftware.com.cn,nxp.com,bp.renesas.com,eswincomputing.com,bootlin.com,altera.com,cherry.de,st.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gentoo.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,inochi.infowork:mid]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 11:57:51AM +0000, Russell King (Oracle) wrote:
> On Mon, Mar 09, 2026 at 08:42:44AM +0800, Inochi Amaoto wrote:
> > +static int spacemit_dwmac_update_irq_config(struct spacmit_dwmac *dwmac,
> > +					    struct stmmac_resources *stmmac_res)
> > +{
> > +	unsigned int mask = CTRL_WAKE_IRQ_EN;
> > +	unsigned int val = stmmac_res->wol_irq >= 0 ? CTRL_WAKE_IRQ_EN : 0;
> 
> This looks like the last thing I can spot that needs to be addressed.
> netdev wants to see "reverse christmas tree" local variable
> declarations.
> 
> Please reverse the order of these two declarations to achieve that.
> 
> With that fixed:
> 
> Reviewed-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> 
> Thanks!
> 

Great, after some lookup, I find the variables in function 
spacemit_set_phy_intf_sel() are also needed to reversed.
I will also fix this in the next version.

Regards,
Inochi


