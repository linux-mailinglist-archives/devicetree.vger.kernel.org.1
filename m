Return-Path: <devicetree+bounces-303836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJziKWk+GGqDhwgAu9opvQ
	(envelope-from <devicetree+bounces-303836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:08:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EF15F279E
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 15:08:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2760E300F19F
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 13:08:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3286F3EEAD7;
	Thu, 28 May 2026 13:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibkzAHpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94973E832C;
	Thu, 28 May 2026 13:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779973728; cv=none; b=sPTz8fULmBz8Qvz6pK3vedA7lwhlq6+dkbMgN9A0QQT2czm8ZmIF7g7N3uWm8Yizjh2+upJRDNtd7vX7R5WRBONhfVPe4eOc9WUoBOhY1weQswy5x4ZuK/yKBIevomREK8dZ24Kis0nUxuzLfeSY8wVswHvJSFaozOCWCpbjDRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779973728; c=relaxed/simple;
	bh=7jjGyq5Pe51ldmITfjPdo0i7eu5yLXQEgeYSyoRmUfY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uYEsTKCpvruIUpLpjLnq5jrLzChFIn2L158OjiwLz4vL7grlmndo+dUSesWgCcJefkxfY+3qZrwFKtC+TBi8rxgwOEbS230+oHVmrAKAq0+D+llzyM8rnErEviehmkpNd+s9HegmNnbq9g4zsR/xJquftBXxUEj571LiRs2LBkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibkzAHpZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E1121F000E9;
	Thu, 28 May 2026 13:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779973726;
	bh=Vm0chj++LQ3LpOKTX6HOkcI1bHeVm8oKI+NZNvkvSKE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=ibkzAHpZ22AkPGKpZgrBDbDoRLzuBA2vAilZS96Oz1QtJ3gawiccv7kh4dFIb9M5P
	 EEKmxpii109n0/u+vBCvb0nOKrDxz5J5OTyDbhukiGpBxL7u+WI2d6TlQ43Qj7qpkS
	 Yg9e4X7mdj/Q/q+NtSRu6jGWtHetYd820q3HhZOdgmFIM87f+SAjm1QwnQSJ/H0faz
	 3+W8cnWBNCCthr4ZQyjfGY+yKhhYSc3RS34UGsSfay8t9Aqp1sNKrXmnbUs2109iFC
	 7ya/CFtNGRZRJD51Jq7vNQhtGZm7QPyyK0UmSJy+qzsQC+oVBtYEYnA6FbMV1d3e5O
	 wqKhwS6kw673g==
Date: Thu, 28 May 2026 14:08:38 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: sashiko-reviews@lists.linux.dev, Piyush Patle
 <piyushpatle228@gmail.com>, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH v10 04/11] dt-bindings: iio: adc: hx711: add HX710B
 support
Message-ID: <20260528140838.180844cd@jic23-huawei>
In-Reply-To: <20260528-payphone-alto-870198753d50@spud>
References: <20260525105127.180156-5-piyushpatle228@gmail.com>
	<20260525111144.CA7E71F000E9@smtp.kernel.org>
	<20260525-clanking-possum-4ba58b466854@spud>
	<20260527184128.2f5f02e5@jic23-huawei>
	<20260528-payphone-alto-870198753d50@spud>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,gmail.com,kernel.org,vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-303836-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 39EF15F279E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 28 May 2026 09:54:39 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Wed, May 27, 2026 at 06:41:28PM +0100, Jonathan Cameron wrote:
> > On Mon, 25 May 2026 18:01:41 +0100
> > Conor Dooley <conor@kernel.org> wrote:
> >   
> > > Jonathan,
> > > 
> > > Here's an example of the sort of stuff it complains about on every
> > > iteration.
> > >   
> > Thanks. +cc linux-iio@vger.kernel.org
> >   
> > > On Mon, May 25, 2026 at 11:11:44AM +0000, sashiko-bot@kernel.org wrote:  
> > > > Thank you for your contribution! Sashiko AI review found 2 potential issue(s) to consider:
> > > > - [Medium] The `dvdd-supply` property is utilized by the HX710B and mentioned in the commit message, but it is not enforced as a required property for the new compatible or included in the example.  
> > Yup. This stuff needs fixing.
> >   
> > > > - [Low] The `if` condition for the `avia,hx710b` compatible incorrectly uses `const` instead of `contains: const`, causing schema validation to always fail for HX710B nodes.  
> > 
> > This one I'm not sure on. Is it right?  I tested by hacking
> > the example to have a supply it shouldn't and the schema validation failed
> > as expected making me think this is a false positive.
> > I have zero natural feel for yaml so no idea :)  
> 
> It's not the common pattern, but it does work.
> IIRC the difference between it and "contains: const: ..." is that it doesn't
> apply the condition when the compatible is used as a fallback.
> 
Makes sense. Given we may have fallbacks in future, it would be
good to use contains version.

Jonathan


