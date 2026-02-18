Return-Path: <devicetree+bounces-266478-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6L4BDND0lWlTWwIAu9opvQ
	(envelope-from <devicetree+bounces-266478-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:20:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BC2158395
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:20:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A084302BEBB
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEB432FD697;
	Wed, 18 Feb 2026 17:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="agcVb1Yg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C3F2FFDE4
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771435104; cv=none; b=PglT2NgNtuTfRu96xdYEMRyh4zi7dCeutZSWu51USJZlAifJXpzbFYaoMJIkQBEPaGeXIgbnpPuEV5XS2mvD6dSv3WeuqVy4XXhJ/lpWhziWZTUiF4jjc3ViWci8wPVCtcGGLgCOiRtmZRYWDGfu5C9lARtijJkogEgfz1NlFzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771435104; c=relaxed/simple;
	bh=szlnzjR28V+AV/VL45WXLE0et4t0WODgRR+kZ4Kcqa8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZbVdvMlOH0EnYlNrWM+kW/bNU8S3xH6bqBPpgRiq/uNYi26Om7g+6Y408FfK+Da1VEZv9wst3p/O9A3VQG2P8ka0cddC1WgCt+5p79dmndiNd46xWOCDlHANXsiIfTL/Rkq3dJ2skqkA4jv4TENYVulOLzyEViCmT6DwjsFEzbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=agcVb1Yg; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-386714da2a2so861281fa.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771435101; x=1772039901; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DCcdS7x3lDtrIEUvGJcyqRB9D89Wp2xuvJCS6WrEmgQ=;
        b=agcVb1YgYX/JGrHa0rgC9XXk1Bk+V9UgkwnKTWW/A9sgeZVyUip8YeCAKy0CmxmGM6
         wlx51BM4kyrw2dAjsR3aqTvehoexNKi8LwvaPBCriPbT9N+p5z2ndP5ue7IhU0ZH+iFJ
         KKY8mifddJG03cUBZZFMAynJdDpObwVWHBdFE4wPeUy6NSeJqCgv2PYeVjk+rFije93B
         +zYFxuPY2sSkSe99/NDChhuXX2NYbh38l+MGZ3F0PrDVo6GIq4cbhFZK5Y11bTquEUYa
         HYpR4ZurmlJhgiDNl9d6s6iVSi6gAsOQOLcV7VXw1d5JgtVHyIKOewe7PbRGXrMmRy/c
         ED9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771435101; x=1772039901;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DCcdS7x3lDtrIEUvGJcyqRB9D89Wp2xuvJCS6WrEmgQ=;
        b=Q8cBeV779evdstyM0yLSjyJKhhZlKH2X6EVsW2rq5NfQmQyZqTDoS+LpYD9ccK8dLz
         otH56VnbOr9NI87Id9kY+scwnH4NPM4Lh2bmwR/mAoqDE1BeRx1Tn3ESAiJVKTf5Pcin
         WVB0Nnbq1wdgyO5cuz3i375/sbTOMeb6JaC3LssLNAzqbCEm3pF3yuJQOQw8DpZdzbie
         SlCG3uXRUw4Ggrjy9l1ibjMq0HTXF53WZ8euTgsL+qQVJkVN5QpLrnaK5hkGItu9wEaG
         8q74XU+7ucEECUuRoQdkKUiegFba6l1PSK7DDtxIlcJBQHFMUON3yWyyvxdvWjA17QFM
         LaxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVu154e9T1GDG7SA9vhn1CO1f/omNXnA7WxERh32iK86lpzGNFDm+Hk6UwfyS7c1xzZU6UEroO/87Z6@vger.kernel.org
X-Gm-Message-State: AOJu0YwC9qODIOy1z8hgaW0+3lg2bNicw9WLd83XvVrPyAzsUlHBhicf
	FyqhIFTJ3DXqp6r8al1iohA1+a/pdM2H4JToNhi5a73xJ0+9ZYgVB/lG
X-Gm-Gg: AZuq6aLZ5igaFuG7PwgXQS6xNVVfxZNeSh8090wIWfmyDzeXwiUeI6xEbH3x4wwx6j3
	gFrKjKwcFI4YxTQnFsDjLaZX8BFXv7Y4WX7tpcqkHZJtzo/qn7H/5h4HwB5150zj0NTsC/Fm+zv
	nixwLzxwRIhMyBthqT0njY/44dl35a2t+IpIz4EuuQ7CzQ0zSwl0UOQEqH+gR8AOIknCn/Lp2Hq
	1A6n/gwnndDP6RgwHnlxBV2ztnzbTWcv43kHtErrepnHuCOwHYBmRrXv3lsQ4yOHKhJOP1IujWT
	F0uhtRB9O18jDV+y7U95oe+Dd4CTZInInsHcicn1A0vmSOn73qnQ5NQH8rCfV/oh2NeGnKh/QmR
	axoyJljO/ywLMjEkR9UnCQsFX3xUKaptM82UsJHZ7rpLFqZUoWUoVWSRUI5EicHs0xMT2WivTuD
	8g7UcGkebhHOhU+icd7JXks2BkPX9mVNjsU7zs9vCVcMaN2GrKelVO2aVEJedWpSB4/NuHqu1/6
	v/X1QUbYzbCSb4fFujOsEgERy8fV+qCXCEtHtNFeKM/cAjgAhDfZRx9
X-Received: by 2002:a05:6512:32c7:b0:59f:6947:7e7c with SMTP id 2adb3069b0e04-59f6d34d001mr4165286e87.9.1771435101026;
        Wed, 18 Feb 2026 09:18:21 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f568d95sm4644958e87.30.2026.02.18.09.18.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:18:20 -0800 (PST)
Date: Wed, 18 Feb 2026 18:18:16 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v1 06/11] arm64: dts: freescale: imx8mm-var-som: Update
 WiFi/BT configuration
Message-ID: <aZX0WB_6qPoCYVvC@Lord-Beerus.station>
References: <cover.1771353301.git.stefano.r@variscite.com>
 <3e79c4d806b8b8024b71bc99c36b09a2fbb90a65.1771353301.git.stefano.r@variscite.com>
 <CAOMZO5CAb8738HdH49WcY-JPTzQ90n4Bnmyn96_3jfw47mxOug@mail.gmail.com>
 <aZTEm8nUUVcKZH0v@Lord-Beerus.station>
 <aZXqSz_OsCC64P7i@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZXqSz_OsCC64P7i@lizhi-Precision-Tower-5810>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266478-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,pengutronix.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,Lord-Beerus.station:mid]
X-Rspamd-Queue-Id: 77BC2158395
X-Rspamd-Action: no action

Hi Frank,

On Wed, Feb 18, 2026 at 11:35:23AM -0500, Frank Li wrote:
> On Tue, Feb 17, 2026 at 08:42:19PM +0100, Stefano Radaelli wrote:
> > Hi Fabio!
> >
> > On Tue, Feb 17, 2026 at 03:59:33PM -0300, Fabio Estevam wrote:
> > >
> > > What about users who still have boards with the Broadcom Wi-Fi chip?
> > >
> > > Will Wifi on the old boards stop working?
> >
> > The Broadcom-based WiFi module was used on earlier revisions of the
> > VAR-SOM-MX8MM. That hardware revision is no longer in production and
> > is not available for new orders. All currently manufactured and shipped
> > VAR-SOM-MX8MM modules integrate the NXP IW61x instead.
> 
> This common problem, we met similar case. After replace new compenent, it
> should be new boards, or new revision.
> 
> I don't suggest directly replace it to broken old one. You can create dt
> overlay files for new boards.
> 
> Krzysztof Kozlowski:
> 	how about other vendor handle similar case? Any guide line for
> that?
> 
> Frank
> 

Thanks for the feedback!

We understand the concern about potential regressions on older SOM
revisions. However, since the wireless module is soldered on the SOM
and not configurable, we are aligning the upstream device tree with
the hardware revision that is currently in production.

This change also aligns the i.MX8MM VAR-SOM with other VAR-SOM
platforms already present in mainline (e.g. i.MX8MP, i.MX93), which
use the IW61x wireless module as well. The intention is to keep the
VAR-SOM family consistent in mainline with the hardware that is
actively produced.

If there is a strong requirement to preserve an explicit description
of the older Broadcom-based revision in mainline, we can evaluate
adding a separate description.

Best regards,
Stefano

