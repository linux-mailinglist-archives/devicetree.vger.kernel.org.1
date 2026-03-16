Return-Path: <devicetree+bounces-276221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WI8sLaATuGk7YwEAu9opvQ
	(envelope-from <devicetree+bounces-276221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:28:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 548EC29B5D7
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:28:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B437D300617C
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:28:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF42280331;
	Mon, 16 Mar 2026 14:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="Ybshd+Ti"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DA41A9FA8;
	Mon, 16 Mar 2026 14:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773671324; cv=none; b=V/BIriJITkIvTRxf88ht5ard8mQh9IL2IZC55C80tiPniG+N9jM9xZzzTCCGKPOj3BzEtNq+6ea/rs1Ayb/2zg4Vk57I6mWF6YW6lt5S9nkiRhtIvVj5/Ky/cbjMueEtJV+IwCk0ep+lakEAvSCz5wbrJHEkNe4Izeqq0Uw5fgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773671324; c=relaxed/simple;
	bh=9jY+eCJj6CYgBhKMzWT15r/jl4hqzZepeKhweN7uMLY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NJjimKczDFI+nza1uadFwyHRkwfMKiZwJCuhQJI5HwTdJDnP+moyQc8OAZEHEgcOLI1wiODsRzD+HjcpLQbrgS0J6A4SsMGiBZis38R6cWuFaqvJpbLjc2hYhK3wzWIV+7pGsyyxmG5Ne5Q6T2dbupYuHWaH5HEY9iWKfPCEgvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=Ybshd+Ti; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=air3Q0t7O2WJG3HbRSFLNzGNy7QbzEyh9W7ZWhP6oVw=; b=Ybshd+TiroQNNN3JCYUSqMiH8/
	bjin/kxTRyK7WBf9XlE4EQqTBKWhnh/z6VsC+eAE++m3Zzp+cGMFLwEqCzbpSBPZkJq8bhGPigf+d
	qMcA3HPaEceECha2M9h3YRAjF5OHE4EbMT+JgoPGfbC9cEYes9oGzf4JQli/c0gG1K6t5k8vYb4cU
	h7yz4PcJzfgtJ41uM8neELeboamPnPuN/VA45gWxZqqwvAFwtIsI/+ui56c3ioR0nBZhgYA+hyWEO
	3FDRMsZ9nH6yOthMi7h+yvfhveybINPV6sl7D41GkdsJNEdFoN0BrH4o3Kzr2J0RJBmjj0aoYwUCS
	rT3cJHVg==;
Date: Mon, 16 Mar 2026 15:28:31 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Conor Dooley <conor@kernel.org>
Cc: Robby Cai <robby.cai@nxp.com>, broonie@kernel.org, lgirdwood@gmail.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev
Subject: Re: [PATCH v2 2/2] regulator: fp9931: Fix handling of mandatory
 "vin" supply
Message-ID: <20260316152831.7c1d4ed6@kemnade.info>
In-Reply-To: <20260313-antler-unburned-3af789df6085@spud>
References: <20260313133102.2749890-1-robby.cai@nxp.com>
	<20260313133102.2749890-3-robby.cai@nxp.com>
	<20260313-antler-unburned-3af789df6085@spud>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kemnade.info,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kemnade.info:s=20220719];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276221-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,gmail.com,vger.kernel.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andreas@kemnade.info,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kemnade.info:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,kemnade.info:dkim,kemnade.info:mid]
X-Rspamd-Queue-Id: 548EC29B5D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 17:24:31 +0000
Conor Dooley <conor@kernel.org> wrote:

> On Fri, Mar 13, 2026 at 09:31:02PM +0800, Robby Cai wrote:
> > The FP9931 requires a mandatory "vin" power supply to operate.
> > Replace devm_regulator_get_optional() with devm_regulator_get() to
> > enforce this mandatory dependency.
> > 
> > Fixes: 12d821bd13d42 ("regulator: Add FP9931/JD9930 driver")
> > Signed-off-by: Robby Cai <robby.cai@nxp.com>
> > ---
> >  drivers/regulator/fp9931.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/regulator/fp9931.c b/drivers/regulator/fp9931.c
> > index 69b3c712e5d58..d4ba818ec2c15 100644
> > --- a/drivers/regulator/fp9931.c
> > +++ b/drivers/regulator/fp9931.c
> > @@ -444,7 +444,7 @@ static int fp9931_probe(struct i2c_client *client)
> >  		return dev_err_probe(&client->dev, PTR_ERR(data->regmap),
> >  				     "failed to allocate regmap!\n");
> >  
> > -	data->vin_reg = devm_regulator_get_optional(&client->dev, "vin");
> > +	data->vin_reg = devm_regulator_get(&client->dev, "vin");  
> 
> And this isn't an ABI break because the regulator core will invent a
> dummy regulator?
> 
On most devices I see a dummy regulator somewhere.

What IMHO itches more is that one has to invent a regulator in devicetree
if the property is mandatory and the supply is not known, you have to add
a dummy regulator in the devicetree to make dtbs_check happy.

Regards,
Andreas

