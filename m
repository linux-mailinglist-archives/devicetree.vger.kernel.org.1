Return-Path: <devicetree+bounces-321893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kuQwI0XKTGpFpwEAu9opvQ
	(envelope-from <devicetree+bounces-321893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:43:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0498D719EAB
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 11:43:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=boQ5MOHH;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321893-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321893-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E8B93305389A
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 09:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C88E36492C;
	Tue,  7 Jul 2026 09:31:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD19346A1C
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 09:31:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783416696; cv=none; b=MlbvR2717WkzfFDjT60JqcKNLrnSBPIQtUJS+A/7bnH4wYGhB4y3/OkpdBybUFEmFxfef4zCJJpjCA6ttBaRDSTcgv0Hw/lH96/aeICMPJPc00VyXR7PIZ8pqXvw2PN+7sZ07PtFenlgx5yXwDOM4Y3FQHzr45bwxogshPwQbUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783416696; c=relaxed/simple;
	bh=SsenicBCqsscWdYsH+QO86o4qrDqBJV6KhpJ86jLA70=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hJ43a+T060Tgug2ipxUzKy/EFnOr9DNweQLTE5iPNsFIYRdMOL2PKQPwIRB6jSGSrsz5m2yEiN91nxi14nyqQjeaz6GgqRsEUDm0oE2ZXqGhwezG2G+uiqg/jzaoTbWe+jUlZy7STaEUVEQTtr/3wpQ3zEvUMV9EYFfxB/uxf7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boQ5MOHH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE2FE1F000E9;
	Tue,  7 Jul 2026 09:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783416695;
	bh=k99ykkmjZ6OP74dXrQBamHfeRFRuxYvW7MblABiIRvA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=boQ5MOHH5BQVBWusU9Ov/daa1xuBiisJ/Jr38IQx1sXc+24GXdnJg6LRP1iCrUW5s
	 nLs2AjL85j+pbXy+x1XpKqZGwIDDmNe4QCK3hfbfXMpZGPKP4AUQOZkfvUOHZS7LzT
	 yWfdnJtUTDP90wAcN/yI0S2BaYVzVP4Vb/3ofCG8ioYiOcFMc30TIpNT34rlwdKJQW
	 nUrXyAZfPCc1W/cPUcWlXNclC0Fy1cTElXWy+V1CuLG7A304K1HM2h31cbfS+Gq1AT
	 X8xEX1efE2f7kXBn6BJ2e4VfzBYgIgXS5gWOYL5QUXa7D/xmVSITuyUwJvmDTMtBPW
	 FbO7PbunlYNfw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/7] irqchip/qcom-pdc: restructure version support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Maulik Shah" <maulik.shah@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260707-hamoa_pdc_v3-v4-1-dfd1f4a3ae89@oss.qualcomm.com>
References: <20260707-hamoa_pdc_v3-v4-0-dfd1f4a3ae89@oss.qualcomm.com>
 <20260707-hamoa_pdc_v3-v4-1-dfd1f4a3ae89@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 09:31:34 +0000
Message-Id: <20260707093134.CE2FE1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321893-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:maulik.shah@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0498D719EAB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The global `pdc_version` is left uninitialized, completely breakin=
g interrupt enablement on PDC v3.2 devices due to executing the wrong code =
path.
--

--- Patch [1]: [PATCH v4 1/7] irqchip/qcom-pdc: restructure version support=
 ---
commit 9e72443d7a81acfbf2e3c820dae28eecbd9b0db1
Author: Maulik Shah <maulik.shah@oss.qualcomm.com>

irqchip/qcom-pdc: restructure version support

This commit restructures the PDC driver by introducing a pdc_desc struct to
manage the base addresses, registers, and version information per device.
This prepares the driver to handle different hardware register layouts
and secondary controller modes more cleanly.

> diff --git a/drivers/irqchip/qcom-pdc.c b/drivers/irqchip/qcom-pdc.c
> index 2014dbb0bc43a..a77d1d3340629 100644
> --- a/drivers/irqchip/qcom-pdc.c
> +++ b/drivers/irqchip/qcom-pdc.c
[ ... ]
> @@ -383,6 +462,30 @@ static int qcom_pdc_probe(struct platform_device *pd=
ev, struct device_node *pare
[ ... ]
> +	pdc =3D devm_kzalloc(dev, sizeof(*pdc), GFP_KERNEL);
> +	if (!pdc)
> +		return -ENOMEM;
[ ... ]
> +	pdc->version =3D pdc_reg_read(PDC_VERSION_REG, 0);
[ ... ]
> @@ -401,48 +505,29 @@ static int qcom_pdc_probe(struct platform_device *p=
dev, struct device_node *pare
[ ... ]
> -	pdc_version =3D pdc_reg_read(PDC_VERSION_REG, 0);
> -

[Severity: High]
Since the global pdc_version is no longer initialized here, won't it default
to 0?

If __pdc_enable_intr() still relies on the global pdc_version variable to
branch:

	if (pdc_version < PDC_VERSION_3_2)
		pdc_enable_intr_bank(pin_out, on);
	else
		pdc_enable_intr_cfg(pin_out, on);

will PDC v3.2 hardware incorrectly take the legacy bank configuration path?

Because pdc->regs->irq_en_reg is intentionally 0 for v3.2 devices, this
looks like it might read and write to offset 0 (the PDC base) instead of
the IRQ_CFG register, potentially corrupting unrelated registers and failing
to enable interrupts.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707-hamoa_pdc_=
v3-v4-0-dfd1f4a3ae89@oss.qualcomm.com?part=3D1

