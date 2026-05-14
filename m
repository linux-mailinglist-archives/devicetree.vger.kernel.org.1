Return-Path: <devicetree+bounces-297406-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAHGDJOeBWr4YwIAu9opvQ
	(envelope-from <devicetree+bounces-297406-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:06:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB328540207
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:06:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 018A1300B1D9
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 10:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1473738AC8C;
	Thu, 14 May 2026 10:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ba9W4OOs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E53D73148D0
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 10:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778753169; cv=none; b=fB8bTTZ4mzEjoxieVTq3/x/2EFTBe7bEHuGrSjUStsDgItsRuQV/Vw+xguwTu5zKaYstE+FaUAO4GWJ2vklNm5O9CINGhyuYwPjHU/L2bYiMOUKJtrCeUDKLGqxBnMT8ZHT0SyjXSgfKPfIefK6YYP1mw9jR00SUhuyTC1VKoVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778753169; c=relaxed/simple;
	bh=I3zoIbflBpfPbgL673hGNCOuNDwH9E+RiVdqGSUfHVY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Q523pOE9JbmUiBzr5JQwNlIr3A8G+CrRVMqeWRrhqoNM6LVOFvVpFk4KBK7TVWLDjxg9r2nLbvC0ETAFxagPuylDByYBgV9JzROrT5xVe5NrnMzZBQ2RAUTUY+80Az6z512AfldfRs0dPWCmhnHO54Iq5HC1KOfjO99e9sKeBPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ba9W4OOs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E1C8C2BCB3;
	Thu, 14 May 2026 10:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778753168;
	bh=I3zoIbflBpfPbgL673hGNCOuNDwH9E+RiVdqGSUfHVY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Ba9W4OOsjae2WMptX4V5EyEUTODxbLQtAHasDWGzM5g+4sFHBkSncIdEsrtec0Hml
	 6YkbdkkClNbVieYDmDd9R6/5lSevmcdpjD4y2FsxwukZ9Z6rmcLL24Csgrfl2SLIKQ
	 YiNSGw1/i9d/+jyXPi+4jHPaLDz75qMDGFdvb3hCaAzGNYarafSCbJ7rcxNzSskX4L
	 D+PhRzMK8Dbn8aDBBs6aZrsPtLhEZq6/r8XPUtBFvzd0HD+u1m1vHCZnPXO1bAgL8V
	 J8sHxTkSlNgP0BnCVo4Fmg1kbGp2AdnFbkt/BT/k6Kx9JqKBqNMeEJiIE0jx42H42/
	 1fJXkadIsusXg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: remoteproc: qcom,shikra-pas: Document
 Shikra PAS remoteprocs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260514-shikra-rproc-v1-1-9afdedeee002@oss.qualcomm.com>
References: <20260514-shikra-rproc-v1-1-9afdedeee002@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 10:06:07 +0000
Message-Id: <20260514100608.4E1C8C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: BB328540207
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297406-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sashiko.dev:url,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The device tree binding example provides two interconnect paths, vi=
olating the `maxItems: 1` constraint inherited from `qcom,pas-common.yaml`.
--

commit 6b248da80633195199f478d98724a0590dfdff63
Author: Komal Bajaj <komal.bajaj@oss.qualcomm.com>

dt-bindings: remoteproc: qcom,shikra-pas: Document Shikra PAS remoteprocs

This commit documents the bindings for the CDSP, LPAICP and MPSS PAS on
the Shikra SoC.

> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,shikra-pas=
.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,shikra-pas.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,shikra-pas.yaml

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,rpmcc.h>

[ ... ]

> +        clocks =3D <&rpmcc RPM_SMD_XO_CLK_SRC>;
> +        clock-names =3D "xo";
> +
> +        interconnects =3D <&mem_noc MASTER_AMPSS_M0 RPM_ALWAYS_TAG
> +                         &mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
> +                        <&system_noc MASTER_CRYPTO_CORE0 RPM_ALWAYS_TAG
> +                         &mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>;

Will this cause a validation failure during make dt_binding_check?=20

The qcom,pas-common.yaml schema, which is included earlier in this file
via a $ref, restricts the interconnects property to a maximum of 1 item.
However, the example block here provides two interconnect paths.

> +
> +        power-domains =3D <&rpmpd RPMHPD_CX>;
> +        power-domain-names =3D "cx";

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-shikra-rpr=
oc-v1-0-9afdedeee002@oss.qualcomm.com?part=3D1

