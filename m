Return-Path: <devicetree+bounces-301162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPNoBIraDmrmCgYAu9opvQ
	(envelope-from <devicetree+bounces-301162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 12:12:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA195A308B
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 12:12:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C99A30FE649
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 09:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C253E379EC6;
	Thu, 21 May 2026 09:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2g5/V4C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93ACD379EC4;
	Thu, 21 May 2026 09:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779356335; cv=none; b=cLTcwdrrw5aurOQO63yjj47tfHeZjm3IRyjeaoHkzXVhfulmXa28mvgHAuoqsonU5WGdG/0X7poQrdWR3mbnBk+UQCri+tXZm3f4bdS+5ALD+h1LAtMjLDxwTrrswR/W15VNcfe4xe98Nr4U44MzfQo0kMUWezXQ+rLBLo1zipo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779356335; c=relaxed/simple;
	bh=DA/RYf51b5SOyiR1JvUNI3PuaER23jjOOaCSiMXTM0c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XWVBwzoHt4UNptA5R8E1qxwqbudKHGOeuCgQtyI7lmUCf3qAlDSSiXEwJEhVChqnNQ4AZU0Cfh9F3T7ab74j7TWHZ7fpR4Bh+ieEH5Kb9Wfg925TepAbXxYldMeDYRcPzUPwEO66WFL8uZJQc2l01kLKnfbKhtO0AKs1Rxtjcrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2g5/V4C; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14DAB1F000E9;
	Thu, 21 May 2026 09:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779356334;
	bh=5HjCL1M8gW3zyK/axzRJGuv9zTsmKd9E2E69atjBow0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k2g5/V4CbcTqptBb8rMbqL2fhfbhGwD4wZeupdUydOfCwW07na+mYarvnl3S/uujq
	 yc+1LJZouGkxyozoqEW8ka3ufKJKzw432QuJa6gjNuuTDUHKOFDrcGTflxHPvevoG/
	 CXKZS2o3MQDeCtjbRU2MfVBCRMbCnD/DKEJQNpp2VtZ714mZuEicRoAr41eUQEJxz8
	 3n6MR6rFt08IEc9p5/gV2Uhmvm2grJk2wvCDjcXkTMUUIRyK0f7y7+fUtiVOHfBnDh
	 bo0W4QI6H1NkB7mzsSgqQh/5GPt20nEI8mCaQTMa/ryqSsF1bdmNi3LbsSjrXF01az
	 r7BJd8G2dJHPA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: freescale: add Aquila iMX95 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Franz Schnyder" <fra.schnyder@gmail.com>
Cc: robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260521-add-aquila-imx95-v3-2-621843807def@toradex.com>
References: <20260521-add-aquila-imx95-v3-2-621843807def@toradex.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 09:38:53 +0000
Message-Id: <20260521093854.14DAB1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301162-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,toradex.com:url,toradex.com:email];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 5DA195A308B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The DSI-to-DisplayPort bridge (`ti,sn65dsi86`) is enabled but la=
cks an input connection to a DSI host, causing it to fail probing.
--

commit 9b9686b575648bf3682e209a454430bc5a39481e
Author: Jo=C3=A3o Paulo Gon=C3=A7alves <joao.goncalves@toradex.com>

arm64: dts: freescale: add Aquila iMX95 support

Add support for the Toradex Aquila iMX95 and its development carrier
board, which includes various peripherals such as memory, ethernet,
display interfaces, and optional addons.

Link: https://www.toradex.com/computer-on-modules/aquila-arm-family/nxp-imx=
95
Link: https://www.toradex.com/products/carrier-board/aquila-development-boa=
rd-kit

> diff --git a/arch/arm64/boot/dts/freescale/imx95-aquila-dev.dts b/arch/ar=
m64/boot/dts/freescale/imx95-aquila-dev.dts
> new file mode 100644
> index 0000000000000..bb4a3631af9ba
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/imx95-aquila-dev.dts

[ ... ]

> +/* Aquila I2S_1 */
> +&sai2 {
> +	status =3D "okay";
> +};
> +
> +&som_dsi2dp_bridge {
> +	status =3D "okay";
> +};

[Severity: Medium]
Will this bridge fail to probe since the DSI input connection is missing?

Looking at the ti-sn65dsi86 driver in ti_sn_bridge_parse_dsi_host(), it uses
of_graph_get_remote_node(np, 0, 0) and unconditionally returns -ENODEV if t=
he
remote node is missing.

Since the upstream i.MX95 SoC DSI controller doesn't appear to be implement=
ed
and linked to the dsi2dp_in endpoint yet, should this node remain disabled
until the controller is available?

> +
> +/* Aquila PWM_1 */
> +&tpm3 {
> +	status =3D "okay";
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-add-aquila=
-imx95-v3-0-621843807def@toradex.com?part=3D2

