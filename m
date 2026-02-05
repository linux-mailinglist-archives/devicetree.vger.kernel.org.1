Return-Path: <devicetree+bounces-263048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YB2CMqaohGmI3wMAu9opvQ
	(envelope-from <devicetree+bounces-263048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:26:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E5AF3EC1
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 15:26:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A8D1130041D5
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 14:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EA693EFD3C;
	Thu,  5 Feb 2026 14:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2J4d+8d"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B02D2AF1D;
	Thu,  5 Feb 2026 14:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770301603; cv=none; b=mka1/7tt0l2FVrfFxmftJWgwulqOm5LRsH4LBXQCGL5BVhF3iInNI+ZY2NJgorMRy9PLTg3JZEVwOI6z9WJJB8huD+4SWvYL4x0tA3K2MEfSiWueZi6ChrI4tEgvyUZojJTKgGIFDQPgR3CoA+d3U1bBWW8AXrpiFOHgHRskbOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770301603; c=relaxed/simple;
	bh=hmGTxmhf2yhUyjpwEbkT9YrgxVbfiFkHG7RA52lTQ74=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LniCfAqlO5GDClFlwkgNuYfbcUtkxjWY6a9J9nLpZ8RUU/smZpGmGAUnB82/gQ1xfZKCS6cFzh+AiPRX9mvvRhv26j2nxDZVaxWHe+8CTqCbhJ3tahfRoRn00ls+DsBiztNJQacw6j8eRW7tuLSnTowC9/cnY6R1gDUP05dF3XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2J4d+8d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E753C4CEF7;
	Thu,  5 Feb 2026 14:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770301603;
	bh=hmGTxmhf2yhUyjpwEbkT9YrgxVbfiFkHG7RA52lTQ74=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R2J4d+8d/kLtjWX81Pu/kl8qs396W/eqbqQin8NNtRJZler91/EuBlbEd+5wTySuh
	 dq4IUMj6X409mZLHA6t1mBcmet2KJmBYTYF3GDLNqN8PfpbFejeNisMakCS3YvBsii
	 4HXhM1q6DtTk/LXrG4qM27aU4bfunQIuBdoMOI0tXJ1lz+S6uMYJrRNWhzFj6/880f
	 gOHNHx64o3Tmt/rO81i4sBkGyDFAniIB5qlGQ2JIpF0mwbmvhbBBOQWB4c0fvRFN0/
	 PB9OEJfN1TIFxHTPzd7Y8zeRQHJwQEcyPQWWNNlocbobqqWxwoe21OGBeqRm33aftU
	 9sXZqYJautIiQ==
Date: Thu, 5 Feb 2026 14:26:37 +0000
From: Sudeep Holla <sudeep.holla@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Debbie Horsfall <debbie.horsfall@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Zena CSS compatibility
Message-ID: <20260205-marigold-nautilus-of-defense-9da91f@sudeepholla>
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
 <20260123-zena-css-v1-1-34adb95cdf89@arm.com>
 <762a8e34-e401-4b6c-ba73-35cfffcba4b2@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <762a8e34-e401-4b6c-ba73-35cfffcba4b2@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263048-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:url,arm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 75E5AF3EC1
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 01:29:18PM +0100, Krzysztof Kozlowski wrote:
> On 23/01/2026 18:37, Debbie Horsfall wrote:
> > Add compatibility to Arm Zena CSS Fixed Virtual Platform [1].
> > 
> > [1] https://www.arm.com/products/automotive/compute-subsystems/zena
> > 
> > Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
> > ---
> >  .../devicetree/bindings/arm/arm,zena-css.yaml      | 31 ++++++++++++++++++++++
> >  MAINTAINERS                                        |  5 ++++
> >  2 files changed, 36 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/arm,zena-css.yaml b/Documentation/devicetree/bindings/arm/arm,zena-css.yaml
> > new file mode 100644
> > index 000000000000..42699b4db41e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/arm,zena-css.yaml
> 
> This should really go to one YAML file for most of FVP from ARM.
> 

Fair point, we have existing FVPs in [1]. We can move this there as well
but if it becomes too much or if we can get it more organised based on
some category in the future, we can take it up then. For now, I am happy
to shove it in [1].

-- 
Regards,
Sudeep

[1] Documentation/devicetree/bindings/arm/arm,vexpress-juno.yaml

