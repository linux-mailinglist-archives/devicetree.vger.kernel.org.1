Return-Path: <devicetree+bounces-319274-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ehO0Blk6Rmo/MQsAu9opvQ
	(envelope-from <devicetree+bounces-319274-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:15:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A208F6F5B9A
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:15:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Rs7a3hQ+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319274-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-319274-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 36B3C30A1A16
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 10:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6A2A48C8D4;
	Thu,  2 Jul 2026 09:55:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC9B306774;
	Thu,  2 Jul 2026 09:55:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782986142; cv=none; b=qfiCTNmE5N3L/fj6Ozdk+pWus8XdAM7YZv7eqZsuus2HLI0m+pvqvdRdMTdCMWnv0V5l9RL3QlIUcJTHhZShpvl5LsgGWVh2pP/iyAbV/3Nlxe0pOCB+r0le/J6VCJhhstxw4/x9fi6USfXNXl0L/Tlpphgu/fVu57gSvH9Z3RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782986142; c=relaxed/simple;
	bh=IOa4YslObpuFsuhBaR58lK5hBi6uKmAYtLXUzJaRgAw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tmHCLpDtmuQMdf2M0TolTX+901Acv64ZJCNcdn2dT02blKBx/2sXVF38pTWVJ0mDZsdjI43t6fObuprG5WoktinLDQuLnawVU6zCJ7XXI4YgJsGIDwFZ6VWTi+DUprQBU6syYyxff0eweklGAEzLIYuqpBQSzBkKYba11xJlHuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs7a3hQ+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E01341F000E9;
	Thu,  2 Jul 2026 09:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782986141;
	bh=4qcmjnN61flgnSmJnX9vkEpulIuleuHhC+4NM6pKryo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Rs7a3hQ+yWyG8E7ofxueyAjg/1hdYLXsWfo79nxtd7LEqGPwyknnt7DzFmxajI6WA
	 4XLPNhh/P/wWv2tanBym1j3fWIJWF+nn56Xww26szI72yn1RbXlsesVfo31+dverNa
	 GVjrav2HOPVXm1zA9g8THFnPFUYDxVSSaEclO5ZAqgE0ONlxNLc9HtNyC2I6L8KR+3
	 VEJTXW8jWWawr6zI7aZKch9B2j0PG6M+whMtCqp/vHQ+JJ/NPATUc6354GJNdrhrp5
	 4NhyQG826JkQoLSzrXfnGoqqFVj/C3phrHDNvHUiMWYKyC9IGME89PscNmBKrGI6tt
	 y4hF0hbvhxO7w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 03/18] arm64: dts: ti: k3-j721s2-main: Add multiple
 channels for CSI2RX DMA
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yemike Abhilash Chandra" <y-abhilashchandra@ti.com>
Cc: conor+dt@kernel.org, imx@lists.linux.dev, robh@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260702093123.1048575-4-y-abhilashchandra@ti.com>
References: <20260702093123.1048575-1-y-abhilashchandra@ti.com>
 <20260702093123.1048575-4-y-abhilashchandra@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:55:39 +0000
Message-Id: <20260702095540.E01341F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-319274-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,ti.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:y-abhilashchandra@ti.com,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A208F6F5B9A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] DMA channels are permanently leaked during early probe failures an=
d during module unbind due to a flawed PM runtime status check.
- [High] Missing `pm_runtime_disable()` in the `probe` function's error pat=
hs leads to an unbalanced and permanently enabled PM runtime state.
--

commit 79fa01b02ba17aabe215aeb8794e92dac90f80ad
Author: Vaishnav Achath <vaishnav.a@ti.com>

arm64: dts: ti: k3-j721s2-main: Add multiple channels for CSI2RX DMA

J721E CSI2RX SHIM layer can support up to 32 DMA channel contexts. Add
additional DMA channels to enable multistream support for CSI2RX.

> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi b/arch/arm64/boot=
/dts/ti/k3-j721s2-main.dtsi
> index 5cac119e4292a..f4b8713873b17 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi
> @@ -1239,8 +1239,11 @@ ti_csi2rx0: ticsi2rx@4500000 {
>  		ranges;
>  		#address-cells =3D <2>;
>  		#size-cells =3D <2>;
> -		dmas =3D <&main_bcdma_csi 0 0x4940 0>;
> -		dma-names =3D "rx0";
> +		dmas =3D <&main_bcdma_csi 0 0x4940 0>, <&main_bcdma_csi 0 0x4941 0>,
> +		       <&main_bcdma_csi 0 0x4942 0>, <&main_bcdma_csi 0 0x4943 0>,
> +		       <&main_bcdma_csi 0 0x4944 0>, <&main_bcdma_csi 0 0x4945 0>,
> +		       <&main_bcdma_csi 0 0x4946 0>, <&main_bcdma_csi 0 0x4947 0>;
> +		dma-names =3D "rx0", "rx1", "rx2", "rx3", "rx4", "rx5", "rx6", "rx7";

[Severity: High]
This isn't a bug introduced by this patch, but increasing the channel
allocations from 1 to 8 will exhaust the system's DMA engine much faster due
to an existing channel leak in the driver.

During an early probe failure before pm_runtime_set_active() is called, the
device status defaults to RPM_SUSPENDED.

In drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c:ti_csi2rx_cleanup_=
ctx(),
the driver checks this status:

    if (!pm_runtime_status_suspended(ctx->csi->dev))
        dma_release_channel(ctx->dma.chan);

Because the status is already suspended, it wrongly assumes the channels we=
re
freed by a suspend callback and skips releasing them.

This same leak also happens on module unbind. In ti_csi2rx_remove(), if the
device is active, the driver forces the state to suspended without disablin=
g PM
runtime first:

    if (!pm_runtime_status_suspended(&pdev->dev))
        pm_runtime_set_suspended(&pdev->dev);

This alters the status without invoking the runtime_suspend callback that w=
ould
normally free the channels. Does it make sense to fix this PM state handling
so these newly added DMA channels aren't permanently leaked?

[Severity: High]
This is a pre-existing issue, but there is also a missing pm_runtime_disabl=
e()
in the probe error path that could cause PM state tracking issues when this
node fails to probe.

If ti_csi2rx_notifier_register() or devm_of_platform_populate() fails, the =
code
jumps to err_ctx:

drivers/media/platform/ti/j721e-csi2rx/j721e-csi2rx.c:ti_csi2rx_probe() {
    ...
err_ctx:
    while (i--)
        ti_csi2rx_cleanup_ctx(&csi->ctx[i]);
    ti_csi2rx_cleanup_v4l2(csi);
err_dma_chan:
    ...
}

This error path misses a call to pm_runtime_disable(), leaving the PM runti=
me
disable_depth unbalanced. When a subsequent probe attempt calls
pm_runtime_enable() again, could the disable_depth underflow and break power
management for the device?

>  		power-domains =3D <&k3_pds 38 TI_SCI_PD_EXCLUSIVE>;
>  		status =3D "disabled";

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702093123.1048=
575-1-y-abhilashchandra@ti.com?part=3D3

