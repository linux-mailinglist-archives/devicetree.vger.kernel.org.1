Return-Path: <devicetree+bounces-320965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v4epHGSSS2rxVgEAu9opvQ
	(envelope-from <devicetree+bounces-320965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 13:32:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B858370FE0A
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 13:32:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=T4RXBxbA;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320965-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320965-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14C57318D74A
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 09:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 505563EA96A;
	Mon,  6 Jul 2026 09:15:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75EE4D2EC5
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 09:15:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783329357; cv=none; b=eNqlmgMHfuC/tnlwQcFv1/32uB7IU2oqqsc5//f/vso3b8bGc5MPGady2Vlsyer/EBENJ8o0q9ixshv8zkr8yzpQKKQ1tmCgPH11za+9VTzzekyAI4X+9U2kSVQ5a+JXgysIhtsW7/2lSey6HWNcBGmo6qOjj+dqAab5IN/SIqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783329357; c=relaxed/simple;
	bh=KA/dWjsZJSFFeUH36aOWzFL2URO2eE/M+eUJUllT/AI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=p5ccEJSWYcBjtfVvapphQClyI6WBZg+nNcrXg+a+f9EtVNX9CFyKAzaP1vRQj+o1fXYK4ZTrRqcxnzobVLSxE6ZjVYrF5F8VYpbyKJ0KSG0wBNmP31e0omk+Ypq4jIUDbv19q6J/HLuJQFschSKIjqBju7QlEplYoOUyr/TEn1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4RXBxbA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AC7D1F00A3A;
	Mon,  6 Jul 2026 09:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783329350;
	bh=7VHJvpvQWRd0vEcG+/c3Y4EK61g9yCpEJ+S8vR8kKjk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T4RXBxbAscuzHgdri2is0uYSQKHO0PD7kfMMWtCDgwtfav0NKe7fF4kKL2VBD9gBH
	 yPHUX3Vq3Ihtxg77+J5Wpho7DO34T2u9r5NfRt03Jp6xc9ORA4RkDniHzkQlTodJcX
	 dtSmO4MpGcVqiNp9BaLKqM6bp8fjkl/42DH1u1qCJfZvWs2DVutE32LucH9oQcM5Sl
	 0zOiw/KdKeVVpkv3IvVcHHXjH+XfcDaMh9xZqctYRRD1OHn0fnfs65aAsEwpCguj/U
	 ZkJrrkqcldpAN/W3BFrli4EjKD/zE7N08N058wjR8GM7NWCvrjGgFjd6qfX7j8a5Oy
	 csEAXGFjDoYEg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] clk: qcom: videocc-nord: Add video clock controller
 driver for Nord
Reply-To: sashiko-reviews@lists.linux.dev
To: "Taniya Das" <taniya.das@oss.qualcomm.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260706-nord_videocc_camcc-v1-3-bae3be9e9770@oss.qualcomm.com>
References: <20260706-nord_videocc_camcc-v1-0-bae3be9e9770@oss.qualcomm.com>
 <20260706-nord_videocc_camcc-v1-3-bae3be9e9770@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 09:15:49 +0000
Message-Id: <20260706091550.0AC7D1F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320965-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:taniya.das@oss.qualcomm.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B858370FE0A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The VIDEO_CC_SLEEP_CLK_SRC clock is exported in the device tree =
bindings but is missing from the video_cc_nord_clocks array.
--

commit dfa98f09ca71a696d1bfc167c512409f26a2ccc8
Author: Taniya Das <taniya.das@oss.qualcomm.com>

clk: qcom: videocc-nord: Add video clock controller driver for Nord

This commit adds support for the video clock controller for video clients to
be able to request videocc clocks on the Nord platform.

> diff --git a/drivers/clk/qcom/videocc-nord.c b/drivers/clk/qcom/videocc-n=
ord.c
> new file mode 100644
> index 0000000000000..ee73e89a01daa
> --- /dev/null
> +++ b/drivers/clk/qcom/videocc-nord.c

[ ... ]

> +enum {
> +	P_BI_TCXO,
> +	P_SLEEP_CLK,
> +	P_VIDEO_CC_PLL0_OUT_MAIN,
> +};

[Severity: Medium]
Is P_SLEEP_CLK intended to be used in any parent_map? It is defined in this
enum but does not appear to be referenced anywhere else in the driver.

[ ... ]

> +static struct clk_regmap *video_cc_nord_clocks[] =3D {
> +	[VIDEO_CC_AHB_CLK_SRC] =3D &video_cc_ahb_clk_src.clkr,
> +	[VIDEO_CC_MVS0_CLK] =3D &video_cc_mvs0_clk.clkr,

[ ... ]

> +	[VIDEO_CC_MVS1_FREERUN_CLK] =3D &video_cc_mvs1_freerun_clk.clkr,
> +	[VIDEO_CC_MVS1_SHIFT_CLK] =3D &video_cc_mvs1_shift_clk.clkr,
> +	[VIDEO_CC_PLL0] =3D &video_cc_pll0.clkr,
> +	[VIDEO_CC_XO_CLK_SRC] =3D &video_cc_xo_clk_src.clkr,
> +};

[Severity: Medium]
Should VIDEO_CC_SLEEP_CLK_SRC be included in this array?=20

It appears to be exported in the device tree bindings but is missing from
the clocks array. If a device tree node requests this clock (e.g.=20
clocks =3D <&videocc VIDEO_CC_SLEEP_CLK_SRC>), will it receive a missing cl=
ock
and fail to probe?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-nord_video=
cc_camcc-v1-0-bae3be9e9770@oss.qualcomm.com?part=3D3

