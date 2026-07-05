Return-Path: <devicetree+bounces-320556-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 10uPKmgRSmob+AAAu9opvQ
	(envelope-from <devicetree+bounces-320556-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 10:10:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A017095C5
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 10:10:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BvlLbze6;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320556-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320556-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD45A300461A
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 08:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1FA836165E;
	Sun,  5 Jul 2026 08:10:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C756735DA68
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 08:10:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783239013; cv=none; b=r0M0jHizkkuJwvkQP0OQTWLGcH8MdItFmjBLysWIM748SBbq1rN5KdX+e9fBJ03EjZ1ztjzoRY8Y26Tn2t6+WXup8vrWKU4xJzY83Nca5b6tCAuoW7e6p6Cl1OPXY+AN4K66r3AGap1Z6i5pYuJv6F99gCuFZKh5PRaBckaU02E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783239013; c=relaxed/simple;
	bh=GREFFB11AA+5UkGPzPPLfvnhwEQ22eyyzXYUqTDmcjY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cvEEp2AgIXEmKa9z7zUrRnUR+wHaizhGHiIFyELUav2LgS6HmNdIHKIVefZ7ijYEm7xYLRJ73Q9vYFQMYQfzccvkKXg8SW8zVilZ53VQJOFUtWT6QExf+VRXaW9T9u0zXp9+5qVbFfL809UppgpfpwvURP2PVqA5CKT0KBhp6Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvlLbze6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3F861F000E9;
	Sun,  5 Jul 2026 08:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783239012;
	bh=TuJljFV6aHebHFgH7z9AaaGFr8qGcZa30IuzI8E3B1Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BvlLbze6teX+eUaqg9fRWsAkN5iCYvyldIGLmav+F8VqvOBIEmJrlrTpJHtQsZrFy
	 RCd6JT96aToCrJVXTGVYAxAmYYHFQPhOEV7V49zxsKaiMXA5TzR5tiWtGl4yYcWWt6
	 XmLv7xvEBYubQsrj4Y4UWW3V5dnoNp8xHKjQOD4k2a8yavGRuJir+zX2nqN2UKMLq/
	 8a5l4avzFJNcneJ1AOSui4pNlFi4wZqAXWh7YFuF25lUOUxcbOD3Qe5p7jyzNTPgHs
	 kOFN+FRAzODUJ+ruclSZwvLzL8nNPd2mjJuIKqtbGQM7gc5ZRpOg+UbluRmf8clKAI
	 rnIfskOCB6dGA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/5] phy: cpcap-usb: add DCP detection and make UART
 idle mode optional
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260705075809.1793784-5-ivo.g.dimitrov.75@gmail.com>
References: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
 <20260705075809.1793784-5-ivo.g.dimitrov.75@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 08:10:11 +0000
Message-Id: <20260705081011.F3F861F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320556-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ivo.g.dimitrov.75@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:robh@kernel.org,m:ivogdimitrov75@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,linaro.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13A017095C5

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] The USB PHY state machine gets permanently stuck in CPCAP_UNKNOWN =
if a USB host or charger is connected during boot.

Pre-existing issues:
- [High] A Time-Of-Check to Time-Of-Use (TOCTOU) race condition allows a de=
layed work timer to be queued just before the driver's data structure is fr=
eed.
--

commit c15ba246412946a134691c79cf0b6023882d635b
Author: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>

phy: cpcap-usb: add DCP detection and make UART idle mode optional

Handle DCP separately from USB host connections based on CPCAP charger
detection status. Make the existing idle UART mode optional and initialize
the PHY into the baseline configuration. Fix a race in removal.

> diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/=
phy-cpcap-usb.c
> index d1c70c7153466..e776e54bbfd56 100644
> --- a/drivers/phy/motorola/phy-cpcap-usb.c
> +++ b/drivers/phy/motorola/phy-cpcap-usb.c
[ ... ]
> @@ -293,38 +302,61 @@ static void cpcap_usb_detect(struct work_struct *wo=
rk)
[ ... ]
>  	vbus =3D cpcap_usb_vbus_valid(ddata);
> =20
> -	/* Otherwise assume we're connected to a USB host */
> -	if (vbus) {
> -		dev_dbg(ddata->dev, "connected to USB host\n");
> -		error =3D cpcap_usb_set_usb_mode(ddata);
> +	/* Check if we're connected to a USB host */
> +	if (vbus && ddata->mode !=3D CPCAP_USB_HOST) {
> +		enum cpcap_mode new_mode;
> +
> +		if (!s.chrg_det || !s.sessvld || ddata->mode !=3D CPCAP_IDLE)
> +			return;

[Severity: High]
Does this early return prevent the PHY from ever initializing if a cable
is connected during boot?

During cpcap_usb_phy_probe(), ddata->mode is initialized to CPCAP_UNKNOWN.
If a charger or host is already connected, vbus is true, and this block is
entered in cpcap_usb_detect(). Because ddata->mode is CPCAP_UNKNOWN, the
condition ddata->mode !=3D CPCAP_IDLE is unconditionally true, which causes
an immediate return without transitioning the state.

[ ... ]
> @@ -694,17 +853,13 @@ static int cpcap_usb_phy_probe(struct platform_devi=
ce *pdev)
>  static void cpcap_usb_phy_remove(struct platform_device *pdev)
>  {
>  	struct cpcap_phy_ddata *ddata =3D platform_get_drvdata(pdev);
> -	int error;
> =20
>  	atomic_set(&ddata->active, 0);
> -	error =3D cpcap_usb_set_uart_mode(ddata);
> -	if (error)
> -		dev_err(ddata->dev, "could not set UART mode\n");
> -
> +	cancel_delayed_work_sync(&ddata->detect_work);

[Severity: High]
This is a pre-existing issue, but does moving cancel_delayed_work_sync()
here still leave a window for a use-after-free if the IRQ thread is
preempted?

Looking at cpcap_phy_irq_thread():

    if (!atomic_read(&ddata->active))
        return IRQ_NONE;

    schedule_delayed_work(&ddata->detect_work, msecs_to_jiffies(1));

If the IRQ handler checks ddata->active and sees 1, but is then preempted
before scheduling the work, cpcap_usb_phy_remove() can run, set active to 0,
and cancel the currently empty workqueue.

When the IRQ handler resumes, it queues the work, which then fires after
devres has freed ddata.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705075809.1793=
784-1-ivo.g.dimitrov.75@gmail.com?part=3D4

