Return-Path: <devicetree+bounces-316737-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xU4gNKUdQmr20QkAu9opvQ
	(envelope-from <devicetree+bounces-316737-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:24:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E09446D6F61
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:24:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316737-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316737-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 53B213071E59
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAB913BA239;
	Mon, 29 Jun 2026 07:14:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C46D63890EE;
	Mon, 29 Jun 2026 07:14:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782717289; cv=none; b=KSDmnI0nCXkQV2Ig9cC+78vGK9BipUaLFSACFXlF4fCQU07NHLnbpK9OIFAPjOALxNLefotMAt8LW8bunOJR31Y4IWhSFEed5vUMjeqFv+RnOayXouypa49QSlsd48+8km3rjhCBtJqNev+ep8NLDEc4JBQSuABPvziHWpb/dZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782717289; c=relaxed/simple;
	bh=rMp1Ag1FDDDotySQwzDFwG/fZQnrWQ6zz1/7em5Efpw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=K6F65u7u5bTQ5qA5JxBMoq0+EWXm0IWeR2j0TLcgxJ9XsF3lJjYl9IafIwf3z1OkITFS3AZWbzi80+IptWNyTYSp3R19l77aICkJ466zPyLbZZ0U5vaz4HLD8oD1grYe1TD/MUB32DSrIK7O8JkwS2A2P3BHuJg/HsbfuzclhsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E7CE1F000E9;
	Mon, 29 Jun 2026 07:14:48 +0000 (UTC)
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v26 6/7] arm64: dts: imx8ulp: add secure enclave node
Reply-To: sashiko-reviews@lists.linux.dev
To: pankaj.gupta@oss.nxp.com
Cc: imx@lists.linux.dev, Frank.Li@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260629-imx-se-if-v26-6-146446285744@nxp.com>
References: <20260629-imx-se-if-v26-0-146446285744@nxp.com>
 <20260629-imx-se-if-v26-6-146446285744@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 07:14:47 +0000
Message-Id: <20260629071448.2E7CE1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316737-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:email,smtp.kernel.org:mid,sashiko.dev:url];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pankaj.gupta@oss.nxp.com,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E09446D6F61

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Inconsistent indentation within the `hsm0: secure-enclave` device t=
ree node.
--

commit 4cec20d0cfb861451c94ac062d1b2fa257cda38b
Author: Pankaj Gupta <pankaj.gupta@nxp.com>

arm64: dts: imx8ulp: add secure enclave node

This commit adds support for the NXP secure enclave (EdgeLock Enclave
firmware) for the imx8ulp-evk. It adds the sram0 label to the existing
sram node and introduces the new secure-enclave hsm0 node.

> diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot=
/dts/freescale/imx8ulp.dtsi
> index c6d1bb9edf388..933127f870c6f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
[ ... ]
> @@ -185,6 +185,13 @@ scmi_sensor: protocol@15 {
>  				#thermal-sensor-cells =3D <1>;
>  			};
>  		};
> +
> +		hsm0: secure-enclave {
> +			 compatible =3D "fsl,imx8ulp-se-ele-hsm";
> +			 mbox-names =3D "tx", "rx";
> +			 mboxes =3D <&s4muap 0 0>, <&s4muap 1 0>;
> +			 sram =3D <&sram0>;
> +		 };

[Severity: Low]
This isn't a bug, but there appears to be an extra space after the tab
indentation for the properties and the closing brace in the hsm0 node.
Should these lines use standard tab-only indentation to match the rest
of the device tree file?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-imx-se-if-=
v26-0-146446285744@nxp.com?part=3D6

