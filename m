Return-Path: <devicetree+bounces-257778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIWgAHSHcGkEYQAAu9opvQ
	(envelope-from <devicetree+bounces-257778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:59:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D0717532B6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:59:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8096E4A5FAD
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61507410D26;
	Wed, 21 Jan 2026 07:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZddl4+4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C0C3382E2;
	Wed, 21 Jan 2026 07:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768982361; cv=none; b=K8XBfJW1ziaLOPRaPEGbcWoEvYz5AoXc2yW0BlaC1mEcQFDSg79HZknnKum4yDR+H05jUT4wtRInEtKrt3MKYX7pDXkeX7uB0BuV025wAJ2KcKhC9lC7ClIOyseMX5YrT+RIVi9H3h9KoYQqe3OFT+G9tHfaq9C1+0V78GJUp9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768982361; c=relaxed/simple;
	bh=B/7SxcFDchYAOxBFM3nekD6F3BNUoh6xpZYaOFcjPWg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RZnh2/gq+jJ1LMdSMOhi9PJZurmuN1Hk9jnugAe4RdNy/XddH2or0aSNsiqqQTqwIzNHR2nM9Wvf/xJ2N44cmTaag8IxU2H7BlL2oJ7F35wibvnayjrleF3MUK7PsZsQ94b0KINRHOhYy6eXsTLNJNTOfq4yGCEe1fCodrrHJV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZddl4+4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3865CC116D0;
	Wed, 21 Jan 2026 07:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768982360;
	bh=B/7SxcFDchYAOxBFM3nekD6F3BNUoh6xpZYaOFcjPWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RZddl4+40tnL7hWPWTaNGYdQMXa2Iw5iaLuiEt06W7iElk1M3kUOr+OXOXVx+SLuh
	 6ZemwgMGYVzfaH7MS9JcRXM4ZE6blUG8ZB8iwrRs0DcDft/A8L9S+eh2A4u91jvGG0
	 TZS7Sn24xKexfKOqcrX84UhWlZEJEcnjt5eeEPM3i0w1njHAEX8FkAohIwT8H17FSW
	 Sz6NxzyJclSwoct9qszl2ONMxltY9ItMshi0FcyIhD6fMy8vP2ILkQA2fKOU/l6rOW
	 PNttevoIvyYCZRzpkLo+xGlAgA5xdAe4Aao/LK/Atv3h/jnshApMG5Q+ZAsJCPJTsz
	 OFg02BDz+AhZQ==
Date: Wed, 21 Jan 2026 08:59:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shengjiu Wang <shengjiu.wang@gmail.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, Xiubo.Lee@gmail.com, 
	festevam@gmail.com, nicoleotsuka@gmail.com, lgirdwood@gmail.com, broonie@kernel.org, 
	perex@perex.cz, tiwai@suse.com, linux-sound@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] ASoC: dt-bindings: fsl,audmix: Add support for
 i.MX952 platform
Message-ID: <20260121-uber-adder-of-radiance-0ebda7@quoll>
References: <20260120035210.1593742-1-shengjiu.wang@nxp.com>
 <20260120035210.1593742-2-shengjiu.wang@nxp.com>
 <20260120-fractal-lemming-of-chemistry-6f21df@quoll>
 <CAA+D8APePw6BnRP=Wnw+zna+oc4_aoMWZewYC7yx-XYLBrSKbQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAA+D8APePw6BnRP=Wnw+zna+oc4_aoMWZewYC7yx-XYLBrSKbQ@mail.gmail.com>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257778-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org,lists.ozlabs.org,pengutronix.de,lists.linux.dev,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: D0717532B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 07:07:48PM +0800, Shengjiu Wang wrote:
> On Tue, Jan 20, 2026 at 6:31=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.=
org> wrote:
> >
> > On Tue, Jan 20, 2026 at 11:52:07AM +0800, Shengjiu Wang wrote:
> > > There is no power domain defined on i.MX952, so make power-domains to=
 be
> >
> > There is no defined or there is no power domain? If the first, then this
> > patch is incomplete. Please read writing bindings part about complete
> > bindings. If the latter, then you miss constraints ":false" and commit
> > msg phrasing is incorrect (and remember that in such case you won't be
> > able to add power domains later because now you add complete binding).
>=20
> Thanks for pointing this out.
>=20
> There is a power domain on i.MX952 for the mix system of AUDMIX.
> But it is enabled by default,  AUDMIX device don't need to enable it.

This should be explained in the commit msg.

Best regards,
Krzysztof


