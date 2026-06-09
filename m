Return-Path: <devicetree+bounces-309146-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SnkUGkQyKGq+/wIAu9opvQ
	(envelope-from <devicetree+bounces-309146-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:33:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B2704661CAC
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 17:33:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SzBfpZcE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309146-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309146-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A19273012E96
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 15:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C0B62DCC08;
	Tue,  9 Jun 2026 15:21:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFFD34CDD
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 15:21:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781018501; cv=none; b=NnhWtCWFrx1c2PY8r1lFIjkSbx+L8JJVfVZn57Tk0ix7/7qk0sK24v9kUsQaNqx/P7CrmbProYwil4PSL80ocjkrSprQuMIOIDPBjkdxM9qVeQFuZLcS7g6h/v1mABunqt/uIrSH+QBeLIxvmxlWOHJY3lJk9nl63XK6jbq5Kmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781018501; c=relaxed/simple;
	bh=3iTW6RDUrOx5UsI2yaygdHX9ldRdkcjZ105gzN0l+c8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WykBhFXbc++PPO2Tza9Kav9bDKEye4IEUSPN4r7l+S4IO+boYalyUrYqz7LMGm4ZBUEZxpSy1Ln/v1IyN914WaUSfKJX1nknIhdndkP7LeLI5Ks4gVG3bYG7X22Vv0sVOXnlFmNTC1ziY6kduQNQ+6v8zCLGpgf3PCRx0VGkeE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzBfpZcE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C94F61F00893;
	Tue,  9 Jun 2026 15:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781018500;
	bh=KYbumkUyUptxt9rhxJmONaZG/mJdPc5ypfq1l0/dDJ8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SzBfpZcEFZevcPcjBzgqNkWq3MJVQ1d3vmrqLlOwnXytT4idEcxfTevAAqy4y7o7n
	 AKqL79CSOpd5pRrbtG2fuSUJqZ86DKB4QpueBiJoT5u7c+dGE0WMDbhW0/11hDBO4w
	 gBVEw8avNByonEXfBPmfsXdXgBXjV43ogaIL5BSIpkFpxFxCtYyL+lk0Q24i99qe7U
	 KLVZqtNFRBXBfpLs8PSCZT5eg32w0FDLl4BMPdgw3Dc3u+Ih0it32cjxTsdqtPG1dN
	 Whjg5vxTitvNZY/jAGL8OE6TEf1/U3r1Ga8pCgK2yNYQQSX61HbF57BtyQ8oVArxkk
	 U2tIO/cqKEdNQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 6/7] clk: qcom: camcc: Add support for camera clock
 controller for Eliza
Reply-To: sashiko-reviews@lists.linux.dev
To: "Taniya Das" <taniya.das@oss.qualcomm.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609-b4-eliza_mm_cc_v6-v6-6-17df09e5940c@oss.qualcomm.com>
References: <20260609-b4-eliza_mm_cc_v6-v6-6-17df09e5940c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 15:21:39 +0000
Message-Id: <20260609152139.C94F61F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309146-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:taniya.das@oss.qualcomm.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B2704661CAC

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Frequency calculation mismatch due to missing post-divider model f=
or OUT_EVEN in `cam_bist_mclk_cc_mclk0_clk_src`.
- [High] Missing `.use_rpm =3D true` in `cam_cc_eliza_desc` prevents power =
domain initialization.
--

commit fd46f39c4eb76b4e41aa55ab7c656fc72d38adcc
Author: Taniya Das <taniya.das@oss.qualcomm.com>

clk: qcom: camcc: Add support for camera clock controller for Eliza

This commit adds support for the Camera Clock Controller (CAMCC) on the
Eliza platform, including both the primary camera clock controller and the
Camera BIST clock controller.

> diff --git a/drivers/clk/qcom/cambistmclkcc-eliza.c b/drivers/clk/qcom/ca=
mbistmclkcc-eliza.c
> --- /dev/null
> +++ b/drivers/clk/qcom/cambistmclkcc-eliza.c
[ ... ]
> +static const struct clk_parent_data cam_bist_mclk_cc_parent_data_0[] =3D=
 {
> +	{ .index =3D DT_BI_TCXO },
> +	{ .hw =3D &cam_bist_mclk_cc_pll0.clkr.hw },
> +	{ .hw =3D &cam_bist_mclk_cc_pll0.clkr.hw },
> +};
[ ... ]
> +static const struct freq_tbl ftbl_cam_bist_mclk_cc_mclk0_clk_src[] =3D {
> +	F(19200000, P_BI_TCXO, 1, 0, 0),
> +	F(24000000, P_CAM_BIST_MCLK_CC_PLL0_OUT_EVEN, 10, 1, 4),

[Severity: High]
Will this result in a hardware clock rate of 12 MHz instead of 24 MHz?

In hardware, OUT_EVEN runs at half the main PLL rate (480 MHz instead of
960 MHz). Applying the pre-divider of 10 and m/n of 1/4 to 480 MHz yields
a physical clock of 12 MHz.

However, looking at cam_bist_mclk_cc_parent_data_0 above, OUT_EVEN is mapped
directly to the main PLL hardware without an intervening
clk_alpha_pll_postdiv instance. This causes the clock framework to calculate
the rate using the main 960 MHz PLL rate, falsely reporting 24 MHz in
software while actually running at 12 MHz.

Could this use P_CAM_BIST_MCLK_CC_PLL0_OUT_MAIN instead, or should OUT_EVEN
be properly modeled with a post-divider struct?

> diff --git a/drivers/clk/qcom/camcc-eliza.c b/drivers/clk/qcom/camcc-eliz=
a.c
> --- /dev/null
> +++ b/drivers/clk/qcom/camcc-eliza.c
[ ... ]
> +static const struct qcom_cc_desc cam_cc_eliza_desc =3D {
> +	.config =3D &cam_cc_eliza_regmap_config,
> +	.clks =3D cam_cc_eliza_clocks,
> +	.num_clks =3D ARRAY_SIZE(cam_cc_eliza_clocks),
> +	.resets =3D cam_cc_eliza_resets,
> +	.num_resets =3D ARRAY_SIZE(cam_cc_eliza_resets),
> +	.gdscs =3D cam_cc_eliza_gdscs,
> +	.num_gdscs =3D ARRAY_SIZE(cam_cc_eliza_gdscs),
> +	.driver_data =3D &cam_cc_eliza_driver_data,
> +};

[Severity: High]
Can this missing .use_rpm =3D true initialization cause a boot panic?

In qcom_cc_really_probe(), the framework checks the .use_rpm flag to enable
runtime PM before accessing hardware registers. Without this flag, the
CAMCC power domain might not be brought online during probe.

Consequently, when the probe calls qcom_cc_clk_pll_configure() to
initialize the PLLs, writing to unpowered registers can cause a synchronous
external abort.

Should .use_rpm =3D true be added here to match the companion
cam_bist_mclk_cc_eliza_desc?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-b4-eliza_m=
m_cc_v6-v6-0-17df09e5940c@oss.qualcomm.com?part=3D6

