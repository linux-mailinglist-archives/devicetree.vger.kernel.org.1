Return-Path: <devicetree+bounces-263002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AvMGoqMhGl43QMAu9opvQ
	(envelope-from <devicetree+bounces-263002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 13:26:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1988F2741
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 13:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0A3130994CD
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 12:21:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C05A53D3484;
	Thu,  5 Feb 2026 12:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmN8RPHb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D67D3A9628;
	Thu,  5 Feb 2026 12:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770294116; cv=none; b=GF73BRxCt1ro0j1BOXJ1dcZ+pReq5zSljRBPKYSw47FFi/NhSFCPbWRs/LJfO1cNRa5nJgth7OlWoDLqA18hrKlqyDOg7PLmjOmp52eHH9djEUldoA+YSB6wxtqaXfp39F6mnpAOlLvXCUg9AwebW5f80Q2QSAYemavK2zTnAhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770294116; c=relaxed/simple;
	bh=VEFqDyWByreSKcWhQPFzxYfUI9+flyLzR/sbfbE5cLY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YeHVmO6IYbb48mlhWX4DPtybV+8CxLkF9NcAiMMcVCbeVXp/ENL0iyWIgiLDg70vY0OhnEhqUfidvY3/5oXsL9EMa6sFGJcDBalAN+AaNaoYSEvwmSks4QK6pH5rm1MXOfSAgbgZVN2hfsxJ7c+P5rPGyTD+LVoFnddz7huAsB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmN8RPHb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16DECC19423;
	Thu,  5 Feb 2026 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770294116;
	bh=VEFqDyWByreSKcWhQPFzxYfUI9+flyLzR/sbfbE5cLY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RmN8RPHbhOadUZn3ms2KlCtIRsVfvFZX/FwrO2nuwv5S0JpevKISrBgWRkbMHe1io
	 KQyR4ouAsqhTD6kd0A2qPb56ENiPTXpND0obsMSBLUXgoo47cblcTxxID7I5cEc1vr
	 124PIaG6ARtvJyo4qZNlP94fbA4TDScPry5QRpvLRNL4svfYPXYqM/3HZc2n5d7nFC
	 CSaCBcXGd2d6SPJSYfTTi6A+C6lzpC+Rx15GlDK9D+lu9E3CTbV3/IPNo56ya4ft4E
	 dZ926gKZ1bdGcup9e80MYT5twVdP3cCukLI+4GYfu+0jDJnxkvZQ4WbY6ubtJYWGtP
	 NoIjrtLUmQJVA==
Date: Thu, 5 Feb 2026 12:21:51 +0000
From: Sudeep Holla <sudeep.holla@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Cristian Marussi <cristian.marussi@arm.com>,
	Debbie Horsfall <debbie.horsfall@arm.com>,
	Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: zena: Add support for Zena CSS
Message-ID: <20260205-wooden-cheerful-barracuda-0de1d2@sudeepholla>
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
 <20260123-zena-css-v1-2-34adb95cdf89@arm.com>
 <20260127132206.036892e4@donnerap.manchester.arm.com>
 <c1259bad-be4d-4489-840d-4ab2f4e466f2@arm.com>
 <8c343e6d-14f8-4f55-8218-bc3f0813e8cf@arm.com>
 <20260130-light-piquant-termite-fcbec4@sudeepholla>
 <aYHmDTboOtkgac00@pluto>
 <20260205-intelligent-intrepid-robin-df42bd@sudeepholla>
 <445035bb-71be-4751-a014-9ca67b1c0cb4@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <445035bb-71be-4751-a014-9ca67b1c0cb4@arm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263002-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C1988F2741
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 12:24:58PM +0100, Andre Przywara wrote:
> 
> 
> On 2/5/26 12:08, Sudeep Holla wrote:
> > On Tue, Feb 03, 2026 at 12:11:57PM +0000, Cristian Marussi wrote:
> > > 
> > > All of this madness was the best way I could find to address the problem
> > > of supporting such new unidirectional mailboxes in the SCMI while NOT
> > > breaking backward compatibility in the absence of mandatory naming from
> > > the start.
> > > 
> > 
> > You can attribute this to my expecting an overly ideal scenario with
> > bidirectional mailbox channels across all platforms using SCMI. At the time, I
> > did not anticipate the range of configurations that rely on unidirectional
> > channels.
> 
> Would it make sense then to add mbox-names parsing to the code, to
> accommodate new users? There is precedence in some drivers for introducing
> xyz-names for clearer and unambiguous resolution, while still falling back
> to some legacy, fixed associations in case the names property doesn't exist.
> 

Yes, we can do that; however, my concern is that if RX and TX are swapped, the
names would at least make this apparent. How should we handle shared memory
(shmem), which does not have names? I may be overthinking this the current
logic that checks the number of cells (mboxes and shmem) is likely sufficient,
and we can infer an ordering from that but I would still prefer to avoid
adding unnecessary complexity/mess.

-- 
Regards,
Sudeep

