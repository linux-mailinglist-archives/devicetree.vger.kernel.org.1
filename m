Return-Path: <devicetree+bounces-308047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7UkjJ/drJmoOWQIAu9opvQ
	(envelope-from <devicetree+bounces-308047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:15:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4526536F1
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 09:15:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Hd5PM5xM;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308047-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308047-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25CD0302DA0B
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 07:13:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B46359A91;
	Mon,  8 Jun 2026 07:13:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9613E36DA18;
	Mon,  8 Jun 2026 07:13:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780902796; cv=none; b=ai7SGGbci5vhdFmuySOh5gyZ/uHLdV3tx9cxpehTB5kyyISoQBDuBgrlRfFt3zyr/PiE0dvsCQyd/LiDoGlij4V9nc7b4sqTgEUXsvYsGLBpraQ8r1aqTLaL7hhYuLrm7+onYM1OfIMz/HzsAMETS/SWC8yTyHzyzilr9RnIubs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780902796; c=relaxed/simple;
	bh=Z7Oa6agaH+e0aQ0FQqR04RGhsz3mACVFqe9OkAVJOd4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Kfvi06eERwyCZj3t1NRc80QdPc8lIMqVqQNQ2FIuKzi+/j+BUEmyLrcyaO+ydIZ96TC8Vw3A1QspEEhuyAgVps50DiNqKKxaXt5DozSXZnThsuiPpk9sfEUsPDfwYWBs8KjARei+jDt4bIjG8/dcC80EUaWF7K6qUnimm9V9WGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hd5PM5xM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02CC51F00893;
	Mon,  8 Jun 2026 07:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780902795;
	bh=z0lzKPKtx3yLg7coUx/9j5mKVJAlKY8Kg0znnpC+T7o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Hd5PM5xMV/izOTmuttaOSu3vRpUjrkUHcDHEbRti6Ip8GCOKdkIbtY+2oq2ds0SWo
	 uLzKzg4Gj5QuPs/A8NikOkiQF/QYzvJu54ExBEEXe2QbnFqqKK2fnkNjT1e9HuBrws
	 QjyQnaIxk4Z3nhUYBlDpfrW7qfobdhXKhFKXL3+Wl5keXC4Ew5jEs5gOgzmdPibvXi
	 AnKpudwB6Own1knnF5dMpGTTeIK30qfA8BrzX/eTvueQnqSCspGxZH4A4eJIFHkgwc
	 NoYq5r2Tk3frSt93Q1SDQ1NlPZHdmZH3SwdsM0uyTZbDuuqrTy8HBiB++nYZ+5XrvF
	 iscAMZqfcksfw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/7] PCI: qcom: fix parsing of PERST# in the legacy
 case
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, linux-pci@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608-sm8350-wifi-v2-1-efb68f1ff04c@oss.qualcomm.com>
References: <20260608-sm8350-wifi-v2-1-efb68f1ff04c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 07:13:14 +0000
Message-Id: <20260608071315.02CC51F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	TAGGED_FROM(0.00)[bounces-308047-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC4526536F1

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Direct return on `devm_gpiod_get_optional` failure in `qcom_pcie_p=
robe` bypasses `pm_runtime` cleanup.
--

commit a1eb87e2fab2443f5d8889e3755038df391d4632
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
PCI: qcom: fix parsing of PERST# in the legacy case

This commit moves the parsing of the RC's perst-gpios into qcom_pcie_probe()
to share it between mixed and legacy platforms. This prevents -EBUSY errors
when acquiring the PERST# GPIO in legacy cases.

Link: https://lore.kernel.org/r/gieaybsg2ckxpctvqj77nlwu7utama2yeyvebkonmex=
sxrra3v@v3fobqasxnmy/

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
Does this direct return leak the runtime PM usage count?

Earlier in qcom_pcie_probe(), pm_runtime_get_sync() is called to increment
the PM usage count. If devm_gpiod_get_optional() fails here, returning
directly bypasses the err_pm_runtime_put cleanup path, which leaves runtime
PM enabled and causes an unbalanced count.

Should this be setting ret =3D PTR_ERR(pcie->reset) and jumping to
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
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-sm8350-wif=
i-v2-0-efb68f1ff04c@oss.qualcomm.com?part=3D1

