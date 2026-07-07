Return-Path: <devicetree+bounces-322273-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ya9ZDbM1TWp+wgEAu9opvQ
	(envelope-from <devicetree+bounces-322273-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 19:21:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1769A71E3C2
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 19:21:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QWSDL5Cc;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322273-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322273-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 61029305E9BF
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 17:13:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB14843784E;
	Tue,  7 Jul 2026 17:12:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6D0420876
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 17:12:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783444379; cv=none; b=hDyGy9l+L7mF6EyaVBBPOvEWKb9j86DGW/TVZtRhoWu6cimSoI+KE/1k6rpNi+liExjeYJ25YV+lMCBtmDqRUSBC9aWT4hgCEW8GhewsgKl3kfhAAXCTAIDMRQ1NoS56xPVDzt1QRx16A4e8f4DmaogkGQB3jDCLDqobBIT9DRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783444379; c=relaxed/simple;
	bh=gCda8F041h8Gf8YS1dDzHEa6zxixxqW5g/NqR7DPrWg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=u7FWfGhZW4xsWERZqYE6XaiQ8rEB8bSoC8ypmFqRKCjRuXptUm5B8z7h4UWLO4SH0DTVrI2aAn+2yrm4Md2nmpgg6vp98zo0JF62I5ty85gwPjqEgbI2zfIOR9SXbWWdoy/xi4Fkx4WFlD9TEAfWTtUiMQCSBUMfdS2Edy4t4CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWSDL5Cc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AA641F000E9;
	Tue,  7 Jul 2026 17:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783444378;
	bh=qvn1EaAiIhXgfqqpbmC8BAALN/wGNLdo/zyRbqId+Xs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QWSDL5Ccl5c3h9eiENAQ1rTMbKTyBlP0179aU3+f713IV6amebn0i0vNeEQnXJBYS
	 /aBBGfghewGFVJeYX12UI4sfcD0giI5vdtFGWJt0z/8Ic1rNUD97gBzyJm021LZli8
	 vkhew50jPaM+ECxAo+Wxr01WM0cNxxz14dH0zRHRKGcfMl8uJfvWnWy+CYq2XMa1Lg
	 jJ+BdwGTHdtJknloG1r2HtMM/5YfEFOLOFSaATN/8n6+9+4tfV73wncGrKpW1s+HtD
	 SBhUSmxQzG6d6JEeorgRaitfo0k9ptN6LubCBE3Vx2gMEhpRfoeU5wVh6hRObm8jKg
	 u4p3ELs0S+9dg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/20] media: imx355: Set register LINE_LENGTH_PCK
 programmatically
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707-media-imx355-v2-6-1683ec07b897@raspberrypi.com>
References: <20260707-media-imx355-v2-0-1683ec07b897@raspberrypi.com>
 <20260707-media-imx355-v2-6-1683ec07b897@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 17:12:57 +0000
Message-Id: <20260707171258.3AA641F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322273-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dave.stevenson@raspberrypi.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[raspberrypi.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1769A71E3C2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The arguments `len` and `val` are swapped in the call to `imx355_w=
rite_reg()` for `IMX355_REG_LLP`, causing streaming to fail unconditionally=
 with `-EINVAL`.
--

--- Patch [6]: [PATCH v2 06/20] media: imx355: Set register LINE_LENGTH_PCK=
 programmatically ---
commit 0e41a9d7ebe7908de03f784b605b040468271935
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: Set register LINE_LENGTH_PCK programmatically
   =20
This commit removes duplicated Line Length Pixel (LLP) values from the mode
register lists and sets the LLP register programmatically when starting
the stream.

> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index 363b5667b6c9a..66e70650e666b 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c

[ ... ]

> @@ -1058,6 +1033,13 @@ static int imx355_start_streaming(struct imx355 *i=
mx355)
>  	if (ret)
>  		return ret;
> =20
> +	/* set line length */
> +	ret =3D imx355_write_reg(imx355, IMX355_REG_LLP,
> +			       imx355->hblank->val + imx355->cur_mode->width,
> +			       2);

[Severity: High]
Are the len and val arguments swapped in this call to imx355_write_reg()?

If the line length value (which can exceed 3000) is passed as the len
argument, won't this unconditionally fail the bounds check in
imx355_write_reg():

drivers/media/i2c/imx355.c:imx355_write_reg() {
    ...
    if (len > 4)
        return -EINVAL;
    ...
}

and return -EINVAL, effectively preventing the camera from starting?

> +	if (ret)
> +		return ret;
> +
>  	/* Apply customized values from user */
>  	ret =3D  __v4l2_ctrl_handler_setup(imx355->sd.ctrl_handler);
>  	if (ret)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-media-imx3=
55-v2-0-1683ec07b897@raspberrypi.com?part=3D6

