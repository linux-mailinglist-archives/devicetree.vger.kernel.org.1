Return-Path: <devicetree+bounces-318100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZipIAZR2RGqvvAoAu9opvQ
	(envelope-from <devicetree+bounces-318100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 04:08:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B116E92AE
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 04:08:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Vn/POn3d";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318100-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318100-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 752A730094C1
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 02:08:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7354423370F;
	Wed,  1 Jul 2026 02:08:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD7B6FC3
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 02:08:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782871696; cv=none; b=tdwC9HQhd4kFs5vL9r7UNkcdVu5aiXXPvoiHS310UwPVeCzczXKbI5nRFyLMKT3fnwK6MycKgJxi9V3onP3nppB+gs9jUToeRsApOnlWTRygMn6Y23goioxdW7xTjfH1P5xWJOzb3VK7zhL2QQdvPvEHQu5oZPzN80J/aIkohwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782871696; c=relaxed/simple;
	bh=8bc4G73pPBfxVBsjpkWw92X5nY6LJhlYNVpenfuY558=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uL6Y6dEmlaEkxQKJvOC9AlJdNubHO6h2sV+Q8sJoDmw+vYrzlQMU4EaCGjCq1DwX6hVTZK4Zwv/5XaCzD4BaxPCkgf839eXG/El7P4i0XWTCI5bzFQ/UtNnKM3Pg5586bkRRMZEq9+Zx4EBPxAulUx3H+zB44jJEDL0Juoh1uuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vn/POn3d; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B64C41F000E9;
	Wed,  1 Jul 2026 02:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782871695;
	bh=g9Ja6QJCSRuhGJ4LuMN1UAMnCt0umhObJfPa1HUycmY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vn/POn3d0KGxPtwWcqWS4v2NN569/amZUp14mcgGqLCr9vPkLkeMOs2c//zjUg/hY
	 rUmROQriBJimGOj8AIcr8uN5FiAxu+A1xJHkkeK4IKqBsEq+MJrjWLQ4/b0YrOEdBQ
	 pRT70cqMDMNEREzZCYfLhlGiYdMqAqrgTiFugRsdTnPMx/c5XKfJRHhDKndUOu8BQ7
	 AOCTfqjgJJCLuGsnIddxmNKQbYxH10Wxg/8F/sTYd7+icvHW3fCYTBZdAKTcxDcAwV
	 xezDhaApftRtVZpnA8u53MdanwGxBSfaVSSEsmGDb5mo8WhMcnfFMZbpgJcvAFIDKT
	 ElK5b7ulY79zA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/5] coresight: tnoc: add AG tnoc standalone
 compatible to the platform driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jie Gan" <jie.gan@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260701-fix-tracenoc-probe-issue-v4-2-aefab449a470@oss.qualcomm.com>
References: <20260701-fix-tracenoc-probe-issue-v4-0-aefab449a470@oss.qualcomm.com>
 <20260701-fix-tracenoc-probe-issue-v4-2-aefab449a470@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 02:08:14 +0000
Message-Id: <20260701020814.B64C41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318100-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jie.gan@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,qualcomm.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63B116E92AE

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Unconditional freeing of a negative `atid` in `trace_noc_remove`=
 triggers a WARN.
--

commit eff1528970750559f434d02a9ca2f7e317469aa7
Author: Jie Gan <jie.gan@oss.qualcomm.com>

coresight: tnoc: add AG tnoc standalone compatible to the platform driver

This commit allows the Aggregator TNOC to probe as a platform device by
adding the "qcom,coresight-agtnoc" compatible and updating driver
callbacks to use generic names. It also restricts the ATID-unsupported
handling to the Interconnect TNOC ("qcom,coresight-itnoc") rather than
all non-AMBA devices.

> diff --git a/drivers/hwtracing/coresight/coresight-tnoc.c b/drivers/hwtra=
cing/coresight/coresight-tnoc.c
> index 9e8de4323d285..4ccd5f38b92a3 100644
> --- a/drivers/hwtracing/coresight/coresight-tnoc.c
> +++ b/drivers/hwtracing/coresight/coresight-tnoc.c
> @@ -130,7 +130,7 @@ static int trace_noc_init_default_data(struct trace_n=
oc_drvdata *drvdata)
>  {
>  	int atid;
> =20
> -	if (!dev_is_amba(drvdata->dev)) {
> +	if (of_device_is_compatible(drvdata->dev->of_node, "qcom,coresight-itno=
c")) {
>  		drvdata->atid =3D -EOPNOTSUPP;
>  		return 0;
>  	}

[Severity: Medium]
If a malformed device tree uses compatible =3D "qcom,coresight-itnoc",
"arm,primecell"; the device will bind to the AMBA driver, and this new
check will assign drvdata->atid =3D -EOPNOTSUPP.

When the device unbinds, trace_noc_remove() will execute:

drivers/hwtracing/coresight/coresight-tnoc.c:trace_noc_remove() {
	...
	coresight_unregister(drvdata->csdev);
	coresight_trace_id_put_system_id(drvdata->atid);
}

Since trace_noc_remove() unconditionally passes drvdata->atid to
coresight_trace_id_put_system_id(), will this trigger a kernel WARN in
coresight_trace_id_free() due to the negative ID?

[ ... ]

> @@ -295,16 +295,18 @@ static int itnoc_probe(struct platform_device *pdev)
>  	return ret;
>  }
> =20
> -static void itnoc_remove(struct platform_device *pdev)
> +static void tnoc_platform_remove(struct platform_device *pdev)
>  {
>  	struct trace_noc_drvdata *drvdata =3D platform_get_drvdata(pdev);
> =20
>  	coresight_unregister(drvdata->csdev);
>  	pm_runtime_disable(&pdev->dev);
> +	if (drvdata->atid > 0)
> +		coresight_trace_id_put_system_id(drvdata->atid);
>  }

[Severity: Medium]
Would it make sense to update trace_noc_remove() to include the same
if (drvdata->atid > 0) defensive check that was correctly added here to
tnoc_platform_remove()?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-fix-tracen=
oc-probe-issue-v4-0-aefab449a470@oss.qualcomm.com?part=3D2

