Return-Path: <devicetree+bounces-307591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xPNFA0KsI2rnwwEAu9opvQ
	(envelope-from <devicetree+bounces-307591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 07:12:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A2B64C83B
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 07:12:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=U4Jsu2w7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307591-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307591-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EE927300DE3F
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 05:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0CFE4071ED;
	Sat,  6 Jun 2026 05:12:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AE030148C
	for <devicetree@vger.kernel.org>; Sat,  6 Jun 2026 05:12:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780722750; cv=none; b=TbMMaWxLNQVz4ocFx5qL6/awY9NAKmuCqu9x+pCUrbCUOPjcRL6u1vj29FgO9RHshTIY1LobvbFzYvLjf8EaUroSl7GKrt8Bi6uUqYD3rF4wNEMHP5apDEaZqPv8ZIMNZHqcp2rO/r7GowXBZMzj5HKDVggPqAIuE3QpsLIBMMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780722750; c=relaxed/simple;
	bh=uuLzX93Xueq7gKI60uGR5sKZrY3Ud6UbBF66BHJNHG8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WynI2+lKMxZFotd5mugL5BwpWRR/DqDt6AzUzLWAh6krVAdIl685J5VrasIA+20Z5sw7yhbmaLMtV+2it0WeBzPY3ThnYQ2kSTKEnCo4Lh+LyRW9t1mK7tN6b85PidF55aWbojcNN50lKOKl9UEQxhMsw1N/pFm8tdW+wahUUuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4Jsu2w7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AC861F00893;
	Sat,  6 Jun 2026 05:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780722746;
	bh=6bYQrmPqAxPat8JflIcElg4C3oQrSvT37xLjto40jzM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=U4Jsu2w7bQvNYQcDWBps7oHnWdZV0lzTC/Y6Y/7x8Ss06MkTpJSEjvPMmWNQv4Yql
	 uO4SlsouEMbQ3j7h8gNMZ7bnwIQb6IwVkb/hJt5SWTXSW/eO/Oh7u+2r4AUMwMrKOb
	 /OBS3dcVSqa0Zzx6Kxpac1Iu4FVVmICqkutpw37A/gdndzJIcFI0ZldEu3mlko2SUE
	 jPgGzkoSVAHh+xDY+nz1uzy/EvLVprZDDHtihf/thrB3uwZvIE5gvNCsM4Pxmmwep0
	 pxOKd17TDI7AxL5pSYPKwb2heJ1BB2AZ7TSP50VKsqetgIbi30YP+BTEb1A1EBp7sT
	 XHMOSs9AjiEig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 11/14] video: backlight: lm3533_bl: Improve logic of
 sysfs functions
Reply-To: sashiko-reviews@lists.linux.dev
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20260606045738.21050-12-clamor95@gmail.com>
References: <20260606045738.21050-12-clamor95@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 05:12:25 +0000
Message-Id: <20260606051226.4AC861F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
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
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307591-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:clamor95@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58A2B64C83B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] sysfs show functions `show_als_en` and `show_linear` return premat=
urely when the tested bits are set, breaking the sysfs read and returning a=
n empty/uninitialized buffer.
--

commit 549a7f316072e9f93bfcd3d182e73739a35c0c7a
Author: Svyatoslav Ryhel <clamor95@gmail.com>

video: backlight: lm3533_bl: Improve logic of sysfs functions

Simplify the sysfs logic of properties by switching to macros and proper
regmap helpers.

> diff --git a/drivers/video/backlight/lm3533_bl.c b/drivers/video/backligh=
t/lm3533_bl.c
> --- a/drivers/video/backlight/lm3533_bl.c
> +++ b/drivers/video/backlight/lm3533_bl.c

[ ... ]

> @@ -85,88 +87,68 @@ static ssize_t show_als_channel(struct device *dev,
>  	return scnprintf(buf, PAGE_SIZE, "%u\n", channel);
>  }
> =20
> -static ssize_t show_als_en(struct device *dev,
> -				struct device_attribute *attr, char *buf)
> +static ssize_t show_als_en(struct device *dev, struct device_attribute *=
attr,
> +			   char *buf)
>  {
>  	struct lm3533_bl *bl =3D dev_get_drvdata(dev);
>  	int ctrlbank =3D lm3533_bl_get_ctrlbank_id(bl);
> -	u32 val;
> -	u8 mask;
> -	bool enable;
>  	int ret;
> =20
> -	ret =3D regmap_read(bl->regmap, LM3533_REG_CTRLBANK_AB_BCONF, &val);
> +	ret =3D regmap_test_bits(bl->regmap, LM3533_REG_CTRLBANK_AB_BCONF,
> +			       CTRLBANK_AB_BCONF_ALS(ctrlbank));
>  	if (ret)
>  		return ret;

[Severity: High]
Does this error check prematurely exit the function when the bit is set?

regmap_test_bits() returns 1 if the specified bit is set. If the bit is set=
,=20
the if (ret) condition evaluates to true, causing the function to return 1
immediately instead of formatting the buffer.

This could break the sysfs API contract and return a single null byte to
userspace instead of the expected string. Should this check be if (ret < 0)
instead?

> =20
> -	mask =3D 1 << (2 * ctrlbank);
> -	enable =3D val & mask;
> -
> -	return scnprintf(buf, PAGE_SIZE, "%d\n", enable);
> +	return scnprintf(buf, PAGE_SIZE, "%d\n", ret);
>  }

[ ... ]

> -static ssize_t show_linear(struct device *dev,
> -				struct device_attribute *attr, char *buf)
> +static ssize_t show_linear(struct device *dev, struct device_attribute *=
attr,
> +			   char *buf)
>  {
>  	struct lm3533_bl *bl =3D dev_get_drvdata(dev);
> -	u32 val;
> -	u8 mask;
> -	int linear;
> +	int ctrlbank =3D lm3533_bl_get_ctrlbank_id(bl);
>  	int ret;
> =20
> -	ret =3D regmap_read(bl->regmap, LM3533_REG_CTRLBANK_AB_BCONF, &val);
> +	ret =3D regmap_test_bits(bl->regmap, LM3533_REG_CTRLBANK_AB_BCONF,
> +			       CTRLBANK_AB_BCONF_MODE(ctrlbank));
>  	if (ret)
>  		return ret;

[Severity: High]
Could this have the same issue as show_als_en() above?

When the linear mode bit is set, regmap_test_bits() returns 1, triggering
this error path and returning 1 directly instead of calling scnprintf().

> =20
> -	mask =3D 1 << (2 * lm3533_bl_get_ctrlbank_id(bl) + 1);
> -
> -	if (val & mask)
> -		linear =3D 1;
> -	else
> -		linear =3D 0;
> -
> -	return scnprintf(buf, PAGE_SIZE, "%x\n", linear);
> +	return scnprintf(buf, PAGE_SIZE, "%x\n", ret);
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260606045738.2105=
0-1-clamor95@gmail.com?part=3D11

