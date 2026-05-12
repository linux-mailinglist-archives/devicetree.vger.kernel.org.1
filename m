Return-Path: <devicetree+bounces-295969-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDwUOzqhAmp2vAEAu9opvQ
	(envelope-from <devicetree+bounces-295969-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 05:40:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B0F519648
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 05:40:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CBC2304994E
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 03:38:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC30F2DECA3;
	Tue, 12 May 2026 03:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsF2u6au"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C775830148A;
	Tue, 12 May 2026 03:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778557081; cv=none; b=ebZYAzZ/jgVg95wvvPd4mrO3uXzsUVU5J4yFwPLaQb+J9AoXJ5wTK+UMWFrucX5vUxcNu6wokT497WF7vSgobPTbGSrTb2UYAGRtGPc11pyB0AfZKb0QUOrv5y3X6DMZeXx18UyRUl4DFNSBDZOWMoecZBU7hxS0zEpa3vSXxZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778557081; c=relaxed/simple;
	bh=C0uKvBcsJshR+sAskrJ9qYCeCJ0hYo132tV0VbiynjA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IGvudX6Ruuk1uXwCFZZDaXMQuu3hB0R+qDQFeTN+NTkcOSw7XsiHOuPc7c/iZzTJn5I2rXLzcaAohCcBu+JJpa9UhqNxtydUGpis9o7HGPOMKPHrATRi9dmI+NAUEuki0g0ybzZNn/4XAsKlCoSrUX8KKwft1RcwzINj7CGJ/aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsF2u6au; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 055CAC2BD05;
	Tue, 12 May 2026 03:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778557081;
	bh=C0uKvBcsJshR+sAskrJ9qYCeCJ0hYo132tV0VbiynjA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=HsF2u6auMwTDQESHqx4D9fVWAx9Jo4FvfHhrMJhw6+OfSXr0qgmrJLayjzCigmH95
	 IxX+6YMM8uRUiBoAuK2HZESKSPFNksSoyfjNWwieJdRy3RN3JeSW2KwHguXt6bGOfc
	 8EjzItLFBSZzQT9Fd8GHtgLydB0TFjBZEnewgHL8GMxvxSvUzmitnRCDDUrTC0ilH+
	 utrhBfhEW5fm5f6aAngr/jy9Dy4vxN1p11448WvZc12HLtx8KF7+WEN5+PCajwyzSn
	 yOaSslat1I+fKeASvH8vLr9pRNLzIfXwuK7BLEZwxpka2L/q0Q6XnXjisz79/ZwH9U
	 KWIz0Vccy+9Wg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/5] media: hi846: fix hi846_write_reg_16 handling
Reply-To: sashiko@lists.linux.dev
To: "Pengyu Luo" <mitltlatltl@gmail.com>
Cc: imx@lists.linux.dev, Frank.Li@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260511103927.279550-2-mitltlatltl@gmail.com>
References: <20260511103927.279550-2-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 03:38:00 +0000
Message-Id: <20260512033801.055CAC2BD05@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 44B0F519648
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295969-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Runtime PM usage count underflow and torn hardware state due to un=
handled negative return values.
--

commit a7e288159f9d9020f112e24280a1cf27c80c8fca
Author: Pengyu Luo <mitltlatltl@gmail.com>

media: hi846: fix hi846_write_reg_16 handling

This commit attempts to fix error propagation by resetting the error
variable to 0 when it is positive. It clears the positive return value
from pm_runtime_get_if_in_use() before performing I2C writes.

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

While this clears the positive return values from pm_runtime_get_if_in_use(=
),
does this leave negative return values unhandled in the caller?

If pm_runtime_get_if_in_use() in hi846_set_ctrl() returns a negative error
like -EINVAL when Runtime PM is disabled, the usage count is not incremente=
d.
The check for (!ret || ret =3D=3D -EAGAIN) fails, so execution falls throug=
h with
a negative value.

Because this negative value is passed into hi846_write_reg_16(), the check
just above this change will cause I2C writes to be silently skipped for
controls like V4L2_CID_EXPOSURE. Other controls like V4L2_CID_ANALOGUE_GAIN
might ignore the error and execute unconditionally, leaving the hardware in=
 a
torn state.

Finally, since execution continues, pm_runtime_put() is called unconditiona=
lly
at the end of hi846_set_ctrl().

Because the usage count was never incremented for the negative error case,
will this cause a PM usage count underflow?

Would it be better to correctly validate the PM return value directly in
hi846_set_ctrl() with a check like if (ret <=3D 0) return 0; instead of
clearing the positive error here?

>  	put_unaligned_be16(reg, buf);
>  	put_unaligned_be16(val, buf + 2);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511103927.2795=
50-1-mitltlatltl@gmail.com?part=3D1

