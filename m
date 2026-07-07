Return-Path: <devicetree+bounces-321968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IAYSIeLjTGp6rgEAu9opvQ
	(envelope-from <devicetree+bounces-321968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 13:32:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C9A71AF76
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 13:32:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BO3zqmPl;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321968-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321968-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EFA633066276
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 11:24:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66EC33F7888;
	Tue,  7 Jul 2026 11:24:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993E23F7A94
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 11:24:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783423494; cv=none; b=KBYVgD9BUWidq2b0+5cThriyIuCm74OrAsq1fnMbn3wt2S7NgqKRQc5YcPy78xx+b2+LpoWhlOfoGCWtTKxsRczI5J4ZRW7vTCj9u5ewK+abnLgidED/guW2ASMTBCWq7DhoC+cFAHlKgOe28aIkDqEJG0o2WPM0MoD7bn3v4RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783423494; c=relaxed/simple;
	bh=NR0bkDV1QOKg+10SikLdx9qiPIQFykZsDLERb7G23uM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J+Ay7BFoKRrzkiKigvL0+b9duOLmiubOLBLEzLNahv904aA+7UQym76s6ulyeVWrqEMncPZs5sNMD7uF/dMhH87ch2tHytWLO2Kk2YlaElMclqa9IROiHLbzVbkuYor4BjfCWF4frZX0dvYsWcYvgSP3N7ymtDGg+VBB85b4Ff8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BO3zqmPl; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2840A1F00A3D;
	Tue,  7 Jul 2026 11:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783423492;
	bh=ZNh/PZwB2OeHoUzha/BnCKKANz3ipWgvTwILkIfaq3E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BO3zqmPl4YLGOhHlDAgWHgnjtto/xIxSymz/9rYY1nd5/RbJtxsW0I9U+XbNSIF4A
	 iFdOp5x4zymrKBb4HRAlrjqHgClkXTw8scHze9rH1x799zPabLAMNaDF0kO1Jw+crK
	 Yb8/qu6I/q9MEPJSW7+epSIGaZgMes4ugNzZqFX4yMCLszwXrVHx6ZyTwLcbI9ccsz
	 euVqOqGlfkZzlVGHz52jl3GWZzWaAcntIs01N1OpoNxJZP1Q88566ucoW8RxJwdyJ1
	 uTbBLRsP5355rWGN4y8gby2TmyQmAYZghBTkSPkHT4ZaEmG07VB1oti+LBVMTaygoe
	 vEtsa8wfi4HrQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v5 3/4] net: pse-pd: realtek-pse-mcu: add I2C
 transport
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jonas Jelonek" <jelonek.jonas@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260706112425.3149226-4-jelonek.jonas@gmail.com>
References: <20260706112425.3149226-1-jelonek.jonas@gmail.com>
 <20260706112425.3149226-4-jelonek.jonas@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 11:24:51 +0000
Message-Id: <20260707112452.2840A1F00A3D@smtp.kernel.org>
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
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321968-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jelonek.jonas@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:jelonekjonas@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D1C9A71AF76

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unsafe DMA on stack-allocated buffers in native I2C transport.
--

commit 0cfb33bb6548fde90d8e33161d69d564f969591e
Author: Jonas Jelonek <jelonek.jonas@gmail.com>

net: pse-pd: realtek-pse-mcu: add I2C transport

Add the I2C/SMBus transport for the Realtek/Broadcom PSE MCU core. It
registers the MCU on an I2C bus and provides the send/recv callbacks the
core uses to exchange the 12-byte frames.

> diff --git a/drivers/net/pse-pd/realtek-pse-mcu-i2c.c b/drivers/net/pse-p=
d/realtek-pse-mcu-i2c.c
> new file mode 100644
> index 0000000000000..6e6e3645c5090
> --- /dev/null
> +++ b/drivers/net/pse-pd/realtek-pse-mcu-i2c.c

[ ... ]

> +static int rtpse_mcu_i2c_native_send(struct rtpse_mcu_ctrl *pse, const s=
truct rtpse_mcu_msg *req)
> +{
> +	struct i2c_client *client =3D to_i2c_client(pse->dev);
> +	int ret;
> +
> +	ret =3D i2c_master_send(client, (const u8 *)req, RTPSE_MCU_MSG_SIZE);

[Severity: High]
Does this code pass a stack-allocated buffer to i2c_master_send()?

If the underlying I2C bus master driver uses DMA for this 12-byte transfer,
passing a stack address can trigger a BUG/WARN on systems with
CONFIG_VMAP_STACK=3Dy, or corrupt memory due to cache line sharing.

It looks like the req buffer is allocated on the stack in the core driver,
for example in rtpse_mcu_port_query():

drivers/net/pse-pd/realtek-pse-mcu-core.c:rtpse_mcu_port_query() {
	...
	struct rtpse_mcu_msg req;
	...
}

> +	if (ret < 0)
> +		return ret;
> +	return ret =3D=3D RTPSE_MCU_MSG_SIZE ? 0 : -EIO;
> +}
> +
> +static int rtpse_mcu_i2c_native_recv(struct rtpse_mcu_ctrl *pse, const s=
truct rtpse_mcu_msg *req,
> +				     struct rtpse_mcu_msg *resp)
> +{
> +	struct i2c_client *client =3D to_i2c_client(pse->dev);
> +	int tries, ret;
> +
> +	for (tries =3D 0; tries < RTPSE_MCU_I2C_MAX_TRIES; tries++) {
> +		if (tries > 0)
> +			msleep(RTPSE_MCU_I2C_RETRY_MS);
> +
> +		ret =3D i2c_master_recv(client, (u8 *)resp, RTPSE_MCU_MSG_SIZE);

[Severity: High]
Can this code also pass a stack-allocated buffer to i2c_master_recv()
for the resp pointer?

Like with req, resp also seems to be allocated on the stack in the core dri=
ver.

> +		if (ret < 0)
> +			return ret;
> +		if (ret =3D=3D RTPSE_MCU_MSG_SIZE && rtpse_mcu_resp_is_final(req, resp=
))
> +			return 0;
> +	}
> +
> +	return -ETIMEDOUT;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706112425.3149=
226-1-jelonek.jonas@gmail.com?part=3D3

