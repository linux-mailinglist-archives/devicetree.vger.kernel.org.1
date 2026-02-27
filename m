Return-Path: <devicetree+bounces-269131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8N/PLWVPoWkfsAQAu9opvQ
	(envelope-from <devicetree+bounces-269131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:01:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4851B4352
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 09:01:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BC4E9304C150
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:01:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A870310764;
	Fri, 27 Feb 2026 08:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lp9PLyNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D820B30E830
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 08:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772179298; cv=none; b=Jzf/XJ90P+PCNOFNrV12fsaMhs0RiZJR4QeFssrnpIfKaSvXyqU6L9t9NSJx8JdZm7wYzj2514ykdb8+g/XFnkaw+5zYm5WEKtH/2pi4aFnyog3MdaRTVwxfWvB1phj8hlvJ2O6vr5GXJ5rYgooKUzj0PVFAxWHTqqYgnFBhE8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772179298; c=relaxed/simple;
	bh=Dvlg++DM52DQtEyG524IkAGBeRlEN9y3gQuOsexBZos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RjIREnpHpfTkVP451lYSjTyuUsqyiuSmZGYkGzjkl4bOzeCwkmtOwQWCa3tKps4D7y7ThsGJRAXjBK83BdAA6SyHvJNWOXQIA73BcTa6iBFrG5P/hSBrZ8KmROEwl+8FnNs3O5FdxNo2LQvREd59ruNN64xP/luodeO0I7wRU4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lp9PLyNO; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-824c9da9928so1032861b3a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 00:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772179297; x=1772784097; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ie2+UrGam8yuOMRgs4ibqBLJsyZZMJwKunkcFXbejKY=;
        b=lp9PLyNOSq1Mc/9CMmg68aEIV1IBYo82UmiPnecYMiFjxGzjWj53eQWd13e2FpA3R4
         80Fkqj8WlPYrbGuzK99F7kT0saR7rO1CAwLx5lZyS0yF2n1Q+UzSn+DR+VssrcO8/TmX
         20PkYHPEHjBUiAG4OxyBvrljnzFt1LWMlbmAu6Rjfi4vHuEgAVy4istXR4x4XDcJmD3P
         JZWaptYDorT0in6S8NlDFlq8N6NwvN2paovI02npw/4YxIsfOIWq9qzfgrfQG6a+bp8Q
         D3jsygA2v3xX/ngKFW7Ug9+uq6/CKImyKryqzuhJcAEinUFrdx2BH6aJ06GgM3cCpM2c
         s52g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772179297; x=1772784097;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ie2+UrGam8yuOMRgs4ibqBLJsyZZMJwKunkcFXbejKY=;
        b=Yl3R9x9hj5u/Y+ZBLdg244DYnqywPjoeROYChIHzdXZuQX/uCiGiGITDX8c5K54RRv
         h9eQeDkTkPHs1yQGuN9sm4k8aaCr31rHl190ZskMzumFslAgcf298fUd1rfhgsCkjVbq
         9fZF+16kRB7eshzMNDh1azXpYgs6cl9TV3bKfDlcoveHe3f6UrV+ItG6TFTVYsV7dfY+
         TNxCDinaJDuOoEeofOhCzjyXtUvQnoelXNH7XHqZauDegnrIPrTBnphRMe9YyiLUazcj
         4hwtEhUhMAya22zgA6vQFs1o7vMVdcfYxz0fzotx9Rg3k5DZLSI5X0Y31xIhq+gyF93a
         Z6uw==
X-Forwarded-Encrypted: i=1; AJvYcCWOUx3omYF3349KNcDDF2xqBuks1G5FfdWqXvUrW3VuKXKw8wQWz0flMd1HA/Up6NhVAMkKKgB7mhJk@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg16z6WfdQaX4tSyZuaKtmhnlib6RhaCiS8BVsEhTEqkxWlbEp
	DXC++YjsgSmCibKtiJbfvCFWuEgFqxPOGjfnP1Nh1nW8WrtjedQuMPCG
X-Gm-Gg: ATEYQzx56m9p968fxsfE8DjfsHYEtbDMf406bgrsNCTvidXecq8ud+5/ND8IDO/qowO
	ysuL8FLkj48RKQZQd+H3uJa77j/pGJLNQx8ND/oP/yt9qTm5j71V77ZeFBzPolve3OjsSmuvRAB
	9yfrfSo0qluuSe92JmCwp4L35wW/Ne+EP4V3h6wf86nGieY/4DBfIJGTAZFunjZtbyFcoAzr5Fp
	Al9KqhnHGaW+H5kSj1ARZXKaIpT4VDXxKe83Ptm4sN8M21qAAdxHqM6kigD3Nx7xc5y1tDvG7R1
	kOQ6b1icSwd36BapNZJmXGYlU82DssJmZ9Ajiven6YGNBOFhPCsWZ4GYTkSUHT38JRm8OEKmpQU
	l2E303bIlB150Z9eG8fIypYX3cgsXFvdJ45WGEhf3lukme2ezHwgo7Dw00PWNlwHAS40FQXaIB/
	8j4itRv3F1s/xA73xFl93vXw==
X-Received: by 2002:a05:6a20:94cf:b0:393:dc6b:a10b with SMTP id adf61e73a8af0-395c3b0f6e6mr2039870637.44.1772179297185;
        Fri, 27 Feb 2026 00:01:37 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359037af175sm7729375a91.13.2026.02.27.00.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 00:01:36 -0800 (PST)
Date: Fri, 27 Feb 2026 16:01:07 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Emil Renner Berthing <emil.renner.berthing@gmail.com>, 
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, Boon Khai Ng <boon.khai.ng@altera.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Jakub Kicinski <kuba@kernel.org>, Jose Abreu <joabreu@synopsys.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paolo Abeni <pabeni@redhat.com>, Paul Walmsley <pjw@kernel.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Richard Cochran <richardcochran@gmail.com>, 
	Rob Herring <robh@kernel.org>, Shangjuan Wei <weishangjuan@eswincomputing.com>, 
	Yanteng Si <siyanteng@cqsoftware.com.cn>, Yao Zi <ziyao@disroot.org>, Yixun Lan <dlan@gentoo.org>, 
	Zhi Li <lizhi2@eswincomputing.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH net-next v4 0/3] riscv: spacemit: Add ethernet support
 for K3
Message-ID: <aaFOeQ0deTKVW0_N@inochi.infowork>
References: <20260130022705.1059214-1-inochiama@gmail.com>
 <CANBLGczi6o4NwDF0fge0_RZ+TVX2dQ=vYD2PYMSupb5xSnabZQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANBLGczi6o4NwDF0fge0_RZ+TVX2dQ=vYD2PYMSupb5xSnabZQ@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269131-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,armlinux.org.uk,eecs.berkeley.edu,ghiti.fr,foss.st.com,lunn.ch,altera.com,kernel.org,davemloft.net,google.com,st.com,synopsys.com,bp.renesas.com,bootlin.com,dabbelt.com,redhat.com,cherry.de,eswincomputing.com,cqsoftware.com.cn,disroot.org,gentoo.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,kernel,netdev,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5E4851B4352
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 10:00:29AM -0600, Emil Renner Berthing wrote:
> Quoting Inochi Amaoto (2026-01-30 03:27:01)
> > Add initial support for ethernet controller of the Spacemit K3 SoC.
> > This ethernet controller is almost a standard Synopsys DesignWare
> > MAC (version 5.40a). This controller require a syscon device to
> > configure some basic features, like interface type and internal delay.
> 
> Hi Inochi,
> 
> Do you have a tree that includes the dt entries?
> Otherwise how are we going to test this?
> 

Yes, I have one, but it is not opened as I was requested.
I will send the DTS patch, once the clock, gpio, and pinctrl
device is available. At least for now, I had no way to post
my DTS patch.

Regards,
Inochi

