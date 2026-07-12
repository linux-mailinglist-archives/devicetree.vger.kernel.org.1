Return-Path: <devicetree+bounces-325039-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i5SnMP2DU2oabgMAu9opvQ
	(envelope-from <devicetree+bounces-325039-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 14:09:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19669744973
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 14:09:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aTzky+l4;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325039-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325039-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 413663006B7C
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 12:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8D5F3A3E60;
	Sun, 12 Jul 2026 12:09:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9836528CF5F;
	Sun, 12 Jul 2026 12:09:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783858166; cv=none; b=CG7HbwQKMfI+wkRciTAp0gjAcDGSRYvlTDuOc3vbxggYky6zmpdjzUGR/NmPRoKb0lLebxyt7UCrbktZLFzUQwbAQHpu+8nfheJazBWR9ZyC1tyQs3qqWfeAwIaY9SbjETyeGY9BCv7KBcwFZmH+FVMGBuwDkRvqXm27SQkeU2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783858166; c=relaxed/simple;
	bh=BiW4/ooCICH9qhxud9P4Unbuy4PwXt1Da47s5dVocrk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dab1RN8mZSJk2pdGhvDMTZhFL+WfOcesu9/x+VTGDsByXt2xK+N/5I2EtXXml7X1vGKoR3EmQm4jtl8Ic0h6h3WwwpsdFjiSgbzvsB5Jbd4EWodwXqGKJEoNPZjt4bE21A5UkLZd5QzAPvdswenyBqi3F9Br0snsTKM65Z0Oqgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aTzky+l4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C96DD1F000E9;
	Sun, 12 Jul 2026 12:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783858165;
	bh=f4WsUl2adf+4Zun9HyTgIvfeO+uh1TXbxvPJ2yi9cEg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aTzky+l45D020NRMngbhqoPbEe7JtCQg8ERx+/u1EstQhSuUSiQM0PFnD+yL1eOJy
	 6w4ZchF6Hn0MKHy0u6qwr+Mx0U91n+likh3c/nfMuNO2z4tWihxBN2qbz7uTHX6shI
	 1ubDtuCAKBn3YQg7vGAqTzWzpHaiJqXvQKnlimaj1xz2SDlLSrxTgFtgi1kvtcgA1s
	 DlHCMkqUdSCFQRdAzmytdWNvzO7to+8vWVWUd0yUvapwzVW1qOhfyRem8cN7h3VJKn
	 DyPl686Mc54BPNxC4z049NxR9gznPvWz46sLqTpFQ1sON25ZZK8LIp+xYk6jj8K+O2
	 Lka5x4JFB+3QA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/5] media: hi846: Fix hi846_write_reg_16 handling
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pengyu Luo" <mitltlatltl@gmail.com>
Cc: conor+dt@kernel.org, Frank.Li@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260712115553.92564-1-mitltlatltl@gmail.com>
References: <20260712115012.91600-1-mitltlatltl@gmail.com>
 <20260712115553.92564-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 12:09:24 +0000
Message-Id: <20260712120924.C96DD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325039-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mitltlatltl@gmail.com,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19669744973

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Improper error handling of `pm_runtime_get_if_in_use()` causes ski=
pped I2C writes when Runtime PM is disabled (e.g., CONFIG_PM=3Dn).
--

--- Patch [1]: [PATCH v5 1/5] media: hi846: Fix hi846_write_reg_16 handling=
 ---
commit a93dfb63bfce92d91d72fc1b7b2f261ebe6609ab
Author: Pengyu Luo <mitltlatltl@gmail.com>

    media: hi846: Fix hi846_write_reg_16 handling
   =20
    hi846_write_reg_16() does not clear a positive *err value on success.
    pm_runtime_get_if_in_use() returns a positive value when the device
    is already in use. When hi846_set_ctrl() passes &ret holding this
    positive value) to hi846_write_reg_16(), the function returns with ret
    as is, the positive value propagates back as a return code, which
    callers interpret as an error.
   =20
    Fix this by resetting *err to 0 only when it is positive.
   =20
    Fixes: 04fc06f6dc15 ("media: hi846: fix usage of pm_runtime_get_if_in_u=
se()")

> diff --git a/drivers/media/i2c/hi846.c b/drivers/media/i2c/hi846.c
> index a3f77b8434ca7..7f069aca0fce5 100644
> --- a/drivers/media/i2c/hi846.c
> +++ b/drivers/media/i2c/hi846.c
> @@ -1271,6 +1271,8 @@ static void hi846_write_reg_16(struct hi846 *hi846,=
 u16 reg, u16 val, int *err)
>  	if (*err < 0)
>  		return;
> =20
> +	*err =3D 0;
> +

[Severity: High]
This is a pre-existing issue, but does hi846_set_ctrl() properly handle
negative errors like -EINVAL from pm_runtime_get_if_in_use() when CONFIG_PM
is disabled?

When CONFIG_PM is disabled, pm_runtime_get_if_in_use() returns -EINVAL.
Because hi846_set_ctrl() checks if (!ret || ret =3D=3D -EAGAIN), it will fa=
ll
through and pass the -EINVAL via &ret to hi846_write_reg_16():

drivers/media/i2c/hi846.c:hi846_set_ctrl() {
    ...
	ret =3D pm_runtime_get_if_in_use(&client->dev);
	if (!ret || ret =3D=3D -EAGAIN)
		return 0;

	switch (ctrl->id) {
    ...
	case V4L2_CID_VBLANK:
		/* Update FLL that meets expected vertical blanking */
		hi846_write_reg_16(hi846, HI846_REG_FLL,
				   hi846->cur_mode->height + ctrl->val, &ret);
		break;
    ...
}

Because hi846_write_reg_16() exits early on negative errors, won't this
skip all I2C register writes when CONFIG_PM is disabled?

>  	put_unaligned_be16(reg, buf);
>  	put_unaligned_be16(val, buf + 2);
>  	ret =3D i2c_master_send(client, buf, sizeof(buf));

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260712115012.9160=
0-1-mitltlatltl@gmail.com?part=3D1

