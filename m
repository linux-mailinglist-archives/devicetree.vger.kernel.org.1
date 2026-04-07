Return-Path: <devicetree+bounces-285421-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACHfDoY01WnY2gcAu9opvQ
	(envelope-from <devicetree+bounces-285421-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:44:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C52433B1F41
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 18:44:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 450B530231FB
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 16:44:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BACE93CF693;
	Tue,  7 Apr 2026 16:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="i8dCHVSr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FC593B0AFB;
	Tue,  7 Apr 2026 16:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775580273; cv=none; b=nNx77FSHtFbggBfqbYtLwJLIxJ100ZYnr8PWjK9+SEcWcG5goY4fvstLLIDR1OJQ1SxuNv76S/zOJ7vgSiYUKmvoOGIs81GYC6tY9SLzOltWBjwWh1b9mGwnhNmp+NcXV9zEueZzfgqFzd3GkxczTEJ8CTSssJpLOtaEVs4oNOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775580273; c=relaxed/simple;
	bh=tzAHSt3LwUV+zUY7OFeTugp4DpaoHhCkfNf8sFWlEik=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Y4XdfAErM+xecxFaDXNLicSxZONvkQPwOkMbjItVdCSD26CZTHFEpjcBYa6X2F9YzNOwRYzrrxBvZF2wiwar+UhvXDiWQMmRCN9Mq2rSTZywSIcYuYTi5sUjnVBbLA1WPTJOyIW5y4x/UaQP8WRm0waXrA12QiWKd4PgW1v2Rxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=i8dCHVSr; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id DE06EC5B197;
	Tue,  7 Apr 2026 16:45:03 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0F472603C7;
	Tue,  7 Apr 2026 16:44:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0356210450232;
	Tue,  7 Apr 2026 18:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775580269; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=gYD2Gjc7rJAWjSj6Vd95CTKmwmb1Qo9EnEgV9KuScQY=;
	b=i8dCHVSrbdLIfTgUf0ATghhiCbAkPfZ+hg+HYZm1T7vRuPn9nM365iw//rxbJxn2IV3RrF
	y2iNelHa8JI+vIlW7Jw3pZyhDEzM+H3F7p5PGiHN0a1UhSBflZ62pV404P8nVeUHlPcI4o
	92Iu+P+e8uUjSAgUDe76x+jP06FxVi7N4d08wjFFEKM8waWBvCZP6XlrxG25V68Vx+oJD1
	azKI46CwinPIpbzPS9kdbj0eK+LWBTCsixWVbXZVS0mr5f+y0TKv43e4uXa1qGOyIOlkRK
	pmb8i37oacuj5bgYbOm2bhnHxELVahVJGqNVafD3sy76IQv3ZH47iSzt+m7Bog==
Date: Tue, 7 Apr 2026 18:44:23 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Cc: "David Gibson" <david@gibson.dropbear.id.au>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Ayush Singh" <ayush@beagleboard.org>, "Geert
 Uytterhoeven" <geert@linux-m68k.org>,
 <devicetree-compiler@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree-spec@vger.kernel.org>, "Hui Pu"
 <hui.pu@gehealthcare.com>, "Ian Ray" <ian.ray@gehealthcare.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 15/15] Introduce v18 dtb version
Message-ID: <20260407184423.3060f1cd@bootlin.com>
In-Reply-To: <DHHX3P5TS0D3.VWALCUNJ7LGL@bootlin.com>
References: <20260210173349.636766-1-herve.codina@bootlin.com>
	<20260210173349.636766-16-herve.codina@bootlin.com>
	<DHHX3P5TS0D3.VWALCUNJ7LGL@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-285421-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid]
X-Rspamd-Queue-Id: C52433B1F41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Luca,

On Wed, 01 Apr 2026 17:19:09 +0200
"Luca Ceresoli" <luca.ceresoli@bootlin.com> wrote:

> On Tue Feb 10, 2026 at 6:33 PM CET, Herve Codina wrote:
> > This v18 version will add support for
> >   - Structured tags.
> >     Those tags value definition will allow old libfdt, dtc and other
> >     tools to skip unknown tags if encountered in future dtb version.  
> 
> "old" seems to imply that versions released before today will be able to
> wkip unknown tags. I think this should be clarified along the lines of:
> 
>   libfdt, dtc and other tools implementing version v18 will be able to wkip
>   unknown tags in dtbs generated with later versions of dtc

Yes, I will add this clarification in the next iteration.

> 
> >   - dt_flags header field.
> >     For now this flag field is set to 0. It is a placeholder for future
> >     dtb version and could be used to store some dtb related information
> >     such as the kind of dtb.  
> 
> Is this intended for DT addons?
> 
> You may mention a realistiv use case here.

Intended, maybe not. Used by addons, yes, for sure.

What do you think if I add the following:
    For instance, the future addons format will use this field to
    clearly identify that the dtb is an addon dtb.

...
> >
> > Compared to previous version, it is worth noting that the dtb is not  
>                                                                ^
> 				                        "dtb version"
> 
> > downgrade for all modification but only when unknown tags are removed  
>   ^
>   downgraded for any
> 
> 
> > due a property modification.  
>   ^
>   "due to a ..."
> 
> I'm not sure I got what you mean by the initial "Compared to previous
> version". Version(s) of what?
> 
> If I just remove those 4 words the sentence seems OK to me BTW.

Is the following clearer?

    It is worth noting that with this v18 version, the dtb version is not
    downgraded for any modification but only when unknown tags are removed
    due to a property modification. In v17 or older version any modification
    led to a dtb version downgrade.

Best regards,
Hervé

