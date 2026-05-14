Return-Path: <devicetree+bounces-297366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIi6EPaCBWo5XwIAu9opvQ
	(envelope-from <devicetree+bounces-297366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 10:08:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 343BE53F143
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 10:08:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4AB0F300981F
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 08:08:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E0D23D75B0;
	Thu, 14 May 2026 08:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXE/4hR+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1083ACA45
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778746097; cv=none; b=Yj+Ar4ZwT+diiJVMihmodWv8FOESIVrWsUfDfGePA9UoUZeYP+3LXV5gcRBXGcAHDyyGFcYV9yMu5pN4k2zBzHfsoVjEb8J75jmfUFIocVE+6frc+bOqFGEjOmndmW4kM1AKwaH0oQGrXLp8xpjymGbnPDgxZ9sKie+spGhgmuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778746097; c=relaxed/simple;
	bh=obF+fViWQP+FcQsUenMzUTwnUFK6aS+M1GkN3KL/F1Q=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Vtroe2uhu8AsmbgRcxQpQDsnGCbpKu0UrOf83m6w1118QZOApgAv7YDvMag5wgGx7KXpHz0wH6MSDOEX9k4SzmOo5AgUtyLWc9LP83hSnuyI6eB3CKnQgnZ7KMCRzUDNqp+XqY18Ybc2WsMueecDgiv/qALKFjXELs8wYJ7KQGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXE/4hR+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67F5AC2BCB7;
	Thu, 14 May 2026 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778746096;
	bh=obF+fViWQP+FcQsUenMzUTwnUFK6aS+M1GkN3KL/F1Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=FXE/4hR+o3Ri8F4QCVzW5G4Zxz4NqxSIrVhI+prsKSZQ50bpnROnR+4JCUzFsiT7Y
	 YvpIB2240bWo9vqeUytKwg645+hTR4DlwsQ74xTs63atbWtblVD2J1wEIq7YgXu13d
	 zze0nsOL24EqOu3QoMOZzPcA9nINZ2NzLNhaCanDo+bs03P51Th2sDAQFd7q2I2234
	 mhMCUytTaM0t2G9YLCbWDLmA63BPugBfwT0OV1heivw8VQFzzaR4vdmaAWXmlnH5LQ
	 gUDqMqreI2WIC5WST44kUt42BHS5kiIqfLRQ0qiGQ9QmQmYnib+S/BgvDU6n4tUVQa
	 wElHW4dvKCjsw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: sdm670-google: add common
 device tree include
Reply-To: sashiko-reviews@lists.linux.dev
To: "Richard Acayan" <mailingradian@gmail.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260513172549.1345-2-mailingradian@gmail.com>
References: <20260513172549.1345-2-mailingradian@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 08:08:15 +0000
Message-Id: <20260514080816.67F5AC2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 343BE53F143
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297366-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,9c000000:email];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The newly added common device tree file uses the deprecated GPL-=
2.0 SPDX identifier, contradicting the commit message.
- [Low] The `framebuffer` node retains a unit address in its name without a=
 `reg` property, which triggers a dtc warning.
--

commit 1f4f677fcfc2b6d8ad7bf836706a7501c4b2897b
Author: Richard Acayan <mailingradian@gmail.com>

arm64: dts: qcom: sdm670-google: add common device tree include

This commit extracts the common elements from the Pixel 3a device tree into
a shared include file to support the Pixel 3a XL. It also rewrites the
original device tree to specify only non-XL properties.

> diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi b/arch/ar=
m64/boot/dts/qcom/sdm670-google-common.dtsi
> new file mode 100644
> index 0000000000000..0f57b915186b7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi
> @@ -0,0 +1,712 @@
> +// SPDX-License-Identifier: GPL-2.0

The commit message mentions changing the SPDX license identifier from GPL-2=
.0
to GPL-2.0-only, but this new common include file still uses GPL-2.0. Was
this an oversight when creating the new file?

[ ... ]

> +	chosen {
> +		stdout-path =3D "serial0:115200n8";
> +
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		ranges;
> +
> +		framebuffer: framebuffer@9c000000 {
> +			compatible =3D "simple-framebuffer";
> +			memory-region =3D <&fb_mem>;
> +			width =3D <1080>;

Since the reg property was replaced with a memory-region reference, should
the @9c000000 unit address be removed from the node name to prevent a dtc
warning about a node having a unit name but no reg property?

Additionally, are the #address-cells, #size-cells, and ranges properties in
the parent chosen node still necessary now that the child node no longer
uses a reg property?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513172549.1345=
-1-mailingradian@gmail.com?part=3D1

