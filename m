Return-Path: <devicetree+bounces-272806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MeGADaYrmmBGgIAu9opvQ
	(envelope-from <devicetree+bounces-272806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:51:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8152E2368C4
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89295302C76D
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 09:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4736437AA89;
	Mon,  9 Mar 2026 09:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJ1cV+Nv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21561362141;
	Mon,  9 Mar 2026 09:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773049816; cv=none; b=THk9tThwFqe2tgnutNfe6Z8YtaDwUI+16Fmoc9kv33oFQ+Mj9RjNMSHwB0HxOywll4bjXsXaaGhfnnq9Jlhv48tHWka6ZYsE6JhtNpNAGAQwUUTbpgsrxhp4vJtrjOmN9S4OnR71vd8xWy2JkWdat3iC+w78VnnloVULnMyoxzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773049816; c=relaxed/simple;
	bh=qF+rTpY9M550oe79ajHmHXLP3gxU4cwesDY/G31jnuk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O5+x8xaOVJNf+NN0c825efxE4PFtJKYZAoTJ0utV1uDM+t0Z+AN9CibjgjMXDgqpYn2KTKma3icvoa3uTjEaeWplWrxoDEveT49i2qIjYkfQ+083vxrBQ0Xbkf17O8rqO/d6yVP/HIoeaEwNVcWWT9d86CgjFPCBwLO/V3RBl9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJ1cV+Nv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6207BC4CEF7;
	Mon,  9 Mar 2026 09:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773049815;
	bh=qF+rTpY9M550oe79ajHmHXLP3gxU4cwesDY/G31jnuk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fJ1cV+Nvi9Fq6ynT/+6wAfyVweApjoImNgvtibGNGImu/lwJeDwf8IPpbisJtQJJm
	 y+LrfVt43dJBVqdIoUuJJQGmCLKGqgv4IOffY8mNPNdJjBBFuZgIIxbYifNlfzndnj
	 IFmPMy42BLih4CIkgJqbKg2JtAha6wmkLMqh6u/9I0Gl81KR3yGYkG84OYRP4Y1qQ9
	 9FxdYaw2zgIz6DzEb8C4cmXYfETLQNOrAAnOmv1e5TNeiPqMsArqw+dQ6sqnd01OrM
	 0iqtyAJwpZo2f3YP8PL4K4rdEVk7pSpy0f4nHMkeTlR0+oV27T6KaTm+S6DVK28tb7
	 5PgfYi+jcNkQg==
Date: Mon, 9 Mar 2026 09:50:09 +0000
From: Lee Jones <lee@kernel.org>
To: Yixun Lan <dlan@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Alex Elder <elder@riscstar.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Guodong Xu <guodong@riscstar.com>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v4 1/3] dt-bindings: mfd: spacemit,p1: Add
 individual regulator supply properties
Message-ID: <20260309095009.GR183676@google.com>
References: <20260206-spacemit-p1-v4-1-8f695d93811e@riscstar.com>
 <177280476778.1042627.3296790673262334325.b4-ty@kernel.org>
 <20260306223958-GKB302167@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260306223958-GKB302167@kernel.org>
X-Rspamd-Queue-Id: 8152E2368C4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272806-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,riscstar.com,linux.spacemit.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Sat, 07 Mar 2026, Yixun Lan wrote:

> Hi Jones,
> 
> On 13:46 Fri 06 Mar     , Lee Jones wrote:
> > On Fri, 06 Feb 2026 10:32:02 +0800, Guodong Xu wrote:
> > > Add supply properties that match the P1 PMIC's actual hardware topology
> > > where each buck converter has its own VIN pin and LDO groups share
> > > common input pins. Supply names are defined according to the pinout
> > > names in the P1 datasheet.
> > > 
> > > The existing "vin-supply" is dropped from the binding document as the
> > > updated spacemit P1 driver no longer parses it. Only the per-rail names
> > > ("vin1-supply", "vin2-supply", ...) are supported.
> > > 
> > > [...]
> > 
> > Applied, thanks!
> > 
> > [1/3] dt-bindings: mfd: spacemit,p1: Add individual regulator supply properties
> >       commit: e13ebb4cfcff4399a34c3a89c493020899a431f7
> > 
> Not fure if this will cause a conflict, the patch has already been merged
> by Mark, see
> 
> https://lore.kernel.org/r/177204643911.168523.3724548692200647978.b4-ty@kernel.org/

*facepalm*

-- 
Lee Jones [李琼斯]

