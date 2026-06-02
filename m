Return-Path: <devicetree+bounces-305865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UJHmGjNWH2rrkgAAu9opvQ
	(envelope-from <devicetree+bounces-305865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 00:16:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB536325F6
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 00:16:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jTYOmuHG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305865-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305865-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C06F30492B2
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 22:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E763B5E07;
	Tue,  2 Jun 2026 22:15:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC2936657B
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 22:15:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780438530; cv=none; b=Qp1J/0EGe5NqHUmqDyvvn8dYLvlsqbGwK6tCJ4yoSEFimR3ncqWxcIz1bsrPuiczxECheO2Nz18dh6r9bxmwL9EB/Ff16RoV8xu23a3kjpxpf8Wj/b/ZyI/uA+DVfPUfPX2875oAVbmCaTEoeTQSh3CoQ/gZCpga7QLzHTIV+IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780438530; c=relaxed/simple;
	bh=PkFkKBkasyNkfpdY3psVfIwGsVxbjYhDPSzlbu1Zp/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HxRS2vEFdN+kNyHjlFa2Do1t1yW+zo2gkP6/TMm1StOyFON9FySy2xKA+8XY7AQdpBZKwnlZwhmnVSbwiEJYsjZwMoPEUXsTNlqpltjCWCVOvsTa3cOklL/lQwpMQE1Q7mQqyp7Yuzw3svm2rxALSSA1y+KQ/25sHs41OfUedGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jTYOmuHG; arc=none smtp.client-ip=209.85.216.53
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-36d6bb38b44so2222668a91.0
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 15:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780438528; x=1781043328; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Wyg13nmb1cl4XVRXyc9+1Xf9pv1Lvsh32cV5wFSbV18=;
        b=jTYOmuHGSIBX9DfJAMz0WxP0meWF9ha79aFb3GomCFAjsUWxMze7GsZJolFPUDZbKn
         4fpn/BoLCWezVoIlVQcQgfYy0d2FBpLjbKyy1h6JPp929X2PYDqt9n51tTzLkFTm8aMM
         Cy88PMmDINZSXu2zw6wpsywHpPkzMCtHm/P7kGXGa/1hS8Xu7kVT60q7+F7/1Xozpzpy
         8wxerHJEGbvlWnqjpQX2myKgbtvPOYi8qC+/PYmGdeMQ7IoGJ7y856bsueeOnRXZAdaO
         Cv2r88j8UxVkfTr1eFkoeUI1exZB795/w/Y5iEy4T04TycfgCcgs+UjLoyaayewa/zYz
         RJOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780438528; x=1781043328;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wyg13nmb1cl4XVRXyc9+1Xf9pv1Lvsh32cV5wFSbV18=;
        b=hF14ztbgnzntWn5rkb8I97FMZ+dtkUF7UWPdXWw8PNT0143o2pwfoqEOYQjSHgyhTc
         6WBuMARCW6jcx4jwS7qAPuZ0zQy4CEn6kfX+E9Y2HmxI2EC0ABjR3tfLzKSHnNBOxWVF
         wpcFj15Iw+NLqJQOkBYKPixfN2hpoPyPXWu3RpiI/yg0ufti6gK3dkAfXfTXx+lH/LNS
         6QXFxurPjlEPYQqGUSP3K8pfuaLDBt1yzyPWYcM5RAV+JwS0a4xKRz0CWvAw0WNvwQ2O
         g5ZbQn4xF/45Hx+8am9Ig1blYctSts7h4eNXFPiFJvDCcsNqJAZkc759XBXvqHXqFNy2
         W52w==
X-Forwarded-Encrypted: i=1; AFNElJ9SviVe+8aok5j0YsrF/oFqkDtctF50KNxwdO+oKRSzmpzjYy/+p80X+3APKnn4ddPDRvwaDKG/kqvT@vger.kernel.org
X-Gm-Message-State: AOJu0YyIzhTrpNwlIWghEoU7VGe4DwyC/Fh80/92UpIR/DSbje+FWvIc
	k9xmSDRDGkEanGFpn0+RirQC7gTuzYZjWjKtqDeGLGd1haj72eamS7af
X-Gm-Gg: Acq92OFGren7fR1P5DIqCXEzaUYJgRm7eR4DQItF2i33/yyp+KVfG7hL8Olwf/0lWcO
	wfxEbyscQIjgHmuL2Yxz4v58GWuOC7qu13pyMvcgW/bZmyKgUa/2xB51sukfJyaqi7PoGxrGNtm
	zmoO2k3n+sk0KNj5mqvHjQVqYcHxFzja6RqYXEI9cGaq2u3fcGogJVpoZXHeevi09P2o9reHhrN
	e3aE4QmH0tUXUrrFKW71ZTUQPLpch9esR3TbAjAuluEm/3g+JBg4S+jFgKAD8yLSEFQlllThOVz
	xW3ZA0AvYML+wE5cgjyHgrw4b5yIvdeJGA2pIHsWJ0SwYoxXVlRnicfvI/SQBDu8NHEnytR9Xkk
	KNTmfCmYVyq3S5tMxMHo7Zbth8Rc52OP9P8nKejZ+MGKvU2rmDZ8fGbfK3OgNOr7r83+KeU9LrR
	PdHhs9FSTQEBIvoeaL3rFjY75EORsvQcKb/hBVbBV1Yrx1
X-Received: by 2002:a17:90b:1d87:b0:368:a297:bd38 with SMTP id 98e67ed59e1d1-36e2f3c11dcmr712758a91.7.1780438528332;
        Tue, 02 Jun 2026 15:15:28 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36e174db6afsm287366a91.2.2026.06.02.15.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 15:15:27 -0700 (PDT)
Date: Wed, 3 Jun 2026 06:15:08 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen Wang <unicorn_wang@outlook.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Zixian Zeng <sycamoremoon376@gmail.com>, 
	Han Gao <gaohan@iscas.ac.cn>
Cc: Inochi Amaoto <inochiama@gmail.com>, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Han Gao <rabenda.cn@gmail.com>
Subject: Re: (subset) [PATCH 0/2] riscv: sophgo: sg2042: Enable PCIe DMA
 coherence
Message-ID: <ah9VwHZbIuDSqmbe@inochi.infowork>
References: <20260331171248.973014-1-gaohan@iscas.ac.cn>
 <178028263198.557087.6386925175219722340.b4-ty@b4>
 <ah6gcvKQlHlrW1qn@inochi.infowork>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ah6gcvKQlHlrW1qn@inochi.infowork>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305865-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:bhelgaas@google.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:unicorn_wang@outlook.com,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:sycamoremoon376@gmail.com,m:gaohan@iscas.ac.cn,m:inochiama@gmail.com,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:sophgo@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:rabenda.cn@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:rabendacn@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[google.com,kernel.org,outlook.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,gmail.com,iscas.ac.cn];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[inochi.infowork:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BAB536325F6

On Tue, Jun 02, 2026 at 05:21:32PM +0800, Inochi Amaoto wrote:
> On Mon, Jun 01, 2026 at 10:57:24AM +0800, Inochi Amaoto wrote:
> > On Wed, 01 Apr 2026 01:12:46 +0800, Han Gao wrote:
> > > The SG2042 hardware design supports cache-coherent PCIe.
> > > 
> > > With recent firmware updates [1], it allows to use DMA coherent.
> > > 
> > > [1] https://github.com/sophgo/edk2-non-osi/commit/017a5aea26a066fd2bf501b7893937183165af36
> > > 
> > > Han Gao (2):
> > >   dt-bindings: pci: sophgo: Add dma-coherent property for SG2042
> > >   riscv: dts: sophgo: Add dma-coherent to SG2042 PCIe controllers
> > > 
> > > [...]
> > 
> > Applied to for-next, thanks!
> > 
> > [2/2] riscv: dts: sophgo: Add dma-coherent to SG2042 PCIe controllers
> >       https://github.com/sophgo/linux/commit/e728a57834d06b9bbf9bbed69e3ea16416d257d5
> > 
> > Thanks,
> > Inochi
> > 
> 
> Revoke this apply due to https://lore.kernel.org/sophgo/ahu57vcS0oOFmCI9@mertle/
> 

Reapply this as this error is resolved.

Regards,
Inochi

