Return-Path: <devicetree+bounces-311235-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GWy0L3kCLWrpYwQAu9opvQ
	(envelope-from <devicetree+bounces-311235-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:10:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E56867DEE2
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:10:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="cGwQd5y/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311235-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311235-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C97AF300C006
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 07:10:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D72E377558;
	Sat, 13 Jun 2026 07:10:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842BF31F98B
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 07:10:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781334645; cv=none; b=hKEL5VdTZO8A9TZfx6ZNsanbCh/LgODU55FMFCuN/oayAzw3opPFi3GXAAPavD10CQp4a1Kdt7BABtSz3ZfHVeyafZWKOKTKsQYbid5BI0upTdBnNQ08u9M8zEvwiZkDLijnnMfCONPfhRT2efeDPm0WK7IrX4DP7N8IOaWtqk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781334645; c=relaxed/simple;
	bh=fFJx6rTCv2Yy73q2s/YjaPAgd8dAqpfe+KVH9cITrMc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fyRFKsCG0hLdvZVgttlrsOFTgVSc7mo2ZSfUBEYBgWdRGEDX20ZEC0foXDIuM5nYLkPExACxEotqY/8dyfm++Z5SoflUt2+FR+9suNHCP/U20B45ncYgBZvF6RMRhfSsRMiHF0Ly45bVZSvBQFDm+Ul+4JuXSl4r8rb17dHsUQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGwQd5y/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA1C31F000E9;
	Sat, 13 Jun 2026 07:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781334642;
	bh=QelHcp/KafwD0g3DUeu6MitiuKE6H602dDAL65piGN0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cGwQd5y/VW8kZlzfi6MWIvhR1G0HB77bJCzTNiwDe9pXeXwOEq2woi/a019Ov7gRE
	 HiTyZCRizfIcI5eq/ico9lnnRvWAqFilMUABqKZ/XmRi+aiPASBXA2VZqvbZAJGCui
	 ZQEYih00SO+8zEHy1sX4W5YO+b5uMkvWhgHiUiXJVCwClGBkcuLhuFhyZEVrRpza2I
	 2i2UZBsmPuYCrE/8wSoRGLEo7pwnslvSCnJXIUlu7FhJgfkiRW5kJBSmBlCKUySBSV
	 9tLDTV+PwRe/4j1I2xELxAXheQbx6Uof3/sAdqhzDF97szMMXEUfkUFY6QYdio/coK
	 jDNqBjpxjc54w==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH v4 1/9] accel: rocket: Introduce per-SoC
 rocket_soc_data
Reply-To: sashiko-reviews@lists.linux.dev
To: MidG971 <midgy971@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20260613070116.438906-2-midgy971@gmail.com>
References: <20260613070116.438906-2-midgy971@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 07:10:42 +0000
Message-Id: <20260613071042.AA1C31F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311235-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:midgy971@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5E56867DEE2

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The shared IRQ handler accesses hardware registers without checkin=
g if the device is active.
- [High] The runtime suspend callback disables hardware clocks without sync=
hronizing the shared IRQ.
- [High] The global `rdev` pointer is not reset to NULL when initialization=
 fails, causing a kernel panic on subsequent probes.
- [High] Hardware registers are read during probe without ensuring the devi=
ce resets are explicitly deasserted.
--

commit e068c6d40922642be56ef8ce61fd76a8d5727d7c
Author: Midgy BALON <midgy971@gmail.com>

accel: rocket: Introduce per-SoC rocket_soc_data

Add a per-SoC data structure carried in the OF match table, currently
holding only the NPU AXI address width, and use it for the per-core DMA
mask instead of a hardcoded 40-bit value.

> diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/ro=
cket_core.c
> index b3b2fa9ba645a..09c445af7de73 100644
> --- a/drivers/accel/rocket/rocket_core.c
> +++ b/drivers/accel/rocket/rocket_core.c
> @@ -21,6 +22,10 @@ int rocket_core_init(struct rocket_core *core)
>  	u32 version;
>  	int err =3D 0;
> =20
> +	core->soc_data =3D of_device_get_match_data(dev);
> +	if (!core->soc_data)
> +		return dev_err_probe(dev, -EINVAL, "missing SoC match data\n");
> +
>  	core->resets[0].id =3D "srst_a";
>  	core->resets[1].id =3D "srst_h";
>  	err =3D devm_reset_control_bulk_get_exclusive(&pdev->dev, ARRAY_SIZE(co=
re->resets),

[Severity: High]
This isn't a bug introduced by this patch, but I noticed hardware registers=
 are
read during probe without ensuring the device resets are explicitly deasser=
ted.

Later in rocket_core_init():

	version =3D rocket_pc_readl(core, VERSION);

If the bootloader leaves the NPU in an asserted reset state, attempting to
read its registers will cause a synchronous external abort. Would it make
sense to deassert the resets before accessing registers here?

[ ... ]

> diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/roc=
ket_drv.c
> index 8bbbce594883e..384c38e13acce 100644
> --- a/drivers/accel/rocket/rocket_drv.c
> +++ b/drivers/accel/rocket/rocket_drv.c
[ ... ]
> @@ -213,8 +213,12 @@ static void rocket_remove(struct platform_device *pd=
ev)
>  	}
>  }

[Severity: High]
This is a pre-existing issue, but I noticed the global rdev pointer is not
reset to NULL when initialization fails in rocket_probe() in this file:

	rdev =3D rocket_device_init(drm_dev, &rocket_drm_driver, soc_data);
	if (IS_ERR(rdev)) {
		...
		return PTR_ERR(rdev);
	}

If this fails during the first core's probe, an error pointer is assigned to
the global rdev pointer without being cleared. On the next core's probe, the
check for NULL will fail and it will blindly dereference the error pointer.
Could this be addressed by clearing the global pointer on the error path?

[Severity: High]
This is a pre-existing issue, but the runtime suspend callback in this driv=
er
disables hardware clocks without synchronizing the shared IRQ:

rocket_device_runtime_suspend() {
	...
	clk_bulk_disable_unprepare(ARRAY_SIZE(rdev->cores[core].clks), ...);
	...
}

Should this call synchronize_irq() first to avoid a race condition where the
IRQ handler might be executing mid-flight on another CPU while the hardware
is powered down?

[Severity: High]
This is a pre-existing issue, but in drivers/accel/rocket/rocket_job.c, the
shared IRQ handler accesses hardware registers without checking if the devi=
ce
is active:

rocket_job_irq_handler() {
	...
	u32 raw_status =3D rocket_pc_readl(core, INTERRUPT_RAW_STATUS);
	...
}

Because the IRQ is registered with IRQF_SHARED, if the handler is invoked by
another device while the NPU is runtime suspended, reading the registers can
result in invalid data (~0u) and spurious interrupts. Should it use
pm_runtime_get_if_active() before reading the status register?

[ ... ]

>  static const struct of_device_id dt_match[] =3D {
> -	{ .compatible =3D "rockchip,rk3588-rknn-core" },
> +	{ .compatible =3D "rockchip,rk3588-rknn-core", .data =3D &rk3588_soc_da=
ta },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, dt_match);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613070116.4389=
06-1-midgy971@gmail.com?part=3D1

