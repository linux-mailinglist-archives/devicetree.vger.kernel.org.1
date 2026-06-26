Return-Path: <devicetree+bounces-315972-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1ILZBNktPmrUAwkAu9opvQ
	(envelope-from <devicetree+bounces-315972-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:44:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A18FE6CB08D
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:44:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ntg9w0Na;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315972-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315972-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1B87A3012550
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 07:44:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53E333E3C73;
	Fri, 26 Jun 2026 07:44:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362BD3E3C62
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 07:44:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782459862; cv=none; b=R6bBz7DO+FPQOXA+KlS8Ds/M76GW9E9mK1G/P+d7/SG9WAgOpOoPBcqPR+JN5GPUdJQK7PES32w85IBcFtgvNIOQ84I2aSNcxWBPGUlaNdjPZKWpxgadbmt+F/vKWSq3xnK7sP2hMrbe21u83lwUS9kFjsCGgkpzdUsngqio/5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782459862; c=relaxed/simple;
	bh=MrE0YpDWB1rSNlwoSvXlRFBX/3x2/X3wnJR7nMmVLEg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lxLHBz/A3k6f9eDInkLQC3NYdD/8UkDe66QuSvZF4Ro5VssQQo3Kadhg5u5NUb6SuGOrNfIYZ4tnWLQiHH4lmC+N2dWY5RpVdNKrrYeDFLv1bmZPMa+Af5ZOq6Wre3/QECcz8H+y7VLY0nR4Gm2kMAHSa2FmGZvcZKoYb7+/nRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntg9w0Na; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EA031F00A3A;
	Fri, 26 Jun 2026 07:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782459860;
	bh=HCTIOL64YvumjJBw6F4J2kcfjSDWTEAWZj/K63o+jj0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ntg9w0NaahbqZqukaIhhKa9vzBh6do4uHbHnZNaLgBoZNlOKa2JHBE8CHk8bjCk1Y
	 O9DxWX2f/YMLGVm+IAm3UzI4B3jpabd+ytOtJvBkCFzwks4KG9fsE8Ak7HjMm58t+h
	 /hD+I/ZSzMaDmqH9T4GdRpnh6L1SNYBqMb4ooGJfEg0V7VLxk1/dd6BOM0D+gLgqrN
	 l+846EiJeXLpQGCfwBS7MKLFF1qfqbfC3x0VcGcdPoUTLxnhlOz93mmKtRb4ea5bhu
	 ZEzdNhNuB+WKzRm/NM4sF/vkVykOB7SUMITdu3JprQSU7T4cO1b2e5nxlCHR/bU0WL
	 PwhO11csG6IGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: broadcom: bcm2712: Add reboot modes to
 firmware node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gregor Herburger" <gregor.herburger@linutronix.de>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260626-rpi-tryboot-v1-4-490b1c4c4970@linutronix.de>
References: <20260626-rpi-tryboot-v1-0-490b1c4c4970@linutronix.de>
 <20260626-rpi-tryboot-v1-4-490b1c4c4970@linutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 07:44:20 +0000
Message-Id: <20260626074420.8EA031F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315972-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gregor.herburger@linutronix.de,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,lists.linux.dev:replyto,sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A18FE6CB08D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [Critical] Adding `mode-*` properties activates a dormant Use-After-Free =
and Double-Free vulnerability in the driver's unbind path.
--

commit cd92f6ce5b48afd036127289b2412bed6be015fc
Author: Gregor Herburger <gregor.herburger@linutronix.de>

arm64: dts: broadcom: bcm2712: Add reboot modes to firmware node

The raspberry pi firmware driver allows the tryboot reboot mode. Add
this mode and normal boot mode to the node.

> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi b/arc=
h/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> index b7a6bc34ae1ab..67095c7ff770d 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi
> @@ -49,6 +49,8 @@ firmware: rpi-firmware {
>  			compatible =3D "raspberrypi,bcm2835-firmware", "simple-mfd";
> =20
>  			mboxes =3D <&mailbox>;
> +			mode-normal =3D <0>;
> +			mode-tryboot =3D <1>;

[Severity: Critical]
This is a pre-existing issue, but does adding these properties to the
device tree activate a dormant use-after-free and double-free vulnerability
in the driver's unbind path?

Looking at drivers/firmware/raspberrypi.c, the driver registers the reboot
mode using the devm variant during probe, but also manually unregisters it
during remove:

drivers/firmware/raspberrypi.c:rpi_firmware_remove() {
    ...
    reboot_mode_unregister(&fw->reboot_mode);
    rpi_firmware_put(fw);
    ...
}

The call to rpi_firmware_put() drops the reference and frees the fw object.

Because devm_reboot_mode_register() was used during probe, the devres clean=
up
will eventually run devm_reboot_mode_release() which calls
reboot_mode_unregister() a second time. This passes the now-freed
fw->reboot_mode pointer.

Furthermore, the list strings are freed during the first unregister call:

drivers/power/reset/reboot-mode.c:reboot_mode_unregister() {
    ...
    list_for_each_entry(info, &reboot->head, list)
        kfree_const(info->mode);
    ...
}

Because the list pointers are not cleared and the list elements are preserv=
ed,
the second unregister call will iterate over the list again. Since this pat=
ch
populates that list by adding mode-normal and mode-tryboot, the second call
will try to free the already-freed info->mode pointers.

Should the manual reboot_mode_unregister() call be removed from
rpi_firmware_remove() before adding these device tree properties?

> =20
>  			firmware_clocks: clocks {
>  				compatible =3D "raspberrypi,firmware-clocks";

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626-rpi-tryboo=
t-v1-0-490b1c4c4970@linutronix.de?part=3D4

