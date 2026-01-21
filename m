Return-Path: <devicetree+bounces-257684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPPfChoucGniWwAAu9opvQ
	(envelope-from <devicetree+bounces-257684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:38:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF7F4F302
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 44C3856FE55
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A48130F943;
	Wed, 21 Jan 2026 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eFY49dGp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BF030F7E8
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 01:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768959493; cv=none; b=LHV+60hGK35HW1dLoCRa/2A/bj+K4DzaUOYWyGph/v51bj/3NRhthPeetEtv7mUUCb1WyUpA3r1WA8sQBpB9vCi10SFBYIeYzfiBqm6ZyGgmD7Rlp75liGnbTsN04/HWIl/56rlo+Gp4MudeND58c4wIbGDnfomIPFizvSz90Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768959493; c=relaxed/simple;
	bh=vWu9HLOleefdsDITsXsJ53ZaMRnGMvdVMKyNUSlnqlM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tz9zLpwwWJDoKsWgCOSt7MeRPRtYnujYLhBeE2zlBycE3RSl6d5aN+gaWD4xNnvCZdty2nTORCOfl5d63dHQCNlF22kkZIiRUDkYnDbBWBfrdcicAeA9idL4jyJEO7QYtUAsC0D1hvtQ3JXzXO/ABILwgCwleX13DT0Y0uSdg3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eFY49dGp; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-121bf277922so8486555c88.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 17:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768959484; x=1769564284; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=A5yAAJyzuotg25Ij3sl9iHvHzE6qHnmlHIRrb6J8qac=;
        b=eFY49dGpmOYOoazjJHNCGSdpJhNCMkgt5fpUQoGjUD+mwogtrClFPhvXc7L58zB+Cv
         6/UqzPNKW4dtTTT7iOZdlIuxGtMouUMMEjk9LXbLw2zNcVwseakFH7bk4fGv8/4LfMjJ
         3bT6PqJUwMMCgmNonZkvMnnz11iB2NrB/oBJuoQZC2aHYPdiCPd371yQOlEWCY5IN9FV
         eQxzSmzrPGCplR4ZL5PvcaHxeq3/GShBsS5C+LnJeQGTvI9nbo39FAabzXsDy/vgevud
         h5haKtjOTlVg0Iz2l0ZTSdUkJBbBjeq0DOjU+XnLhl1FIul5Sv32Evxj870MN/7i7trT
         JeTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768959484; x=1769564284;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A5yAAJyzuotg25Ij3sl9iHvHzE6qHnmlHIRrb6J8qac=;
        b=lElHULTG0CyI5amMzq/KrqerN1tatCQ9OtBovhahsujuisbuwJk3PgParXC4U6ELBx
         LPcObOFGv5ZFzrsvKSedxxaEUMMxJCK0dp5q2jDEGju3aDFeKZYSvQfNkNlVRXKBPyMI
         yV7xr9dLOEBrtEZILIZbnyBjIsCfV/ODxZ0vKT6ABJ79OyyZMidqgo5+sV/2OSu4ibgn
         x5dLNojuDYkNPg59mNSa7b1ST0MCCfpqcKW7yHBeYWTRiZyzH8itlkCcmW3Fgzz0t7Bc
         Fst0TiMjVwUkWV35bl6LC283eEu9EIbfIGYfkAhDxkFXnTypYubCzHM1C7KwCSmzW+1J
         hHYg==
X-Forwarded-Encrypted: i=1; AJvYcCVms5ZPWCKRV0u1Ty7X38R95S/VHwEC+447zmytsqb/bTxVODvzOdAA4BwA2glo8WhXsQzZHBURUtr2@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ8sKZZUZWVnub1B2tcFZNwgaLPuIm/BO1EYuGfyT2GsqcSqFU
	f4WiJzmUn3Dz5jskbbnnGitWR6ckx2grAJIVhdb3xtaiCWz39CUDC85/
X-Gm-Gg: AZuq6aJXLACJfBrPKPwzGXXbuBZ50FJgk9vxn9NhIRqsFTQ1fOfA/mGdba6H8fGUncW
	O+2CKCh6EPLdcyZQdLGHKyhUjdXThEJsAkO9AiM/FI1VY/O1XhT7o/SYikTX2JEt31YLncCiuE8
	fy0mtE6tqBEvKd046D6xec6EyJwiQ9QpsZ4VyM5QeRfQLyVCQ1xekS21fxxO0RnN7JK3E6HdVzK
	+V8TOQn1XLfpt2FXEiGAfLxXakoPIilPTMkZjgyJvmmrwY6XqfFT2FjGqfJTlCiQ8KVu85MN8co
	zauW4k8WSZkOYjBUhbAuRF7tpKRYkOhGqPsb0al0c0JICm7xY7SpI3jj6OmyegZ4iQn6qcBKZJB
	+AJo95ndAcuApFEaRKGu3p2xC9hcJpQ3svXFHMJbBroGOd3Kg/WuZWqwsGII1MhIqjQ/Y/RX1Wy
	mFneOboxMG8g==
X-Received: by 2002:a05:7301:2b84:b0:2b7:f12:9503 with SMTP id 5a478bee46e88-2b70f1295ccmr1043461eec.30.1768959484158;
        Tue, 20 Jan 2026 17:38:04 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7047b099bsm3361798eec.31.2026.01.20.17.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 17:38:03 -0800 (PST)
Date: Wed, 21 Jan 2026 09:37:53 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Inochi Amaoto <inochiama@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Richard Cochran <richardcochran@gmail.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, 
	Yanteng Si <siyanteng@cqsoftware.com.cn>, Yao Zi <ziyao@disroot.org>, 
	Vladimir Oltean <vladimir.oltean@nxp.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Choong Yong Liang <yong.liang.choong@linux.intel.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Shangjuan Wei <weishangjuan@eswincomputing.com>, 
	Boon Khai Ng <boon.khai.ng@altera.com>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Add glue layer for Spacemit K3
 SoC
Message-ID: <aXAtMZJorEBiK2R-@inochi.infowork>
References: <20260120043609.910302-1-inochiama@gmail.com>
 <20260120043609.910302-4-inochiama@gmail.com>
 <f8e4c5ec-94b1-4da0-8a40-976770514828@lunn.ch>
 <aXACRN7BaumIySp3@inochi.infowork>
 <cd5c882e-1632-4623-92d3-8a433c8ccdbb@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cd5c882e-1632-4623-92d3-8a433c8ccdbb@lunn.ch>
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257684-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,cqsoftware.com.cn,disroot.org,nxp.com,bp.renesas.com,linux.intel.com,bootlin.com,eswincomputing.com,altera.com,cherry.de,st.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,inochi.infowork:mid]
X-Rspamd-Queue-Id: 8BF7F4F302
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 02:29:23AM +0100, Andrew Lunn wrote:
> On Wed, Jan 21, 2026 at 06:36:01AM +0800, Inochi Amaoto wrote:
> > On Tue, Jan 20, 2026 at 02:56:26PM +0100, Andrew Lunn wrote:
> > > > +/* Note: the delay step value is at 0.1ps */
> > > > +static const unsigned int k3_delay_step_10x[4] = {
> > > > +	367, 493, 559, 685
> > > > +};
> > > 
> > > Am i reading it correctly that RGMII delays are limited to these four
> > > values?
> > > 
> > > If so, please add this list to the DT binding.
> > > 
> > 
> > No, these value are just adjustment interval, and it is also
> > controlled by another code register, the final delay is calculated
> > by the following formula:
> > 
> > delay = delay_step * delay_code * 0.9;
> > 
> > So the delay configuration needs to be calculated instead of
> > directly assigned.
> 
> O.K.
> 
> So what is the actual range? Can is do 1000ps? 2000ps? 3000ps? Should
> there be a basic range check to avoid dumb typos?

It can have a pretty big ranges, and I was told the total delay is fine
to work between [1200, 2800]. I guess it is fine for us to check the
upper limit?

Regards,
Inochi

