Return-Path: <devicetree+bounces-267105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qf4wDP+smWlvWAMAu9opvQ
	(envelope-from <devicetree+bounces-267105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 14:02:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0241116CDE2
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 14:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24467300AB0C
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 13:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DD6DE55C;
	Sat, 21 Feb 2026 13:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=abscue.de header.i=@abscue.de header.b="bLVlq1xo"
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326173EBF15;
	Sat, 21 Feb 2026 13:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771678970; cv=none; b=ZxRu3JgZAVIvAMe1AnbRi1uGkGi9pQiHO1JmS9rG4qp3h5aKpIaE8OG5htKvoqEp8LTwl6maD5ZrwvwfxsAu3LMBLU3gQ5JLtOXaUsflXZMdxsX+58jBB3edz7yIq1VsmSpmqnyr7TIm/pCF6OApFJ0zyt4JkfG1Uw9tpP+y7g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771678970; c=relaxed/simple;
	bh=wx0eRq++ol8ozeO7U1m0YPWmjqmaF0HgVfKlAf6yNq8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H/zZUuP05TXZElWoiizh0mETV07tTDeR8Y0MGoAIiId7CmI457JxIrNdzGPBf34XLNwCX8JntHqAIrMWux4hwecbv+reX9OJewzJBQg8JqsLT3Lw5cb6XRee4UN6PSuOVDiD1IW82oA8Z3byX18BjvroaJ0ptUi4VTNLs5M2wq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=fail (0-bit key) header.d=abscue.de header.i=@abscue.de header.b=bLVlq1xo reason="key not found in DNS"; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Date: Sat, 21 Feb 2026 14:02:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1771678966;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9AesSLY8VVsTepycBvPYCi00unG+x9TWHa4lZPMkHa0=;
	b=bLVlq1xox6BqgXB+NfZc46JRul6UWIRMaqa6c+1WmchdB+D6sxboMkoUjoiQG9FZVIx36u
	haEXfgFsfp5bLIWAkGwDu9lTj+Wu/GvYe3c0CGZMO4wmjMI4GG50wMhIDCc7J2EA0XHSbE
	Y47+H9prWxJg4gyDSweVczl1QNE+y7Qk4JmC19RY8msZbq+6HrMleX9onMHQLuEl+0jRbp
	zx8DkVTuh1sqNbXEMP+pQ1KsRt6l5Emajf4ZBqs8X8ruOVkUBorHW6Db3E2MftPR/wYJUZ
	OgFA3f21bvcW00oLQSgfHIT7CSB2eNB8nx1epmITwPD5tZrAY2DfJuUXdbDg9Q==
From: Otto =?iso-8859-1?Q?Pfl=FCger?= <otto.pflueger@abscue.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: regulator: Document Unisoc SC2730 PMIC
 bindings
Message-ID: <aZms8JbARbxmZDVS@abscue.de>
References: <20260220-sc2730-regulators-v1-0-3f2bbc9ecf14@abscue.de>
 <20260220-sc2730-regulators-v1-1-3f2bbc9ecf14@abscue.de>
 <20260221-crimson-beaver-of-discourse-7ef24d@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260221-crimson-beaver-of-discourse-7ef24d@quoll>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267105-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[abscue.de];
	RCVD_COUNT_THREE(0.00)[3];
	R_DKIM_PERMFAIL(0.00)[abscue.de:s=dkim];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[abscue.de:~];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.905];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,abscue.de:mid]
X-Rspamd-Queue-Id: 0241116CDE2
X-Rspamd-Action: no action

On Sat, Feb 21, 2026 at 11:52:55AM +0100, Krzysztof Kozlowski wrote:
> [...]
> > +properties:
> > +  compatible:
> > +    const: sprd,sc2730-regulator
> 
> Let's drop the compatible (which changes my comment on other patch as
> you can put only $ref in oneOf).

Sorry, I don't quite understand this part. It seems that you are
suggesting to change the top-level MFD bindings in the other patch to
look like this:

  regulators:
    type: object
    oneOf:
      - $ref: /schemas/regulator/sprd,sc2730-regulator.yaml#
      - $ref: /schemas/regulator/sprd,sc2731-regulator.yaml#

If that's the case, how should the regulator bindings for SC2730 be
distinguished from SC2731 without the compatible? Would it be fine to
keep the compatible here if I drop the additional if/then constraints in
the other patch?

