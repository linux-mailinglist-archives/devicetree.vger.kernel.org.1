Return-Path: <devicetree+bounces-309043-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1ibKL8EUKGp49gIAu9opvQ
	(envelope-from <devicetree+bounces-309043-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:27:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D276608D8
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 15:27:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BHyWudfK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309043-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309043-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BC2DF3016CE5
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 13:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A024B2DC357;
	Tue,  9 Jun 2026 13:25:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA3729C327;
	Tue,  9 Jun 2026 13:25:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781011524; cv=none; b=sPJ/VHXHPtCOY6jc6Npe06jS9xzEBB0SeRNMmcDzI3O40NlDIOA1tGmHJ1vNnNOYC+DFuc5XhUSfG4YB0NbhlG5XBbFRYHoQYs24ke1UK2odJ4yb3JNhoXSps0axRi64MAt8z+xp0YAW4lmrPyl1xFsIic4KB1J5l/IuIhpYaT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781011524; c=relaxed/simple;
	bh=9jfMt2cOOb2Vo5RMofKtp040Q1Gf/YUkYnkvwht2/aA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MEpxCtqmAxSZDwE8slT24cUXE73dnTvcISAfecmqvgSMdRXX0ZFC5QMID5SQJ+Kb9tCujlBRBS1wmj2Vx4IQlxF5HVpAiOJpqdWSVXWPjeDggMn8ZS88VDfyhAma9WwkAPro8+RvwwzBxqrT1TIgmcYGQmpPdJ95Tr3BdYvr72A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHyWudfK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABFA21F00893;
	Tue,  9 Jun 2026 13:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781011523;
	bh=B6TkRhG5+Ds3utEFEpay7wCt0CilVZNJBgxZkSf2JNI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BHyWudfKEQ5HKfEsW28NY7tSb9PYXVdivTFpunDHbLxVPSIxiOh4a8JONaHdlM7g6
	 8bE5kARvXLX99UKuBnXFEisOYBHBiC9WqMFwIYK8NSYFvEB35Yl5/2AFdljZbBorUC
	 JSWNpU1Yhbckk8uPtaRGcrPdmIKr+KALTvVWc7HeQeKqY5Belz4JRGQ9rO4FWRGDml
	 W+z2u6CABSxTR66AJrRulk6qt3phnOwtbnp5CXDggv3el7orB0ZrrKLAV+qdZjuBp3
	 /gO13JdV3Y0kHmUX0VzxB/S9bSAQtatmhk22TBFoac5C+wgMn6WV6dlpX0TuZeK0Iz
	 mmQAUy5jsS11g==
Date: Tue, 9 Jun 2026 13:25:20 +0000
From: Yixun Lan <dlan@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: soc@kernel.org, Arnd Bergmann <arnd@arndb.de>, spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [GIT PULL] RISC-V SpacemiT Devicetrees for v7.2
Message-ID: <20260609132520-GKE3727415@kernel.org>
References: <20260602070257-KYC5031219@kernel.org>
 <20260609-pompous-imposing-dragon-fc18cb@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260609-pompous-imposing-dragon-fc18cb@quoll>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309043-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:soc@kernel.org,m:arnd@arndb.de,m:spacemit@lists.linux.dev,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 47D276608D8

Hi Krzysztof, 

On 14:00 Tue 09 Jun     , Krzysztof Kozlowski wrote:
> On Tue, Jun 02, 2026 at 07:10:07AM +0000, Yixun Lan wrote:
> > Hi SoC Maintainers,
> > 
> >    Please pull SpacemiT's DeviceTree changes for v7.2
> > 
> > Yixun Lan
> > 
> > The following changes since commit 254f49634ee16a731174d2ae34bc50bd5f45e731:
> > 
> >   Linux 7.1-rc1 (2026-04-26 14:19:00 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   https://github.com/spacemit-com/linux spacemit-dt-for-7.2-1
> 
> Please switch to kernel.org repo. Github is not really a trusted place
> and you have kernel.org account, so not sure why Github is still there.
> 
Ok, thanks for the reminder, I could do the switch in next merge window

For reason why I still use Github, mainly because I got kernel.org account
after taking the maintainer role, then never change the repo address..

> > 
> > for you to fetch changes up to 793cc54475b49b5b558902b5c13e4bfe66530a50:
> > 
> >   riscv: dts: spacemit: enable PMIC on OrangePi R2S (2026-06-01 06:32:42 +0000)
> > 
> > ----------------------------------------------------------------
> > RISC-V SpacemiT DT changes for 7.2
> 
> Thanks, applied
> 
Thank you!

-- 
Yixun Lan (dlan)

