Return-Path: <devicetree+bounces-305075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DNbCU9fHWojZwkAu9opvQ
	(envelope-from <devicetree+bounces-305075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 12:30:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7948A61D6DD
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 12:30:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3F533086791
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 10:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD0E3A2E27;
	Mon,  1 Jun 2026 09:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXpJNDe0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EBC391850;
	Mon,  1 Jun 2026 09:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780307977; cv=none; b=KnAtEjf+6Khu2zkbdE60DCGsDBXFaT9ATcgSHKbexODl3cFTjO818pdiOlWKl43VUUR/+cwgTjsZkB8b20ewwxVg8taXHSoNECFB0+pqPSp59uEzhkzQ6K+BCBNKXSNfFt5PM7dO04sjcIhUnKZdlRmNJPKYClp/ePv0FXOt9RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780307977; c=relaxed/simple;
	bh=cmB0WB57eV8hvZoXZgL2VUpRf5Tko8Zgifrd1TcDyss=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cFeSoTA4rLPMpSuJa2QKZxU/MLntG21loWSLPbTj8rLN4TTE79mu7CP4GRh9CY9DmmbduybdG6T2JeF4bWKcWPdMch+MEjzzBIQ//SzPBx3OSipewfXM2Gh+TBJkh9epGW23k19nD18BGWODklOKlCLECJUTfgnnxRKvy+GdVvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXpJNDe0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AAFF1F00893;
	Mon,  1 Jun 2026 09:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780307967;
	bh=7JiUq0f15ZNm29JmL4+7a0AVpiq8zNtF+xhweVyH0/k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dXpJNDe0Srr0v5FVpP7Qk3DORq5GrJddjc93HpnaJM/XzrJ2UdemiI490WxEqG7rH
	 pffqDE9MIasRJmpcHsCrrUpkUxGBkF2rqQHewlOk5yc7zHgZmu+zDYAFPlxcfq+6JK
	 V8e8VG3iMmiFDGNhXpyI06D4DJX7pN64Ld4vovPzs3vk3O/h8U0oA/NoGDEtkJOUDp
	 rLdwiJPN0PYe2TnvipFJlDSqDAyS+Ob6EAR1BB7Xb4vrbQYWTU8bK5ChJKLAhDEH1G
	 Mkcyxw0f6HYztUCRnp0+RIRi3kTarENCLQ7PB1VLODLIsXgJTE1o3SphsjHL05BNHQ
	 fdceVDXdYVpfA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/7] PCI: qcom: fix parsing of PERST# in the legacy case
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, linux-pci@vger.kernel.org
In-Reply-To: <20260601-sm8350-wifi-v1-1-242917d88031@oss.qualcomm.com>
References: <20260601-sm8350-wifi-v1-1-242917d88031@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 09:59:26 +0000
Message-Id: <20260601095927.5AAFF1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305075-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 7948A61D6DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Direct return on devm_gpiod_get_optional failure in qcom_pcie_prob=
e() bypasses PM runtime cleanup.
--

commit 40b8aa014962b990fbbdd6f190bcea40db01e096
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

PCI: qcom: fix parsing of PERST# in the legacy case

This commit moves the parsing of the RC's perst-gpios to qcom_pcie_probe()
to handle both mixed and legacy device tree configurations without acquiring
the same GPIO twice.

Closes: https://lore.kernel.org/r/gieaybsg2ckxpctvqj77nlwu7utama2yeyvebkonm=
exsxrra3v@v3fobqasxnmy/

> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/control=
ler/dwc/pcie-qcom.c
> index 11fc604898926..7664c7c28c0e3 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c

[ ... ]

> @@ -2107,6 +2093,15 @@ static int qcom_pcie_probe(struct platform_device =
*pdev)
> =20
>  	pp->ops =3D &qcom_pcie_dw_ops;
> =20
> +	if (of_find_property(dev->of_node, "perst-gpios", NULL)) {
> +		pcie->reset =3D devm_gpiod_get_optional(dev, "perst",
> +						      GPIOD_OUT_HIGH);
> +		if (IS_ERR(pcie->reset))
> +			return PTR_ERR(pcie->reset);

[Severity: High]
Does this direct return bypass the PM runtime cleanup?

Earlier in qcom_pcie_probe(), pm_runtime_enable(dev) and
pm_runtime_get_sync(dev) are called successfully, which increments the
device's PM runtime usage counter.

If devm_gpiod_get_optional() fails here (for example, with -EPROBE_DEFER
if the GPIOs are not yet ready), returning directly leaves the PM runtime
usage counter leaked because the goto err_pm_runtime_put path is skipped.
This will lead to an unbalanced pm_runtime_enable warning during probe
retries.

Should this be updated to assign the error to ret and use goto
err_pm_runtime_put instead?

> +
> +		dev_warn(dev, "Reusing PERST# from Root Complex node. DT needs to be u=
pdated!\n");
> +	}
> +
>  	ret =3D qcom_pcie_parse_ports(pcie);
>  	if (ret) {
>  		if (ret !=3D -ENODEV) {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-sm8350-wif=
i-v1-0-242917d88031@oss.qualcomm.com?part=3D1

