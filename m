Return-Path: <devicetree+bounces-297312-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OH1YJElgBWrsVgIAu9opvQ
	(envelope-from <devicetree+bounces-297312-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 07:40:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E585153E0AB
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 07:40:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 203E7304413B
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 05:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA7853C0604;
	Thu, 14 May 2026 05:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGGyfQCf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BB73BFE4C
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 05:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778737190; cv=none; b=Y9I0RSjI7RonFoUkLpo0Ki4SVo7AEWvvGmJ1m43CtE3kkYJErOrNwB7K7LMycQenFKH49hcfvHU5K3hgmxRbwGqrQ4YLKL+Ul8rtkMuQlYGGYfbRNVQOrk57iCFlWORiqaa6R7whpb8AeX+pCVkjvvqJnazllO8ZxFsjyv3shiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778737190; c=relaxed/simple;
	bh=QNRG8v7nWcEPNPgHGu+UaWzMAd9uUXYw624hfJasAok=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=V2ql68KyJLWfpWHUmjo2BsKSsNJF8qVMVUzLTBBA5XPSCj0OFUs6fjofRyuuOHgwIjKCvpedF4RmMUx4cFsZewLJukjP3GvSdR6xPCq1yTYwo+dodg+ZT7Ecd/SK0+Mq5fDse5S5tDPIfthH8BkmxFrzQhYm5Vbak54wvPsSgtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGGyfQCf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37128C2BCC6;
	Thu, 14 May 2026 05:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778737190;
	bh=QNRG8v7nWcEPNPgHGu+UaWzMAd9uUXYw624hfJasAok=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=UGGyfQCfhTOPYUXHL+Y80Hg8UxfMAEFyxtV1SIXd3DynIp9KqKMjywFkHYHPGrXU9
	 a62qe9jDLGZ6/HX0It+ibDUGrUqC2Cy/kA1UwUVRbBqMc3DS8LkewoRsHKD9X9EFnA
	 VcRWlm85WeeUh0pr61aRjKnEIxZdU4/p7DIdXo1TuVZu6ZxyYupcKprF1ETHg+9qQ9
	 EOQH/Uj9gCGkYJSMmyqGhBbiIutXuLF44eqm1zQ01DiAoHe30AOnaDY5WbScaeXn8H
	 /qGFX6hWmTXevbMIkwYfd1HB+mnEbrVyVrzdD3I0moXrmBJrlm1MnlNCtwBeZZw41o
	 +QDWgXcVQU2dw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] ASoC: codecs: nau8822: add support for supply
 regulators
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexey Charkov" <alchark@flipper.net>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260513-nau8822-reg-v1-2-c532e18e92ad@flipper.net>
References: <20260513-nau8822-reg-v1-2-c532e18e92ad@flipper.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 05:39:49 +0000
Message-Id: <20260514053950.37128C2BCC6@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: E585153E0AB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297312-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Medium] Regulators are enabled permanently during probe and never disabl=
ed during PM or DAPM transitions.
- [Medium] Inefficient and semantically incorrect use of optional regulator=
s in a loop instead of the bulk API.
- [Medium] Missing hardware stabilization delay after enabling power suppli=
es before the first I2C access.
- [Low] Missing <linux/regulator/consumer.h> header inclusion.
--

commit d49855c46afc5aae191093735a6b46a1097ad452
Author: Alexey Charkov <alchark@flipper.net>

ASoC: codecs: nau8822: add support for supply regulators

This commit adds support for requesting and enabling four power supply
regulators (VDDA, VDDB, VDDC, VDDSPK) during the I2C probe of the NAU8822
codec to ensure they are online before communication.

> diff --git a/sound/soc/codecs/nau8822.c b/sound/soc/codecs/nau8822.c
> index a11759f85eaca..c21a037e0f083 100644
> --- a/sound/soc/codecs/nau8822.c
> +++ b/sound/soc/codecs/nau8822.c
> @@ -1153,7 +1153,8 @@ static int nau8822_i2c_probe(struct i2c_client *i2c)
>  {
>  	struct device *dev =3D &i2c->dev;
>  	struct nau8822 *nau8822 =3D dev_get_platdata(dev);
> -	int ret;
> +	static const char * const regulators[] =3D { "vdda", "vddb", "vddc", "v=
ddspk" };
> +	int ret, i;

Should <linux/regulator/consumer.h> be included in this file since it now
uses regulator APIs?

Relying on implicit inclusion might cause build failures if header
dependencies change in the future.

[ ... ]

> @@ -1167,6 +1168,14 @@ static int nau8822_i2c_probe(struct i2c_client *i2=
c)
>  		return dev_err_probe(&i2c->dev, PTR_ERR(nau8822->mclk),
>  			"Error getting mclk\n");
> =20
> +	for (i =3D 0; i < ARRAY_SIZE(regulators); i++) {
> +		ret =3D devm_regulator_get_enable_optional(dev, regulators[i]);
> +		if (ret && ret !=3D -ENODEV)
> +			return dev_err_probe(dev, ret,
> +					     "Failed to get regulator %s\n",
> +					     regulators[i]);
> +	}
> +

Does using devm_regulator_get_enable_optional() here prevent the driver
from managing power during suspend/resume or DAPM transitions?

Since this API discards the regulator handles, the driver cannot disable
the regulators when the system suspends or when the DAPM bias level drops
to SND_SOC_BIAS_OFF.

Also, since these supplies are required for communication, could
devm_regulator_bulk_get_enable() be used instead of a loop?

The bulk API automatically substitutes dummy regulators if properties are
missing in older Device Trees, avoiding the need for manual -ENODEV
filtering. It also processes ramp-up delays in parallel, whereas this loop
forces serial waits for each regulator.

Finally, is a hardware stabilization delay needed before the first I2C
access?

While the regulator framework handles the PMIC voltage ramp-up delay, it
doesn't account for the codec's internal Power-On-Reset stabilization time.

Without a post-power-on delay (like usleep_range()), can the subsequent I2C
reset race with the codec's internal reset state machine and intermittently
fail with -EREMOTEIO?

nau8822_i2c_probe() {
    ...
    nau8822->regmap =3D devm_regmap_init_i2c(i2c, &nau8822_regmap_config);
    ...
    /* Reset the codec */
    ret =3D regmap_write(nau8822->regmap, NAU8822_REG_RESET, 0x00);
    ...
}

>  	nau8822->regmap =3D devm_regmap_init_i2c(i2c, &nau8822_regmap_config);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-nau8822-re=
g-v1-0-c532e18e92ad@flipper.net?part=3D2

