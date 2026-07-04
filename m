Return-Path: <devicetree+bounces-320433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GQtsGSq7SGpttAAAu9opvQ
	(envelope-from <devicetree+bounces-320433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 09:50:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EB3707011
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 09:50:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CQv0mmAN;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320433-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-320433-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 97CBC301A422
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 07:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B0EB303A35;
	Sat,  4 Jul 2026 07:49:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A20399350
	for <devicetree@vger.kernel.org>; Sat,  4 Jul 2026 07:49:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783151397; cv=none; b=gCKSODL2pe6bQrw5BcBLqWkAwrdY8XiuLeXaKSNtOPwU8u3KD9ML7drMOyjEydpbB5uUg38VKXcs1Rydyc1F13VkeIx/YU+vL28atKkPGeZT701nPiX2yJ90fVikEnDKOAnak+YoC1R+i4SNlQqZvXtc+6sCrHmLD4roVfHEbyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783151397; c=relaxed/simple;
	bh=Rn7LRc990GU1vst3MZaGXHWtC+gGdAumo3leUtKbLmg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gzG6shZla0Crm/UF7VzaYuEa2pL2pw0Yrf4GjYgFarlvCkMi36ah26ewwTbPVxevGIFbMmQ7MFbwcxW6vqbC63nJoy6c/objZ8cM098gw3qgysYpoVo+3xHEqnFp3bBVtN4Gf1wAicjKiJVy7Uz6bqwX4C6RYjmOYNY3ed8LfQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQv0mmAN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FED61F000E9;
	Sat,  4 Jul 2026 07:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783151389;
	bh=n0VFtWrzUPum8j12EUWnnxF4s1y6ma75vn5DbOOD1EE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CQv0mmANfCkYGfeg0GVPmELxK7R0xmSL+uG/lm0zh7bRHVdKLZZnRpEa2keRjq8sD
	 GoyjPRtk2qgtlEJgVxhIspUCuEW8PtNMz7Cdjmo2fHyFOCBgXfm7O1FyRRuwTekudd
	 SAqdJGNYK4+9cuF6MjZY6nopJqfEUjTPLUgjxZRlG6cSZTweqK0QVB9piQaKthd43r
	 dPUACF7zzHVoe0Gyua333p0zyw0+BZ/7URug0uBdAFEx5Idz93fTIg3ONv/lBPm0o0
	 jog2KJrUVG6/BiqjaXECe2stN+51DqvaT2pfYjjEzhlTWyxZRh/aiOFT6Sc9jHGR15
	 YkOHiAtJ5U1Lg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] phy: cpcap-usb: add DCP detection and make UART
 idle mode optional
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260704073843.1750458-3-ivo.g.dimitrov.75@gmail.com>
References: <20260704073843.1750458-1-ivo.g.dimitrov.75@gmail.com>
 <20260704073843.1750458-3-ivo.g.dimitrov.75@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 04 Jul 2026 07:49:49 +0000
Message-Id: <20260704074949.7FED61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320433-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ivo.g.dimitrov.75@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:ivogdimitrov75@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,linaro.org,gmail.com,lists.infradead.org];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91EB3707011

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:

New issues:
- [High] Renaming the expected IRQ name from 'se1' to 'chrg_det' breaks com=
patibility with existing Device Tree binaries.
- [Medium] Early update of `ddata->mode` causes the state machine to become=
 permanently stuck if the subsequent hardware configuration fails.
- [Medium] The system's SysRq functionality is permanently left disabled gl=
obally if a hardware configuration step fails in `cpcap_usb_set_idle_mode()=
`.
- [Medium] The module parameter `enable_uart` is ignored on boot, leaving t=
he PHY in a partially uninitialized state.
- [Medium] A Time-of-Check to Time-of-Use (TOCTOU) race condition exists wh=
en reading the global `cpcap_enable_uart` module parameter.

Pre-existing issues:
- [Critical] A race condition during driver removal allows the devm-managed=
 threaded IRQ handler to schedule `detect_work` after it has been canceled,=
 leading to a Use-After-Free.
--

commit e8047562da705a40f07fe646c6694386f4dad156
Author: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>

phy: cpcap-usb: add DCP detection and make UART idle mode optional
   =20
Handle DCP separately from USB host connections based on CPCAP charger
detection status.
   =20
Make the existing idle UART mode optional via the "enable_uart" module
parameter. When disabled, the PHY remains in its USB/charger detection
configuration while idle. This reduces power usage in idle by 25mW.
   =20
Also initialize the PHY into the baseline configuration required for
reliable charger detection during probe.

> diff --git a/drivers/phy/motorola/phy-cpcap-usb.c b/drivers/phy/motorola/=
phy-cpcap-usb.c
> index c6cc8fce6940f..3be2b3afaaf4d 100644
> --- a/drivers/phy/motorola/phy-cpcap-usb.c
> +++ b/drivers/phy/motorola/phy-cpcap-usb.c
> @@ -296,36 +309,53 @@ static void cpcap_usb_detect(struct work_struct *wo=
rk)
>  		return;
>  	}
> =20
>  	vbus =3D cpcap_usb_vbus_valid(ddata);
> =20
> -	/* Otherwise assume we're connected to a USB host */
> -	if (vbus) {
> -		dev_dbg(ddata->dev, "connected to USB host\n");
> -		error =3D cpcap_usb_set_usb_mode(ddata);
> +	/* Check if we're connected to a USB host */
> +	if (vbus && ddata->mode !=3D CPCAP_USB_HOST) {
> +		if (!s.chrg_det || !s.sessvld || ddata->mode !=3D CPCAP_IDLE)
> +			return;
> +
> +		if (s.se1)
> +			ddata->mode =3D CPCAP_CHARGER;
> +		else if (!s.dm && !s.dp)
> +			ddata->mode =3D CPCAP_USB;
> +		else
> +			return;

[Severity: Medium]
Can the state machine become permanently stuck if the subsequent hardware
configuration fails?

The state variable ddata->mode is eagerly updated here to CPCAP_CHARGER or
CPCAP_USB before applying the hardware state via cpcap_usb_set_usb_mode().
If the configuration fails and returns early, the state is never reverted.

On the next evaluation, the condition checking ddata->mode !=3D CPCAP_IDLE
will evaluate to true and return immediately, preventing recovery until the
cable is physically unplugged.

> +
> +		dev_dbg(ddata->dev, "connected to %s\n",
> +			s.se1 ? "DCP" : "USB host");
> +
> +		error =3D regmap_update_bits(ddata->reg, CPCAP_REG_USBC3,
> +					   CPCAP_BIT_VBUSSTBY_EN |
> +					   CPCAP_BIT_VBUSEN_SPI, 0);
>  		if (error)
>  			goto out_err;
> -		cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_VALID);
> +
> +		if (ddata->mode =3D=3D CPCAP_CHARGER)
> +			error =3D cpcap_usb_set_dcp_mode(ddata);
> +		else
> +			error =3D cpcap_usb_set_usb_mode(ddata);
> +
> +		if (error)
> +			goto out_err;
> +
> +		if (ddata->mode =3D=3D CPCAP_USB)
> +			cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_VALID);
> =20
>  		return;
>  	}
> =20
> -	ddata->vbus_provider =3D false;
> -	ddata->docked =3D false;
> +	if (ddata->mode =3D=3D CPCAP_IDLE)
> +		return;

[Severity: Medium]
Does this early return prevent the enable_uart module parameter from being
applied on boot?

During initial probe, ddata->mode is zero-initialized to CPCAP_IDLE. When
cpcap_usb_detect() runs for the first time, it exits early here and complet=
ely
skips cpcap_usb_set_idle_mode(). This leaves the PHY in a partially
uninitialized state until a cable is attached and removed.

> +
> +	ddata->mode =3D CPCAP_IDLE;
>  	cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_OFF);
> =20
> -	/* Default to debug UART mode */
> -	error =3D cpcap_usb_set_uart_mode(ddata);
> +	error =3D cpcap_usb_set_idle_mode(ddata);
>  	if (error)
>  		goto out_err;

[ ... ]

> @@ -374,7 +404,7 @@ static const char * const cpcap_phy_irqs[] =3D {
>  	"id_ground", "id_float",
> =20
>  	/* REG_INT1 */
> -	"se0conn", "vbusvld", "sessvld", "sessend", "se1",
> +	"se0conn", "vbusvld", "sessvld", "sessend", "chrg_det",

[Severity: High]
Does this break compatibility with existing Device Tree binaries?

The driver now strictly requests the "chrg_det" interrupt by name, but older
DTBs only provide "se1". Without a fallback to check for the old name,
cpcap_usb_init_irq() will return -ENODEV and abort the probe.

[ ... ]

> @@ -426,30 +457,52 @@ static int cpcap_usb_set_uart_mode(struct cpcap_phy=
_ddata *ddata)
>  	if (error)
>  		goto out_err;
> =20
> -	if (ddata->pins_uart) {
> -		error =3D pinctrl_select_state(ddata->pins, ddata->pins_uart);
> +	if (cpcap_enable_uart && ddata->pins_uart) {

[Severity: Medium]
Can a race condition occur when reading the global cpcap_enable_uart module
parameter?

Since it is modifiable via sysfs and evaluated multiple times independently
within cpcap_usb_set_idle_mode(), a concurrent write could change its value
mid-execution. This might result in a mismatched configuration, such as
setting UART pinctrl but then improperly applying SUSPEND_SPI later in the
function.

> +		error =3D pinctrl_select_state(ddata->pins,  ddata->pins_uart);
> +		if (error)
> +			goto out_err;
> +	} else if (!cpcap_enable_uart && ddata->pins_ulpi) {
> +		error =3D pinctrl_select_state(ddata->pins, ddata->pins_ulpi);
>  		if (error)
>  			goto out_err;
>  	}

[ ... ]

> @@ -457,6 +510,8 @@ static int cpcap_usb_set_uart_mode(struct cpcap_phy_d=
data *ddata)
>  	if (sysrq & 1)
>  		sysrq_toggle_support(sysrq);
> =20
> +	dev_dbg(ddata->dev, "set %s mode\n", cpcap_enable_uart ? "UART" : "IDLE=
");
> +
>  	return 0;
> =20
>  out_err:
> +	dev_err(ddata->dev, "%s failed with %i\n", __func__, error);
> +
> +	return error;
> +}

[Severity: Medium]
Is it possible for the system's SysRq functionality to be permanently left
disabled on an error path?

In cpcap_usb_set_idle_mode(), sysrq is disabled to prevent line glitches.
If any subsequent hardware configuration step fails, the function jumps to =
the
out_err label here and returns without restoring the original sysrq state v=
ia
sysrq_toggle_support().

[ ... ]

> @@ -697,13 +848,9 @@ static int cpcap_usb_phy_probe(struct platform_devic=
e *pdev)
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
> +	cpcap_usb_set_idle_mode(ddata);
>  	cpcap_usb_try_musb_mailbox(ddata, MUSB_VBUS_OFF);
> =20
>  	usb_remove_phy(&ddata->phy);

[Severity: Critical]
This is a pre-existing issue, but does a race condition exist during driver
removal that allows the devm-managed threaded IRQ handler to schedule
detect_work after it has been canceled?

Because the IRQ is devm-managed, it is still active when
cancel_delayed_work_sync() is called at the end of cpcap_usb_phy_remove().

If the IRQ thread in cpcap_phy_irq_thread() evaluates ddata->active !=3D 0
before it is cleared, but is preempted before calling schedule_delayed_work=
(),
the remove function can finish and cancel the work.

Devres will then wait for the preempted IRQ thread to finish. The thread wi=
ll
resume and schedule the delayed work, and devres will then free ddata. When
the timer expires, the workqueue will execute cpcap_usb_detect() using the
freed ddata.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260704073843.1750=
458-1-ivo.g.dimitrov.75@gmail.com?part=3D2

