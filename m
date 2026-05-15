Return-Path: <devicetree+bounces-298324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHV8ELoYB2rOrgIAu9opvQ
	(envelope-from <devicetree+bounces-298324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 14:59:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C275500F4
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 14:59:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5FA2D3004D02
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D6A02DECDF;
	Fri, 15 May 2026 12:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bcxfs374"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3129E2DB7B9
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 12:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778849866; cv=none; b=cARRQPNHarjdnws4fSKspZiI1LO81AfLkH0f24CsoVJfviGWzxcoFYpMM8Bn9CLNTyDd4f4QjIt7IGLT1npW1barfAwjeVb32DMwEJJGhgi5NgPbiOcoQzV5pGhcTx/B16heuSe9jk1/4OaLaqP49TJ5r1ym8q3VwPYGLWOAdoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778849866; c=relaxed/simple;
	bh=yxfuK9gQx1WbbllwbVouyZJWpOPie+fm3+30lLExS6c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kdaa8v2AgyIp9vuJdRwVYUHCIovTKIcvMarHIq0TozGyrfGATDt01fXWdbsRl9PIZOu2+97SRtVy1tXf/daWtFuEYsM2/vdCGe3rP0QWgnTwtHkT07CZyXBRQlmr9xOY1lpCG9DqG+am2A3z8BHGWkP7aMknQX5DO4UKoKq7xhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bcxfs374; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC843C2BCB0;
	Fri, 15 May 2026 12:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778849865;
	bh=yxfuK9gQx1WbbllwbVouyZJWpOPie+fm3+30lLExS6c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Bcxfs3741uJx5ZVj09+S/FjtsYzDplE5z1Um66rX3nU3rA6jHfc0fRli48oad5UtN
	 HDFEK3nj9KZEYf939KTqZ4FLzVCFXcu6qGzSgQTKgBK+ZpOjA7i1Tn72glCu6L21YQ
	 euGZVxSZOQGy9fJRKbxWAP2/Lc45Vq/1EwP9FI72v9tIVGc/hb+5XuZ1qrH6qnNkKq
	 f1w2HEK8NtXPERmd8cSklV9/ueJY0tV7viWevEDvk+7swSc68bBrrJCCdV06mwQSjZ
	 DtFHn8ZwU6r2Nk9++OWoEcLpR9bPQVXS+vPYvCMfTpmBF5rYe6C1an1XsEqOcHcrYv
	 n82lfJ3YV4K6w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: qrb4210-rb2: enable venus
 device
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260515-iris-sm6115-v2-4-2ab75229de61@oss.qualcomm.com>
References: <20260515-iris-sm6115-v2-4-2ab75229de61@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 12:57:45 +0000
Message-Id: <20260515125745.AC843C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: D3C275500F4
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
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298324-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree override `firmware-name` has no functional effec=
t, making the intended workaround a no-op.
--

commit 52a51e0f4e822b65926de689abb3bd0218261df9
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

arm64: dts: qcom: qrb4210-rb2: enable venus device

Enable the Venus en/decoding device on the Qualcomm RB2 board. The HFI
Gen2 firmware for AR50Lt platforms doesn't work on RB2, so fix the
firmware in the DT for now.

> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/d=
ts/qcom/qrb4210-rb2.dts
> index 1203172729faa..a6236b09cdbd9 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -739,6 +739,12 @@ &usb_qmpphy_out {
>  	remote-endpoint =3D <&pmi632_ss_in>;
>  };
> =20
> +&venus {
> +	firmware-name =3D "qcom/venus-6.0/venus.mbn";

Does this firmware-name property actually change the driver behavior?

Looking at qcm2290_res in drivers/media/platform/qcom/venus/core.c (which
handles the qcom,qcm2290-venus fallback compatible used by this platform),
the default fwname is also qcom/venus-6.0/venus.mbn.

In drivers/media/platform/qcom/venus/firmware.c, if the firmware-name prope=
rty
is absent, the driver falls back to core->res->fwname. Since the string
provided here exactly matches the default fallback, the override appears to
have no functional effect.

Was a different firmware name intended to avoid the broken HFI Gen2 firmwar=
e?

> +
> +	status =3D "okay";
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-iris-sm611=
5-v2-0-2ab75229de61@oss.qualcomm.com?part=3D4

