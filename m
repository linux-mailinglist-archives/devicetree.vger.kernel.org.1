Return-Path: <devicetree+bounces-294812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFI2BHSi/mlKuQAAu9opvQ
	(envelope-from <devicetree+bounces-294812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 04:56:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB284FDC69
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 04:56:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B3E55300728C
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 02:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FA4B37BE65;
	Sat,  9 May 2026 02:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQgEgUQv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C6D1AF0BB
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 02:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778295405; cv=none; b=XYA0a2ck8nkl9XJ/qDXaATgoxEe+0QRcUejgGecr9Xj8dMxqN3XujA1/LL4sNS1luVjR1oE3BuoJC9f1iSwt0YWar/2QKhaYJmxe2G30SzJ3Fgh6thGSj2i5H7zkr9jkEXNctg0l+lao3LPSILHhmpM5D0frhaYsq58R2OIsnRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778295405; c=relaxed/simple;
	bh=1aq9jS+fdqV0I1Ce1Wz80U/NPMdcsjRzGoRscb+1O5E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uW4YLELdRWfKvWEI6t3GlvKypr4OiWfovIcpplZaytwXFlBlOUVmeRVIYINjw/MJiiLfcMKqVe1r/+v6YDp6hnFqn8A/Blx9iVnqNnGjjgueWf6ngOb1wKHjJ1I9xifBwua64R2KTFHUkgH/7OVDiso4gpnYefWJ31sGhsgoeWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQgEgUQv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 559EFC2BCB0;
	Sat,  9 May 2026 02:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778295404;
	bh=1aq9jS+fdqV0I1Ce1Wz80U/NPMdcsjRzGoRscb+1O5E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=XQgEgUQvoLYQ3Cg3baxu38gPkDUUFjsDV/UxCjJgiM728qODLOfSGQNzo6MTpSVXF
	 RZ1wIRabP4rN1TCvFeFhO81VUWp7+PR5/9Sgrmys3YJrjo0qSiA3V8Ls62nC649ba4
	 MepVDfHx/MmaEpWjM6bRFwqO4+qENy8BVCxsGOWsK16CN2Tdo/QwPiIuPOPpYBYhb2
	 7AvCHkxXBTni7sgfSvlxImeHoo7KWaUmb6L30wARIqAKK6+wqO6Bv1qY1cWcYrolG9
	 tF5RnFNJRtnic4dIpIctZHw4uhvggdB4YCFdhTIvW3IF1ibUZRtCxMZEzl+ZWMzFgc
	 tae+SeVyfGAtg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 10/14] media: iris: Add power sequence for Glymur
Reply-To: sashiko@lists.linux.dev
To: "Vishnu Reddy" <busanna.reddy@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260509-glymur-v5-10-7fbb340c5dbd@oss.qualcomm.com>
References: <20260509-glymur-v5-10-7fbb340c5dbd@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 May 2026 02:56:43 +0000
Message-Id: <20260509025644.559EFC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 0EB284FDC69
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294812-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Improper hardware teardown sequence violates LIFO ordering.
- [High] Hardware state leak on NOC LPI polling timeout error path.
- [High] Missing back-off and retry loop for VCODEC1 NOC LPI handshake.
- [High] Missing `.program_bootup_registers` callback in `iris_vpu36_ops`.
--

commit d719c9ef4e0bf644111aeab34b3241be37fcf9c4
Author: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>

media: iris: Add power sequence for Glymur

Glymur has a secondary video codec core (vcodec1), equivalent to the
primary core (vcodec0), but with independent power domains, clocks,
and reset lines. Reuse the existing code wherever possible and add
power sequence for vcodec1.

> diff --git a/drivers/media/platform/qcom/iris/iris_vpu3x.c b/drivers/medi=
a/platform/qcom/iris/iris_vpu3x.c
> index 13fbb21c21824..ff90c375e805c 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu3x.c
> +++ b/drivers/media/platform/qcom/iris/iris_vpu3x.c

[ ... ]

> @@ -254,6 +264,124 @@ static void iris_vpu35_power_off_hw(struct iris_cor=
e *core)

[ ... ]

> +static void iris_vpu36_power_off_hw1(struct iris_core *core)
> +{
> +	u32 value, i;
> +	int ret;
> +
> +	if (iris_vpu36_hw1_power_collapsed(core))
> +		goto disable_power;
> +
> +	value =3D readl(core->reg_base + WRAPPER_CORE_CLOCK_CONFIG);
> +	if (value)
> +		writel(CORE_CLK_RUN, core->reg_base + WRAPPER_CORE_CLOCK_CONFIG);
> +
> +	for (i =3D 0; i < core->iris_platform_data->num_vpp_pipe; i++) {
> +		ret =3D readl_poll_timeout(core->reg_base + VCODEC1_SS_IDLE_STATUSN + =
4 * i,
> +					 value, value & DMA_NOC_IDLE, 2000, 20000);
> +		if (ret)
> +			goto disable_power;
> +	}
> +
> +	writel(REQ_VCODEC1_POWER_DOWN_PREP, core->reg_base + AON_WRAPPER_MVP_NO=
C_LPI_CONTROL);
> +	ret =3D readl_poll_timeout(core->reg_base + AON_WRAPPER_MVP_NOC_LPI_STA=
TUS,
> +				 value, value & NOC_LPI_VCODEC1_STATUS_DONE, 2000, 20000);
> +	if (ret)
> +		goto disable_power;

Should this implement a back-off and retry loop? A single poll without clea=
ring
the request bit and retrying might timeout when the NOC is busy, causing an
unclean hardware shutdown.

Also, if the readl_poll_timeout() fails and takes the goto, the code skips
clearing the request bit in AON_WRAPPER_MVP_NOC_LPI_CONTROL. Because this
register resides in the Always-On wrapper, will the power-down request bit
remain asserted across power cycles and prevent the hardware from properly
resuming on the next boot?

> +
> +	writel(0, core->reg_base + AON_WRAPPER_MVP_NOC_LPI_CONTROL);
> +
> +	writel(VCODEC1_BRIDGE_SW_RESET | VCODEC1_BRIDGE_HW_RESET_DISABLE, core-=
>reg_base +
> +	       CPU_CS_AHB_BRIDGE_SYNC_RESET);
> +	writel(VCODEC1_BRIDGE_HW_RESET_DISABLE, core->reg_base + CPU_CS_AHB_BRI=
DGE_SYNC_RESET);
> +	writel(0x0, core->reg_base + CPU_CS_AHB_BRIDGE_SYNC_RESET);
> +
> +disable_power:
> +	iris_genpd_set_hwmode(core, IRIS_VCODEC1_POWER_DOMAIN, false);
> +	iris_disable_unprepare_clock(core, IRIS_VCODEC1_CLK);
> +	iris_disable_unprepare_clock(core, IRIS_VCODEC1_FREERUN_CLK);
> +	iris_disable_unprepare_clock(core, IRIS_AXI_VCODEC1_CLK);
> +	iris_disable_power_domains(core, IRIS_VCODEC1_POWER_DOMAIN);
> +}
> +
> +static void iris_vpu36_power_off_hw(struct iris_core *core)
> +{
> +	iris_vpu35_power_off_hw(core);
> +	iris_vpu36_power_off_hw1(core);
> +}

Does this hardware teardown sequence violate LIFO ordering? The power-on
sequence initializes the primary codec before the secondary codec, so teari=
ng
down the primary codec first in iris_vpu35_power_off_hw() triggers a full
video NOC reset and disables the shared primary clock domains.

Consequently, when vcodec1's teardown sequence executes, will its attempts =
to
read registers trigger bus hangs or timeouts?

[ ... ]

> @@ -281,3 +409,12 @@ const struct vpu_ops iris_vpu35_ops =3D {
>  	.calc_freq =3D iris_vpu3x_vpu4x_calculate_frequency,
>  	.set_hwmode =3D iris_vpu_set_hwmode,
>  };
> +
> +const struct vpu_ops iris_vpu36_ops =3D {
> +	.power_off_hw =3D iris_vpu36_power_off_hw,
> +	.power_on_hw =3D iris_vpu36_power_on_hw,
> +	.power_off_controller =3D iris_vpu35_vpu4x_power_off_controller,
> +	.power_on_controller =3D iris_vpu35_vpu4x_power_on_controller,
> +	.calc_freq =3D iris_vpu3x_vpu4x_calculate_frequency,
> +	.set_hwmode =3D iris_vpu36_set_hwmode,
> +};

Is the .program_bootup_registers callback intentionally omitted here?
It is present in the closely related iris_vpu35_ops struct. Without it,
the core framework function might skip writing to
WRAPPER_IRIS_VCODEC_VPU_WRAPPER_SPARE_0, which could leave the hardware
improperly configured.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509-glymur-v5-=
0-7fbb340c5dbd@oss.qualcomm.com?part=3D10

