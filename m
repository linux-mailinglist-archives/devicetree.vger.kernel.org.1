Return-Path: <devicetree+bounces-298495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNAYNwhdB2qw0QIAu9opvQ
	(envelope-from <devicetree+bounces-298495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:51:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E98F65559F0
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:51:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D852E300C7C0
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 17:29:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 514353DA7C5;
	Fri, 15 May 2026 17:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJ69fcRQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E141380FEA;
	Fri, 15 May 2026 17:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778866156; cv=none; b=LcW0NZ6Tuca7OvwymV0fYxXMJNa42nAAQ9gQhP0MXFqXdyknIROIP5AQzw9nUAHolYf+wJKHOlTfgFAtPMP5eQvLTZ5AJlZmaNazsDScZdaaoLt2ww0DnaED7KoDSqSx4NsJg2i+gtZIK9kP5jkqMQllmz1Y2yDtWCuJ6dPYhmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778866156; c=relaxed/simple;
	bh=PVkJY/XpTzzKIN1Hlka46Dvp0HqOX6qjUH1/igI/jpI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KOFwhsn2uOI/lf6FN2x+h9KRtnkctReP1oQKgJC66Xb1tx+3+vQmVFUFUnTZixZQ6kbjTgvHwc/moLM6W7j4RYQGCtdqZWbk7v7w4UN6JOVDJGBKx147AkJzzIqf6JyawWtTvKm2g0p5znx5A8XZ/jBjfcSKBFTyZkacSmtLmOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJ69fcRQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAC61C2BCB0;
	Fri, 15 May 2026 17:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778866156;
	bh=PVkJY/XpTzzKIN1Hlka46Dvp0HqOX6qjUH1/igI/jpI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VJ69fcRQbsZfCgJupRKsqTTEttKLRSUh1I8lwUjOEDlzRx1ZiiPEmABG/bQYENvTp
	 7NDAsBpiaITiwCHpZuUPUmDLibogu0mLbx1di436fJp1jPNSOkMWgpeQYsh2nLNVrn
	 ek8agfC+HeVKwsgbuYhXJGhuGuzIgiwg+YwytrcdkRUg1ZxYHZ1OCz7qzAuKuuqtkG
	 rLsa/nhlF25sxjREHTllqF55lnmd4jnbtI/2urmarjzxj5bYJ5YrrILE3ce4H00Kcs
	 xUBiIlrxruI3fpWBd1srOhyzxc0IBNEkdtFEBcRCub5gcHf+XVsMEf42k9TtCORB5V
	 H48wCk5BEi1lA==
Date: Fri, 15 May 2026 18:29:11 +0100
From: Conor Dooley <conor@kernel.org>
To: marius.cristea@microchip.com
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, broonie@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: iio: adc: add support for PAC1944
Message-ID: <20260515-mystified-cement-9ad0bce14868@spud>
References: <20260515092946.10791-1-marius.cristea@microchip.com>
 <20260515092946.10791-2-marius.cristea@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="W+GcyKzunHDgIQBB"
Content-Disposition: inline
In-Reply-To: <20260515092946.10791-2-marius.cristea@microchip.com>
X-Rspamd-Queue-Id: E98F65559F0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298495-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[12];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Action: no action


--W+GcyKzunHDgIQBB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 15, 2026 at 12:29:45PM +0300, marius.cristea@microchip.com wrote:
> +
> +      microchip,accumulation-mode:
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        description:
> +          The Hardware Accumulator may be used to accumulate VPOWER or VSENSE
> +          values for any channel. By setting the accumulator for a channel
> +          to accumulate the VPOWER values gives a measure of accumulated power
> +          over a time period, which is equivalent to energy. Setting the
> +          accumulator for a channel to accumulate VSENSE values gives a measure
> +          of accumulated current, which is equivalent to charge. This allows the
> +          accumulator to be used as a coulomb counter.
> +          This functionality needs to be setup once and must not be changed
> +          during the runtime, just in case the user wants to measure the charge
> +          or the energy consumed from board power up till the user has control
> +          or during a reboot of the system.
> +          The Hardware Accumulator could be configured to accumulate VPOWER
> +          or VSENSE
> +            <0>  -  Accumulator accumulates VPOWER (default)
> +            <1>  -  Accumulator accumulates VSENSE
> +        enum: [0, 1]
> +        default: 0

I think you should make this a string property, 0/1 don't mean anything
here, whereas "vpower" and "vsense" would be very clear.

Otherwise, this looks okay to me I think, other than
> +  - if:
> +      required:
> +        - slow-gpios
> +    then:
> +      properties:
> +        interrupts:
> +          maxItems: 1
> +        interrupt-names:
> +          oneOf:
> +            - items:
> +                - const: alert2

this, which shouldn't need the "oneOf" at all.

--W+GcyKzunHDgIQBB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagdX5wAKCRB4tDGHoIJi
0t1yAP9j4miHXmIEl6Cj02YJk4uFLx4YquEy1Aqmcs9fA9rF+gD/SAtKYnrMPSLB
OoNwGwJAS7Ts3MKEESNzoW0E4yPoEgQ=
=To6+
-----END PGP SIGNATURE-----

--W+GcyKzunHDgIQBB--

