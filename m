Return-Path: <devicetree+bounces-287893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGxiEQPW4GlymgAAu9opvQ
	(envelope-from <devicetree+bounces-287893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 14:28:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EA740E242
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 14:28:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B5939304CE2D
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 12:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 558053B774A;
	Thu, 16 Apr 2026 12:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k38KH5gq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320C13B6C13;
	Thu, 16 Apr 2026 12:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776342329; cv=none; b=h8DYK/KSaE/qPhcNZadvjd1Zk5bcVDG8NlUIJ+pgBuqqFroKfTs4XI9m5NgyZNU8DPPBk+325SF1OmCoT7atEczcpA3GuAwSrA0s5b+YokkWDAavmC4vSf50KveDF1IDM0lCyJmDy3GJX7AdqznZ9S+nC8O8gqsNZxXZEXB8LVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776342329; c=relaxed/simple;
	bh=6+bhKxlhyP70s6qQtFL8x4iitk+Ytpo3TCuQoPIXt0o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hqyfwJAxlIGj2phpTo1erG6txt9k/T9KstDXY79eTzSvbLs9MkCFDDMZXbISJhJL3lU/LRxmWekWNXGptc178PVzich/6q0nm+Jxtwj2X/o4zrdAATEO8nrVuLPp6+sSTN/28m9FuX8hrB86OYDL9w3EN4Prp0wcJ1PAfLrU7dU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k38KH5gq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DD2BC2BCAF;
	Thu, 16 Apr 2026 12:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776342328;
	bh=6+bhKxlhyP70s6qQtFL8x4iitk+Ytpo3TCuQoPIXt0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k38KH5gqOnP6n131pbJu9czjOBIkqyufr/hm793QVcngxruaeefymllcOimP/h7mY
	 s02vcEuUh9+fGlDjehpzXsnGogJrWzFWOes8yZiFrxkDHQBeDxHirJ6iUGM1icJwy0
	 srdFVE7uYw+ccgNwgGL3T2qUeXxcYFrFPmV7SBcjmMa/HTMfdQAm+tLIOs4AL2SAHf
	 mNdqE8yNbY8iDgCEbzC0UjXFlnju8uHG6aXfBGYlU9WhBpuBPKgXawPE7xPBI3dOCw
	 cIdYaAlQ2eMsHjtgY0CP3Vdlm5E+bi29Y5hspUsz14X2bcyAqv4M0up2EVV7hRgYAW
	 ody2nzNTqLryw==
Date: Thu, 16 Apr 2026 07:25:26 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Swamil Jain <s-jain1@ti.com>
Cc: jyri.sarha@iki.fi, maarten.lankhorst@linux.intel.com, vigneshr@ti.com,
	praneeth@ti.com, krzk+dt@kernel.org, tzimmermann@suse.de,
	simona@ffwll.ch, devicetree@vger.kernel.org, airlied@gmail.com,
	linux-kernel@vger.kernel.org, mripard@kernel.org, devarsht@ti.com,
	tomi.valkeinen@ideasonboard.com, conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4] dt-bindings: display: ti, am65x-dss: Fix AM62L DSS
 reg and clock constraints
Message-ID: <177634232413.2771790.10894262514665978952.robh@kernel.org>
References: <20260415110409.2577633-1-s-jain1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260415110409.2577633-1-s-jain1@ti.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[iki.fi,linux.intel.com,ti.com,kernel.org,suse.de,ffwll.ch,vger.kernel.org,gmail.com,ideasonboard.com,lists.freedesktop.org];
	TAGGED_FROM(0.00)[bounces-287893-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:url,ti.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 36EA740E242
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 15 Apr 2026 16:34:09 +0530, Swamil Jain wrote:
> The AM62L DSS [1] support incorrectly used the same register and
> clock constraints as AM65x, but AM62L has a single video port
> 
> Fix this by adding conditional constraints that properly define the
> register regions and clocks for AM62L DSS (single video port) versus
> other AM65x variants (dual video port).
> 
> [1]: Section 12.7 (Display Subsystem and Peripherals)
> Link : https://www.ti.com/lit/pdf/sprujb4
> 
> Fixes: cb8d4323302c ("dt-bindings: display: ti,am65x-dss: Add support for AM62L DSS")
> Cc: stable@vger.kernel.org
> Signed-off-by: Swamil Jain <s-jain1@ti.com>
> ---
> Validated the changes with some examples:
> https://gist.github.com/swamiljain/79f30568c9ece89f5a20218f52647486
> 
> Changelog:
> v3->v4:
> - Add reg-names constraint
> - Re-order constraints to make it consistent with the properties order
> 
> Link to v3:
> https://lore.kernel.org/all/20260410105955.843868-1-s-jain1@ti.com/
> 
> v2->v3:
> - Reduce redundancy and use constraints suggested by maintainers
> - Remove blank line between the tags
> 
> Link to v2:
> https://lore.kernel.org/all/20260129150601.185882-1-s-jain1@ti.com/
> 
> v1->v2:
> - Remove oneOf from top level constraints, it makes bindings redundant
> - Remove minItems from top level constraints
> - "dma-coherent" property shouldn't be changed in v1 itself
> - Add description for reg-names, clock and clock-names
> - Add constraints specific to AM62L and for other SoCs within allOf
>   check
> 
> Link to v1:
> https://lore.kernel.org/all/20251224133150.2266524-1-s-jain1@ti.com/
> ---
>  .../bindings/display/ti/ti,am65x-dss.yaml     | 70 ++++++++++++++-----
>  1 file changed, 52 insertions(+), 18 deletions(-)
> 

Applied, thanks!


