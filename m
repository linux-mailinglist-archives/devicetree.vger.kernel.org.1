Return-Path: <devicetree+bounces-274318-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHZ9JOO/sWkwFAAAu9opvQ
	(envelope-from <devicetree+bounces-274318-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:17:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 080732692E7
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:17:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 04F9B300A4F3
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28A262F9984;
	Wed, 11 Mar 2026 19:17:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBFBD282F3D
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773256673; cv=none; b=cmt98mn5tIamBJEiQZmOPEhwOL1z3b1qzrEtRo4eX/GSBmF9P15C0yt5WpEgJW3j543KMTCQxJpukRKf79qG0qz8nKnooHdsGb8E+7iU9XvYwadqh+AzZOqQ2nAuSv5kJPGNHqefDUI8WohDC0qOphJEivCzV+xW6GSyHNZ95LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773256673; c=relaxed/simple;
	bh=6fLsCJLKgDFyfVuqRRD2hds+dSfryI9sSW7c+K2eDDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q2hZ2aRLw5e2ZD4liDd/gqscH/ZcfDyr53rbQx3lgVJM0ovYGt4KMp8gXuorbwbjupB9fKDiwC3pdp2BUow8tIRuSpLbiVoD+lg3m3tcUNPvuMz7efiaJ3g6azXzR7T5ZZwVqUdWwrUzvWHkUhKyigeP7Ir4/lF3IS0Obn7HMxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C5CC2309
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:17:45 -0700 (PDT)
Received: from [192.168.0.1] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 091323F694
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:17:50 -0700 (PDT)
Date: Wed, 11 Mar 2026 19:15:33 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Conor Dooley <conor@kernel.org>
Cc: Cunyuan Liu <cunyuan.liu@cixtech.com>,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	neil.armstrong@linaro.org, heiko@sntech.de, marex@nabladev.com,
	dev@kael-k.io, prabhakar.mahadev-lad.rj@bp.renesas.com,
	andre.przywara@arm.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Arm Technology
 (China) Co., Ltd.
Message-ID: <abG_VYCC8zpvjmlw@e142607>
References: <20260311055506.12023-1-cunyuan.liu@cixtech.com>
 <20260311055506.12023-2-cunyuan.liu@cixtech.com>
 <20260311-playful-unwritten-95530cbd5206@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311-playful-unwritten-95530cbd5206@spud>
X-Spamd-Result: default: False [0.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274318-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[cixtech.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,sntech.de,nabladev.com,kael-k.io,bp.renesas.com,arm.com,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liviu.dudau@arm.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,armchina.com:url]
X-Rspamd-Queue-Id: 080732692E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 06:42:23PM +0000, Conor Dooley wrote:
> On Wed, Mar 11, 2026 at 01:55:04PM +0800, Cunyuan Liu wrote:
> > Add "armchina" vendor prefix for Arm Technology (China) Co., Ltd.
> 
> Is this not a subsidiary of arm, that should just use the arm prefix?

It is more complicated than that. For what the kernel is interested in
they should be treated as a separate entity as their products do not
carry automatic compatibility with arm's ones.

Best regards,
Liviu

> 
> > 
> > Link: https://www.armchina.com/
> > 
> > Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index ee7fd3cfe203..c7ca7f43925b 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -172,6 +172,8 @@ patternProperties:
> >      description: ARM Ltd.
> >    "^armadeus,.*":
> >      description: ARMadeus Systems SARL
> > +  "^armchina,.*":
> > +    description: Arm Technology (China) Co., Ltd.
> >    "^armsom,.*":
> >      description: ArmSoM Technology Co., Ltd.
> >    "^arrow,.*":
> > -- 
> > 2.53.0
> > 



-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

