Return-Path: <devicetree+bounces-282607-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PUxJC6oymmx+gUAu9opvQ
	(envelope-from <devicetree+bounces-282607-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 18:43:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1272A35EF5C
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 18:43:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80AB4301ABB1
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 16:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D99B387362;
	Mon, 30 Mar 2026 16:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="EEbsXo7I"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70A5375ADF;
	Mon, 30 Mar 2026 16:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774888897; cv=none; b=pt4N/gsRV9k1UEb8rHBjEioZvbcMmW99Vv74iNVI/WKDusQs1uykbTzP6qOOMtZOu25KrR+vm4fAF9XJEgaaIA/5wg+iymyZU8qSh8EvUA7XDitdWaiAGM2AXnrzI323myWXvzZ5P4PiZK9hGAonWaUep+YwKaDZPB/zyYd40VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774888897; c=relaxed/simple;
	bh=5fyqNjqjO3qaNtOgQYGUDLgdRVsArGmIT6Rwp0lpqcA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=o6cgArwlJBqW/WeKcH7WtLVzw/FgWQRKL/5fqtAi/sGbE1FvkUw3dGJFrQYa/0Q8N4fkBzuBBZoPpOFG/HoxMYch/n59UM6Dvsds/iAR5jrqAeYE9hh9hu1YUC4zPCNu1RVZTpFesCSMx7AJU5VgP7K+1D4/K9vCqSQ9PiugSj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=EEbsXo7I; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 5715D1A308C;
	Mon, 30 Mar 2026 16:41:34 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2CD085FFA8;
	Mon, 30 Mar 2026 16:41:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CDB751045078F;
	Mon, 30 Mar 2026 18:41:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774888893; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Iqkys6x53PzPsaice1LCNan4YUdfM5+iaXQVpc7VwNs=;
	b=EEbsXo7IoLXedxIYT/PUHpkA+dP0+X/ik/NY7FOGlI+LWi3C0jc/kXJ0CFLESttUUZkdaG
	8WlhtFXWdDRXjVo5RQ0GSik1wpo/Ps+Qo8RgoVSi73EFdF2vFSnBpgmK6D59LH85iKCnu6
	PWDzcwfYd/nI/vX88aaRAoftBIR/RKd0bU+WwYHhv/TguWEBQx1u+0S0ZdRS3byZrPZB49
	aVoT+FW5d69grX2owJCnBdcqIZXGWsFe9UAUJPnoyEvvEJ5TGNZ6PimgC+iRrmDSGNfWzw
	w/Z/uRMLtO0bodOEKDKKmu9iFBIm/lrBjo4SxJYe8fWlduRu9XieW3lLZfOenA==
Date: Mon, 30 Mar 2026 18:41:28 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Saravana Kannan <saravanak@kernel.org>, Jaroslav
 Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christophe Leroy
 <christophe.leroy@csgroup.eu>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 0/4] ASoC: Add support for GPIOs driven amplifiers
Message-ID: <20260330184128.68a4e779@bootlin.com>
In-Reply-To: <27e23c7b-4aca-41d2-96b8-df02c52e8121@sirena.org.uk>
References: <20260330101610.57942-1-herve.codina@bootlin.com>
	<4daaa17d-5673-4efa-92ce-4f2ce87eb812@sirena.org.uk>
	<20260330173944.3fdc27ec@bootlin.com>
	<27e23c7b-4aca-41d2-96b8-df02c52e8121@sirena.org.uk>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,perex.cz,suse.com,vger.kernel.org,csgroup.eu,bootlin.com];
	TAGGED_FROM(0.00)[bounces-282607-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1272A35EF5C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 30 Mar 2026 16:48:54 +0100
Mark Brown <broonie@kernel.org> wrote:

> On Mon, Mar 30, 2026 at 05:39:44PM +0200, Herve Codina wrote:
> > Mark Brown <broonie@kernel.org> wrote:  
> 
> > > This sounds a lot like simple-amplifier.c?  
> 
> > The gpio driven amplifier proposed is more generic and can handle
> > more complex design. I.e. op-amp + resistor and/or line (mute,
> > bypass) switching. Hardwares handled by this driver are a superset
> > of just dio2125 and so simple-amplifier.c.  
> 
> > IMHO, it makes sense to have a specific driver for those kind
> > of hardware design.  
> 
> Right, and if it's a superset it feels like it should all be one driver
> rather than two separate ones.

Also, it is worth noting that simple-amplifier.c considered a stereo
amplifier (left + right).

Considering the two op-amp available in dio2125 as just two op-amp used
in two separated mono channel with additional component to switch related
to resistors (independant switching for each channel) means that almost
everything proposed in audio-gpio-amp have to be duplicated (gain, mute,
bypass per channel) instead of just instantiate two audio-gpio-amps.

On the other hand, there is no reason to handle a stereo component in
audio-gpio-amp. Further more with the hardware I have handling a stereo
component doesn't make sense. Indeed, I only have independent mono lines
with their own resistor switched amplification circuitry.

I could merge everything in one .c file but only a few part of source code
will be common to simple-amplifier and audio-gpio-amp. IMHO the resulting
merged code will look like two different drivers merged in one .c file.

Best regards,
Hervé

