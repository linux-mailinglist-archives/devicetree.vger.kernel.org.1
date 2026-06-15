Return-Path: <devicetree+bounces-312063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KVr8KDkjMGrZOgUAu9opvQ
	(envelope-from <devicetree+bounces-312063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:07:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2976881BF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:07:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aN9dqZCG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312063-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312063-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D456305ECEE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C63404BEC;
	Mon, 15 Jun 2026 15:58:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442123FF88C
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 15:58:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781539130; cv=none; b=A/w0/ghlCuT7D4aObwfPhh0a85Y2A6erzqvBG9F/wX6G7vCPtAHHyLmtPDlTxS0pSTHrMi7+nlbvAfst+nfAiH4Fpu1YUQX2mErBPCHRPAa1ARuANejJK2pAVE2YJv+Px73MIzunjx8IYsd7Ih5JqrlSdtd7dQ4rTLG3tqSo6Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781539130; c=relaxed/simple;
	bh=GwTyeCcAkmUMi+mtFHDrdyKccpK8Nf1MHUsXu3TPNr0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VSDQKNjRgaW8eTJ0nh7igIUWbPO7VKGxis+R0g+KtaUjCd55qGB/4Ch9h+xzwgSItvTvcgS7KrbrK/PuLnD9SyjEaVMPqzaEzDQB56bVYzYvtPok84Pms2ZacCtowaBDKntXIoOu5oVgsDbKPF947NnsUBDhfbm/s9zUbhzOOhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aN9dqZCG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9874B1F00A3A;
	Mon, 15 Jun 2026 15:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781539128;
	bh=qLUVB67qyPlJXtQ1zJBFYTTWyUDg8hZP5RYyNcjpJwM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aN9dqZCGN1CLZCnTR0ZDD5EfN46EC3zgv7t1CiMu7Ptv5UX+GtjNMYYOLYIT22zkX
	 OVtWk+iexcHgyd6rBcfhlhSpBRUH2q23+EJkHL++Dsa2nDN4kX6Q0DSS6zqKaQpfE1
	 7uzTkAx4iMEThZtq2vtFZEn7lMXSdyeg0AUcr7BDPTA9bsv3ecEhWu+4Pn4sgw2//V
	 rKF8fkpto3I7VJtydN/040GuIW5nk96a4/0p9uylTONTp5hE9Tr71wGNVwCSjyLz5F
	 1zwxCgFySK3krC28tw+06h3gwGMCuiuVh8y3W0LQjveGLkzvV1iuzUsoBzzN0i2agw
	 Ja6f2vsTkKiCg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 02/12] rtc: rzn1: Handle EPROBE_DEFER for optional pps
 interrupt
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org
In-Reply-To: <20260615154805.1619693-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260615154805.1619693-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 15:58:48 +0000
Message-Id: <20260615155848.9874B1F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:prabhakarcsengg@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312063-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0F2976881BF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] If the optional 'xtal' clock is not present, `rtc->sync_time` rema=
ins 0, causing `readl_poll_timeout` to use a 0 timeout (infinite wait) and =
`usleep_range` to use a 0 delay.
--

commit 5d75a1049c228d2049afaf29833f1b2f212837d4
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: rtc: rzn1: Handle EPROBE_DEFER for optional pps interrupt

This commit checks for -EPROBE_DEFER from platform_get_irq_byname_optional()
and handles the deferred probe request properly. It intercepts this specific
error condition, assigns it to the return value, and jumps to the
dis_runtime_pm label to avoid ignoring a valid probe deferral.

Fixes: eea7791e00f33 ("rtc: rzn1: implement one-second accuracy for alarms")
Cc: stable@vger.kernel.org

> diff --git a/drivers/rtc/rtc-rzn1.c b/drivers/rtc/rtc-rzn1.c
> index c4ed437354574..f81d691c8b9a2 100644
> --- a/drivers/rtc/rtc-rzn1.c
> +++ b/drivers/rtc/rtc-rzn1.c
> @@ -465,6 +465,10 @@ static int rzn1_rtc_probe(struct platform_device *pd=
ev)
>  	}
> =20
>  	irq =3D platform_get_irq_byname_optional(pdev, "pps");
> +	if (irq =3D=3D -EPROBE_DEFER) {
> +		ret =3D irq;
> +		goto dis_runtime_pm;
> +	}
>  	if (irq >=3D 0)
>  		ret =3D devm_request_irq(&pdev->dev, irq, rzn1_rtc_1s_irq, 0, "RZN1 RT=
C 1s", rtc);

[Severity: High]
If the optional xtal clock is not present, does rtc->sync_time remain 0,
causing readl_poll_timeout() to use a 0 timeout (infinite wait) and
usleep_range() to use a 0 delay?

devm_clk_get_optional() returns NULL if the clock is absent in the device
tree, skipping the calculation:

drivers/rtc/rtc-rzn1.c:rzn1_rtc_probe() {
    ...
    xtal =3D devm_clk_get_optional(dev, "xtal");
    if (IS_ERR(xtal)) {
        ...
    } else if (xtal) {
        rate =3D clk_get_rate(xtal);
        ...
        rtc->sync_time =3D DIV_ROUND_UP(2 * NSEC_PER_MSEC, rate);
    }
    ...
    ret =3D readl_poll_timeout(rtc->base + RZN1_RTC_CTL0, val,
                             !(val & RZN1_RTC_CTL0_CEST), rtc->sync_time,
                             rtc->sync_time * 2);
    ...
}

In include/linux/iopoll.h, a timeout_us of 0 skips the timeout check
entirely, which could lead to a tight infinite loop and a kernel hard lockup
if the hardware fails to clear the CEST bit.

Additionally, rtc->sync_time being 0 causes usleep_range(0, 100) in
rzn1_rtc_set_time(), which may return almost immediately and violate the
hardware's explicit 2-clock-cycle delay requirement (previously hardcoded to
61us).

This regression was introduced by the commit 'rtc: rzn1: Dynamically
calculate synchronization delay based on clock rate' later in this series.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615154805.1619=
693-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D2

