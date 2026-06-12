Return-Path: <devicetree+bounces-310901-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OYpvMUPzK2qgIQQAu9opvQ
	(envelope-from <devicetree+bounces-310901-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:53:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECD767922E
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 13:53:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Xv8EHyeZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310901-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310901-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90D773131B49
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A84D3E95B3;
	Fri, 12 Jun 2026 11:48:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1323E9286
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 11:48:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781264926; cv=none; b=tBc26DE0X6Ng9u5oKpjxSR6f+HeoowJXoS9k8sZ7fhTuwgqoNLKk6KjBR+kzZn+FZdzbJctgsgR0bpFC5EirnxXawr0g5027KQz6RfyuQkwC/nKYbqu9aB52JfTh/YyolzMrVBBy8RbG5m3w3dVtz6czEKyjqkDwnuCIGV8xb64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781264926; c=relaxed/simple;
	bh=AF94pZgWZWVqsTIRirBQfoxE7HLABTCo9Nf76oJ0aWM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lV1b6L9N3ef8yBy/Ib0Gl7rVIj6sjy7jpmly+KfBSBN2eSYZgnMq88+04B2l9bmxiJhF708trHmZuYYXhOH/M1e/Fn1+HbZWmosfRSSxrYGE7aw6P7e9ywFD2rFeiExV91+MDpsOQFAi1g+DD5FnX+cqEZxta/ZQNl8rPHftjrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xv8EHyeZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D7B71F000E9;
	Fri, 12 Jun 2026 11:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781264924;
	bh=l0eK6uNfs2/AAI8q6LCmmvtMa8kyEdDo6RbjQv9ERJM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Xv8EHyeZCaSx2J93dkoqiTlI/5GZ9btasnMNpkkGm4QQCvGPf5IEF+T6F0tw+VWnv
	 qitRQULie9owWPFRmKpGtfHTW2abNbDM1snLGLZ+FMzTmq22R1TKFMKi7TWL8KUV5U
	 1sqmL5C7nCOQO57JUXNIWX/SSPWEFJJ9zp4mJ6nF2Q6cZkHE3Jf4ky+jir7LwpYosE
	 8IPSPpkHl9LdydpH8fKzL7Qa5fumiHeYMJzxEt9zrAe+zsc23txdyB8/bsoW5Sa8+2
	 C5QiQsPxSayWgVyDhfqshfA8n2XoI9ZsO/RAFTJip4HnDK9qZYWWisSx+4/H68u3IH
	 oMNHRgtjJZHpA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 3/9] i3c: master: Add APIs for I3C hub support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Lakshay Piplani" <lakshay.piplani@nxp.com>
Cc: linux-i3c@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, robh@kernel.org
In-Reply-To: <20260612111816.3688240-4-lakshay.piplani@nxp.com>
References: <20260612111816.3688240-4-lakshay.piplani@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 11:48:43 +0000
Message-Id: <20260612114844.5D7B71F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-310901-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,nxp.com:email,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lakshay.piplani@nxp.com,m:linux-i3c@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1ECD767922E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] i3c_master_direct_detach_i3c_dev_locked lacks the unaddressable de=
vice check present in its attach counterpart, leading to a NULL pointer der=
eference in controller drivers.
--

commit a7f74140d15672b8f2824666071ce06e3051e0d8
Author: Aman Kumar Pandey <aman.kumarpandey@nxp.com>

i3c: master: Add APIs for I3C hub support

Add helpers for attaching and detaching I3C devices and CCC helpers
to check CCC support and send CCC commands to prepare for I3C hub support.

> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index ec3547f75469e..59e0f82de6ebd 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c

[ ... ]

> +int i3c_master_direct_attach_i3c_dev_locked(struct i3c_master_controller=
 *master,
> +					    struct i3c_dev_desc *dev)
> +{
> +	int ret =3D 0;
> +
> +	/*
> +	 * We don't attach devices to the controller until they are
> +	 * addressable on the bus.
> +	 */
> +
> +	if (!dev->info.static_addr && !dev->info.dyn_addr)
> +		return 0;
> +
> +	/* Do not attach the master device itself. */
> +	if (master->this !=3D dev && master->ops->attach_i3c_dev)
> +		ret =3D master->ops->attach_i3c_dev(dev);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(i3c_master_direct_attach_i3c_dev_locked);

[ ... ]

> +void i3c_master_direct_detach_i3c_dev_locked(struct i3c_dev_desc *dev)
> +{
> +	struct i3c_master_controller *master =3D i3c_dev_get_master(dev);
> +
> +	/* Do not detach the master device itself. */
> +	if (master->this !=3D dev && master->ops->detach_i3c_dev)
> +		master->ops->detach_i3c_dev(dev);

[Severity: High]
Does this missing address check in the detach helper lead to a NULL pointer
dereference in controller drivers?

The attach helper i3c_master_direct_attach_i3c_dev_locked() gracefully skips
attaching devices without a static or dynamic address and returns 0 (succes=
s).
Because it returns success, callers might naturally invoke this companion
detach API during teardown for these same devices.

However, since this helper lacks the corresponding address check, it
unconditionally invokes the controller's detach callback. Controller drivers
often retrieve the device's private data and immediately dereference it. Si=
nce
the attach phase was skipped, this private data would be NULL.

Should this function also check if the device has an address before calling
the detach callback?

> +}
> +EXPORT_SYMBOL_GPL(i3c_master_direct_detach_i3c_dev_locked);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612111816.3688=
240-1-lakshay.piplani@nxp.com?part=3D3

