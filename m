Return-Path: <devicetree+bounces-307702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TzGfMy45JGop4QEAu9opvQ
	(envelope-from <devicetree+bounces-307702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 17:13:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 258B064DCD6
	for <lists+devicetree@lfdr.de>; Sat, 06 Jun 2026 17:13:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eRiD7F8n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307702-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307702-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0EC5B301727C
	for <lists+devicetree@lfdr.de>; Sat,  6 Jun 2026 15:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E86A286D7D;
	Sat,  6 Jun 2026 15:13:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8412236E3;
	Sat,  6 Jun 2026 15:13:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780758828; cv=none; b=s7KILQyQJaGxQSj0zFltz6PFJGdNvEO7ek0WuS+JRIpTWC76nMvqKsFY8SgiXgL5JeAFTyyekSI9NNp4+0167lg3meENojwTS05gZKDfQl3avpSoTh2fJZ4FA/kuLbKGQsUeRMX4TqqiUZgsJnjlym/X77lYH+zONMN6MuqR3wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780758828; c=relaxed/simple;
	bh=xnEf1Dd/QXaZZt2Hd/BoPNRAe3RQCfD5VQt3Jzxf0Fk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Uz1t9ZOAKT54M5uBgM+kwsop5Cj/GsGXSmgulF8n4/uO+uvPaVmv7x/UqTKjK3PX2XRHH2MUHaj7dX/xQHZIDovmtOOAKp/iu02d3L1+sXqHwkAtIEgnSIY5FbC91iYfwktwsljGmz0eVEFaQPBUvGOMtCklLn0nAdJzLNNRuUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRiD7F8n; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C5861F00893;
	Sat,  6 Jun 2026 15:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780758826;
	bh=cd+1iaicfal/M+ZhCD5v4zcUwUCKtRAm2ikxGQ1lSwM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eRiD7F8nYYR20oWKuzHY7uVX0fEMwYPlW0cYBx/ECJ523xVtvSRee9gCTg+T3S6jt
	 6JlthC1CegEDg7E2Cu905YDrwKNb50uyeUCD+WTnwX0/YnGqh4AEMC8aMhEyY+AwZC
	 2uTY3LX+1C/hQksTL9amjjW7CT/VGzIW7Ie16qnUqPNr0havWEaE9+l9kguoQJz6Kd
	 siP8Xabfba+PNkKK0vTPUqolauqs2XLcjgupJPxMuKXMH3QszmWw0meQ8FTJudGKDH
	 iZDlDrXr+EfsGVlAR0vMLGVHSHnsvrx6aKyrAMpjI0/aAjagS9J6ryO3bfCKTeCeMD
	 3nePg/ikyDEog==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/8] Input: cap11xx - add reset gpio support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: robh@kernel.org, dmitry.torokhov@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-input@vger.kernel.org
In-Reply-To: <20260606150458.250606-6-jerrysteve1101@gmail.com>
References: <20260606150458.250606-6-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 06 Jun 2026 15:13:46 +0000
Message-Id: <20260606151346.8C5861F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307702-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 258B064DCD6

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Inefficient delay using usleep_range() for a large duration (400-50=
0ms).
- [Low] Missing explicit inclusion of <linux/delay.h>.
--

commit 83de47341df3454fdb8216dc0a95948c3f158a40
Author: Jun Yan <jerrysteve1101@gmail.com>

Input: cap11xx - add reset gpio support

This commit adds hardware reset support for CAP11xx devices by toggling a
dedicated reset GPIO during the i2c probe phase. It incorporates specific
timing requirements for the reset filter and active reset duration.

> diff --git a/drivers/input/keyboard/cap11xx.c b/drivers/input/keyboard/ca=
p11xx.c
> index 686174722204c..7015aa7654ce7 100644
> --- a/drivers/input/keyboard/cap11xx.c
> +++ b/drivers/input/keyboard/cap11xx.c

[ ... ]

> @@ -452,6 +457,17 @@ static int cap11xx_i2c_probe(struct i2c_client *i2c_=
client)
>  	if (IS_ERR(priv->regmap))
>  		return PTR_ERR(priv->regmap);
> =20
> +	priv->reset_gpio =3D devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LO=
W);
> +	if (IS_ERR(priv->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(priv->reset_gpio),
> +							"Failed to get 'reset' GPIO\n");
> +	if (priv->reset_gpio) {
> +		gpiod_set_value_cansleep(priv->reset_gpio, 1);
> +		usleep_range(CAP11XX_T_RST_FILT_MIN, CAP11XX_T_RST_FILT_MIN * 2);
> +		gpiod_set_value_cansleep(priv->reset_gpio, 0);
> +		usleep_range(CAP11XX_T_RST_ON_MIN, CAP11XX_T_RST_ON_MAX);

[Severity: Low]
Does this regression introduce unnecessary overhead by using usleep_range()
for a 400-500ms delay in cap11xx_i2c_probe()?

According to kernel timer guidelines, usleep_range() is designed for short
delays (10us to 20ms) and sets up high-resolution timers. For delays longer
than 20ms, using msleep() or fsleep() avoids unnecessary overhead and
expensive CPU wakeups.

[Severity: Low]
Could this regression in header dependencies be avoided by explicitly
including <linux/delay.h> since we are now calling usleep_range() here?

While the code might compile due to implicit inclusion via other headers,
relying on implicit includes can sometimes lead to build failures on other
architectures or if intermediate headers are refactored in the future.

> +	}
> +
>  	error =3D regmap_read(priv->regmap, CAP11XX_REG_PRODUCT_ID, &val);
>  	if (error)
>  		return dev_err_probe(dev, error, "Failed to read product ID\n");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260606150458.2506=
06-1-jerrysteve1101@gmail.com?part=3D5

