Return-Path: <devicetree+bounces-309001-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JKpSCo//J2rQ6wIAu9opvQ
	(envelope-from <devicetree+bounces-309001-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:57:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AADBF65FBDA
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:57:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bmFzgNAu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309001-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309001-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1C3F83012D60
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 11:57:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D8B73EBF04;
	Tue,  9 Jun 2026 11:57:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E0A3AD516
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 11:57:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781006221; cv=none; b=nA19Ak8s7ypi4gfGECRLwHjg6W5sGW/YDLj2VyHk4RFXBXvGiWjVxjLTXuSUqKIVKXDaasb7AuMRFRlbY7u7OVVRn/4nezOk+gwqGKczlnQ5xWEMVybxGv49WUwmchfpJQMyA5K2FozpaN9Q8p+e93TAHfJxFemo34H8Zij1qKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781006221; c=relaxed/simple;
	bh=2qNZ9/EREf5huFGQvULUo1ALQ1F0LYNPWUwvvCP/u7I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sTRWXAr+v2pZi5hcWP0tANWxnm+eIzeg/7OanNSR0ALrrjDi2RGdrTS0spy3r5fp2yj0E+PXJvCPxEaLHTwJl2oayL4F/ZVYMxsrd1Js5nb0dLqXgP9xObr4SCAuhZZ2rq4xAtAx75EzMDPJpaY7HcV91LhHm/Bb1JcxfRq0PqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmFzgNAu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4C131F00893;
	Tue,  9 Jun 2026 11:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781006220;
	bh=YlMQ1fV054oLwmAsy6cLe+Fev85SEGhDFUGdLR3HnNo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bmFzgNAuwd587Imk0tIOCXAyOqPPMGXQGL0NN9AMeQWhqB3Cr+cZUWE+4VSoqYH0U
	 v4IOAh5kag+A/f/bmYbcldSxfkAuD5gEK9ZMGff3puDPUoTYKHaRKJB0gwna4sPUbi
	 8qEJoJVrtGOtGOOnxIUHHnOkaSXhGYA+F7z5+C5/b7LqLnxLEyh9z21pLgXV4yUeeY
	 5ptZZA35jimIzMFWgKVOWm4huj5433mq8QPC0LQ8BE7/z1dgEHrZDyYYVDCXFbNPmS
	 li7klHYhfyfIrkpBF3z5e0xQxlRfk5+Hp3RRR0QMrLwkK+i2Idzn4Ai8iJSJE8Wb0E
	 y8im9FZcPYNag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 07/11] ASoC: renesas: fsi: Use
 devm_clk_get_optional() for optional clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260609113836.45079-8-phucduc.bui@gmail.com>
References: <20260609113836.45079-8-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 11:56:57 +0000
Message-Id: <20260609115659.A4C131F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309001-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:phucducbui@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AADBF65FBDA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] fsi_clk_enable() returns -EINVAL when called on an already enabled=
 clock, breaking full-duplex operation.
--

commit e751270870bfce8cae5b9b1175c1bc9e265d605e
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: renesas: fsi: Use devm_clk_get_optional() for optional clocks

The xck, ick, and div clocks are optional. Switch from devm_clk_get()
to devm_clk_get_optional() to correctly handle cases where these clocks
are missing.

> diff --git a/sound/soc/renesas/fsi.c b/sound/soc/renesas/fsi.c
> index 1df7dc0143630..e29be2bcf952c 100644
> --- a/sound/soc/renesas/fsi.c
> +++ b/sound/soc/renesas/fsi.c
> @@ -994,7 +994,7 @@ static int fsi_clk_init(struct device *dev,
> =20
>  	/* external clock */
>  	if (xck) {
> -		clock->xck =3D devm_clk_get(dev, is_porta ? "xcka" : "xckb");
> +		clock->xck =3D devm_clk_get_optional(dev, is_porta ? "xcka" : "xckb");
>  		if (IS_ERR(clock->xck)) {
>  			dev_err(dev, "can't get xck clock\n");
>  			return -EINVAL;

[Severity: High]
This isn't a bug introduced by this patch, but while reviewing these
clock changes, I noticed a pre-existing issue in fsi_clk_enable().

sound/soc/renesas/fsi.c:fsi_clk_enable() {
	struct fsi_clk *clock =3D &fsi->clock;
	int ret =3D -EINVAL;

	if (!fsi_clk_is_valid(fsi))
		return ret;

	if (0 =3D=3D clock->count) {
		...
		clock->count++;
	}

	return ret;
}

When a second stream starts on the same port (for example, capture starting
while playback is already running), count is 1. The code skips the
(0 =3D=3D clock->count) block and returns the initial ret value of -EINVAL.

Does this break full-duplex operation by causing fsi_hw_startup() to fail
when starting the second stream?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609113836.4507=
9-1-phucduc.bui@gmail.com?part=3D7

