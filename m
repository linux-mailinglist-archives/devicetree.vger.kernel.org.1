Return-Path: <devicetree+bounces-271897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mORgDt+Sqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:39:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC95F21D34D
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:39:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 984E83025D2A
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF4A6379ED7;
	Fri,  6 Mar 2026 08:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="gC4EOFEJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7341219FC
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 08:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786386; cv=none; b=AE07CM2gXAi5TECT3zc3ROq8JSRzXuzY/mpptb2f0435Bp1ecRN1dEHDRXZrl2Z1yPzvKafTYzrad68BgcQnNXIAA7wlM0uOiNi1AGc2YiZ4BOxZLv/T6iDVvnUDFLoDyyKOEN9cHhPaE7GpNmgHzkXE6sfIOqWqj3lAmAE+kOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786386; c=relaxed/simple;
	bh=cm0F95J7o4wy2FJXenyX4KSAbX+XAUhtfy8vTlnE32I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iGJeXOJhP/4zbeympF/ixknopYwReC5pCjMRa7iyVqC6Vp8/uRZ/2GputuQFYu//MymgUo8b5skfm34ZOMGxibp5IgHit2XrYi7slnUzsN/0rFZSlBXEaSq3t37ubRkqvRm3B/gjz6WuNlqZ33nzAXzWT5Tlr3+CaofcYZHX1r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=gC4EOFEJ; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 1E64F240103
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:39:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.net; s=2017;
	t=1772786376; bh=HUIl7fBnMjNKk+2kv/hV6OWGFREjM/5mAylke7VaoUM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=gC4EOFEJESiWVyZzIbEXMK5eifhrokpoYiDtKYVS9DwNoZoSVrqrcNDw1kOrjpumL
	 dYcB3LpM6KqrmUyHB5qxKkbCSz2DY2ZHGhc8F1HPobhS8pwALUM8srn3juImAwPZAY
	 5zpbOSnNY82YynEdkY8VOHYdlX8FKSqjW5YnS2iT3iVwzQoaFRqvX51MueAit46Otu
	 NpPw0TaqrgVPk0yAClAFub+ccULT6B87FAIeeRx98p2knprbVOMP/Ta72qklQi0Vmc
	 4f6rS5diZXfXKcW75yCmEbP3gkh5QDymO2RWMiz6EhJlUz4eho94IcTRxgW+xPMQTS
	 l7x4drOwBSCmg==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4fS0Fd6XyWz6tvm;
	Fri,  6 Mar 2026 09:39:33 +0100 (CET)
Date: Fri, 06 Mar 2026 08:39:35 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: j.ne@posteo.net, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>, devicetree@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2] powerpc: dts: Build devicetrees of enabled platforms
Message-ID: <aaqSxUNNNnRcB5U5@probook>
References: <20260305-mpc83xx-dtb-v2-1-cdb751458445@posteo.net>
 <6d736f38-bd33-4484-b3f2-bb9391976fe2@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6d736f38-bd33-4484-b3f2-bb9391976fe2@kernel.org>
X-Rspamd-Queue-Id: CC95F21D34D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[posteo.net,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[posteo.net:s=2017];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271897-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[posteo.net,kernel.org,linux.ibm.com,ellerman.id.au,gmail.com,vger.kernel.org,lists.ozlabs.org,linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j.ne@posteo.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[posteo.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,outlook.com:url]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 10:32:41AM +0100, Christophe Leroy (CS GROUP) wrote:
> 
> 
> Le 05/03/2026 à 10:15, J. Neuschäfer via B4 Relay a écrit :
> > From: "J. Neuschäfer" <j.ne@posteo.net>
> > 
> > Follow the same approach as other architectures such as Arm or RISC-V,
> > and build devicetrees based on platforms selected in Kconfig. This makes
> > it unnecessary to use CONFIG_OF_ALL_DTBS on PowerPC in order to build
> > DTB files.
> > 
> > This makes it easier to use other build and test infrastructure such as
> > `make dtbs_check`, and is a first step towards generating FIT images
> > that include all the relevant DTBs with `make image.fit`.
> > 
> > Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> > ---
> > Changes in v2:
> > - Use "dtb-$(FOO) += foo.dtb" format on every line, avoid backslashes
> >    (suggested by Geert Uytterhoeven)
> > - Link to v1: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Fr%2F20260119-mpc83xx-dtb-v1-1-522f841290bf%40posteo.net&data=05%7C02%7Cchristophe.leroy%40csgroup.eu%7C9264db0cd3014d5c30c608de7a97cd4c%7C8b87af7d86474dc78df45f69a2011bb5%7C0%7C0%7C639082989567825654%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=QS4N0muz5oPD3WzZQE3FsF5ghDDu9PSJ79iA5R%2FAd3w%3D&reserved=0
> > ---
> >   arch/powerpc/boot/dts/Makefile     | 111 +++++++++++++++++++++++++++++++++++++
> >   arch/powerpc/boot/dts/fsl/Makefile |  79 ++++++++++++++++++++++++++
> >   2 files changed, 190 insertions(+)
> > 
> > diff --git a/arch/powerpc/boot/dts/Makefile b/arch/powerpc/boot/dts/Makefile
> > index 0cd0d8558b475c..7fce8c819d3d72 100644
> > --- a/arch/powerpc/boot/dts/Makefile
> > +++ b/arch/powerpc/boot/dts/Makefile
> > @@ -3,3 +3,114 @@
> >   subdir-y += fsl
> >   dtb-$(CONFIG_OF_ALL_DTBS) := $(patsubst $(src)/%.dts,%.dtb, $(wildcard $(src)/*.dts))
> > +
> > +# PPC44x platforms
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += arches.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += bamboo.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += bluestone.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += glacier.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += eiger.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += katmai.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += rainier.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += redwood.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += sequoia.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += taishan.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += yosemite.dtb
> > +dtb-$(CONFIG_PPC44x_SIMPLE) += icon.dtb
> 
> Why so many lines ? You should be able to fit approximaly four per line,
> 
> dtb-$(CONFIG_PPC44x_SIMPLE) += arches.dtb bamboo.dtb bluestone.dtb
> glacier.dtb
> dtb-$(CONFIG_PPC44x_SIMPLE) += eiger.dtb katmai.dtb rainier.dtb redwood.dtb
> dtb-$(CONFIG_PPC44x_SIMPLE) += sequoia.dtb taishan.dtb
>  yosemite.dtb icon.dtb

Hm, fair enough, that would work too, and make it visually somewhat
clearer what belongs together.

I'll wait for more comments, but I think this is a good enough
improvement for a v3, while still keeping potential edit churn away as
Geert Uytterhoeven previously pointed out:

>> Even when it wouldn't fit on a single line, having separate
>> 
>>     dtb-$(CONFIG_FOO) += bar1.dtb
>>     dtb-$(CONFIG_FOO) += bar2.dtb
>> 
>> lines not only makes it a little bit shorter, but avoids the churn of
>> adding a backslash to the previous line when adding new entries.


Best Regards,
J. Neuschäfer

