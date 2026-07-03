Return-Path: <devicetree+bounces-319811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FgWXLlZbR2qaWwAAu9opvQ
	(envelope-from <devicetree+bounces-319811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:48:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 272796FF346
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 08:48:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XEnRieQa;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319811-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319811-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BFD30304307C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 06:47:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA7AF3876D0;
	Fri,  3 Jul 2026 06:46:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CC0382F03
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 06:46:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783061203; cv=none; b=AWe7wOxCwUhj1NuzfU/Ma+S9cakc7wbwT5z7NoW4b2He9HPkp8yUuzUHpjsOAWX0evnY8xw9MfPz1G4OLsmXA2ILHaQfFnRii4jlCZSdnRENeP0ij6476Yo7nUUA4H6VZ9zuTP/PC86IeoCgKWaW9nK65jmza0lkOuiyNJnPslk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783061203; c=relaxed/simple;
	bh=Zts4UVtKP7QBOXlwwmECpBPUlqIlpC7mMxj1aw/+G6U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YDWcvjNN4FhUklsurAI96zK94jpEtiayHiJPMgD16NNkfl03aOwoU0ow1O8OLzOdyoefbVkq0tqHfxoJcKhgUDQu9zlBhF9X6Xoix02sVBW3Dwz0KfLipeYYC0mit/AwiLTnrX97q0zL9LwTYm5epLzIsGIsANokqZ9Un/HqHG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEnRieQa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8D271F00A3E;
	Fri,  3 Jul 2026 06:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783061199;
	bh=gqYNVd2aUt01dk6KibAexvXp7AR7dq58CQmQ0dAkunM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XEnRieQaI+4vXD5hg7XYaRwFx9CwAkqdPVUrpWz98CpEFpk2ySpXFEhIXWeOVOGcX
	 tODaFEZw8rQnMaKSEmJOIWT//RYYzk4JrQ0z3/ZjGAVMHzNw0Yf3x7lsVdSQ5CAyLJ
	 R827g4oeK5sB3sp9OgAVdWeWQKiudNLXkPRLFtZUticCFfVKlMa+KXrPC33q9ByDxz
	 /UssMMJhKA14xwUvDuzaxYY3DdH9Tk5cWx/O5Zu8eztSLcoWGOqm185JgLvtsfiXlX
	 5kpFTw/4M1Xy4mYc6f7trIyUBi0Zimlns3KtZKgnORBxjFI7Wi9fm5fSdITB5kvQaf
	 9VqEo316fFxLg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v8 5/9] net: dsa: lan9645x: add bridge support
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SmVucyBFbWlsIFNjaHVseiDDmHN0ZXJnYWFyZA==?= <jensemil.schulzostergaard@microchip.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260702-dsa_lan9645x_switch_driver_base-v8-5-90228d8bba58@microchip.com>
References: <20260702-dsa_lan9645x_switch_driver_base-v8-0-90228d8bba58@microchip.com>
 <20260702-dsa_lan9645x_switch_driver_base-v8-5-90228d8bba58@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 06:46:38 +0000
Message-Id: <20260703064638.E8D271F00A3E@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319811-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jensemil.schulzostergaard@microchip.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 272796FF346

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing ds->ageing_time_min allows invalid ageing times to be si=
lently rounded up to 2 seconds.
--

commit c7bfc6b4bfe0c0efc661fd970da4660dc2b62c73
Author: Jens Emil Schulz =C3=98stergaard <jensemil.schulzostergaard@microch=
ip.com>

net: dsa: lan9645x: add bridge support

This commit adds support for hardware offloading of the bridge on a single
device. It configures basic bridge operations, flooding, and ageing time.

> diff --git a/drivers/net/dsa/microchip/lan9645x/lan9645x_main.c b/drivers=
/net/dsa/microchip/lan9645x/lan9645x_main.c
> index f95ce9e48a5c2..4dd449d9014bd 100644
> --- a/drivers/net/dsa/microchip/lan9645x/lan9645x_main.c
> +++ b/drivers/net/dsa/microchip/lan9645x/lan9645x_main.c
[ ... ]
> @@ -268,15 +271,35 @@ static int lan9645x_setup(struct dsa_switch *ds)
[ ... ]
>  	ds->mtu_enforcement_ingress =3D true;
>  	ds->assisted_learning_on_cpu_port =3D true;
>  	ds->fdb_isolation =3D true;
> =20
> +	/* ANA_AUTOAGE_AGE_PERIOD is a seconds-based field and entries are
> +	 * aged after 2 * AGE_PERIOD, giving (2 * FIELD_MAX) seconds of
> +	 * maximum aging.
> +	 */
> +	ds->ageing_time_max =3D 2U * MSEC_PER_SEC *
> +			      FIELD_MAX(ANA_AUTOAGE_AGE_PERIOD);
> +

[Severity: Medium]
Should ds->ageing_time_min be configured here as well?

Without a minimum, the DSA core's -ERANGE check is bypassed when
userspace configures a bridge ageing time less than 2 seconds, which
allows unsupported small values to reach the driver.

>  	dev_info(lan9645x->dev,
>  		 "SKU features: max_ports=3D%d\n",
>  		 lan9645x->num_phys_ports - lan9645x->num_port_dis);
> =20
>  	return 0;
[ ... ]
> @@ -285,6 +308,282 @@ static void lan9645x_port_phylink_get_caps(struct d=
sa_switch *ds, int port,
[ ... ]
> +static int lan9645x_set_ageing_time(struct dsa_switch *ds, unsigned int =
msecs)
> +{
> +	u32 age_secs =3D max(1, msecs / MSEC_PER_SEC / 2);

[Severity: Medium]
Could this silently round up unsupported small ageing times?

If msecs is non-zero but less than 2000, max(1, msecs / 2000) evaluates
to 1 hardware unit (2 seconds). Because the driver doesn't return an
error for unsupported values, the hardware is configured with an
ageing time larger than requested by the user, which violates the
switchdev API contract.

> +	struct lan9645x *lan9645x =3D ds->priv;
> +
> +	/* Entry must suffer two aging scans before it is removed, so it is
> +	 * aged after 2*AGE_PERIOD, and the unit is in seconds.
> +	 * An age period of 0 disables automatic aging.
> +	 */
> +	lan_rmw(ANA_AUTOAGE_AGE_PERIOD_SET(msecs ? age_secs : 0),
> +		ANA_AUTOAGE_AGE_PERIOD,
> +		lan9645x, ANA_AUTOAGE);
> +	return 0;
> +}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702-dsa_lan964=
5x_switch_driver_base-v8-0-90228d8bba58@microchip.com?part=3D5

