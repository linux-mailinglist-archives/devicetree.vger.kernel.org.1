Return-Path: <devicetree+bounces-303353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHdVCc7DFmrOqgcAu9opvQ
	(envelope-from <devicetree+bounces-303353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:13:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F1E5E2708
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:13:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB53D308EB9F
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 10:06:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F8D43EB80E;
	Wed, 27 May 2026 10:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8ImtZ24"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502562236F2
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 10:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779876380; cv=none; b=XuSnPcPpL3OLGCmDio8FnKjHdkxJjq2oVxiUefAkaIrMa0onZCCU60S7dNFAJ3CXZZJKtVFOtWFbpwYHRy9FvU/qLypZb/Ah1kZZNCPsI7CdYtN5RP7ylne29z7gqwMSN47jzZtRfH4fCWNGCrTDL+hI9Cw9zPSJglFRCDW5m/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779876380; c=relaxed/simple;
	bh=s44+BZ84UhJD8dk98JPenwVhfa45JbZ9RqWRwNEE+8s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hw+SrVOUgUKTianvuVeFgIWVOzaz3p8/jWPLIHkapurCn4NUxTXlo0yoShAYDZUKr93/VcGfiDui53CweafcriSOqLsV3o1YXvbQmIFj+8UsVDgzeSWGhVEppr31GaP6JcLyOUD4NyGKj5r3tWLKI/RYp9fu8v8GgjyRFoJULW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8ImtZ24; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D25CC1F000E9;
	Wed, 27 May 2026 10:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779876379;
	bh=pGMXttwiKHqhTyDwbj9+lCA7ZsmI80Xd2A+XDl2T+e8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i8ImtZ24RjLAYLq9FXcNTzCfqM43maL7k1DHCDKt/ET2EyXk8Xtzt7NAvpZVxNcIY
	 GLhTTwZC65g03wB8wdbgCGnsImJI3Wy1ClPGa0JyVjg0kSQpVbxRA3ropyAAcUlNO/
	 mGWDXrGqfBQgIEsJx/LvKK+2j3/Vva+qiSUMdfSOlC9nu4STdxzaR9z4dk/wXlp56N
	 s1fam7Ttl6f6uNS7YWMmbe6tJuqYy0wrDNMTPIJRcJkZKeE0x3MXbTn5Ghi5emLGn2
	 ykgkz2zSYxUhC/pm+Cc/ra/lyXkyD6XABRIG04E4ofLYQ1LLKFFOCy7/7b+YRaHAe0
	 /wNgZM8ykMuQQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 03/24] arm64: dts: qcom: sdm670: Reduce OS PDC DRV
 span to 0x10000
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260527094333.2311731-4-mukesh.ojha@oss.qualcomm.com>
References: <20260527094333.2311731-4-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 10:06:18 +0000
Message-Id: <20260527100618.D25CC1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303353-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[b220000:email,smtp.kernel.org:mid,qualcomm.com:email,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,a600000:email,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 76F1E5E2708
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Reducing the PDC `reg` size to 0x10000 conflicts with the `qcom-=
pdc` driver, triggering a boot warning.
--

commit 91616deec930abcc3788af870cfe06cc7cfb6809
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

arm64: dts: qcom: sdm670: Reduce OS PDC DRV span to 0x10000

This commit reduces the size of the PDC register window in the sdm670 device
tree from 0x30000 to 0x10000.

> diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/q=
com/sdm670.dtsi
> --- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
> @@ -1618,7 +1618,7 @@ usb_1_dwc3: usb@a600000 {
> =20
>  		pdc: interrupt-controller@b220000 {
>  			compatible =3D "qcom,sdm670-pdc", "qcom,pdc";
> -			reg =3D <0 0x0b220000 0 0x30000>;
> +			reg =3D <0 0x0b220000 0 0x10000>;

[Severity: Medium]
Will this change trigger a boot warning from the qcom-pdc driver?

Looking at drivers/irqchip/qcom-pdc.c, the driver enforces a minimum
mapping size of 0x30000:

drivers/irqchip/qcom-pdc.c:
#define QCOM_PDC_SIZE 0x30000

...

qcom_pdc_probe() {
	...
	res_size =3D max_t(resource_size_t, resource_size(&res), QCOM_PDC_SIZE);
	if (res_size > resource_size(&res))
		pr_warn("%pOF: invalid reg size, please fix DT\n", node);
	...
}

If the device tree size is reduced to 0x10000, won't the driver fall back
to the 0x30000 minimum anyway and log an "invalid reg size, please fix DT"
warning during boot?

>  			qcom,pdc-ranges =3D <0 480 40>, <41 521 7>, <49 529 4>,
>  					  <54 534 24>, <79 559 15>, <94 609 15>,
>  					  <115 630 7>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527094333.2311=
731-1-mukesh.ojha@oss.qualcomm.com?part=3D3

