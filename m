Return-Path: <devicetree+bounces-275454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG70HNlCtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:01:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2F0287B96
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:01:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E4A1C30A54DE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 185683CA4A2;
	Fri, 13 Mar 2026 16:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XZf4CGRG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D69B39A04F
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420976; cv=none; b=T7J6ZymiA562QkCYXXqiK6MF8r7YzoChuMdVXiytfXs4LgBESeX9ljC7noVVaB03LLlOddgyzcQlo1qxIf/eIMSO6zdkziR+Aq9nw0fM3pQ5M7EU6PjTBRHwe79vaQ0/U66SUPM8FUDc+57AOOEITdXWrR2ew3HpQtA/5dI0mC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420976; c=relaxed/simple;
	bh=0295XKYorZrcAxdvHj5i3VyYdfW/8rBj5SpSqpyom0o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L8VLvVUdYEkkg59VQsaQ4tMNYimcaUzM/fP2LHBX6si0s+RI6S5jFdhLyJjX65PZB3bRQ5Al7YO7RoQ0uw7Wzerid0b/GADzBtXIHnWNPCKrdJ7ovlTZ8oifktfJR0DavzR+9dmpxh6xdAJBirEJ/+YWj5pAETKrVYMl26xGEF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XZf4CGRG; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-48558d6ef83so8246645e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773420973; x=1774025773; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0ZHP+nmQxYBG9XCuehu/97dhHO1vliPQgGZ+V2Z0h3w=;
        b=XZf4CGRGvmSsa1qKp92633q+NEFhbYCunrhWlI8PbqOYO7kgToVA9QE8RGHwW3ZmZ+
         XFW5cprn12+Uaik0hxHl+ordUw089kXdlxXS8f9diAB/TKQoaI0zqQGpNKoWQqAVs4Dr
         Pd3KfFM5kbjfePQxUnXtVg8KK/WzZfnUFR8Mq1344L1/60RJlE2U+JpTqNUUCqu+/o+I
         P8GX9W4AK1Crb0rgaXDLxtrW1WZbIy4WNuVHb11OpI68vT8iTW1CvUl7e9QWIoWGMWmK
         J06JRnC+p0ENCQ4CJPmtgipUuQ4hzUIMQ0UvDxXfrbs/Y/IDCBCGnE3VpzVethXRwBPs
         0TNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773420973; x=1774025773;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0ZHP+nmQxYBG9XCuehu/97dhHO1vliPQgGZ+V2Z0h3w=;
        b=fbns7N/mwX4wfeLv3QBy+VbSDAXx9dlbAE16lSCq6JFMbWvA68mX8nfvkSaYRWthtk
         tgLvRh0YUXhSd8ML9JVJsSuPLai9Tae6C/61b9H4c5sHcpAKd8UFcIx4XfgGV4rOt9Wf
         Ahyi+2J4wUF54yMJrCVf9PuK2cr0zzjvMq8sS1L/g4kIdIcCbPajvWLjueBC15x5JSp8
         kvEq6n0Ue6IPFSxp80SfxHgan3bMeE7bzVYDEJwZq0tk2GWN5/5dydWiu0lBnDwfXo8s
         1Gg0Z2TaBwHPyBM24fUpbYkrd3di9Bc/V26lNnAj9FVSl852iGsPVywvdvvNTistHLsD
         mVTg==
X-Forwarded-Encrypted: i=1; AJvYcCVXDFjUW98SOLOMDgeJjmtxfZKTgW9xVT6bqOOacymw3KaEan7SbUrWOE8+fE1AQ5k2U7TKNyDG7w7M@vger.kernel.org
X-Gm-Message-State: AOJu0YxTHqOKgri77Ss/lsWLK97K/45F+YtOBVdLmydA6r/qmybjyyRv
	dRLf5HECf+r+Y/fkCQORtAVIjH4EQMmjOmd8lyAVe5qbIrjqjNUxXBt9
X-Gm-Gg: ATEYQzw7ZpENo555D0YlV5dvXiFF4+uKtkmnle2AE29KzVsWwB0QFTnAIGyU5dxBi45
	5pxoPR6XMENt+ClnB910l8SMhQckfuSuUwAwZa+1Kjbwo1pG+hXZhFeU540u8jHx+hMmVnii7QZ
	+zk2qnSsC/u1rIjH0DUB8JLYG5u4XOfUVJ/PjIiWmvkitkswbNzbd4qe+i4+kFOBDWesUtr/VYW
	2+mt54A15/SrtEZGf0fqrItPDnTJfVFD2dK6vLiouG/oI5tVsduQ2wwMA7yRiMkywf2cpC/bg5p
	UTbqwJlK1PYqQjK5EESG0zeZ408F7cuzPoEsQfJXSpPOy4PrVFjuq6wC+uFIKpAW6dkTYRlE6KR
	uMMhxlrpC5BA+NXSTCNMH8FHNcEbOEr5+rvDUyiS78omc5s8q68pgnv+smvfcRFefWwVIj1Wc/F
	Rd1H8r4Ei00GQOx8JM+sVL5ZWkhk6CcrDbwr0O5Rn/2ZxikrK+/Bmi6/ygKQy+xTVN7jvOUzVyE
	tfSVFNNYxOvVhjk6puOhUJxkl9xT77M+mSc5gCcGVCaaQ==
X-Received: by 2002:a05:600c:3590:b0:485:3b34:2f61 with SMTP id 5b1f17b1804b1-485566c9464mr70256375e9.7.1773420972648;
        Fri, 13 Mar 2026 09:56:12 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b65fed7sm202895695e9.11.2026.03.13.09.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:56:12 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:56:09 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Matthias Schiffer <matthias.schiffer@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0/3] Add support for Variscite DART-MX91 and Sonata
 board
Message-ID: <abRBqaTybiVv7mv2@Lord-Beerus.station>
References: <cover.1772642881.git.stefano.r@variscite.com>
 <abQpn9whz_o4n86u@lizhi-Precision-Tower-5810>
 <abQzQnmG0Xh7wXjt@Lord-Beerus.station>
 <abRAaZkks9Jilo-S@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abRAaZkks9Jilo-S@lizhi-Precision-Tower-5810>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275454-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,variscite.com,kernel.org,pengutronix.de,gmail.com,ew.tq-group.com,amarulasolutions.com,tq-group.com,phytec.de,norik.com,toradex.com,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,Lord-Beerus.station:mid,i.mx:url]
X-Rspamd-Queue-Id: EB2F0287B96
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Frank,

On Fri, Mar 13, 2026 at 12:50:49PM -0400, Frank Li wrote:
> On Fri, Mar 13, 2026 at 04:54:42PM +0100, Stefano Radaelli wrote:
> > Hi Frank,
> >
> > On Fri, Mar 13, 2026 at 11:13:35AM -0400, Frank Li wrote:
> > >
> > > Can you rebase to my for-next tree
> > > https://git.kernel.org/pub/scm/linux/kernel/git/frank.li/linux.git/log/?h=for-next
> > >
> > > And new file, run https://github.com/lznuaa/dt-format to keep node nice
> > > ordered.
> > >
> >
> > Sure, I will rebase the series on top of your for-next branch and send an
> > updated version.
> > If possible, it would be great if the series could be merged as soon as
> > possible, to avoid having to rebase it again on newer changes.
> 
> I try best. I go though as reverse order patchwork order.
> 
> https://patchwork.kernel.org/project/imx/list/?series=&submitter=&state=1&q=&archive=&delegate=
> 
> Small fix go high priority.
> 
> >
> > Regarding dt-format, I can run it, but in my experience it is a bit buggy.
> 
> Put bugg in issue list, I will fix it.
> 
> > It sometimes moves comments to completely unrelated locations and does not
> > always keep a logical ordering of nodes.
> 
> Logical order is hard to follow. Each one have difference opinion about
> logic group. I am trying to normalize and machine script. I use same rule
> for every new dts file.  property order is not so important. The key is
> node orders, which try to avoid add duplicate one in future.
> 
> > For example, I saw cases where usdhc3_wlan was moved before usdhc3_sleep,
> 
> > and pinctrl nodes were not kept
> > at the end of the file.
> 
> About pinctrl nodes at end of the file, we don't stick this rule. There will
> be more than one pinctrl nodes.
> 

Thank you for the clarification and for the work you are putting into
reviewing and maintaining these patches.

Regarding dt-format, I will open issues for the cases where I noticed
incorrect behavior (such as comments being moved to unrelated sections),
so they can be tracked and fixed.

Thanks again for your support and for maintaining the i.MX tree.

Best regards,
Stefano

