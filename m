Return-Path: <devicetree+bounces-300230-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHpuA+WSDGp1jAUAu9opvQ
	(envelope-from <devicetree+bounces-300230-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 18:42:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D585828C4
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 18:42:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE6F4301EB53
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 16:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777B34DBD6F;
	Tue, 19 May 2026 16:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a42qx8xt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D19024D90DF
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 16:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779208642; cv=none; b=afUKjlY1DAn5wflXuYuuiIYYrD6pPRqGKktVVKcLUiShdgNbvUEZ1Zkfl9McimRMXcCiZ/7tLejP89DgzhPpePemHeCXtzPHKLCeaee6vcurepOaiCzMf0Fn8DaiqV6xjvmZgHdFBX3DS9RtnU9llrUAL+6/Rc8+YTbP0DB0iBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779208642; c=relaxed/simple;
	bh=b4alJ7oYXavpOGq00ZcC7Hb3nTGtBUS/MEHzC+49o2M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kfGkRHR/8VPKC0djgJvDVDjWD9W+RWDbVUDATgtcufTW1eiso/ZXnPO3upC8SQeSUbtcnscbermMDGOLHIL7w04ylFPynXtgxE7lTNyVEecKGstxCSbX39KYAolQJQyORRBneu6mGeGTNaps4L9avi3CeVwaJiPR1YmljPBhffI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a42qx8xt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 306FDC2BCB3;
	Tue, 19 May 2026 16:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779208642;
	bh=b4alJ7oYXavpOGq00ZcC7Hb3nTGtBUS/MEHzC+49o2M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=a42qx8xtYgVSGP4msTCzuTCKZtLzLEoD0FiS2KH2N374ncEKJyfxgeMl+oNzpXHAP
	 F+UHJWaXXOd8hQup9BrDMBSNko/Ex9v+Jj+RSq/1WQWHp8sc59X4K7LOiRjlvHjotv
	 ZiAB/WsL2pyUIzb8h2nSFnerZjA9LLxjoLFwAdtJwC/HYxcJUkIm+qBfr0fvIJEQvO
	 kdBGx63LRouGHQeXSqz2uk7m9hNLSH0ZDbQAstfwCfqmGPBmkj7WxY/9FmOIR2vAXK
	 kp+6oaWWH/+Z/Siyylq8rRA3vci9Y7XV+7kHKQ3Lkp6hdncdOLX/pd2Tfej0ydmgYi
	 xjzjAIM3xoifQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: Add Eliza CQS SoM platform
Reply-To: sashiko-reviews@lists.linux.dev
To: "Abel Vesa" <abel.vesa@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519-eliza-dts-qcs-evk-v2-2-ad7303659d24@oss.qualcomm.com>
References: <20260519-eliza-dts-qcs-evk-v2-2-ad7303659d24@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 16:37:20 +0000
Message-Id: <20260519163722.306FDC2BCB3@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300230-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 51D585828C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Undefined labels referenced in the device tree (`&sdhc_1`, `&remote=
proc_adsp`, `&sdc1_default`, and `&sdc1_sleep`) will cause a Device Tree Co=
mpiler (DTC) build failure.
--

commit 7ca90443e3e2a64f1e18e601c91556491fa0f444
Author: Abel Vesa <abel.vesa@oss.qualcomm.com>

arm64: dts: qcom: Add Eliza CQS SoM platform

This commit adds the Eliza CQS SoM DTSI so it can be included by the EVK
board DTS. It describes the regulators and board clocks, enables eMMC
support through SDHC1, specifies the ADSP firmware, and enables the ADSP
remoteproc.

> diff --git a/arch/arm64/boot/dts/qcom/eliza-cqs-som.dtsi b/arch/arm64/boo=
t/dts/qcom/eliza-cqs-som.dtsi
> new file mode 100644
> index 0000000000000..5e0f9c1698f88
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/eliza-cqs-som.dtsi

[ ... ]

> +&remoteproc_adsp {

[Severity: Low]
Are the labels &remoteproc_adsp, &sdhc_1, &sdc1_default, and &sdc1_sleep
defined in the base eliza.dtsi?

It appears that these labels are not defined anywhere in the SoC tree,
nor are they provided by any included .dtsi files. This will cause a
Device Tree Compiler (DTC) build failure due to undefined labels.

> +	firmware-name =3D "qcom/eliza/adsp.mbn",
> +			"qcom/eliza/adsp_dtb.mbn";
> +
> +	status =3D "okay";
> +};
> +
> +&sdhc_1 {
> +	vmmc-supply =3D <&vreg_l12b>;
> +	vqmmc-supply =3D <&vreg_l1d>;
> +	pinctrl-0 =3D <&sdc1_default>;
> +	pinctrl-1 =3D <&sdc1_sleep>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-eliza-dts-=
qcs-evk-v2-0-ad7303659d24@oss.qualcomm.com?part=3D2

