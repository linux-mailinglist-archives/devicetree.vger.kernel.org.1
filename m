Return-Path: <devicetree+bounces-305552-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILh2GiCmHmq3IwAAu9opvQ
	(envelope-from <devicetree+bounces-305552-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 11:45:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D93F262BC94
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 11:45:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9F8AD302BCE7
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 09:38:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 747113D0BE4;
	Tue,  2 Jun 2026 09:38:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxUfWnAL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0A2306D3F
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 09:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780393109; cv=none; b=kPobG6cjAGz8Fw9/boxSHLz5m9hGKw12dlszBryFkdtmEjvT/CqUjClGa3mytBWz0ooaVLyQvYueyVzEgQUXq4fT45Evn5mVTngiN3LRlXACXnxdpO6aSIy+tJJ/1EY9PubWbklJn5hDyUd68SyAWalVgR5JyAOk3UjbwMYozJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780393109; c=relaxed/simple;
	bh=1yNJ0R0NrsEhs6FjbWm/dCWW5RBswVOxMBc4++XjQ4s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UXOn2wGd7S6bbDZjY/sTC2oGEFpcCa2o3DXT9ln/S6RWSku6u5qYu8pf3toH6TZ0O92n1uH+CDi3+autZG5+ubPjZUe0pCaUambZPoNAEH1Htl3obg+9o/NRDR0VzeSjglJe4w3bIL7RBe8Cr9w0CAVW2uiSYVc7eBb/UV03GeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxUfWnAL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C04B1F00893;
	Tue,  2 Jun 2026 09:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780393108;
	bh=ETH6bJkWyic4zr0RMNcuRPZe5V32bVoQ2Z2tGTTDd9I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hxUfWnALUujARz9FTNDJGqgd+DE2iN7oaT5xpO4lk2tVtdXxyfStZ4gcITT32kODv
	 /itbMEVy5h1zkB9NzztqdtGy+3I01+FC+kREL8sO3yt9GWqhXQYIEVmWRyB47KvUAj
	 dlrBwwoAJKXACuwyNc6UbioM9mas/o3nf/s/gLnVN48GH74eHcM0+J9bZS3Pk9EFry
	 N3S+TxS0h7VbKUjNd0pHo9wUjeuPjSKPKoOa+V8xMB6uM0Rut2zTX55qkE3ueuh4AS
	 vc3+EIb29plikYTDBSBQHRYzx2tGn9F0jPeEBb0u3LgO+wsX5BLnbWy74byFQQdt2F
	 BE5EYY5MP1wpw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] regulator: qcom-refgen: add support for the IPQ9650
 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kathiravan Thirumoorthy" <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260602-ipq9650_refgen-v1-2-55e2afa5ff64@oss.qualcomm.com>
References: <20260602-ipq9650_refgen-v1-2-55e2afa5ff64@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 09:38:26 +0000
Message-Id: <20260602093827.6C04B1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: D93F262BC94
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-305552-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,qualcomm.com:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Silent failure when DT clock properties are missing for a device=
 requiring clocks.
--

commit 526ede5fae05c2893929b211a8654512286f1196
Author: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

regulator: qcom-refgen: add support for the IPQ9650 SoC

This commit adds support for the IPQ9650 SoC to the qcom-refgen regulator
driver. Unlike other SoCs, the IPQ9650 requires its clocks to be explicitly
enabled to properly bring up the dependent PHYs. The regulator is also corr=
ectly
marked as REGULATOR_CURRENT based on the hardware design.

> diff --git a/drivers/regulator/qcom-refgen-regulator.c b/drivers/regulato=
r/qcom-refgen-regulator.c
> --- a/drivers/regulator/qcom-refgen-regulator.c
> +++ b/drivers/regulator/qcom-refgen-regulator.c
[ ... ]
> @@ -106,10 +177,23 @@ static int qcom_refgen_probe(struct platform_device=
 *pdev)
>  	struct regmap *regmap;
>  	void __iomem *base;
> =20
> -	rdesc =3D of_device_get_match_data(dev);
> -	if (!rdesc)
> +	data =3D of_device_get_match_data(dev);
> +	if (!data)
>  		return -ENODATA;
> =20
> +	if (data->has_clocks) {
> +		drvdata =3D devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> +		if (!drvdata)
> +			return -ENOMEM;
> +
> +		drvdata->num_clks =3D devm_clk_bulk_get_all(dev, &drvdata->clks);
> +		if (drvdata->num_clks < 0)

[Severity: Medium]
Should this check also handle the case where devm_clk_bulk_get_all() return=
s 0?

If the device tree is missing the expected clock properties,
devm_clk_bulk_get_all() will return 0. The current check allows 0 to pass
as a success, which could allow the probe to silently succeed without having
any clocks available.

Since the IPQ9650 explicitly requires these clocks to bring up the PHYs
properly, could this cause a silent failure downstream when the unpowered
REFGEN block is accessed?

> +			return dev_err_probe(dev, drvdata->num_clks,
> +					     "failed to get clocks\n");
> +	}
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260602-ipq9650_re=
fgen-v1-0-55e2afa5ff64@oss.qualcomm.com?part=3D2

