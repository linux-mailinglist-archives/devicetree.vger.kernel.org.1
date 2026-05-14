Return-Path: <devicetree+bounces-297333-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDSDIrxuBWrkWwIAu9opvQ
	(envelope-from <devicetree+bounces-297333-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:42:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCF553E704
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:42:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BF4553043C2B
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 06:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B07DB3D1ABF;
	Thu, 14 May 2026 06:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXJcqPvU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054F93D16F8;
	Thu, 14 May 2026 06:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778740903; cv=none; b=lf+ht+z/awHODI/epw0ZJhkiX3Gb0k4UqU/1vN/LIwMum80Kt732AMc4tVr7kgeITQUyDfT460lEg48wjZLKsqVw3qEOcUjMNNiaAvccui+zxuJrte3iNFPLzXmr9RXbFA0qMnnBrum/HNzKzLkvAHveSVcfc56COcJhgkPcZhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778740903; c=relaxed/simple;
	bh=YaUW8w7YCOLdmqJMPsi0fOmvKVPBIiExCUVGJcBWXiA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lRvN1+6j3LwldT4d65iqWPRWtuq8fbwKA9vixvGrSBY6FmtvmywgVkhVGIKvghbbgNTRLSH55YoWPZ0d583TKhGypJyAocmNt4UlfrHakrRI5HIMxtb5q17cdjmE8apiBGuKvlVJkOpHUeXRJuuMBM05tc5gjzKCsYqmyRhwVAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXJcqPvU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E11D7C2BCB7;
	Thu, 14 May 2026 06:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778740902;
	bh=YaUW8w7YCOLdmqJMPsi0fOmvKVPBIiExCUVGJcBWXiA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aXJcqPvUUBlQv5k1gBfu0VVCAn/D7q76eneiWoRKeq6dlpC9pMSXbCIlVwYmA97MU
	 r5wEiH9re8D1QbCA08KyImQZhpHafCe/v1IRzCFjynHIryafHFoCyqbsRbC2oSKU/C
	 pJIWrilJ4gQ0j9p3ixKPdB+UWBO+mMaT1rjFuMUntaHAMuvnPhsKWEQ+dJZDXk+J0n
	 35glokJki8vFnkKDYFFaL1qo2A8yoeVJ2VQJnQk0UiyYkc4WWYTXGDMA0xV/ELGuPY
	 cMevXEDbMubsw2CvJg3YAORUkWlmdec6HNwqwkX7lZbsVmJ5H2/t1gtLzp5BAyLp7m
	 gmkALpl8rnftQ==
Date: Thu, 14 May 2026 08:41:39 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Josua Mayer <josua@solid-run.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev
Subject: Re: [PATCH v6 08/10] arm64: dts: lx2160a: add labels to thermal
 trip-point nodes
Message-ID: <20260514-kind-antique-ocelot-d34abe@quoll>
References: <20260512-lx2160-pci-v6-0-d0ff72d3c983@solid-run.com>
 <20260512-lx2160-pci-v6-8-d0ff72d3c983@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260512-lx2160-pci-v6-8-d0ff72d3c983@solid-run.com>
X-Rspamd-Queue-Id: 1CCF553E704
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297333-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,linaro.org,pengutronix.de,gmail.com,solid-run.com,lists.infradead.org,vger.kernel.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Tue, May 12, 2026 at 04:39:03PM +0200, Josua Mayer wrote:
> LX2160A SoC dtsi defines rather conservative thermal trip points,
> alert at 85=C2=B0C and critical at 95=C2=B0C.
>=20
> This is okay for most boards, however the SoC maximum junction
> temperature is 105=C2=B0C in both commercial and industrial version.
>=20
> Industrial grade boards need to change the thresholds to avoid premature
> thermal shutdown in high-temeprature environments.
>=20
> Add labels to all thermal trip point nodes, enabling board dts to
> reference them and modify properties.

This is dead code or no-op. Labels should be referenced, otherwise you
are changing here nothing.

Squash the patches with the user of this label.

Best regards,
Krzysztof


