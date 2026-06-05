Return-Path: <devicetree+bounces-307427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i5tcIxLLImoIdwEAu9opvQ
	(envelope-from <devicetree+bounces-307427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:11:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5476486BF
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:11:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BHwsVi6E;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307427-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307427-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6636B301F5EE
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 13:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 634663B14C6;
	Fri,  5 Jun 2026 13:05:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4245C3B14DC;
	Fri,  5 Jun 2026 13:05:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780664701; cv=none; b=DNFe3Bwijsp1KAuEiEqdLL0nJkkSX9gUocn12nDHaTcYVPVRF4N+uYCNRQtA3yLNK1h9ZIZDfDTRuV1N+d3ZiUpfIB/qdRiaLv5Q/lOTzqOQPhJiVD1e9b9aazdN+UIegKURZBFwEqAT5/JS9Ch3oebx+4QvTVZzPo7leLBfFYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780664701; c=relaxed/simple;
	bh=nkc7/V12WCqgo4mWTYWr3EB1MNEbN4G+00YZj7MrCQc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZYFv1nGg9shPiNU99/9oXe8R9iR86u9ilSteRt4GalzT2QmwEnEh+Y49f1DAvKLitEno3op0Lq7TQ6APXs6oxKmyk6IfiCLJ6buEhi0wf9KalJ6D/lBpkLV+gK9VumcaUUwmHD7PZTso1m9hVly4QgBdYtN3peqkQBqAIo4BrWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHwsVi6E; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05FD71F00898;
	Fri,  5 Jun 2026 13:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780664699;
	bh=LmfcM+Szsu/Mr2EoU18oOGZQDuBSXg6hjYrOx2CQuzk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=BHwsVi6EmHTsAAuKfseFz/pa4Fom9zeQhCrx3rlG7IlbYr1y80VQp9Ec7WG3TeYCK
	 o8KLwdRDnenQw2xbjlgDkWnY46vGQm/ND71QbGDuXi0QTtn4uq+ZEBPYtzneFRfiZL
	 G0xugcjwhf6/dXdoslHHrG4IXpLbOS6Gjcgfn2sqkT2GUouMP/Ex3go+oPOho/K1Uk
	 nz7nU5MzKhrDQP/8suGzjuVL/b2qtubqMeovH7Y5Sn4ITCErwQQm8s1JVTzOc2qpg5
	 Zfv6v2a1jeVtCXgg3Jz06UEOqVQSbugkPKP3KStSWvvkMFoJqoHMW9j/QwKQwE+H8t
	 SOCeFac2CUFeA==
Date: Fri, 5 Jun 2026 14:04:49 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Herman van Hazendonk <github.com@herrie.org>, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, tomasborquez13@gmail.com, masneyb@onstation.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: iio: light: isl29018: add
 isil,cover-comp-gain
Message-ID: <20260605140449.1d7538ee@jic23-huawei>
In-Reply-To: <20260604-energy-lid-e7949164431a@spud>
References: <20260604100617.3486541-1-github.com@herrie.org>
	<20260604100617.3486541-3-github.com@herrie.org>
	<20260604-energy-lid-e7949164431a@spud>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307427-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:github.com@herrie.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tomasborquez13@gmail.com,m:masneyb@onstation.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[herrie.org,baylibre.com,analog.com,kernel.org,gmail.com,onstation.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA5476486BF

On Thu, 4 Jun 2026 18:01:08 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Thu, Jun 04, 2026 at 12:06:16PM +0200, Herman van Hazendonk wrote:
> > Document the new optional property that seeds the ISL29018 calibration
> > scale factor at boot from firmware, allowing boards with tinted cover
> > glass to ship with correct luminance readings without a userspace helper.
> > 
> > The value is a positive integer (minimum 1, maximum 65535) that is
> > multiplied with the raw lux reading.  Userspace can still override it
> > at runtime through in_illuminance0_calibscale.
> > 
> > Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> > ---
> >  .../devicetree/bindings/iio/light/isl29018.yaml     | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/light/isl29018.yaml b/Documentation/devicetree/bindings/iio/light/isl29018.yaml
> > index 0ea278b07d1c..92ea2742bbd3 100644
> > --- a/Documentation/devicetree/bindings/iio/light/isl29018.yaml
> > +++ b/Documentation/devicetree/bindings/iio/light/isl29018.yaml
> > @@ -34,6 +34,19 @@ properties:
> >    vcc-supply:
> >      description: Regulator that provides power to the sensor
> >  
> > +  isil,cover-comp-gain:
> > +    description: |
> > +      Multiplier applied to the ambient-light reading at startup to
> > +      compensate for optical loss in the board's cover glass. Boards
> > +      that mount the sensor under a tinted or coated window typically
> > +      need a value between a few and a few hundred.  

Is it useful to support decimal points on these values?  The userspace interface
does and you mention the 'right' answer might be only a few which means precision
at that range will be terrible - less of an issue if 100s!

Thanks

Jonathan



> 
> > The value seeds
> > +      in_illuminance0_calibscale, so it can still be retuned at
> > +      runtime through sysfs.  
> 
> Delete this, driver implementation stuff isn't relevant to the
> devicetree binding.
> 
> With that gone,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> pw-bot: changes-requested
> 
> Cheers,
> Conor.
> 
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    minimum: 1
> > +    maximum: 65535
> > +    default: 1
> > +
> >  required:
> >    - compatible
> >    - reg
> > -- 
> > 2.43.0
> >   


