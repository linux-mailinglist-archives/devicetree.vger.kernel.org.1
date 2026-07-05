Return-Path: <devicetree+bounces-320597-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CbOuM/EwSmrv/AAAu9opvQ
	(envelope-from <devicetree+bounces-320597-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 12:24:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B29709BF3
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 12:24:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Di9VsogC;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320597-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320597-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E798F3002D35
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 10:24:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD6E30F7EB;
	Sun,  5 Jul 2026 10:24:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F99433E71
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 10:24:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783247083; cv=none; b=p5bWJMsOUEj9LxWXV07X58prsPpKfErtM0WoYEZsonlbpaiXK5GJyH1sy7aavrzOaP5doh2i4tKJ8OllhzL3up7uizvgBmqxRqxN0IMwvBNxB8VfpmblHib5anTsdCj2W27CAQsXLVxrvOyh+wO3WcXz4QsLkUiGlXTJBetLPIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783247083; c=relaxed/simple;
	bh=wVciRB4MdBygJBYscXB0DcYZYZ6Do3wCekMTDl5Kaxs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=e3tNbOlL2noRH/UwK13ElxF5QlZeJKlT6ycqyNB3HqWM9OASK76dnlMrrPwfV2l04TvN1ZMqz1ZMYsN0kw28VaAy0bNcvV75MIkHf2/hd8m1XdK9sbdTikP6YZusVGbecb01Mk2NdFY2VsEsNKqYieRarx3MpmnS4UT/uYdX9Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Di9VsogC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB89F1F000E9;
	Sun,  5 Jul 2026 10:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783247082;
	bh=Iu95rsSHAWSOq53b756V/gTWzik8RWGIR6P7vMJ5FkA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Di9VsogC0zGMFpCj/KFE9k3eEeb0EPBpodfmQIYwzzjPjRSvnHLMvPe8w3wFahYrV
	 QgsefIv0M73iNwdiIRP7+08NZNO9bLLZ9hmojqfjWp9mjwFGQU1PDw9KshE+rPJDyO
	 q/nyySHabh1gBafs6xPbxULGnHNGNbQGOuAJWwqJQy7RGiMJCa+YHT/3kpTfV0n2Yj
	 BFynVVNlMvZYGydI6x+CV6++2GdeOnpSlpwdwdbxvx8Yugy9TEaGH2fsGp0fXuLPoh
	 8eZVMTTH4Dqva9Mjqszbu6cZ336KgKl3iT4Vo97rhI4tOSC1LR8dWDzuLDW1hSPCAp
	 VGC3bQD8Kve/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/4] phy: cpcap-usb: add DCP detection and make UART
 idle mode optional
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260705101105.1798069-4-ivo.g.dimitrov.75@gmail.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-4-ivo.g.dimitrov.75@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 10:24:41 +0000
Message-Id: <20260705102441.CB89F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320597-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ivo.g.dimitrov.75@gmail.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:ivogdimitrov75@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,vger.kernel.org,lists.infradead.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C2B29709BF3

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] CPCAP_BIT_USBSUSPEND is left enabled when transitioning from idle =
mode to USB mode, permanently suspending the USB transceiver.

Pre-existing issues:
- [High] A Time-of-Check to Time-of-Use (TOCTOU) race condition between the=
 threaded IRQ handler and `remove()` leads to a use-after-free of `ddata`.
--

commit a337f1a3972ec0ccd4a231f2afbec0cfcdfd64fc
Author: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>

phy: cpcap-usb: add DCP detection and make UART idle mode optional

Handle DCP separately from USB host connections based on CPCAP charger
detection status. Make the existing idle UART mode optional via the
"enable_uart" module parameter. Initialize the PHY into the baseline
configuration required for reliable charger detection during probe.

> diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/=
phy-cpcap-usb.c
> index 7cb020dd3423c..78bb1773e5379 100644
> --- a/drivers/phy/motorola/phy-cpcap-usb.c
> +++ b/drivers/phy/motorola/phy-cpcap-usb.c

[ ... ]

> -	error =3D regmap_update_bits(ddata->reg, CPCAP_REG_USBC2,
> -				   0xffff, CPCAP_BIT_UARTMUX0 |
> -				   CPCAP_BIT_EMUMODE0);
> +	val =3D CPCAP_BIT_USBSUSPEND;
> +
> +	if (enable_uart)
> +		val |=3D (CPCAP_BIT_UARTMUX0 | CPCAP_BIT_EMUMODE0);
> +
> +	error =3D regmap_update_bits(ddata->reg, CPCAP_REG_USBC2, 0xffff, val);

[Severity: High]
Could this permanently suspend the USB transceiver? When unplugging a USB
cable, cpcap_usb_set_idle_mode() runs and sets CPCAP_BIT_USBSUSPEND.

However, when re-plugging the cable, cpcap_usb_set_usb_mode() is called,
which only masks CPCAP_BIT_USBXCVREN when updating CPCAP_REG_USBC2:

	error =3D regmap_update_bits(ddata->reg, CPCAP_REG_USBC2,
				   CPCAP_BIT_USBXCVREN,
				   CPCAP_BIT_USBXCVREN);

Since it doesn't clear the CPCAP_BIT_USBSUSPEND bit, will the transceiver
remain suspended and break subsequent data communication?

[ ... ]

> @@ -688,17 +845,13 @@ static int cpcap_usb_phy_probe(struct platform_devi=
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
This isn't a bug introduced by this patch, but does this sequence leave a
window for a use-after-free on ddata?

Because the IRQ is devm-managed, it remains active until the devres phase
after remove() returns. If cpcap_phy_irq_thread() is preempted right after
checking ddata->active but before scheduling the work:

	if (!atomic_read(&ddata->active))
		return IRQ_NONE;

	/* preempted here */
	schedule_delayed_work(&ddata->detect_work, msecs_to_jiffies(1));

And cpcap_usb_phy_remove() runs to completion, ddata will be freed. When
the IRQ thread resumes, it will queue the work again, causing the delayed
work to execute and access the freed ddata.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705101105.1798=
069-1-ivo.g.dimitrov.75@gmail.com?part=3D3

