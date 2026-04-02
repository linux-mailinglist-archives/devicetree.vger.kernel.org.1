Return-Path: <devicetree+bounces-284164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIvlLJakzmlZpAYAu9opvQ
	(envelope-from <devicetree+bounces-284164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 19:17:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2549A38C755
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 19:17:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D064630602D8
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 17:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 492183DD528;
	Thu,  2 Apr 2026 17:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUGy17aQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534633C73F5;
	Thu,  2 Apr 2026 17:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775149831; cv=none; b=NTxH/L4451301gkVIaUoOwZNh3aWapt5PKcaV3PXGdK/DDgxK+o4v+WkR7itiXu4agwLnrhRLOZcgsHuFuR4VkZz9SeJ77ABNJO/Cxfmb/Jima/8KkAKvdTUnCIrEvjl47H3PURM0M96Byd8mtRAqTbVCsVJKNCybbSnabZUkrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775149831; c=relaxed/simple;
	bh=oPgtSX/AWvw5H6H7X2P/fqmBAkNVmxuS4fkLUvkKIdY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gDw7EJyQ7IJu68Lvov1B3hPnpuXElJcLrGxWZCfJtO7nTJ2S++2jR8cZNKFoAaYPXwetFvOUTH5WrQxEaJ2PcBvziu0dyxJilbrwbYulLzoukHsE9FvizS92q1pQYXwqMcCjfX4g+DYt0UBR8C3eUhH0DZZoDDBWfKiM2wEUQ3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUGy17aQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49D58C116C6;
	Thu,  2 Apr 2026 17:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775149830;
	bh=oPgtSX/AWvw5H6H7X2P/fqmBAkNVmxuS4fkLUvkKIdY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dUGy17aQzieRrSxGP9x/kgTP86jeeDBaUlA0qOEvE+/wW5AGydn1/qlC9+UX0olUg
	 o8Dx/0vxnkOIvsREIhymbv5agDXmXSpnmBnh5VTGQEKEwrnQBzl+pca4wvh7F6ezjE
	 SW6BOVQhtR8orgxQlqxymPejPD1HcYh4On8LxwgFDX/0m8o9glcSvbnlNArpiSpC0U
	 q+BAycYhCsXktCBlDIpTrrO/5nMoCX05eFHD0/3YcMeWhj4TilxzeN0xScDflfWbfU
	 oJfPclYQQAxgNKSrK7oyTTIONDd5mntSXLQ+CAoVd9Z8AwBiHIJLXE+bPwzNwF1yPA
	 LoWYLjH0XH+Pw==
Date: Thu, 2 Apr 2026 18:10:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Sen Wang <sen@ti.com>
Cc: linux-sound@vger.kernel.org, lgirdwood@gmail.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	perex@perex.cz, tiwai@suse.com, shenghao-ding@ti.com,
	kevin-lu@ti.com, baojun.xu@ti.com, niranjan.hy@ti.com,
	l-badrinarayanan@ti.com, devarsht@ti.com, v-singh1@ti.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] ASoC: codecs: Add TAS675x quad-channel audio
 amplifier driver
Message-ID: <3c300b9c-1589-492c-ace3-4d8a1d25f1ed@sirena.org.uk>
References: <message-id-of-your-RFC-cover-letter>
 <20260401223239.1638881-1-sen@ti.com>
 <20260401223239.1638881-3-sen@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="K5PpopDk26HdKuV3"
Content-Disposition: inline
In-Reply-To: <20260401223239.1638881-3-sen@ti.com>
X-Cookie: <doogie> dpkg has bugs?  no way!
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-284164-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org,perex.cz,suse.com,ti.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 2549A38C755
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--K5PpopDk26HdKuV3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 01, 2026 at 05:28:43PM -0500, Sen Wang wrote:
> The TAS675x (TAS6754, TAS67524) are quad-channel, digital-input
> Class-D amplifiers with an integrated DSP, controlled over I2C.
> They support I2S and TDM serial audio interfaces.

One issue that didn't get noticed last time, sorry:

> +static int tas675x_runtime_suspend(struct device *dev)
> +{
> +	struct tas675x_priv *tas = dev_get_drvdata(dev);
> +
> +	cancel_delayed_work_sync(&tas->fault_check_work);
> +	tas675x_set_state_all(tas, TAS675X_STATE_SLEEP_BOTH);
> +
> +	return 0;
> +}

This cancels the work, completing any that's already running, but...

> +static void tas675x_fault_check_work(struct work_struct *work)
> +{
> +	struct tas675x_priv *tas = container_of(work, struct tas675x_priv,
> +						fault_check_work.work);
> +
> +	if (tas675x_check_faults(tas))
> +		regmap_write(tas->regmap, TAS675X_RESET_REG, TAS675X_FAULT_CLEAR);
> +
> +	schedule_delayed_work(&tas->fault_check_work,
> +			      msecs_to_jiffies(TAS675X_FAULT_CHECK_INTERVAL_MS));
> +}

...the work unconditionally rearms itself so we might race and requeue
(we cancel *then* wait) with the device powered off.  There's the
disable_delayed_work_sync() API which should be a better fit.

> +static irqreturn_t tas675x_irq_handler(int irq, void *data)
> +{
> +	struct tas675x_priv *tas = data;
> +
> +	tas675x_check_faults(tas);
> +
> +	/* Clear the FAULT pin latch as something latched */
> +	regmap_write(tas->regmap, TAS675X_RESET_REG, TAS675X_FAULT_CLEAR);
> +
> +	return IRQ_HANDLED;
> +}

Also, this should return IRQ_NONE if no faults were seen (to allow for
interrupt sharing and the genirq core's handling of hardware faults).

--K5PpopDk26HdKuV3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmnOov8ACgkQJNaLcl1U
h9D1Qgf/S4Zf2XLsWyQqy1qT2/5XfqAYbHw9vKG00F5Bgcs8VuVw4wZoU4OELKYU
t2ix4L7FvbM1DK8gm+tHWa3jKVIhUJOuJreuNOptWEpphaVQoPdTF6j3wyZwjSS8
RbJP05r9vXNRb1icfvydlr/C3lR8YS9Hjhwf+hdyYIzbNGzMjloHZsEhT9kcHTSR
WSof+zHR8plhXh3uA9FIju66AE5LNX/Co9dn0F4aNukVyuOCULlDQ0gic45KRdfv
TMjnbmmnvuFuC1hvUQAegsTLeiO78sQ+FwUQuIftXf5jXDVDnmBEWVCP0sQq5TRX
jkY38iQsNvIrWjm7ZzmvSMken3JAUw==
=nUoH
-----END PGP SIGNATURE-----

--K5PpopDk26HdKuV3--

