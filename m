Return-Path: <devicetree+bounces-323468-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l8fPBjRiT2qNfgIAu9opvQ
	(envelope-from <devicetree+bounces-323468-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:56:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EA272E8DC
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:56:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kQAuME25;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323468-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323468-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B8BE03070F38
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 530873E4C7F;
	Thu,  9 Jul 2026 08:49:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049793803CC
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:49:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783586955; cv=none; b=iWGQZH8hwb/QrR03clqkS08WstZuqWdRRKciZq0WxyGNlZtiY74c5iC0bhSw8A9YptQacno0g/EKWdJPJUucD68NtLn8W3X5fLRrc2WR6pZuz8Rw9g4LRGRlzQ48PJjs/qOs6k2li5BTIA8HP8xTJPe1OhTNfXKXSymM0eyggcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783586955; c=relaxed/simple;
	bh=gsomvll/yskup2TjMOSfE+EqOEI5QEeMNDIJlQX8DmY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FrrV8GMsLt5cQ4C6GubF8rIa8opbF39UaI9lNoFw5EiTVLf9l9cJ1/Vl0AMoM9uTXJsArMtCW/k6dF/tS3phS1Y8QQLI8ctCoEr2biVR3RDOcqkdM/oiDofd4qKg01bPDTHAAsdfflltSHu6qsv+Sa6HUSF4FWs02bHkdIYU9NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQAuME25; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 570DE1F00A3D;
	Thu,  9 Jul 2026 08:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783586953;
	bh=wbhmfGYM4nDJv+HxyE38VZwID5b3ujXDK3pB1aePGxk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kQAuME258JlLnAPVgXlyCyKUAfn/llJiFhT6Wyz5zxyz2x7PTunKiiznT8YdEeAVs
	 XY8yncDcTgW6gBCufblTFXUjTUhqcyCJPYNDpgN36tsQBnXNMF2yr70TWyWqvRfpzE
	 7pUBMEYpEhx+JedZllIF4rHkUL6AyeqZOUwY9fgG6jwiPK3Lruqge2FdCyDi30SbLJ
	 v7y9WYzH43492MBhJSXdMVTyQUed5pKtwbElIzly4v8QkNAzbyJ7fwh7SV7VC8/Ie7
	 3aFsE5/W1zXdBkabx6S4WLFvaKGgHocdOTofOgZkqHiEN6/cpkyWmRhyS/jSq0pCjN
	 uoryNn8XUo21w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] usb: typec: ucsi: Add ITE IT885x Type-C PD
 controller driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Amber Kao" <amber.kao@ite.com.tw>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260710-ucsi-itepd-feature-v2-2-41943fd5df38@ite.com.tw>
References: <20260710-ucsi-itepd-feature-v2-0-41943fd5df38@ite.com.tw>
 <20260710-ucsi-itepd-feature-v2-2-41943fd5df38@ite.com.tw>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 08:49:12 +0000
Message-Id: <20260709084913.570DE1F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323468-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:amber.kao@ite.com.tw,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,ite.com.tw:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 60EA272E8DC

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Race condition during driver removal causing a use-after-free on t=
he `ucsi->connector` array.
- [High] Infinite IRQ storm and CPU lockup due to silently ignored I2C writ=
e or memory allocation failures.
--

--- Patch [2]: [PATCH v2 2/2] usb: typec: ucsi: Add ITE IT885x Type-C PD co=
ntroller driver ---
commit a72e407ddecce41bb76245d04b0009fb6795ba01
Author: Amber Kao <amber.kao@ite.com.tw>

usb: typec: ucsi: Add ITE IT885x Type-C PD controller driver

This commit adds core UCSI support for the ITE IT885x USB Type-C Power
Delivery controller over I2C. It provides port and partner registration,
deferring Alternate Mode support and command translation to future patches.

> diff --git a/drivers/usb/typec/ucsi/ucsi_itepd.c b/drivers/usb/typec/ucsi=
/ucsi_itepd.c
> new file mode 100644
> index 0000000000000..e364a3bd7df4e
> --- /dev/null
> +++ b/drivers/usb/typec/ucsi/ucsi_itepd.c

[ ... ]

> +static int itepd_write_reg(struct itepd *itepd, u8 reg, const void *data=
, u32 len)
> +{
> +	struct i2c_client *client =3D itepd->client;
> +	struct i2c_msg msg[1];
> +	u8 *buf;
> +	int ret;
> +
> +	buf =3D kzalloc(len + 1, GFP_KERNEL);
> +	if (!buf)
> +		return -ENOMEM;

[ ... ]

> +static irqreturn_t itepd_irq_process(struct itepd *itepd)
> +{
> +	u8 msg_in[ITEPD_MSG_IN_MAX_LEN] =3D {};
> +	__le32 le_cci;
> +	u32 cci =3D 0;
> +	u8 event;
> +	u8 len;
> +	int ret;

[ ... ]

> +out_clear:
> +	itepd_write_reg(itepd, ITEPD_VENDOR_WC_INT, &event, sizeof(event));
> +
> +	if (!ret && (event & ITEPD_ALERT_UCSI_EVENT))
> +		ucsi_notify_common(itepd->ucsi, cci);
> +
> +	return IRQ_HANDLED;
> +}

[Severity: High]
Could a failure to clear the interrupt result in an infinite IRQ storm?

Looking at itepd_write_reg(), it dynamically allocates memory via kzalloc().
If this allocation fails with -ENOMEM, or if the underlying I2C transfer
fails, the hardware interrupt is not actually cleared on the device.

Because itepd_irq_process() ignores the return value of itepd_write_reg()
and unconditionally returns IRQ_HANDLED, the kernel IRQ subsystem will unma=
sk
the line and immediately trigger the handler again, potentially causing a C=
PU
lockup under memory pressure or I2C bus errors.

[ ... ]

> +static void itepd_remove(struct i2c_client *client)
> +{
> +	struct itepd *itepd =3D i2c_get_clientdata(client);
> +
> +	ucsi_unregister(itepd->ucsi);
> +	free_irq(client->irq, itepd);
> +	ucsi_destroy(itepd->ucsi);
> +}

[Severity: High]
Is there a race condition during driver removal that could lead to a
use-after-free?

This teardown sequence calls ucsi_unregister() before free_irq().

When ucsi_unregister() is called, it frees the ucsi->connector array. If a
pending hardware interrupt is processed by the threaded IRQ handler
after ucsi_unregister() completes but before free_irq() is called,
itepd_irq_process() will call ucsi_notify_common().

This sequence would result in ucsi_notify_common() accessing the freed
connector array.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-ucsi-itepd=
-feature-v2-0-41943fd5df38@ite.com.tw?part=3D2

