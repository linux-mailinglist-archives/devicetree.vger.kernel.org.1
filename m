Return-Path: <devicetree+bounces-260170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cN+RBQZweWmIxAEAu9opvQ
	(envelope-from <devicetree+bounces-260170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 03:10:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DCF9C284
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 03:10:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 118833013B7E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 02:10:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16C6D28689B;
	Wed, 28 Jan 2026 02:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s39sgDpC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F75286416;
	Wed, 28 Jan 2026 02:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769566202; cv=none; b=SxNJ9gJAtUEiGtFRDBLWX4J7ewIHOQlFx4bZu0wZ7tU1B4chW230gKoF0w28C5aEYoUds80x3B0kpbYpGb0lbzkPOPsMBHMJZNyNkB+BgSB/agq7sMdUYkWUav0qw6kxZ3ujdrcTieUwaPK2IzT0IpE1B2274mtF6lRDQ8RlfGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769566202; c=relaxed/simple;
	bh=c02Qz508Y2Kp0ercGgCth0mlpDxAua9YE3mNF8P84iE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YY++5s7FLyadBRvxCM0cxWNoFejPF7u1Uo8Y36lQ6vqG8HHc1ow/bjxmpl9191yQymL0t1LOL/wiKmscchAKIAUMNd4CZDQcZg9oCe3YGGH1hYScHwckefzjIrgdkkkV1V/J1wiYRw4dddfIMZ7TOtvIT2us1zSDY/3qJeQBI7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s39sgDpC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66A27C116C6;
	Wed, 28 Jan 2026 02:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769566201;
	bh=c02Qz508Y2Kp0ercGgCth0mlpDxAua9YE3mNF8P84iE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s39sgDpCJxAQVaNB6ctusy7+cRhKyyceDPVc3dVlv5yYt/w/BDtw6PWve3PEOs1Et
	 atHQmgK8rdyQU2nuP5MjaNvQhlZakW6d36ZDsNkaL79rrFsxxmt6gLJktJoXfRlrqV
	 yxZDfXJ1YO0w2Lbss2gU/ATO0e8NbzB0CqAR5CrlcNuQ6DvDk10E/uyD9IR0c7mZs+
	 kc6rmeHRvb24kVENij4iqKbMjiG27HP/8Z7sBaIKbRfnGpNuRExb2jgX5e4FzPAp5N
	 hekA7h0nkVa0cNq+OWUv2EEynHBU9X5EN+W8noLb1bsPcqsggxiSwBIzZ320rAqCWS
	 mnR2AlQzR6ZLQ==
Date: Tue, 27 Jan 2026 20:10:00 -0600
From: Rob Herring <robh@kernel.org>
To: Alexander Wilhelm <alexander.wilhelm@westermo.com>,
	Laurentiu Tudor <laurentiu.tudor@nxp.com>,
	Li Yang <leoyang.li@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: USB error on LS1046 platform
Message-ID: <20260128021000.GA3716747-robh@kernel.org>
References: <aXh1kjRoGrj0SAyU@FUE-ALEWI-WINX>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aXh1kjRoGrj0SAyU@FUE-ALEWI-WINX>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260170-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 77DCF9C284
X-Rspamd-Action: no action

+Laurentiu, Li

On Tue, Jan 27, 2026 at 09:21:38AM +0100, Alexander Wilhelm wrote:
> Hello developers,
> 
> I’m using an NXP LS1046A SoC with the integrated DWC3 USB controller in
> host mode. On Linux v5.5.167 my USB flash drive was detected and mountable.
> After upgrading to Linux v6.6.110 the USB flash drive is no longer
> recognized. If it is already plugged in during boot phase I get the
> following errors:
> 
>     xhci-hcd xhci-hcd.2.auto: Error while assigning device slot ID: Command Aborted
>     xhci-hcd xhci-hcd.2.auto: Max number of devices this xHCI host supports is 127
> 
> I have narrowed the issue down to the following commit:
> 
>     136975c33894e7b48a6007af0f4c25f423bbd1de
>     arm64: dts: ls1046a: make dma-coherent global to the SoC

It's best to send this to the author(s) of the commit.

Looks like it needs to be reverted or USB marked non-coherent. That's 
Shawn's responsibility to apply and the author to send a fix (unless 
you want to). The DT maintainers don't take .dts patches.

> 
> When I revert this commit, USB works perfectly on my system.
> 
> I have already asked on the `linux-usb` mailing list
> (https://lore.kernel.org/linux-usb/aTFr17xKxnWGG3vU@FUE-ALEWI-WINX/) and also
> forwarded the message to `linux-arm-kernel`, but I haven’t received any replies
> so far. Has anyone encountered this problem on the LS1046 or a similar platform?
> Any hints or experiences would be greatly appreciated.
> 
> 
> Best regards
> Alexander Wilhelm

