Return-Path: <devicetree+bounces-298471-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fR9lEbtaB2pH0AIAu9opvQ
	(envelope-from <devicetree+bounces-298471-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:41:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 927D85556B7
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 19:41:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9FE7B3233131
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 16:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAE903C0A13;
	Fri, 15 May 2026 16:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mjtia5wq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98EA93BB68B
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 16:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778862797; cv=none; b=dP5qjnLThf/aJYBMZSleAVB7ywMUD6fcW+luT8x3nJ8HEqpIxaIBaW4x8XdW1sWGRKN7E43cPKvzQU9bGgS8vo8bMhePHq63Jj7xrHqiWmWSQMQed9HiDUB7F2oTbzLg6QMOCVrRzJpN6/jeQVHL8uM9J+iHo8t73P6mIhKVTrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778862797; c=relaxed/simple;
	bh=Q1lUuiRW1MPdTBbvhuiPIvM0mxjnJsf8ZrTvZqpUWm8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HbNkzxiM7iyGKmiBK7rQe9WWEOCKn340WAL3U8cDteJGizjMBmxrJrj93aS0j1LlI8D3o21M6bzSRpc4GC4Ls4foQJZEzWtjTDbwQJWTFJhElXUwXJMbumAnoRKesMK0tI/Vqlkpcx94sdSXMaHfyQaPHz7W5sf+OyasiQUSu1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mjtia5wq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E814C2BCF6;
	Fri, 15 May 2026 16:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778862797;
	bh=Q1lUuiRW1MPdTBbvhuiPIvM0mxjnJsf8ZrTvZqpUWm8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Mjtia5wqHamS/L7Hr7lev7iLVc5ayjATTp76DQDkPVs9yzMFXCb2W9iYGlyPfbOkr
	 NXZoqtbTwxO1yDqWGwGbB9QY9aUfhDyVCCEkXODTReM9m6lggU6jmb1JaFADLnLORy
	 MwWw3HEmRkxyDQkNDMJ/yYtbMoQAZ1JokFatRQgOj060Vq+Oa19M2dsxkbMAXPYEwL
	 S9s7otyabn0h6MFMiNT0j5wF316eqfj+bFPVSaymRZ3w8dJaSdupTe/BayMx4azl5b
	 fF/HWwXmHvLAwcO2zHIyGUXdEkxGbz/ud689taUZ/VxOMZkEmoKGHjUYozJB6MRN37
	 E2HYPnkkN9Gzw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add Eliza CQS EVK board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Abel Vesa" <abel.vesa@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260515-eliza-dts-qcs-evk-v1-2-7169d78a33e1@oss.qualcomm.com>
References: <20260515-eliza-dts-qcs-evk-v1-2-7169d78a33e1@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 16:33:16 +0000
Message-Id: <20260515163317.2E814C2BCF6@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 927D85556B7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298471-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The device tree will fail to compile due to an unresolved node refe=
rence to `&uart13` in `eliza-evk.dtsi`.
- [Low] The new board compatible string `qcom,eliza-cqs-evk` is not documen=
ted in the dt-bindings.
--

commit 1762700c0c5b81f76d24db53170888e499078dd4
Author: Abel Vesa <abel.vesa@oss.qualcomm.com>
arm64: dts: qcom: Add Eliza CQS EVK board

This commit adds the common Eliza EVK dtsi and the final Eliza CQS EVK dts
files. It provides the device tree configuration for combining the Eliza SoM
with the common EVK base board.

> diff --git a/arch/arm64/boot/dts/qcom/eliza-cqs-evk.dts b/arch/arm64/boot=
/dts/qcom/eliza-cqs-evk.dts
> new file mode 100644
> index 0000000000000..fcf7d9232805c
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/eliza-cqs-evk.dts
[ ... ]
> @@ -0,0 +1,20 @@
[ ... ]
> +/ {
> +	model =3D "Qualcomm Technologies, Inc. Eliza CQS EVK";
> +	compatible =3D "qcom,eliza-cqs-evk", "qcom,eliza";

Is this new compatible string documented in the dt-bindings?

A search of the Documentation directory suggests qcom,eliza-cqs-evk is
missing from the binding files, which could cause dt_binding_check to fail.

[ ... ]
> diff --git a/arch/arm64/boot/dts/qcom/eliza-evk.dtsi b/arch/arm64/boot/dt=
s/qcom/eliza-evk.dtsi
> new file mode 100644
> index 0000000000000..e47b24f8b8277
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/eliza-evk.dtsi
> @@ -0,0 +1,20 @@
[ ... ]
> +&uart13 {
> +	compatible =3D "qcom,geni-debug-uart";
> +
> +	status =3D "okay";
> +};

Will the device tree compiler fail with an unresolved node reference here?

It appears the base SoC file defines the UART as uart14, while this code tr=
ies
to reference and modify uart13 which is not defined in the inclusion chain.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-eliza-dts-=
qcs-evk-v1-0-7169d78a33e1@oss.qualcomm.com?part=3D2

