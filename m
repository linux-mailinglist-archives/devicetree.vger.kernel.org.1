Return-Path: <devicetree+bounces-326289-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UsUBJqQ+Vmp/2AAAu9opvQ
	(envelope-from <devicetree+bounces-326289-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:50:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4DC75559B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:50:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CPMUxWvY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326289-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326289-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C1415301EC15
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091DA47A0BE;
	Tue, 14 Jul 2026 13:49:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E180478E47
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 13:49:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784036998; cv=none; b=JXWxB3SRgXRM4lcYl/XDSJyK+aiGdYazJI41oTMGz1VkGFdpfayow62rksGRgwg+Rr5+3kI6RyyvckVmlzY04LUgD1dJm3MuCNwolV7qAbD+o0q300BdDFzcMZ3ty/fcAVJ5+coqIjsX1087R5e5t7RXRQ33G/vM/DLLM3obEUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784036998; c=relaxed/simple;
	bh=sKNMuAxl7SJIF9pSgX3xKgcQuhCjWQph+hioCD4drtk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Qfk4okam8IhHCM5sLxkK3xmqF6s/JPp0DoLhD61l/NTGMz5AUk4QECL+K1gsFD9f2Q+OYwKXVOziECyqJfjWGy0aqrSTe+r4iY0O+dIlTaxz5S7af5RJY/fZiT6CSPGrU/m9XoAYNEtOABAcRCGyOxGZ3ZP10+zYvy4Xs9zOvSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPMUxWvY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFFC51F00A3A;
	Tue, 14 Jul 2026 13:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784036996;
	bh=Uf26LgGkYl8lPUaTGG5xoejmm0tcfddqijZuBZBMVMw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CPMUxWvYI1HEoSmBPBUDh8XTjFVNn5z85xQPFVrAnNvMY18NSfmhboFwPQzDt8Hkh
	 oqcKW25/2wVSNCm8OezFIue5uYoXhtYS7H6qG4TgFTZfzvn7ylNXTCv71qs12yoAul
	 UCzemhiUzPxN/e/Fbod4W7sIt0zHKr2vrnxNlKrnLdcS4LMJYABUeyuk2pngGmgd7D
	 6Sh5rbEkuAeYPLod9AGyUgp/jRc1MQQg1izrY2QbBwPFcD3r5Ykll7zQUMmHw2PD0a
	 XttTHiYLXM/pVviyPunKA5/FG0ApzviSO5Nr4aqccmVMhufic7XaQbfa7We+poHWtC
	 AX9EhiX8RlEqQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: eliza-mtp: Enable CDSP remoteproc
Reply-To: sashiko-reviews@lists.linux.dev
To: "Abel Vesa" <abel.vesa@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260714-dts-qcom-eliza-add-cdsp-v1-2-525e757a23b0@oss.qualcomm.com>
References: <20260714-dts-qcom-eliza-add-cdsp-v1-0-525e757a23b0@oss.qualcomm.com>
 <20260714-dts-qcom-eliza-add-cdsp-v1-2-525e757a23b0@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 13:49:55 +0000
Message-Id: <20260714134955.CFFC51F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326289-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:abel.vesa@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7B4DC75559B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `remoteproc_cdsp` node is missing the `glink-edge` subnode r=
equired for IPC.
--

--- Patch [2]: [PATCH 2/3] arm64: dts: qcom: eliza-mtp: Enable CDSP remotep=
roc ---
commit 5af49a73d9e2d56636adad16779d928f64bfc0a3
Author: Abel Vesa <abel.vesa@oss.qualcomm.com>

arm64: dts: qcom: eliza-mtp: Enable CDSP remoteproc

This commit enables the CDSP remoteproc node on the Eliza MTP. It provides=
=20
the required firmware names and sets the status to okay to bring the DSP ou=
t=20
of reset.

> diff --git a/arch/arm64/boot/dts/qcom/eliza-mtp.dts b/arch/arm64/boot/dts=
/qcom/eliza-mtp.dts
> index a7d6f9d52ef31..7de4ee3935e63 100644
> --- a/arch/arm64/boot/dts/qcom/eliza-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/eliza-mtp.dts
> @@ -484,6 +484,13 @@ &remoteproc_adsp {
>  	status =3D "okay";
>  };
> =20
> +&remoteproc_cdsp {
> +	firmware-name =3D "qcom/eliza/cdsp.mbn",
> +			"qcom/eliza/cdsp_dtb.mbn";
> +
> +	status =3D "okay";
> +};

[Severity: Medium]
Is this missing the glink-edge subnode required for IPC?

Looking at the base device tree definition in=20
arch/arm64/boot/dts/qcom/eliza.dtsi, the remoteproc_cdsp node is defined=20
without a glink-edge child node:

	remoteproc_cdsp: remoteproc@32300000 {
		compatible =3D "qcom,eliza-cdsp-pas";
...
		qcom,smem-states =3D <&smp2p_cdsp_out 0>;
		qcom,smem-state-names =3D "stop";

		status =3D "disabled";
	};

Without this subnode, qcom_glink_smem won't be instantiated for the CDSP.=20
Will this leave the DSP functionally isolated since the host cannot establi=
sh=20
RPMSG IPC channels (like fastrpcglink-apps-dsp) to perform compute offloadi=
ng?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-dts-qcom-e=
liza-add-cdsp-v1-0-525e757a23b0@oss.qualcomm.com?part=3D2

