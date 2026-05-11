Return-Path: <devicetree+bounces-295854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKr6BsdYAmosrgEAu9opvQ
	(envelope-from <devicetree+bounces-295854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:31:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2F8516EE5
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 00:31:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E26EE300D759
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3688383323;
	Mon, 11 May 2026 22:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqJ/m0Ku"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D155538331E
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 22:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778538423; cv=none; b=hstTJ56C7J52/pVrQprz3b/kz3dLsqTHf5aFM1DT30Cq7k9PJ8EkC++/vsWNWyKy5Ndl7dYR2K6wytSb4IDtjbnuSH5BiQZ9wr6sdH+kzs34MkuxrMcS7wZsEsgoHOXpFjshmfYTE1n8zJ08re/1/dlxaXdgeVsepWakmUmAQd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778538423; c=relaxed/simple;
	bh=Rlk4tIX6m6yhy4WXjSYoFXe0A8/S+sQRdMD+oNg8YQs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=N2aMj4D3jD3oLLE6ZPG7jsTxod8RWRtnLyoWxPN7w9zU2Ik0YXFhI8ZFrXDBDkujUcEZD0MMr5PLSLUM/gsOjGyvJ7Dqsn7kADtzNDPJT7E2ZmBdgUtuRJXgJ1ZfXHbSz+zN8WGAK9sJBj+FmIYa8DmyL2qwHH/0yEV3nO+CajE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqJ/m0Ku; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FDCEC2BCB0;
	Mon, 11 May 2026 22:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778538423;
	bh=Rlk4tIX6m6yhy4WXjSYoFXe0A8/S+sQRdMD+oNg8YQs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=bqJ/m0KuPrlABSMSfJYPGZ6XkWMaBOrv+c3nFDDxypMQAfpXWdYAHe7TrxNNSTfTI
	 PRdrbOlu2uD0WvFv/Grf7ykWM+GSeh+K7yk1Ky/g/+bIv8U5O7MGKo9uw+UL2933wd
	 BsbcjwMFJTNLW6/Wr/3UTmOJ+O/7JKziXxfUSis35gfg5+JCu7W23KkyPCHYESzcAj
	 GfBRWZ0eJ6QQCDDIMO7nsl8eFuwoDZx6OSGrKIrC8pgw6XYhRaP7YUEof9ny74kuFF
	 ihWpha6d14we91A2W4CGjLmISd789YjvQ9Ck6nnYUSn8PrLf7ykI1Fwp2Zljzn5EHm
	 T+RuFYNO5D4Ow==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 06/11] iio: adc: hx711: introduce hx711_chip_info
 structure
Reply-To: sashiko@lists.linux.dev
To: "Piyush Patle" <piyushpatle228@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260510194947.31997-7-piyushpatle228@gmail.com>
References: <20260510194947.31997-7-piyushpatle228@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 22:27:02 +0000
Message-Id: <20260511222703.4FDCEC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 0F2F8516EE5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295854-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Probe unconditionally fails for legacy platform device instantiati=
on, breaking backwards compatibility.
--

commit df7c142f973e9e00df00559065a303371d262619
Author: Piyush Patle <piyushpatle228@gmail.com>

iio: adc: hx711: introduce hx711_chip_info structure

This commit introduces a per-variant static configuration structure to
populate IIO device fields at probe time. This prepares the driver for
supporting additional hardware variants while intending to keep existing
functionality unchanged.

> diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
> index 2da128c1caf36..913e1a50529ad 100644
> --- a/drivers/iio/adc/hx711.c
> +++ b/drivers/iio/adc/hx711.c
[ ... ]
> @@ -473,6 +498,12 @@ static int hx711_probe(struct platform_device *pdev)
> =20
>  	mutex_init(&hx711_data->lock);
> =20
> +	chip_info =3D device_get_match_data(dev);
> +	if (!chip_info)
> +		return dev_err_probe(dev, -ENODEV, "missing driver data\n");

For legacy platform devices instantiated without a firmware node like Device
Tree or ACPI, device_get_match_data() returns NULL.

Will this unconditional error return cause the probe to fail for those lega=
cy
users?

Since the commit message notes there are no functional changes for existing
users, should this fallback to the default hx711_chip structure when
chip_info is NULL?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510194947.3199=
7-1-piyushpatle228@gmail.com?part=3D6

