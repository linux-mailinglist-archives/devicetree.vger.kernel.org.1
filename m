Return-Path: <devicetree+bounces-294495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CAZCnHK/WkpigAAu9opvQ
	(envelope-from <devicetree+bounces-294495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 13:35:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6FC4F5D16
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 13:35:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11DA830057A8
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 11:32:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1832372B23;
	Fri,  8 May 2026 11:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b="V+ucaz5R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD6E361DBF
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 11:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778239918; cv=none; b=SEO7k9AoJJNf7OYSt/R1FPOBqkAx10WyqlqfaktXY9krzKZjFigd9jUOBPhzYjax81hThPJvOEyI5FGWLxirjHcF8oHBwKa0RuWJpn8k8Lgd94IRbb2+IHLUInLd8A/RSD4GRN4Chdt01mOBpBk82/n0/l2B/TBpp7aj84vdarU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778239918; c=relaxed/simple;
	bh=0hrQlW5FpcXozs6wxkIBzDktzohYeRr936w21ThvyGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ErHr2LYEAdhepE9Y2uW/1fzlHXG3mqbuiXL2xVmWun2CcmwoViSdvXh+OQeUInWOl9mPD3mtLf2QX3MRWw2BWGuGLpnRGWX5voAPpfDunmlIk3hvhB2Gu7FOkY5aCTknG5Qdyw+1MZvVLHCkkVz+wDupuPXAfN3PSuzRSZ4oY14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.b=V+ucaz5R; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so1850249e87.2
        for <devicetree@vger.kernel.org>; Fri, 08 May 2026 04:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1778239915; x=1778844715; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=i3oCf6JjY2k4f2DdZmgb+d8lKs1DeUt4qK3/lGPB5dQ=;
        b=V+ucaz5Rtj2bSZKCtDKVUJFJFuAthwalk5u9PeKnL8FSz0VPwtHrJK1ySR2CzlSB30
         HR92YcQAbYCycJCDBMrr317G6OSm0EGd1T2/APv/h8ier7Dq3Ru+uQifF9kSatc59/R0
         Clreu40My4HqMZ1/jNvmPZhHVkanRrXm7tqDn8IkvfgGr0DwS+SGLVvM2u7cfYu8mIpy
         Eo1VFP3Ey1TBzWSdqbL31CE/il2qXaA4CIb6/dRQ2dIolm0C1hCS0jQLqctstUA+o+Tq
         PTH++sVhJOmc+SxOeXUj8CYlayTeeb3Mxeu2S4RiGLe1w2f6l7IVv5waIjpHFABJKJWb
         N6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778239915; x=1778844715;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i3oCf6JjY2k4f2DdZmgb+d8lKs1DeUt4qK3/lGPB5dQ=;
        b=NIvaKJO6m/5ctx1Y4OX4l3SJzI1W+pcQ0EGPtmIOftNm0k4DY7jY0wWvgWf+H/McJg
         471au8EtR5G1b5c8Ih0oJzD3T4kx1xAz4XKQ1AtNii2BmcIglKPDTkNPKxYUqE4DP1ol
         MMVRp8MJbGRbiLtTZ6JCUL7Q8piX378tw0TQqyt2glweCeb+Lef0L0orwwDmteSslkWs
         ThveXyA+kQhYf6NSeJchxzptNrh5BAyk6PfSyRXVIcmItK8+Zq6dYj4RMvXM4VE0tmOo
         NHabVEa2zApsOqhxmR8Fb7rgof/3oL/jRG25M8MIeWpBwZ6L2rGYQVyQW/fk/rB7P9Jq
         OQQA==
X-Forwarded-Encrypted: i=1; AFNElJ81G1MCn+Ykx8sDBe8829nGtnLe+0VOWxiHsgQBES4w8iHdvzLn7FcDejTnbB1F/Rx31b32gG0hIyKJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxR/GXlcC9vGyc5F5RnozTVU5XSkTjiTK91yeu5A9WMbF2AbEzW
	51Ki1CYJwD+M4SUYqvU5E//tDVCytRHN9tL1TWr0iswAnfg2PKc8djBWcqjjSru1gwItvxuPSej
	/ByUnrlY=
X-Gm-Gg: Acq92OEHaxED9L2dxYYd7CpTrbd4ssZ0w4YThra6hIUXxfoakMyCM8kVde9+cHxVvbq
	CZyO5KpNIYmMdpKozRdOvwbGDKRA9bGE1qCMZRLcojAq/5naPOoQn7uupn2nBxvAuRF+0sfsS4f
	Ubq/ZU5PcAatiNeuZYnXFk8OWVyP9tz+HmGHaN/SFtN4YekNJM39o+DTd/v5rcuW5jjc8C6Xrjr
	+eE3ElyNLOtMhm6CKxz0lOeaRKNGeFSGoSMvJU48d3nbmNCeSAc9LeP8G+qgwn9KTtgBp5HKjyH
	VNIhvh8ah7oTyvRRtfHOyIJw8z2KoRurX9XLsJGaAvr5/0WdC53KeTVgb+zEqF7XSJmZPlnMRM9
	t9xsv1GbY6maxDTaGtXQqZJBLHeih+cImOlCySAWSnjEZGTAXfSnaswPX9L/6/3N0XGTO+GXDEV
	jfb0jnGtSpEJMg7O48mCeHJFnAUjJsSUuPxjh0jSRFaKFyZ4rKU+Bs5vuEdrprzKCsDVqBpnF+P
	eDyuDVsZAJkliba1e0v3oRsW+9TigRDRIz+65/m7UwDaKcO+xUC+0lmKI5J2oSZ6FvhndGOKymU
	WjqCb89Q
X-Received: by 2002:a05:6000:26c9:b0:43b:3b80:6776 with SMTP id ffacd0b85a97d-4515d3dc30emr18803689f8f.30.1778239532551;
        Fri, 08 May 2026 04:25:32 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-454917d57aesm3814079f8f.26.2026.05.08.04.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 04:25:31 -0700 (PDT)
Date: Fri, 8 May 2026 12:25:28 +0100
From: Daniel Thompson <daniel@riscstar.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Alex Elder <elder@riscstar.com>, andrew+netdev@lunn.ch,
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, maxime.chevallier@bootlin.com,
	rmk+kernel@armlinux.org.uk, andersson@kernel.org,
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linusw@kernel.org, brgl@kernel.org,
	arnd@arndb.de, gregkh@linuxfoundation.org,
	mohd.anwar@oss.qualcomm.com, a0987203069@gmail.com,
	alexandre.torgue@foss.st.com, ast@kernel.org,
	boon.khai.ng@altera.com, chenchuangyu@xiaomi.com,
	chenhuacai@kernel.org, daniel@iogearbox.net, hawk@kernel.org,
	hkallweit1@gmail.com, inochiama@gmail.com, john.fastabend@gmail.com,
	julianbraha@gmail.com, livelycarpet87@gmail.com,
	matthew.gerlach@altera.com, mcoquelin.stm32@gmail.com, me@ziyao.cc,
	prabhakar.mahadev-lad.rj@bp.renesas.com, richardcochran@gmail.com,
	rohan.g.thomas@altera.com, sdf@fomichev.me,
	siyanteng@cqsoftware.com.cn, weishangjuan@eswincomputing.com,
	wens@kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 10/12] net: stmmac: tc956x: add TC956x/QPS615
 support
Message-ID: <af3IKKkjl0jK8GGB@aspen.lan>
References: <20260501155421.3329862-1-elder@riscstar.com>
 <20260501155421.3329862-11-elder@riscstar.com>
 <2ce5897d-5bbb-486a-b0f0-0e30e54b451a@lunn.ch>
 <afy34kj2hPxIlArO@aspen.lan>
 <ef6df85f-11ac-404d-958a-8cf69b3b6bb6@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ef6df85f-11ac-404d-958a-8cf69b3b6bb6@lunn.ch>
X-Rspamd-Queue-Id: 7F6FC4F5D16
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20251104.gappssmtp.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[riscstar.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,bootlin.com,armlinux.org.uk,arndb.de,linuxfoundation.org,oss.qualcomm.com,gmail.com,foss.st.com,altera.com,xiaomi.com,iogearbox.net,ziyao.cc,bp.renesas.com,fomichev.me,cqsoftware.com.cn,eswincomputing.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-294495-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[riscstar-com.20251104.gappssmtp.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@riscstar.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_GT_50(0.00)[50];
	TAGGED_RCPT(0.00)[devicetree,netdev,kernel,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riscstar-com.20251104.gappssmtp.com:dkim,aspen.lan:mid]
X-Rspamd-Action: no action

On Thu, May 07, 2026 at 06:29:15PM +0200, Andrew Lunn wrote:
> On Thu, May 07, 2026 at 05:03:46PM +0100, Daniel Thompson wrote:
> > On Fri, May 01, 2026 at 09:04:58PM +0200, Andrew Lunn wrote:
> > > > +static struct tc956x_mac_speed mac_speed[] = {
> > > > +	{ PHY_INTERFACE_MODE_2500BASEX,	SPEED_2500,  SP_SEL_SGMII_2500M, },
> > > > +	{ PHY_INTERFACE_MODE_SGMII,	SPEED_2500,  SP_SEL_SGMII_2500M, },
> > > > +	{ PHY_INTERFACE_MODE_SGMII,	SPEED_1000,  SP_SEL_SGMII_1000M, },
> > >
> > > That looks odd. Some vendors implemented 2500BaseX using SGMII
> > > overclocked. But that is not strictly 2500BaseX. Having the 2500BASEX
> > > entry suggests you have real 2500BASEX, so why have an SGMII entry
> > > with SPEED_2500?
> >
> > This is a consequence of the code that uses this lookup table being
> > called both during initialization and from the fix_mac_speed() callback.
> >
> > During initialization we only have the value in plat->phy_interface to
> > go on so we run the lookup table using plat->phy_interface (which is
> > typically PHY_INTERFACE_MODE_SGMII) and with the maximum permitted
> > speed.
>
> Something sounds wrong here. SGMII only supports 10/100/1G. You should
> never be asked to do SGMII at 2500. It should ask for 2500BaseX.

We weren't being asked. It was just an internal driver trick to common
up some code paths.

However I did a few tests and the internal driver trick doesn't
actually do much we can't achieve a different way. With that changed I
can (and will) remove the PHY_INTERFACE_MODE_SGMII/SPEED_2500 entry
from the table.


> > I haven't got detailed enough notes to allow me to double check but I
> > think there were problems completing the initial MAC reset if we didn't
> > write something sensible to the hardware during initialization.
>
> > During fix_max_speed() we get told to adopt 2500base-x. Reviewing the
> > code I can see we don't propagate that and just use
> > plat->phy_interface for fix_mac_speed(). I will fix the code to that
> > the requested interface propagates properly to the lookup table but I
> > think we would still rely on the SGMII entry to get sane initial values
> > to write to the hardware.
>
> Getting sane values into the hardware is good, but 2500 SGMII is not
> sane :-(

BTW if you are bothered by SP_SEL_SGMII_2500M, that name comes directly
from the TRM and I'd prefer to keep it if I can. The enumerated value
we have to write into the SP_SEL for 2500base-X is "SGMII 2500M".


Daniel.

