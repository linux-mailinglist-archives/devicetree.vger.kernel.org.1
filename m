Return-Path: <devicetree+bounces-299420-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INFYBpoQC2pN/gQAu9opvQ
	(envelope-from <devicetree+bounces-299420-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 15:14:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D23BE56D679
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 15:14:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9CB9E3044E3F
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD6A03F7A99;
	Mon, 18 May 2026 13:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l10eQXvr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914BC480DFC
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 13:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779109843; cv=none; b=cixxdGZPxnS0rVfbctcVyqTTO/xzNgjm2PgQxJGJIFdHkT4/jODrYflWfNM5XcJnZVXTJihlIQWEjtflxpyiym5+OTwhH6Y49MnSVQNPPSmMzDUXQzLVOSAvMNKVaHhZvaxIWeLO2pvxnVn9AebCzSDve4O0rkuD8PiJpfPF0sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779109843; c=relaxed/simple;
	bh=1AXk/PsHLZHdqKRcxQcA4Z5eUdwbGi8BpeT1xlpLP8w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FLUVI8DoqgJmzKrltv8EV2w9eFYDWLEuhb+/JzOFEQt/9a0EvYY85rpjbySa8CBa2cii5UVdETm1VPieT0QBZzij50Uc68VmE2ag6tLYSR3brXv2K8E742i6gnHTQOi5XJLF2rig9ipMNFGltiJtdYRJHTSsc06DZ/PjhPJ9gpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l10eQXvr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07CDCC2BCB7;
	Mon, 18 May 2026 13:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779109843;
	bh=1AXk/PsHLZHdqKRcxQcA4Z5eUdwbGi8BpeT1xlpLP8w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=l10eQXvrZdd8EjN9YG4iQE0ixStapRDW1nzqdqczmT2rdXx3RhUHyHPv2uxjt0yPg
	 JKl5NH5liZHp1gIITTkmu2o43UakKlVGS6gvzgBIbJsL0vg8ifOha6rB41pAAFdrtA
	 eiE4cslmyj0+3lfiRiezMiStMf+K/WSrz6MUr1nmj4rFfptB5A8yJWA2KdCh/GKF6m
	 ENVRWFHFnvVknduHMx18BQ+i+Gu7lpBcXrvkhDUVnPZZKaWuwinh2gr8qS88SmXGLJ
	 vHqxwg3uN3FoLh8NZcAMGnLeE25lnZ9eNNNJwk4ks3wLCrO9ou75VKMEw5/NT2rvT0
	 oHUSUCM62R85g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: memory: tegra264: Add full set of
 MC client IDs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sumit Gupta" <sumitg@nvidia.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518124306.2071481-3-sumitg@nvidia.com>
References: <20260518124306.2071481-3-sumitg@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 13:10:42 +0000
Message-Id: <20260518131043.07CDCC2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: D23BE56D679
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299420-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,nvidia.com:email,lists.linux.dev:replyto]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The macros for the XUSB HOST memory clients are incorrectly name=
d as `XUSB_DEV`.
--

commit f7f5816878d7a2d26ed25199c9ab18008b75aa76
Author: Sumit Gupta <sumitg@nvidia.com>

dt-bindings: memory: tegra264: Add full set of MC client IDs

This commit adds the complete set of TEGRA264_MEMORY_CLIENT_* IDs
exposed by the Tegra264 memory controller.

> diff --git a/include/dt-bindings/memory/nvidia,tegra264.h b/include/dt-bi=
ndings/memory/nvidia,tegra264.h
> index 521405c01f84c..c65403a764134 100644
> --- a/include/dt-bindings/memory/nvidia,tegra264.h
> +++ b/include/dt-bindings/memory/nvidia,tegra264.h
[ ... ]
> @@ -108,16 +194,140 @@
>  #define TEGRA264_MEMORY_CLIENT_PCIE5R		0xe2
>  /* PCIE5/DMX4 Write clients */
>  #define TEGRA264_MEMORY_CLIENT_PCIE5W		0xe3
[ ... ]
>  /* UFS Read client */
>  #define TEGRA264_MEMORY_CLIENT_UFSR		0x15c
>  /* UFS write client */
>  #define TEGRA264_MEMORY_CLIENT_UFSW		0x15d
> +/* XUSB HOST Read Client */
> +#define TEGRA264_MEMORY_CLIENT_XUSB_DEVR	0x166
> +/* XUSB HOST Write Client */
> +#define TEGRA264_MEMORY_CLIENT_XUSB_DEVW	0x167

Should these macros be named TEGRA264_MEMORY_CLIENT_XUSB_HOSTR and
TEGRA264_MEMORY_CLIENT_XUSB_HOSTW instead?

The inline comments document them as XUSB HOST clients, but the macro names
use DEV. Previous Tegra generations typically separate the host and device
endpoints using HOSTR/HOSTW and DEVR/DEVW.

Since device tree bindings constitute public ABI, could using DEV for the
host endpoints cause confusion for future drivers mapping the interconnect
paths?

> +/* XUSB SS0 Read Client */
> +#define TEGRA264_MEMORY_CLIENT_XUSB_DEV1R	0x168
> +/* XUSB SS1 Write Client */
> +#define TEGRA264_MEMORY_CLIENT_XUSB_DEV2W	0x169
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518124306.2071=
481-1-sumitg@nvidia.com?part=3D2

