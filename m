Return-Path: <devicetree+bounces-299719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCOECpzgC2qzPwUAu9opvQ
	(envelope-from <devicetree+bounces-299719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:01:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A3A577106
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 06:01:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8EF433007224
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 04:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3853D258CE7;
	Tue, 19 May 2026 04:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OL78+znP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152621B4156;
	Tue, 19 May 2026 04:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779163285; cv=none; b=WLea3zPEnkHBWm9Ai84ppXq7PA5OECyNYgCOWUETuODTFMWhRVrTc0a5brNVyNetyUimNsueAKKvZWwOjbnHw1vbXi1BfgrvL9mSKFxQah0Ns+ii9rGBrOn5o6wuyFV0d2uUwkfrz354sztRMOGxswmIFI6XyGTEqfvX4YBEpOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779163285; c=relaxed/simple;
	bh=apfHh9NdaAR8H6oHPJ1Dep9eGdExGnRCypopoid+nDE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VppRVIo4PK9V5qReXphRUJCkaGHpWzgRE+T7UdXU4eU/bGlA5OuCaUtvrzM6wJYxhTuXaQggeBdLmmCrWt95SDFoJWRLZ0oE3ZdkAUwLGS4rPuvw4kQ4j5KidLsLGprgPoFoGkl89e2R89Jz5dFQwIJbaovP43H9bfGBK0hCwFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OL78+znP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69F85C2BCB3;
	Tue, 19 May 2026 04:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779163284;
	bh=apfHh9NdaAR8H6oHPJ1Dep9eGdExGnRCypopoid+nDE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=OL78+znPoYduJqPwYytogtx+mhJq7IMbEF/oyanGVsCkdQIdX18FDmpYaxDyw3oPR
	 TTNVlQDFEIuOUfKMAkx2bswJck+mJfjidUmPZyARmLhAoHIJhRp0mMgQMXjjuWUYSZ
	 c01Mgkl9vCjXiFOuS63wmuKlCuA7Nmcn5mM2f31eWZ3iS3aNd4OFJ6FWB3eFjnDi9M
	 iJpBmF4f6ihg1GKS00b0tePjX3qgtmoaPZPq6gGHe+1VQZ60wCqP9N5lpTnIeukenc
	 RkqxE1qsEXTchrEbU/pQDb3drn5u7tYtiiuj0RlXcd4D8tIZZXKBTKgBht0BkGARPW
	 VMzpMy4R9bP3Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/6] media: synopsys: Add PHY stopstate wait for
 i.MX93
Reply-To: sashiko-reviews@lists.linux.dev
To: "Guoniu Zhou" <guoniu.zhou@oss.nxp.com>
Cc: imx@lists.linux.dev, devicetree@vger.kernel.org, robh@kernel.org, Frank.Li@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260519-csi2_imx95-v4-4-84ea4bb78a88@oss.nxp.com>
References: <20260519-csi2_imx95-v4-4-84ea4bb78a88@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 04:01:23 +0000
Message-Id: <20260519040124.69F85C2BCB3@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,nxp.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299719-lists,devicetree=lfdr.de];
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
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 19A3A577106
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Waiting for the PHY stop state (LP-11) after enabling the remote s=
ensor streams introduces a severe race condition, causing initialization ti=
meouts and capture failures.
--

commit 804a163365664b371b9f8e8d039f139d325044c6
Author: Guoniu Zhou <guoniu.zhou@oss.nxp.com>

media: synopsys: Add PHY stopstate wait for i.MX93

This commit implements waiting for D-PHY lanes to enter stop state on
i.MX93. This ensures proper PHY initialization by verifying that the clock
lane and all active data lanes have entered the stop state before proceeding
with further operations.

> diff --git a/drivers/media/platform/synopsys/dw-mipi-csi2rx.c b/drivers/m=
edia/platform/synopsys/dw-mipi-csi2rx.c
> index 92178a3dec5d5..8a34aec550ade 100644
> --- a/drivers/media/platform/synopsys/dw-mipi-csi2rx.c
> +++ b/drivers/media/platform/synopsys/dw-mipi-csi2rx.c
[ ... ]
> @@ -556,10 +562,19 @@ static int dw_mipi_csi2rx_enable_streams(struct v4l=
2_subdev *sd,
>  	if (ret)
>  		goto err_csi_stop;
> =20
> +	if (!csi2->enabled_streams &&
> +	    csi2->drvdata->wait_for_phy_stopstate) {
> +		ret =3D csi2->drvdata->wait_for_phy_stopstate(csi2);
> +		if (ret)
> +			goto err_disable_streams;
> +	}

Is there a race condition between enabling the remote streams and waiting
for the PHY to enter the stop state (LP-11)?

In dw_mipi_csi2rx_enable_streams(), v4l2_subdev_enable_streams() is called
just before this wait_for_phy_stopstate() block. Enabling the sensor stream
commands it to leave the stop state and enter High Speed (HS) mode to
transmit data.

By the time the polling loop in wait_for_phy_stopstate() reads the
DW_MIPI_CSI2RX_PHY_STOPSTATE register, the sensor might have already
transitioned to HS mode, especially since the polling loop uses
sleep_before_read =3D true. In HS mode, the lanes are actively toggling and
are no longer in the stop state.

Could this cause the polling loop to never detect the required stop state,
resulting in a -ETIMEDOUT error and causing the stream enablement to fail?

Should the stop state check occur before enabling the remote subdev streams?

> +
>  	csi2->enabled_streams |=3D streams_mask;
> =20
>  	return 0;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-csi2_imx95=
-v4-0-84ea4bb78a88@oss.nxp.com?part=3D4

