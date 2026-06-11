Return-Path: <devicetree+bounces-310121-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xKJxAXxIKmrelgMAu9opvQ
	(envelope-from <devicetree+bounces-310121-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:32:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F0766E9AF
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:32:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KEQ2uPXc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310121-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310121-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 287753407762
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C57FE555;
	Thu, 11 Jun 2026 05:13:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039032F0C74
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:13:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781154824; cv=none; b=Hz1khSzeLAXH9+AHFVlBdo8PVcro0jNTjx34qUSBMtYwFKbjHovSFnNirOhcN80ZLtrZtgCYjsqGI8X+1MLIBJo4duiQOZA1K0Y8nsc3Tmwzks7CYqLSM5ONjaEtqMjkICGWsgp4V7nqlw9ljNBzc/T20f1BfBLTHgpi5l4a8K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781154824; c=relaxed/simple;
	bh=4fVtjeT5pjZAK/hhRmjd23JUgNvBkOXHiK1/WlhrUpY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qwvbeVvNiWN00vNJ99Ao0sXR3RCoLQGkWjEbA2fFRjT+HE/Yb8eUR+alTpvnrEpVqDS5YyB+WKa08beGdrF+DudMYRiJqhlDPgf94afUnS8gxlMWJVvevqM38GN6EuMmalWLpKCElCB2mFma6Jj12y9iIP3mmVPbQ+Nxw7XJzFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEQ2uPXc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20E811F00893;
	Thu, 11 Jun 2026 05:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781154816;
	bh=NF2PjNEMNRXZkRWNLBDtaD98mqJ7ARhSrcdCOGkFYl8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KEQ2uPXccQHaMTQHqP3JetxfkfOuSlIOj+Eo/WVhgUciXT7srWde0crwtUgUndOhR
	 I9b0nZ20tJTyVlsUbZS+0TfX19JsdYlXdqs9IV/DsB/e3zw7gSlB0LLWwK8qc2JR2z
	 Vfg3Xt9X3SUvfSBkUysPKQWCTvKIUK6JHSDDEdY9VYUNNMlrsk9G2GGHP0NlXsRO4l
	 MF/deS8QhJmzIEmaJIeviY2WOhBVezYorBvBET6MV7GOxZTBzjHVQdKQAvY3qXlWbs
	 GNawu+sycWspci7wykJ0JTSU13sZDHo+dhMc9ufnx16pQPqqMb8jDIvFSFi6Z+ZFWb
	 Fjd184bRzW0DQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 21/37] arm64: dts: qcom: qcs404: Move PCIe phy and
 GPIOs to root port node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260611-wake-v2-21-2744251b1181@oss.qualcomm.com>
References: <20260611-wake-v2-21-2744251b1181@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 05:13:35 +0000
Message-Id: <20260611051336.20E811F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310121-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krishna.chundru@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 45F0766E9AF

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Medium] The commit message inaccurately claims to move `phy-names` to `p=
cie0_port0`, but the property is actually removed entirely.

Pre-existing issues:
- [High] Moving to the modern DT layout exposes a `phy_init` leak on `-EPRO=
BE_DEFER` in the PCIe driver.
--

commit 496473598a57288f328fa2236e944d3bb666608e
Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

arm64: dts: qcom: qcs404: Move PCIe phy and GPIOs to root port node

The PCIe phy reference and the perst GPIO property are per root port
and belong in the root port node (pcie@0), not in the RC controller
node.

> Move phys and phy-names from the controller to pcie0_port0,
> adding a label to this node to allow board-level overrides.

[Severity: Medium]
This isn't a bug, but the commit message states that phy-names is moved to
pcie0_port0, while the patch actually drops the property entirely. Could
the commit message be updated to accurately reflect that phy-names is being
removed?

[ ... ]

> diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi b/arch/arm64/boot/d=
ts/qcom/qcs404-evb.dtsi
> index a22b4501ce1ef..a035546a1b97d 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
> @@ -101,12 +101,14 @@ pms405_s3: s3 {
>  &pcie {
>  	status =3D "okay";
> =20
> -	perst-gpios =3D <&tlmm 43 GPIO_ACTIVE_LOW>;
> -
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&perst_state>;
>  };
> =20
> +&pcie0_port0 {
> +	reset-gpios =3D <&tlmm 43 GPIO_ACTIVE_LOW>;

[Severity: High]
This isn't a bug introduced by this patch, but does moving to this modern
DT layout expose a resource leak in the PCIe driver?

In drivers/pci/controller/dwc/pcie-qcom.c:qcom_pcie_parse_port():

	ret =3D phy_init(phy);
	if (ret)
		return ret;

	INIT_LIST_HEAD(&port->perst);

	ret =3D qcom_pcie_parse_perst(pcie, port, node);
	if (ret)
		return ret;

If qcom_pcie_parse_perst() returns an error like -EPROBE_DEFER when
requesting reset-gpios, does this leak the phy initialization since
phy_exit() isn't called on this failure path?

> +};

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-wake-v2-0-=
2744251b1181@oss.qualcomm.com?part=3D21

