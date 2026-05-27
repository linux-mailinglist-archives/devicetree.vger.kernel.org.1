Return-Path: <devicetree+bounces-303371-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLBCB/rFFmrOqgcAu9opvQ
	(envelope-from <devicetree+bounces-303371-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:22:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9142D5E291C
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 12:22:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 03227300C81C
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 10:16:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 685893033EC;
	Wed, 27 May 2026 10:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mz0wF+ER"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B369A3EE1F8
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 10:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779876961; cv=none; b=aQk1aAYY4Nmqa4fX/4SQjdZoj4JD5fv07DWmlO/h9FA5UL09hq0AXgAmVFRTupXavVHs5Q7L9BB10z5QH5JghQhojRi5Y/UOATzhK/r/tRFzSDM8WwiMKAIbJUKiwla4ZYR99bRvf/Lh0ypo0ngd323hnse0TG+MBjN0uVZs+zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779876961; c=relaxed/simple;
	bh=sfEn9zZ7T6pRS1cEdHcS0ri+04EWy3AE9ZFbMcwmIyo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=o87hipPYAkzF7GVglbgEBibgegtynLqDL3NPoaP+K1u+8G1Oqad6LQIVgNueGb+yTt4/zUtyLb/hFgTcGsC83aA5ulDBHOoFw1RuAY5iEDt+4W0WlsmEz5rE5w0QI8TK+sL9XsdGwNCwjEBqiuY7zxrobyEOlNc8CEqpN4uXEl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mz0wF+ER; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3CC61F000E9;
	Wed, 27 May 2026 10:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779876957;
	bh=DQZJgCJrJtezWm2j0byDOSZExmbYqOO4kG95/p3UkY8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Mz0wF+ERcz3Sz1KsFJ20oOohLbqF7kqa3hhJ7pNiCVGWGu0k5ivJjAtbQ5j7/LQaU
	 iQsO9HzIOq0Bi4HXhLvpsjI9ze8hrFOfoCBNrvKLbtOpY68G5o2tO59HjYumLVBc8t
	 eAVAoU5WdsIzLhdqK9f0wy0xaxTNfRoTsxiN1p9kjpAk5EG6ZJJRRWVKR0Kz7nVqPk
	 GwnizSD7uvHs5mm2Dbw7rMGc1qCelCgy+ah+T4DApIjeBYIn6xCqa3jjVyP55dE0y4
	 WMCCVtp8VQ1tkwYh7sTa5A3PWL/PoNfbEbz1s/0F+6anOPo3XxV2pjdYhUrZjqxI5e
	 OtQlIhAOkJCVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 24/24] arm64: dts: qcom: eliza: Reduce OS PDC DRV
 span to 0x10000
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260527094333.2311731-25-mukesh.ojha@oss.qualcomm.com>
References: <20260527094333.2311731-25-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 10:15:56 +0000
Message-Id: <20260527101556.B3CC61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303371-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DBL_PROHIBIT(0.00)[0.113.56.96:email];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,b220000:email,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 9142D5E291C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Reducing the PDC `reg` size to 0x10000 triggers a hardcoded warn=
ing in `drivers/irqchip/qcom-pdc.c` and fails to actually reduce the mapped=
 region size.
--

commit 5004f072e69f0ca2826142cbc32ed05f15a06f65
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

arm64: dts: qcom: eliza: Reduce OS PDC DRV span to 0x10000

This commit reduces the size of the first reg entry in the OS PDC DRV
register window on eliza from 0x40000 to 0x10000.

> diff --git a/arch/arm64/boot/dts/qcom/eliza.dtsi b/arch/arm64/boot/dts/qc=
om/eliza.dtsi
> index 4a7a0ac40ce62..24f92ca9f9ef4 100644
> --- a/arch/arm64/boot/dts/qcom/eliza.dtsi
> +++ b/arch/arm64/boot/dts/qcom/eliza.dtsi
> @@ -885,7 +885,7 @@ lpass_lpicx_noc: interconnect@7420000 {
> =20
>  		pdc: interrupt-controller@b220000 {
>  			compatible =3D "qcom,eliza-pdc", "qcom,pdc";
> -			reg =3D <0x0 0x0b220000 0x0 0x40000>,
> +			reg =3D <0x0 0x0b220000 0x0 0x10000>,

[Severity: Medium]
Does this introduce a regression by triggering an invalid reg size warning
during boot?

Looking at drivers/irqchip/qcom-pdc.c, qcom_pdc_probe() calculates the
mapping size like this:

    res_size =3D max_t(resource_size_t, resource_size(&res), QCOM_PDC_SIZE);

where QCOM_PDC_SIZE is defined as 0x30000. If the resource size from the
device tree is smaller than QCOM_PDC_SIZE, the driver issues a warning:

    pr_warn("%pOF: invalid reg size, please fix DT\n", node);

Since this reduces the size to 0x10000, res_size evaluates to max(0x10000,
0x30000) =3D 0x30000. Will the driver still ioremap 0x30000 bytes despite
this change, and emit the warning on every boot?

>  			      <0x0 0x174000f0 0x0 0x64>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527094333.2311=
731-1-mukesh.ojha@oss.qualcomm.com?part=3D24

