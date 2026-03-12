Return-Path: <devicetree+bounces-274678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NnWB33fsmncQQAAu9opvQ
	(envelope-from <devicetree+bounces-274678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:45:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8386F274CC3
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:45:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9C19B300B9DB
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D86E3DB626;
	Thu, 12 Mar 2026 15:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=hugovil.com header.i=@hugovil.com header.b="KIdjU6Bj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.hugovil.com (mail.hugovil.com [162.243.120.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90593C1979;
	Thu, 12 Mar 2026 15:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.243.120.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330296; cv=none; b=ZsohJc3lA2Zhwl3zshi0hKzCuQ8NKhwxQrVJtzPzinAG/Bzsp4BUpgTP9a4ZWx10WnIKfPbkTnvXyVq+q+dJNYzuHDhkGySt5UAG8F7HixycF+cW27khFapsCBT7aTUu+i4HCLKGBymrvqw+UKuOMRZwqeJQDqPPyd1Ik7ZQkjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330296; c=relaxed/simple;
	bh=UAbLGvwmHP4fIaEZG19JiHGTnYzXljt390psp6oOO8U=;
	h=Date:From:To:Cc:Subject:Message-Id:In-Reply-To:References:
	 Mime-Version:Content-Type; b=gy0kJ/A9gwASesGU+l+mD2hKTrszO7lyTMQ/PbSLViygaBoM1orhFg/Hm3UAE9sCrwy9gwyg3LzNDFlEPhrvCtQ8KCHVI+GDXqiRXdy6o3TBSQjDpUTU1lAx1EAlKFZjiDblTf0WzBq5xobcII0e5fbzy5LwVqDM89HcHRWFWL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com; spf=pass smtp.mailfrom=hugovil.com; dkim=fail (0-bit key) header.d=hugovil.com header.i=@hugovil.com header.b=KIdjU6Bj reason="key not found in DNS"; arc=none smtp.client-ip=162.243.120.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hugovil.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hugovil.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hugovil.com
	; s=default; h=Content-Transfer-Encoding:Mime-Version:Message-Id:Subject:Cc:
	To:From:Date:subject:date:message-id:reply-to;
	bh=F5qwJavBVWV92QiDrDH0xvkLoJ9dwrCz5qZjjPc0g9E=; b=KIdjU6BjZrTcnKue5AEEHNUND+
	YKAvDSMLR/2ccfbak/Pa7FUnAEyf4/sqXKJTX197jkN81KUcGBVp0bf/TyScvrp8iZweuWzT/EFYW
	9aIBUhGh1VMwNOL/2zloVVeP0Ue/xtjxHPoEKbexVUHjX8gOy7nFbuRb3VE06LM5OTwU=;
Received: from modemcable168.174-80-70.mc.videotron.ca ([70.80.174.168] helo=pettiford.lan)
	by mail.hugovil.com with esmtpa (Exim 4.98.2)
	(envelope-from <hugo@hugovil.com>)
	id 1w0iDC-0000000072H-0dJm;
	Thu, 12 Mar 2026 11:44:34 -0400
Date: Thu, 12 Mar 2026 11:44:33 -0400
From: Hugo Villeneuve <hugo@hugovil.com>
To: Rob Herring <robh@kernel.org>
Cc: robin@protonic.nl, andy@kernel.org, geert@linux-m68k.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.torokhov@gmail.com,
 hvilleneuve@dimonoff.com, mkorpershoek@kernel.org, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, lee@kernel.org,
 alexander.sverdlin@gmail.com, marek.vasut@gmail.com, akurz@blala.de,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v4 2/4] dt-bindings: input: add settling-time-us common
 property
Message-Id: <20260312114433.5432b94423d7caf3968658a1@hugovil.com>
In-Reply-To: <20260312150210.GA3121485-robh@kernel.org>
References: <20260305192101.2125660-1-hugo@hugovil.com>
	<20260305192101.2125660-3-hugo@hugovil.com>
	<20260312150210.GA3121485-robh@kernel.org>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam_score: -2.0
X-Spam_bar: --
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274678-lists,devicetree=lfdr.de];
	R_DKIM_PERMFAIL(0.00)[hugovil.com:s=default];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[hugovil.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[protonic.nl,kernel.org,linux-m68k.org,gmail.com,dimonoff.com,collabora.com,blala.de,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[hugovil.com:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hugo@hugovil.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.907];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,hugovil.com:mid]
X-Rspamd-Queue-Id: 8386F274CC3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Rob,

On Thu, 12 Mar 2026 10:02:10 -0500
Rob Herring <robh@kernel.org> wrote:

> On Thu, Mar 05, 2026 at 02:20:48PM -0500, Hugo Villeneuve wrote:
> > From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > 
> > Add common property that can be reused by other bindings.
> > 
> > Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> > ---
> > Note: a similar property is used by gpio-matrix-keypad.yaml:
> >   col-scan-delay-us
> > ---
> >  Documentation/devicetree/bindings/input/input.yaml | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/input/input.yaml b/Documentation/devicetree/bindings/input/input.yaml
> > index 502e0b7eb500a..14652d324e2ca 100644
> > --- a/Documentation/devicetree/bindings/input/input.yaml
> > +++ b/Documentation/devicetree/bindings/input/input.yaml
> > @@ -66,6 +66,14 @@ properties:
> >        reset automatically. Device with key pressed reset feature can specify
> >        this property.
> >  
> > +  settling-time-us:
> > +    description:
> > +      Delay, in microseconds, when activating an output line/col/row GPIO
> > +      before we can reliably read other input GPIOs that maybe affected by this
> > +      output. This can be the case for an output with a RC circuit that affects
> > +      ramp-up/down times.
> 
> Whether it is GPIOs or not depends on the implementation. Just drop 
> 'GPIO' and replace 'GPIOs' with 'lines'.

Ok, will do for V5.

Hugo

> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> 
> Rob
> 

