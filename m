Return-Path: <devicetree+bounces-311330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wlM/J21bLWoXfQQAu9opvQ
	(envelope-from <devicetree+bounces-311330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 15:30:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D96567EAE1
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 15:30:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UIxHwtMf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311330-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311330-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B73A23020126
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 13:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 468B43E5A08;
	Sat, 13 Jun 2026 13:30:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7F03E9C1B
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 13:30:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781357412; cv=none; b=X6cXiVSmov+iB240QEWkiCr+Hv9vDzZb/v6TH3MAe53V3lrhX6A1FumyXH2jZqQs0CwuUCU1nM7hmyC/1Eg+ZUO9vSa/CEu3aNxWXgGUsMt+yTct1WPOwzqDJD1rXE1mJez7GoQNwS49SJGTohSk9UXt2rIariGCV6/UxQu+0nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781357412; c=relaxed/simple;
	bh=8t24BhAIUyEdk8uFyt8phQOL9TQ8l09rUNKD/ubvVXE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bmpXN5K5Sdbdat6oMscrKndFPw2VgFyNhEqL2dPC1efnprqOPx/rbiiQ/vjm79xdYxKrhoPh/yvU6GoCrRX7raS5X72aav2WfU/r0aion58xi4xGIRf9ktTeYT5RQjVNItmf1tqN9XXdS8mZAvwRs85aAH4Nej0qTcBnIoDzBm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIxHwtMf; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B3F91F000E9;
	Sat, 13 Jun 2026 13:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781357409;
	bh=rT6Yj7/arTa1X0nY5wv2ejUk+wEdtumMhU5HZzeNkxs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UIxHwtMfLb5FF9TlhxkjheYf/fvRxSeQTjlaAf2B9Fu42wjwdhxDojbz4aie7aml/
	 GY+2P6ExSjArV79O2iM30Qvff3nxrd9CIdYt8U0hvMB2zV1BWJ+ARebjRENK/5YbJM
	 PjMh3chHw07VFRv7/5CBT+yjKSfe9yLNdZh7fcvaA33egrJKUXr7AdvK30NzEGVNVe
	 Eb0h6Bdmeu+q2l2M65P37vv6UbWB8bk5vg/ZW59VHbgdXzKFEu0K/Irb6hx5fHKW+f
	 vmMHgQTstdPtaGA2QcyyfrRp6SIOM2wCI6q/QifyyTxNnpfcHURBwJMg0SiZDUgBfh
	 JAUccNwJKWoFg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v2 2/2] net: pse-pd: add Realtek/Broadcom PSE
 MCU driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jonas Jelonek" <jelonek.jonas@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260612132944.460646-3-jelonek.jonas@gmail.com>
References: <20260612132944.460646-3-jelonek.jonas@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 13:30:08 +0000
Message-Id: <20260613133009.1B3F91F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311330-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jelonek.jonas@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:jelonekjonas@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D96567EAE1

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The PoE power supply regulator is enabled after the PSE system is =
globally enabled, which can trigger hardware faults.
- [Medium] A race condition in the UART transport between `rtpse_uart_send(=
)` and `rtpse_uart_receive()` can cause spurious transaction failures (-EIO=
) for new commands.
--

commit ee055c1d6f6679a77708ffd42882e725da96d11d
Author: Jonas Jelonek <jelonek.jonas@gmail.com>

net: pse-pd: add Realtek/Broadcom PSE MCU driver

A range of PoE switches use a small microcontroller on the PCB to front
the actual PSE silicon. The host CPU talks to that MCU over I2C/SMBus or
UART using a fixed 12-byte request/response protocol.

> diff --git a/drivers/net/pse-pd/realtek-pse-core.c b/drivers/net/pse-pd/r=
ealtek-pse-core.c
> --- /dev/null
> +++ b/drivers/net/pse-pd/realtek-pse-core.c

[ ... ]

> +int rtpse_register(struct rtpse_ctrl *pse)
> +{

[ ... ]

> +	if (!info.system_enable) {
> +		ret =3D rtpse_set_global_state(pse, true);
> +		/* Dialects without a global-state concept (e.g. BCM) return
> +		 * -EOPNOTSUPP; treat that as "no separate enable required".
> +		 */
> +		if (ret && ret !=3D -EOPNOTSUPP)
> +			return dev_err_probe(pse->dev, ret,
> +					     "failed to enable PSE system\n");
> +	}
> +
> +	ret =3D regulator_enable(pse->poe_supply);

[Severity: High]
Does this enable sequence trigger hardware faults? If rtpse_set_global_stat=
e()
is called before regulator_enable(), the PSE chips might actively sense and
deliver power before their main power rail is stable. This could cause the
hardware to detect an Under-Voltage Lockout (UVLO) fault.=20

Should the poe_supply be enabled and allowed to stabilize before globally
enabling the system?

> diff --git a/drivers/net/pse-pd/realtek-pse-uart.c b/drivers/net/pse-pd/r=
ealtek-pse-uart.c
> --- /dev/null
> +++ b/drivers/net/pse-pd/realtek-pse-uart.c

[ ... ]

> +static size_t rtpse_uart_receive(struct serdev_device *serdev,
> +				 const u8 *buf, size_t count)
> +{

[ ... ]

> +	scoped_guard(spinlock_irqsave, &ctx->rx_lock) {
> +		take =3D min(count, sizeof(ctx->rx_buf) - ctx->rx_len);
> +		if (take) {
> +			memcpy(ctx->rx_buf + ctx->rx_len, buf, take);
> +			ctx->rx_len +=3D take;
> +			done =3D (ctx->rx_len =3D=3D sizeof(ctx->rx_buf));
> +		}
> +	}
> +	if (done)
> +		complete(&ctx->rx_done);
> +
> +	/* consume all to avoid desync/misalignment */
> +	return count;
> +}

[ ... ]

> +static int rtpse_uart_send(struct rtpse_ctrl *pse, const struct rtpse_mc=
u_msg *req)
> +{
> +	struct rtpse_uart *ctx =3D to_rtpse_uart(pse);
> +	int written;
> +
> +	/* clear any leftover rx state before transmitting */
> +	reinit_completion(&ctx->rx_done);
> +	scoped_guard(spinlock_irqsave, &ctx->rx_lock)
> +		ctx->rx_len =3D 0;

[Severity: Medium]
Can this sequence cause spurious transaction failures for new commands?=20
In rtpse_uart_send(), reinit_completion() is called outside the rx_lock
before clearing rx_len. Concurrently, in rtpse_uart_receive(), complete()
is also called outside the spinlock.

If a delayed UART RX interrupt from a previous timed-out transaction fires
just as a new transaction starts, could the interrupt handler fill rx_buf
and call complete() after the new send reinitializes the completion, but
before it clears rx_len?=20

This might cause the new transaction to return immediately from
wait_for_completion_timeout() and falsely fail with -EIO due to rx_len
being evaluated as incomplete.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612132944.4606=
46-1-jelonek.jonas@gmail.com?part=3D2

