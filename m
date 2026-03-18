Return-Path: <devicetree+bounces-277220-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJWAGAamummaaAIAu9opvQ
	(envelope-from <devicetree+bounces-277220-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:17:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6509D2BC0E0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:17:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 85FEF3008607
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205AA3D7D95;
	Wed, 18 Mar 2026 13:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1t6aZ4D"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833543D7D91;
	Wed, 18 Mar 2026 13:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773839870; cv=none; b=pd/9O+y1BnVNvsx3so0aLLWgUspYeViglxJ5Imcbp6aIy5gaxnQjbqdDu01FGKjpUhaK8vrp1TeV7E7C/jSVKNW9JB92+RoMpnTUK8IANO3Uhy+Wos83UgRRns6r1xiK/y2hm2NsIU4SpTMQEWcYHV2BjqvjjJD+iUi/a8o3xck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773839870; c=relaxed/simple;
	bh=NWoOHxrlHQBNsiY+UBVVePy1w1a1sjeoXf1OTtfhM7k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OPchI8gkxz83SnvteYgqJpX5aFHQooBs+2y5XwsbKsJqYu3X82pYrPRMKuozR2e/4PphessVQyuLM8udlfCwvtgsVQw+ZAVVEa0fN9K8//D0IE0XBBzn3khkKHVDpmyMAxCyugQ2H6svcLe6KqpzCe+VvSYaOyqGhXcCKNH6DNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1t6aZ4D; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 992B6C19421;
	Wed, 18 Mar 2026 13:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773839870;
	bh=NWoOHxrlHQBNsiY+UBVVePy1w1a1sjeoXf1OTtfhM7k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R1t6aZ4DV8idhy50Zvde4N76URkcYhAPWskzmGqXzZo4gJPa673NLgFrVAWL1PpS2
	 Jew1loWVXwaM2ZGlzwanp3fR5krtkDMdqqmAJPoylZl86TH7ec4ux3orzvfncRMyPh
	 s8FdopOgPYPiGQF0SrcvbOzAvCyzGVjmM5ytqMPa8AP5jbJs8p76ONUVs4r/T8K+ij
	 EM0JvYsC0cCBzIQcvc4i4M6dHQlQBCe1iAfvH4JG9kPyockIkv0tJwAQXzPGxusqF4
	 s2RciUDmH/ixJZ0JhcDq6s1y4zcnpzJuR0OVFa1kJa++9btEuOonLDa8tHc0i96SIu
	 Dn40kXyplPYqg==
Date: Wed, 18 Mar 2026 21:17:47 +0800
From: Yixun Lan <dlan@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Junzhong Pan <junzhong.pan@spacemit.com>,
	Guodong Xu <guodong@riscstar.com>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org, Inochi Amaoto <inochiama@gmail.com>
Subject: Re: [PATCH v3] reset: spacemit: k3: Decouple composite reset lines
Message-ID: <20260318131747-GKB488271@kernel.org>
References: <20260317-01-k3-reset-usb-pci-v3-1-e4b9a43c7d45@kernel.org>
 <3e9022faae3dc6f5066a1e7cc3752a0193a55bc9.camel@pengutronix.de>
 <20260318131043-GKA488271@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260318131043-GKA488271@kernel.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,spacemit.com,riscstar.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com];
	TAGGED_FROM(0.00)[bounces-277220-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6509D2BC0E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Philipp,

On 21:10 Wed 18 Mar     , Yixun Lan wrote:
> Hi Philipp,
> 
> On 13:39 Wed 18 Mar     , Philipp Zabel wrote:
> > On Di, 2026-03-17 at 02:36 +0000, Yixun Lan wrote:
> > > Instead of grouping several different reset lines into one composite
> > > reset, decouple them to individual ones which make it more aligned
> > > with underlying hardware. And for DWC USB driver, it will match well
> > > with the number of the reset property in the DT bindings.
> > > 
> > > The DWC3 USB host controller in K3 SoC has three reset lines - AHB, VCC,
> > > PHY. The PCIe controller also has three reset lines - DBI, Slave, Master.
> > > Also three reset lines each for UCIE and RCPU block.
> > > 
> > > As an agreement with maintainer, the reset IDs has been rearranged as
> > > contiguous number and pushed as a fix for the driver, and reason is that
> > > there isn't any consumer of reset driver so far,
> > 
> > Unfortunately that does not seem to be the case for all APMU resets.
> > A lore query for all changed IDs [1] yields a patch that adds ethernet
> > device nodes using RESET_APMU_EMAC[012] [2].
> > 
> Yes, although the ethernet use this ID, but I don't think we should worry
> about that, since the ethernet patch is still under review, and ideally it
> will be merged after this reordering patch, unless you disagree? and insist
> the RESET_APMU_EMAC should not be changed?
> 
To be precise, this reset patch will go in v7.0 as a bug fix, while the
ethernet DT patches target for next merge windown - v7.1 cycle

-- 
Yixun Lan (dlan)

