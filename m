Return-Path: <devicetree+bounces-280729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BH+K2k1xGkAxQQAu9opvQ
	(envelope-from <devicetree+bounces-280729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 20:20:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F48732B1FC
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 20:20:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 60A3B302630F
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 19:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8325A33065D;
	Wed, 25 Mar 2026 19:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9CSgDd7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6463112BA;
	Wed, 25 Mar 2026 19:20:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774466404; cv=none; b=LU+alAjcnSkKFa5WnJNlR0VJMu4xXLmLYgokuOMxii2fUEqib2ynzABc50jPbrfIjG/cR3aGO2brOZl9DpYL9jdP6Ir8HLib1XCDENnzBK92W5HA3DIlRMyj6Jwwa5hONbZV42sieN682fMsxHWvraYEFKf5j5UD2h3oZIEGZV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774466404; c=relaxed/simple;
	bh=Zl1Bigh/DCbVR86lNOoS3KQYGvxji4Hi8ZirFRVRDk8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d1dxxdTiEcxuiitJqTXpqfgwaiqxFvHwuUMdQ0z4/B/7kNgTboJcv5X8b9KGxu3+mZ+isoMU4JEkuaNj4qbvH+ssz21gmx8QZda1u4huL9VjyE/2LNDe9zFu8d4h3m+yBqhDfVfhJEJcpa8biqc+mXUYQ1KX+ME3N1ozYedk7Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9CSgDd7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AF20C4CEF7;
	Wed, 25 Mar 2026 19:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774466404;
	bh=Zl1Bigh/DCbVR86lNOoS3KQYGvxji4Hi8ZirFRVRDk8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=W9CSgDd7ovvPeSiwKq8Nt7ziqWF0GR5946Fz/ccE0bZp1+VtBktZIJ5/pAmww4AOD
	 oOKd7/fEOFOwhs/W1q+vvu4xlHhqaH9irXNHG5oQ9l48dM92n+Q7RirjStnj56Moxy
	 fR07PpyuCwTUxYslB69UadGdp5MyKlvSsBHVSz7oOfKhW11Hd/0m0PPl6UddVbAa+N
	 U88+A8TclTKYVRoxteAnfCaGXviNpw3TtpxHWcYEfap29Na1lO8zpt7iXaIgPlkMb+
	 RqUwCvdeYERXJa2EoyHEgfj4I6k+RgAjA/TcDW5t9wvJ1CzYjTnVO36oCodbkrjdjv
	 MgNFQ3fSNhD/Q==
Date: Wed, 25 Mar 2026 19:19:53 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Jonathan Cameron <jonathan.cameron@huawei.com>, Rodrigo Alencar via B4
 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>,
 rodrigo.alencar@analog.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, David Lechner <dlechner@baylibre.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: iio: amplifiers: ad8366: add
 adrf5702/3 support
Message-ID: <20260325191953.290a204f@jic23-huawei>
In-Reply-To: <20260325-possibly-deploy-3ff69076a6e9@spud>
References: <20260325-adrf570x-iio-support-v1-0-9a2685eb2e55@analog.com>
	<20260325-adrf570x-iio-support-v1-1-9a2685eb2e55@analog.com>
	<20260325124627.00006828@huawei.com>
	<20260325-possibly-deploy-3ff69076a6e9@spud>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280729-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1F48732B1FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026 18:13:45 +0000
Conor Dooley <conor@kernel.org> wrote:

> On Wed, Mar 25, 2026 at 12:46:27PM +0000, Jonathan Cameron wrote:
> > On Wed, 25 Mar 2026 11:12:02 +0000
> > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> >   
> > > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > > 
> > > Add compatible entries for ADRF5702 and ADRF5703 Digital Attenuators.  
> > 
> > Explain how they are different from the existing supported devices.
> > 
> > Something simple like the "Each device has its own gain range and step,
> > hence no fallback compatibles are used." that you had in the original patch
> > is what we need here.  
> 
> Which means that this is a v2 that doesn't say it is a v2, or explain
> what has changed?

I meant the original driver - which only landed recently and answered
the question of difference nicely.

This is adding more parts to that - but I believe is a v1.

J
> 
> >   
> > > 
> > > Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > > ---
> > >  Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml b/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
> > > index 2719de1166a1..065637ce33a5 100644
> > > --- a/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
> > > +++ b/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
> > > @@ -20,6 +20,8 @@ properties:
> > >        - adi,ad8366
> > >        - adi,ada4961
> > >        - adi,adl5240
> > > +      - adi,adrf5702
> > > +      - adi,adrf5703
> > >        - adi,adrf5720
> > >        - adi,adrf5730
> > >        - adi,adrf5731
> > > @@ -66,6 +68,8 @@ allOf:
> > >                anyOf:
> > >                  - const: adi,ad8366
> > >                  - const: adi,ada4961
> > > +                - const: adi,adrf5702
> > > +                - const: adi,adrf5703
> > >                  - const: adi,adrf5720
> > >                  - const: adi,adrf5730
> > >                  - const: adi,adrf5731
> > >   
> >   
> 
> pw-bot: changes-requested


