Return-Path: <devicetree+bounces-319865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ed9BBs1oR2p+XwAAu9opvQ
	(envelope-from <devicetree+bounces-319865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 09:46:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1023C6FFB54
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 09:46:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linuxfoundation.org header.s=korg header.b=dhTNqMNF;
	dmarc=pass (policy=none) header.from=linuxfoundation.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319865-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319865-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 19821300CF28
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 07:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E135335F5ED;
	Fri,  3 Jul 2026 07:41:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B794636CE06;
	Fri,  3 Jul 2026 07:41:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783064464; cv=none; b=OwTNjnuCvJEXGnC2BrfG+6XM9CZhzOXJ4ROVNaMTHd/avc3kgSWkVBGXt3F6IrPZ2q5eV78crb2M0gx18RFYgxzGkPWxap4nzsKG+VowT3OC7ccGs68iTTMcllp52cwFCt//y2x+sdozhAPzfVE4wZLXEznIJfAJJnIq8SejAFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783064464; c=relaxed/simple;
	bh=sifDA7wMMlRQMsm0EVCizcABmzRB5VHtloP/nZC2nt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OZKGrG79h2TlhU1/C/aFXLOB3eePXWYre/0lZudzJbUGQFABRICo67lUuRNH+JwEN7ZJsYrM9XBfbk2adwfvOnGjGFA5BHvmfAb9F6U2YzQqCQwEFwcBNUzFM7IdMmhdYRNKiOFIsMGWKy/UePeX5mt5P8FmWDcHOJNXRRq2/7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=dhTNqMNF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E7181F000E9;
	Fri,  3 Jul 2026 07:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1783064463;
	bh=kMqoLvZk7UXpRSotpTBH9ZtApx2EgbAedMgVy+3wNS4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dhTNqMNF9sBWKBBN1DJh99gvQpDQOqEw61XaYxYhVp9SWTwtsAXIO/6cMu3OPyq6o
	 4AnlM4J8xr2yD9PFWsuyO6znk1xBJI0p92R0ipn3FBjnafbjKY9CrIb6tQh+GfsbvQ
	 PfPj0LiNMSHwM/DuJoSBOyxHK2wkdF/VvXioQfGo=
Date: Fri, 3 Jul 2026 09:41:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zane Leung <liangzhen@linux.spacemit.com>
Cc: anup.patel@oss.qualcomm.com, adrian.hunter@intel.com, alex@ghiti.fr,
	alexander.shishkin@linux.intel.com, andrew.jones@oss.qualcomm.com,
	anup@brainfault.org, atish.patra@linux.dev, conor+dt@kernel.org,
	devicetree@vger.kernel.org, irogers@google.com, jolsa@kernel.org,
	krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, mark.rutland@arm.com,
	mayuresh.chitale@oss.qualcomm.com, mchitale@gmail.com,
	mingo@redhat.com, namhyung@kernel.org, palmer@dabbelt.com,
	peterz@infradead.org, pjw@kernel.org, robh@kernel.org,
	sunilvl@oss.qualcomm.com
Subject: Re: [PATCH v4 02/12] rvtrace: Initial implementation of driver
 framework
Message-ID: <2026070300-submitter-humbly-833a@gregkh>
References: <20260429125135.1983498-3-anup.patel@oss.qualcomm.com>
 <BDD9553502347B02+ee3069d3-eb04-4a37-b364-107cf8d0653c@linux.spacemit.com>
 <2026070316-surgery-unneeded-bceb@gregkh>
 <138BCDE3F4A1D624+2488a822-cf77-4155-8492-b8a1c47d5589@linux.spacemit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <138BCDE3F4A1D624+2488a822-cf77-4155-8492-b8a1c47d5589@linux.spacemit.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319865-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_RECIPIENTS(0.00)[m:liangzhen@linux.spacemit.com,m:anup.patel@oss.qualcomm.com,m:adrian.hunter@intel.com,m:alex@ghiti.fr,m:alexander.shishkin@linux.intel.com,m:andrew.jones@oss.qualcomm.com,m:anup@brainfault.org,m:atish.patra@linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:irogers@google.com,m:jolsa@kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:mark.rutland@arm.com,m:mayuresh.chitale@oss.qualcomm.com,m:mchitale@gmail.com,m:mingo@redhat.com,m:namhyung@kernel.org,m:palmer@dabbelt.com,m:peterz@infradead.org,m:pjw@kernel.org,m:robh@kernel.org,m:sunilvl@oss.qualcomm.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,intel.com,ghiti.fr,linux.intel.com,brainfault.org,linux.dev,kernel.org,vger.kernel.org,google.com,lists.infradead.org,arm.com,gmail.com,redhat.com,dabbelt.com,infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscv.org:url,linuxfoundation.org:from_mime,linuxfoundation.org:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,gregkh:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1023C6FFB54

On Fri, Jul 03, 2026 at 03:32:50PM +0800, Zane Leung wrote:
> 
> On 7/3/2026 1:41 PM, Greg KH wrote:
> > On Thu, Jul 02, 2026 at 04:19:53PM +0800, Zane Leung wrote:
> >> Hi, 
> >>
> >> Based on the current framework, I am concerned about how to support RISC-V ATB and reuse the Coresight component (ETB/tmc/TPIU) in the future.
> > That is very vague.  Please provide specific examples.
> 
> According to the /trace control interface/ [1] spec: "The ATB Bridge allows sending RISC-V trace to Arm CoreSight 
> 
> infrastructure (instead of RISC-V compliant sink defined in this document) as an ATB initiator. ATB Bridge is not 
> 
> needed for RISC-V only systems."
> 
> For ATB Bridge, read trace using Coresight components (ETB/TMC/TPIU),  so we need also ARM coresight driver in
> RISC-V trace systems. Current framework seems to only be applicable to RISC-V only systems, and does not support
> ATB and  ARM coresight use case like the K3 (K3 SoC contains RISC-V Encoder, Funnel, ATB, CoreSight Funnel, and 
> 
> CoreSight TMC components). For more discussion, please refer to [2].
> 
> 
> [1]: https://docs.riscv.org/reference/trace-control-interface/v1.0/tci_system_overview.html#atb-bridge
> [2]: https://lore.kernel.org/all/20260414034153.3272485-1-liangzhen@linux.spacemit.com/

So, what specifically does this mean?  Please provide review comments
for the code itself.

We write code for stuff we have now, today.  If future needs change, we
change the code to handle that then.

The only problem is with user/kernel apis, those need to be nailed down
so that they don't change.  I can't tell here if you are only referring
to the in-kernel stuff, or user/kernel apis, sorry.

thanks,

greg k-h

