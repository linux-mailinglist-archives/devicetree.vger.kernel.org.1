Return-Path: <devicetree+bounces-301570-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAvUEKn4D2pDSAYAu9opvQ
	(envelope-from <devicetree+bounces-301570-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 08:33:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7CB5AF8A8
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 08:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84334301A70A
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 06:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5FE2DECA3;
	Fri, 22 May 2026 06:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b="ml1rLcHQ"
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6717359A6F;
	Fri, 22 May 2026 06:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779431580; cv=none; b=Vviu4efTOyXW1Y+t/jWp1Z4MNBotxzNl40SlXf82rxwSs4scMzmqbbq8h9/dZVtlK3LT9L9H5YKXcv1+PZTWpVnC3ZP59oRzkQH/isMwfoQKSoDcvX5mea1pCCq+wIi9jNa+phgewjCCwcvRslUZZkhBys5pJc8zTG8I4bz1Hng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779431580; c=relaxed/simple;
	bh=xGxqD3UFNYth77Dgca4ciBVjw+B1NYqBPSZgiAsFxps=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VAry3okW2h/h3v2E6Xh7L9VMD7C/3khlZBsLfIEOFlluKNSi+4kJ4Xem23NVyyModJuetIFj6iWRSidGfSF0okYP4q+IDOzKX1Ud8dUyZ/sn3OXJdgHfCVQae29zjFdOyPoqLZzRkLi58Y+DssQRYBj8hliSOUU0gSWCNe5kH4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b=ml1rLcHQ; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Date: Fri, 22 May 2026 08:32:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1779431575;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DuNCqvQk6TxtZkHmFkgGMkPs2osNMUjVJBRkcehceRM=;
	b=ml1rLcHQtqvWb7Wy172o/ttAYIDkfd53XDoaOCwPGgMT/FI9/1TCTuCJZy7gdJxS/1WRw8
	o7juwKFhKzd52PLC2fzSWm008Xe4doFjqM9tu8y+sEYTcc0e5D8lvA9oGUYeK1WtxAGFhF
	+LO0gy7ldkilOg2RZIKcrnlGpzkJ2X7Q4zOJH9qdMed1at89bABgm3PUHgD2PKAHVOH6Wa
	QQg0j0z4WVuY1q+eEX9/VacdugW01RH6oOoEZH5UKb1m+Bdv5ht37SZJaIcnDiKaBOEm+B
	iS+ifLbUN7NSmSdEvd7IeA77l9bYFKf3XoZ4Xcc4xFWgL/AISUSN9oCm0XJDbA==
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
Subject: Re: [PATCH v4 2/4] dt-bindings: mfd: sprd,sc2731: Include SC2730
 regulator bindings
Message-ID: <ag_4bYWlsrpBjx3p@abscue.de>
References: <20260521-sc2730-regulators-v4-0-1ac8a3b5ed82@abscue.de>
 <20260521-sc2730-regulators-v4-2-1ac8a3b5ed82@abscue.de>
 <20260522-sweet-magic-kelpie-d6daec@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260522-sweet-magic-kelpie-d6daec@quoll>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[abscue.de:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[abscue.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301570-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[abscue.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,abscue.de:mid,abscue.de:dkim]
X-Rspamd-Queue-Id: 8A7CB5AF8A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 22, 2026 at 08:28:59AM +0200, Krzysztof Kozlowski wrote:
> On Thu, May 21, 2026 at 06:17:07PM +0200, Otto Pflüger wrote:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: sprd,sc2731
> 
> And what about every other variant?

For sc2720, sc2721 and sc2723, the regulators should also be different,
but I'm not able to test anything with those PMICs. The original binding
was wrong.

> 
> > +    then:
> > +      properties:
> > +        regulators:
> > +          $ref: /schemas/regulator/sprd,sc2731-regulator.yaml#
> > +
> >  examples:
> >    - |
> >      #include <dt-bindings/gpio/gpio.h>
> > 
> > -- 
> > 2.51.0
> > 

