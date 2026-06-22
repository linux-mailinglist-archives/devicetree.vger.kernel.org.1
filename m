Return-Path: <devicetree+bounces-314534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JjOYENp8OWrSuQcAu9opvQ
	(envelope-from <devicetree+bounces-314534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 20:20:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 226B16B1C4E
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 20:20:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=abscue.de header.s=dkim header.b=e03NtHiZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314534-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314534-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0FF5D302DFBE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 18:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C764344023;
	Mon, 22 Jun 2026 18:19:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB97E343D9D;
	Mon, 22 Jun 2026 18:19:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782152371; cv=none; b=Af2ifK0r5z/70iOKvynxAB0FOd7cOFC+x8CNXFbuCynkxMFTKs50gC2pHHOm1ubaAwzHj5p6Fm93eYA/fXrjIUOH0KDBxxkKYLCeKPSrQPsDdHtPzcZ+v5/otg1ZFL1Ri5v0tUXIRm6HMGTgAr4Pfto5Jw6MiwVjecbdk9Fo13Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782152371; c=relaxed/simple;
	bh=nXiCKbsaJaItCTXmWIbSmpRdyGPIk7cEq79I8X3ptU0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r0Szwq95iPTTHQNPuYPjra54qbfOfjE2d0ON49yuqcP83eaIKeqB/D3lZOzdEZvlAAm/4IQGQPpfGQDIG3DbjB5qHE1lZI6pWNZzusPy/0XilnTK/YSIQmWJfSd000Ahm3VKRyn922iNEtvdxosXS5mvGjrdPI8sfVt5XFdc6Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; dkim=pass (2048-bit key) header.d=abscue.de header.i=@abscue.de header.b=e03NtHiZ; arc=none smtp.client-ip=89.58.28.240
Date: Mon, 22 Jun 2026 20:18:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abscue.de; s=dkim;
	t=1782152360;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1G95fYnDzydZPfGc8Xl6vyD5f9DfuFmAy9/AoXmk77U=;
	b=e03NtHiZwithnwJVyfo18qRMJL3d+g3zf4qgiGFguE0/v4uyDOAuQEtEaaBZ3r5mD75DMa
	1PIFZLGEwUTpi+pmcHCxSCU/1E42q8iFLdWrM3KyTEmIYT+KN4XZ2YsjfNP6rpqzDlQ91R
	kN/zKPzKo7c9DyWSc7y7cIwNb9++WujiWM99rWK3bkrHTa9glu8jvvdELy7+ryn7p6gzh+
	21AMGSEKy6Gn0W/tV3fwWE6ED3DCOjFwox5W7Lx3y8MBCS9D8oaonUE3BxOI0ZI/AEJkdf
	6e/uDf43jHzjuwsp+eLpk1VHhokDb2reLlW80bqt+QzSIQDnFUjbzx67Ky70mQ==
From: Otto =?iso-8859-1?Q?Pfl=FCger?= <otto.pflueger@abscue.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v6 1/3] regulator: dt-bindings: Add Unisoc SC2730 PMIC
Message-ID: <ajl8YparXoIXL0wm@abscue.de>
References: <20260620-sc2730-regulators-v6-0-bbd2db395231@abscue.de>
 <20260620-sc2730-regulators-v6-1-bbd2db395231@abscue.de>
 <20260622-mindful-civet-of-refinement-02d3da@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260622-mindful-civet-of-refinement-02d3da@quoll>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[abscue.de:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:orsonzhai@gmail.com,m:baolin.wang@linux.alibaba.com,m:zhang.lyra@gmail.com,m:lee@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:conor@kernel.org,m:zhanglyra@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-314534-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_NA(0.00)[abscue.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[abscue.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[otto.pflueger@abscue.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org,oss.qualcomm.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,abscue.de:dkim,abscue.de:email,abscue.de:mid,abscue.de:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 226B16B1C4E

On Mon, Jun 22, 2026 at 09:29:20AM +0200, Krzysztof Kozlowski wrote:
> On Sat, Jun 20, 2026 at 10:54:00AM +0200, Otto Pflüger wrote:
> > Add bindings for the regulators found in the Spreadtrum/Unisoc SC2730
> > PMIC, used e.g. with the UMS512 and UMS9230 SoCs.
> > 
> > Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > ---
> >  .../bindings/regulator/sprd,sc2730-regulator.yaml  | 44 ++++++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> > 
> 
> Sashiko has good point - where is any user of this binding (through
> reference)? Without $ref, this won't match thus is a noop for validation.

For some reason, the patch adding the binding references from v3 of
this series was merged by Lee Jones. This means that a user exists now:
Documentation/devicetree/bindings/mfd/sprd,sc2731.yaml includes this
binding as one of the options.

Sashiko even sees that but the inconsistent omission of the compatible
property confuses it. The point about the lack of validation is correct,
but I was going to send a separate patch for that since it's more of an
MFD binding cleanup, whereas this series is mainly for the regulator
driver. Or should I add it here again?

Also, is it generally a rule now that the comatible is left out for MFD
child nodes, or is there a reason why this is only done for regulators?
Is this related to the (non-)existence of a reg property in the child?

Best regards,
Otto

