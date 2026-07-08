Return-Path: <devicetree+bounces-322719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3ZepL+4nTmr+EAIAu9opvQ
	(envelope-from <devicetree+bounces-322719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:35:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D9B724622
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:35:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Me/jCaN0";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322719-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322719-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 082963037BDA
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 10:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B24C393DE2;
	Wed,  8 Jul 2026 10:27:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39E8381AFB
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 10:27:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783506451; cv=none; b=rCSfj5cycyqfhfucNFVyGqjSCJnBrheA6I3M0A3Re+ez1lDgsD6FlsNtPrkdhEU2l3tBdDlwFKb47YQHAP7eGNcoG7WrQOp+ejK1Ort6wnnx9qEBL0UR+bZodk5ueTd1mEbaw8Bg+V9/wYNIW7p6SzTr7yi8Sx/0jf3BNHFlwXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783506451; c=relaxed/simple;
	bh=m7O56JO8/QVAAqzvd/1pq0/GgLt2Xwsun0/nsxFdtWw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=M+ocLgo8KBGLg1geo7AIZ6Iu10BfyKe9ecqNCd6iARxR2gEXCND23CPvGs/cADO5/fYWd9aSAy2MEUTFIhitIjPy0owZmo5rV8Ie28xj4tTZaiVuWKRqLg+75PbYkgHkh0vBnXobOtxjPnjffPI5pefHoloIBKvDZHuXJq2ae8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Me/jCaN0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10AF91F000E9;
	Wed,  8 Jul 2026 10:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783506449;
	bh=FLCNlRaKaIMRdFbFArGT+zmqlyfeYJwVvAYq34rubpk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Me/jCaN06UzaYQUasVrL9UyA/Ia9/yd2IHxRZDnioKJ3FCq+xhXsXD4n0LvNNisAM
	 aG4w9QWVutu7sabMECzTvSej6D5bRBkbXEiJ/c7fzln81CLNWo2Y+NCY5VOU0wmE+1
	 AAfpRewG9EcypmUb3WmMTyqc3t4aeXi9GXrJ5Sn1Yc5o6a6hmxFQKkuFUtx5i1kZ72
	 MsNTZsl48quNkjssTQCMIilQwGtg2wt4nbZAabSrM1U14davP5RQvoF1y696xyYxyT
	 bAtDz/cfZ6CewPF3v2tdVY7LwfQFZMwTKO9EB7N5cXYhdxsCtZUiexm8QeCX9JyiaH
	 U2s5/nizYQkFQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 3/7] clk: qcom: Add generic clkref_en support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260708-tcsr_qref_0708-v8-3-62c42b5fa269@oss.qualcomm.com>
References: <20260708-tcsr_qref_0708-v8-0-62c42b5fa269@oss.qualcomm.com>
 <20260708-tcsr_qref_0708-v8-3-62c42b5fa269@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 10:27:28 +0000
Message-Id: <20260708102729.10AF91F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-322719-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:qiang.yu@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 20D9B724622

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Uninitialized stack memory read in qcom_clk_ref_provider_get due=
 to missing args_count check.
--

--- Patch [3]: [PATCH v8 3/7] clk: qcom: Add generic clkref_en support ---
commit 5fbeeca574eafbc5d86afc2e9ee00af52b02a04f
Author: Qiang Yu <qiang.yu@oss.qualcomm.com>

clk: qcom: Add generic clkref_en support

This commit adds generic support for clkref_en clocks in Qualcomm platforms.
It introduces a dedicated clk_ref clock type with custom operations that
manage both the enable bit and associated regulators, and provides a common
probe and registration API.

> diff --git a/drivers/clk/qcom/clk-ref.c b/drivers/clk/qcom/clk-ref.c
> new file mode 100644
> index 0000000000000..3efdf6749770d
> --- /dev/null
> +++ b/drivers/clk/qcom/clk-ref.c

[ ... ]

> +static struct clk_hw *qcom_clk_ref_provider_get(struct of_phandle_args *=
clkspec, void *data)
> +{
> +	struct qcom_clk_ref_provider *provider =3D data;
> +	unsigned int idx =3D clkspec->args[0];

[Severity: Medium]
Could this read uninitialized stack memory if a device tree node is
malformed?

If a consumer requests a clock but the provider's device tree node
incorrectly specifies #clock-cells =3D <0>, the device tree parsing logic
will set args_count to 0 and leave the args array uninitialized.=20

Would it be safer to verify clkspec->args_count >=3D 1 before reading
clkspec->args[0]?

> +
> +	if (idx >=3D provider->num_refs)
> +		return ERR_PTR(-EINVAL);
> +
> +	if (!provider->refs[idx].regmap)
> +		return ERR_PTR(-ENOENT);
> +
> +	return &provider->refs[idx].hw;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-tcsr_qref_=
0708-v8-0-62c42b5fa269@oss.qualcomm.com?part=3D3

