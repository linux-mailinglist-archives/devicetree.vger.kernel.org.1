Return-Path: <devicetree+bounces-304779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEKOCQyUG2pkEQkAu9opvQ
	(envelope-from <devicetree+bounces-304779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 03:51:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C870D6142E3
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 03:51:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80DFD3022079
	for <lists+devicetree@lfdr.de>; Sun, 31 May 2026 01:51:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1545A2D6E6C;
	Sun, 31 May 2026 01:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xf7ZSxSx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A71B1E492D;
	Sun, 31 May 2026 01:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780192266; cv=none; b=aEY4ej6KcArEEJrBanhe7wD7XlI/Zq98QliSzg5Wh5uMbjeY4dHA3v86JXrpKB/lSrH9IJM9OlpXpuemLpAKvtW6t77UdtX3b9/hvat0QNnhTDVVWhfSJgTJaOtWeaEbrntTcS0Esa9UkIGvgMsYuIGD0U7f0I1R0+5IjHP/fD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780192266; c=relaxed/simple;
	bh=yvShqVS20J5ZBM9Hl3fo0phgffX7YP42/be2hWA813M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LDtxMdDiGf4tDqUSxdkHk3cXL4vndRjdRCTE8Jb4q3lECXT7OeM6R4MQJgFG/LA/dcwwhswVyux9cn6JtmBKGjdXrB40FJ0LJu4VtLN0ucYC4zX6aXlntq8BbxOyH/m/QXanOQvYXwH5kMeYb4DbX886Cgtq/aQ5PVtOH+Qg398=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xf7ZSxSx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 959E81F00893;
	Sun, 31 May 2026 01:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780192264;
	bh=c8qwORhhpiP96SYhNWEpYbLbQeKm99FbuAC9D6BLoSQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Xf7ZSxSxq3AEnKQ4Yl2QxC+Gvzn3vfkNHRSYf3hGgQhoQfXkkuilhS/Y/M50zgvYX
	 jM1m0Xp85gpHqx8GoJl5j3ZN8eC6nTu3szjdHxoMm+iKqiDNInUarY1Ujk0UWtx0C8
	 vF1TEKo6lG1D9NV0le5SQo1V2riLnaUPJ93HY7My9wgh4wG2FktoqhciFZq84+rzB3
	 JsTbIWLBnJ8/jxkAE40ZEPts6w3Jj6Ny5wXfmKytCZCsuB7p5gpPi2+v4mNapjHd2n
	 ngBD4ibblFcabKiDJxMByw3ZAnBVWsGCMbU15UlY/uA12JNK4VO9ONEaR4B7knKxOl
	 FchOuo2A6nIBQ==
Date: Sat, 30 May 2026 18:50:54 -0700
From: Drew Fustini <fustini@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH RFC v5 14/18] riscv_cbqri: resctrl: Add MB_WGHT bandwidth
 allocation via Mweight
Message-ID: <ahuT_jVo6ZQA2WtL@gen8>
References: <20260524-ssqosid-cbqri-rqsc-v7-0-v5-14-78d3a7ba9dbe@kernel.org>
 <20260525005220.224851F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260525005220.224851F000E9@smtp.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-304779-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Queue-Id: C870D6142E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 25, 2026 at 12:52:19AM +0000, sashiko-bot@kernel.org wrote:
> > @@ -1019,7 +1065,13 @@ static int cbqri_attach_cpu_to_one_bw_res(struct cbqri_controller *ctrl,
> >  static int cbqri_attach_cpu_to_bw_ctrl(struct cbqri_controller *ctrl,
> >  				       unsigned int cpu)
> >  {
> > -	return cbqri_attach_cpu_to_one_bw_res(ctrl, RDT_RESOURCE_MB_MIN, cpu);
> > +	int err;
> > +
> > +	err = cbqri_attach_cpu_to_one_bw_res(ctrl, RDT_RESOURCE_MB_MIN, cpu);
> > +	if (err)
> > +		return err;
> > +
> > +	return cbqri_attach_cpu_to_one_bw_res(ctrl, RDT_RESOURCE_MB_WGHT, cpu);
> >  }
> 
> [Severity: High]
> If cbqri_attach_cpu_to_one_bw_res() fails for RDT_RESOURCE_MB_WGHT, does
> this leave the CPU permanently attached to the RDT_RESOURCE_MB_MIN domain?

I will change it to unwind the MB_MIN attach on MB_WGHT failure.

> This is a pre-existing issue, but looking at the caller
> cbqri_resctrl_online_cpu(), there appears to be a similar problem with the
> controller iteration:
> 
> drivers/resctrl/cbqri_resctrl.c:cbqri_resctrl_online_cpu() {
> 	...
> 	list_for_each_entry(ctrl, &cbqri_controllers, list) {
> 		switch (ctrl->type) {
> 		...
> 		case CBQRI_CONTROLLER_TYPE_BANDWIDTH:
> 			...
> 			err = cbqri_attach_cpu_to_bw_ctrl(ctrl, cpu);
> 			break;
> 		}
> 		if (err)
> 			break;
> 	}
> 
> 	mutex_unlock(&cbqri_domain_list_lock);
> 	return err;
> }
> 
> If the loop terminates early due to an error, are the domains that were
> successfully attached in earlier iterations left without being detached? Like
> the issue above, the offline callback won't be called, potentially leaking
> the domain allocations.

I will rework cbqri_resctrl_online_cpu() to track the last successfully
attached controller and walk the list backwards from there on error.

Drew

