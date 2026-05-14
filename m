Return-Path: <devicetree+bounces-297275-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MZyJJ9FBBWptTwIAu9opvQ
	(envelope-from <devicetree+bounces-297275-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 05:30:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EA43C53D533
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 05:30:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 588613036EE6
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 03:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD97636F914;
	Thu, 14 May 2026 03:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZ1WZ4cY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5262EC54C
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 03:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778729422; cv=none; b=Fms5F+AtaNZv981J0uzMwpDWxs74UlWCAPNAY+kfbfJc5lwCkwm2w3VGJsvS4UXCMgx2NhNwiRsyuZK1Hclu8E4M/leUlf4aVc13Ru1r1t2FaHDiJvsvPJHH7q/Z6itNWQRnXEB3H4C2nRCjl+L/hxoq9qV2VM5/2u18HmB9Cf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778729422; c=relaxed/simple;
	bh=OxGnoagxW7dEhoqtpV8pwXIvZ7WOOPNW9+A+r7Z2aRY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DgLYf26ogJdnimMrK8NeEjyJrKxR+8Wu+zbRoWzqaAqzK7wspDRTPxyUA/2joF0c0WRTmt/GuwDHbHyiq/B+1yVcmkfcI6NFZjxaUKXOBVdPaqpgJ0GqDLi0U65C7MGTW35G9tOk7qRDTGu+58nOlq05TQgr5C+hVCeg9jPsoP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZ1WZ4cY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8B53C19425;
	Thu, 14 May 2026 03:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778729422;
	bh=OxGnoagxW7dEhoqtpV8pwXIvZ7WOOPNW9+A+r7Z2aRY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=tZ1WZ4cYQ/Cx1eJJjsqae/AkMEnS/ypq+t86DTzE2gjmE9LmrmG5e0UQZMy1LjLpz
	 cdqYI5Y3n/4vIZgFh50SwgKxqrvf3SiDLoU26pycE02aji8YKoHAR44S3r9Xju9KF4
	 12m0BfeP+9YIxosggqFrR06TEWX+YcXsHH/ncM8D+gw9INggYP0EMo99kDzVBwdgLW
	 oqQvmZNV5VvTa1lX9IfMS37xkqrISyXS4oOzMkUI3oYLbfyqntwyVSD6MuI/j5ReRi
	 +h7AXVmMHfiXzfrd/oiH5iLE2e6JhHMK7lgQfk70URj4EWaol+rSbgK/8IGanm8CU8
	 msMaxeYPcRMjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: eliza: Describe the ADSP and
 USB related nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Abel Vesa" <abel.vesa@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260513-eliza-adsp-usb-v4-1-839936e89aca@oss.qualcomm.com>
References: <20260513-eliza-adsp-usb-v4-1-839936e89aca@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 03:30:21 +0000
Message-Id: <20260514033021.D8B53C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: EA43C53D533
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297275-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Redundant `interrupt-parent` property alongside `interrupts-extende=
d` in the `aoss_qmp` node.
--

commit 83bbc0567b448712af4a939b7fec5336a2e27452
Author: Abel Vesa <abel.vesa@oss.qualcomm.com>

arm64: dts: qcom: eliza: Describe the ADSP and USB related nodes

This commit adds the ADSP remoteproc node, USB controller, and their
dependencies such as the IPCC mailbox, QMP combo PHY, and SNPS eUSB2 PHY to
the Eliza SoC device tree.

> diff --git a/arch/arm64/boot/dts/qcom/eliza.dtsi b/arch/arm64/boot/dts/qc=
om/eliza.dtsi
> --- a/arch/arm64/boot/dts/qcom/eliza.dtsi
> +++ b/arch/arm64/boot/dts/qcom/eliza.dtsi

[ ... ]

> +		aoss_qmp: power-management@c300000 {
> +			compatible =3D "qcom,eliza-aoss-qmp", "qcom,aoss-qmp";
> +			reg =3D <0x0 0x0c300000 0x0 0x400>;
> +
> +			interrupt-parent =3D <&ipcc>;
> +			interrupts-extended =3D <&ipcc IPCC_CLIENT_AOP IPCC_MPROC_SIGNAL_GLIN=
K_QMP
> +						     IRQ_TYPE_EDGE_RISING>;

Is the interrupt-parent property necessary here?

Since interrupts-extended already explicitly provides the phandle to the
interrupt parent for the interrupt specifier, the interrupt-parent property
appears to be redundant and may trigger a dtc or schema validation warning.

> +
> +			mboxes =3D <&ipcc IPCC_CLIENT_AOP IPCC_MPROC_SIGNAL_GLINK_QMP>;
> +
> +			#clock-cells =3D <0>;
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-eliza-adsp=
-usb-v4-0-839936e89aca@oss.qualcomm.com?part=3D1

