Return-Path: <devicetree+bounces-270417-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAaFIeK2pmk7TAAAu9opvQ
	(envelope-from <devicetree+bounces-270417-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:24:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CA31EC9B8
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:24:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F0A34301A535
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:24:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29E7382373;
	Tue,  3 Mar 2026 10:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CAqg7v+W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9749039099A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772533471; cv=none; b=EwHlKseacHgtRBJs734pOZACvPDXoBmEZyoQVx0Etor0SHb33zDycvH8Dj0pTAyG46ePSgkTlJfS/JSXlwZbTWz2kpx7+WiKyjXEBojzu/8tHFqYPmTCPEYzt507xGxOgsNIaMlYnXkbo3dxeKIChuWuJEQR9EPWmEfIk6xQ8xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772533471; c=relaxed/simple;
	bh=5OAA6Kh1dabLTVRCSYH18jP5jWJ/D4gV2amghxzmJ6E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ch5kUeUiRdLO8ZSmid7syKHYOxWOdJO7FBSceH0lZ+AAmje1O9rmF/FGv3A1xHBNAizksNYUHkYsF87bxQ56YSZrQNHKR/mRJdMmVqAP4skB4bN3PeYT4Fxvl3R6Ey8sR+OnZ9aMyYWbt8NTTIRtdNSRH84alHmVMnPBQpPHA6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CAqg7v+W; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b611274bso1356919f8f.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772533469; x=1773138269; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NFR/74Mhz6mqBNodIdVtj44myA0OpEyonX9RTs0IqEg=;
        b=CAqg7v+Wh/EPm9mrYFJ4Nv+v4gGMJKqZrIywLYOSc8zA5IjTXCi0MNzMLnOduidKkM
         v5+pi61vEeAGJ9Jgq2REr3U/InESSZ5ssLwJ14qNri+6AazgEhTaJpL9bk0PyWL9WmPF
         0jdWiWb4BWHHSSi/mjrXrK/3wLdBa80fcNKJ8Fi5XgsOoBy2t0bhtauFRk8gHkcMtbfo
         gUHhxYD6A4SdaR/CdBR4coBNNLYkxVGHQmM217VUc7/TcOgmFL6ST0d0loEHcPPKa5iK
         QxGJh+h4gaeJSLhhtuWnICAzVuPJrqOu5IbqeFcfOa073xX579LX6XUBUJbQTxrSdioy
         mmng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772533469; x=1773138269;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NFR/74Mhz6mqBNodIdVtj44myA0OpEyonX9RTs0IqEg=;
        b=sRn6RGV/HwRJia8Ttlrr3xdCuYCoCjaAt7ImPXyVS2ec2MH2QgxqL4vhVoXC7q8BFS
         fz17BEDpb2wkWCC+7elVU0Y4/uuYT9CcKT8FiVtNX3jxs3r+5mUXgfPrMky/yD5470yB
         BmTXbENFnSy4CDRJi3ZhZi4+D4JSK1Djz3x3hhIXyTdv56ZNLOc5qOofMGvDGb8DQcn/
         V3LXuZpFOza9koLCMLw9GHlVrsN2wW2Tt5msmA0pHhGdzUd/P2nzoOaewDiohcLdgcPo
         hFA4Uic10dcjtyYD7BCChG6GFn3LomLMVNHwxhLCf+B1M6yDdgRbmXKnQkDXn+gKuWFY
         DFLg==
X-Forwarded-Encrypted: i=1; AJvYcCXTJ2dAENS4w9JAKpQZflIskYPGEggdHKL8CU7hdnNA/HsWSXERCvCpuXB5la5oJLYitlmgLg2cWBCm@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6qP/P0XenoFzBkEuONmVlAHji4hhgwQ7iMv6yidDANVo5Q5fV
	GFeDrX6AbLP4XGIhX6RFfccqKB7zMt2+VOUGO4DZIV2MVJyg8DTrDNIY
X-Gm-Gg: ATEYQzwNfaEhoZ6brt0yYDg47Ib6MR8XFpqC7lvq67z/DojHEJNAP1IbvoiOjcUNwpt
	8FBxj7+94HfvuKhc44YueSlkHh8ihcnohBEykEQyhyU/GSXayAIVsQbTxa6FzGUm5R+HNtuGHng
	i/EFAG5xei7NRCYf3Qj9A9kpomj+tbRL5zzy8sbE0t02XzDiXxkr9xJavDuHGaXoj93YcF8fy/9
	v3JE7CNQbXRsbMGc3SwKY2sINBpw+jR5ajCktVE6gW5QVD4nuaeVHYFSnwR42yykRrE/ixKIiCa
	+TlqnN6NOBfKVUtJUi3rB9tAAwUxTrPs1DwM2QYOPG30ZHYyrGITKNla5kqTwqIQKXbnuePiUoX
	6qS0nwlhGYBXV3cYCsdYQdbfPCp/ntozJkt/X7vUzqcHN3rTQJBcSJ4ZpLTRjni499yMW7ZGxLv
	frxfMH6FvXpV9dK4xOz4gKhzwZF/A9g0SWS8aINjB9Q4QYF3+zmuhpqc+hSJgUkaVEcDStS4mVT
	AXyxaolMqRElyIVq1STNBvH8xiaY4UA2MkGV7CfQrubzw==
X-Received: by 2002:a5d:5d02:0:b0:439:9312:4b6d with SMTP id ffacd0b85a97d-4399ddf87e8mr27796843f8f.20.1772533468743;
        Tue, 03 Mar 2026 02:24:28 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4399c765c67sm35944065f8f.32.2026.03.03.02.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 02:24:28 -0800 (PST)
Date: Tue, 3 Mar 2026 11:24:25 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
	festevam@gmail.com, alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com, primoz.fiser@norik.com,
	Markus.Niebel@tq-group.com, y.moog@phytec.de, josua@solid-run.com,
	francesco.dolcini@toradex.com, maudspierings@gocontroll.com,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: freescale: Add support for Variscite
 DART-MX91
Message-ID: <aaa22ecrKugDRM5u@Lord-Beerus.station>
References: <20260205100125.9095-1-stefano.r@variscite.com>
 <20260205100125.9095-3-stefano.r@variscite.com>
 <aYSzgRRGewX6uSlc@lizhi-Precision-Tower-5810>
 <aaW7EpLmhxk3elmd@lizhi-Precision-Tower-5810>
 <aaXCkswynHreRURk@Lord-Beerus.station>
 <aaYCq-H0NSuyjFJJ@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aaYCq-H0NSuyjFJJ@lizhi-Precision-Tower-5810>
X-Rspamd-Queue-Id: 05CA31EC9B8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270417-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,gocontroll.com,variscite.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,Lord-Beerus.station:mid]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 04:35:39PM -0500, Frank Li wrote:
> On Mon, Mar 02, 2026 at 06:02:10PM +0100, Stefano Radaelli wrote:
> > Hi Frank
> >
> > On Mon, Mar 02, 2026 at 11:30:10AM -0500, Frank Li wrote:
> > >
> > > dts part can't apply, please rebase.
> > >
> >
> > Thanks for the feedback.
> >
> > I rebased the series on top of the current mainline (Linux master tree) and
> > it applies cleanly on my side.
> >
> > Could you please let me know which specific tree/branch I should rebase
> > onto for the DTS changes? I will respin the series accordingly.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/frank.li/linux.git/log/?h=imx/dt64
> 
> Frank
> >
> > Best regards,
> > Stefano

Thank you Frank,

I'm sending the new revision on top of that.

BR,
Stefano

