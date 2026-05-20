Return-Path: <devicetree+bounces-300806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJS1IFjqDWrM4gUAu9opvQ
	(envelope-from <devicetree+bounces-300806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 19:07:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A10592F19
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 19:07:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D043031AD4AB
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 16:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA7423D3D1C;
	Wed, 20 May 2026 16:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4HJxTml"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 872A03A383C
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 16:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779296231; cv=none; b=at3K7jsa14Gvyf/ZBzuh7n3POsNksVizmHyPi80E7qhCu8nmDTPF3U/XOarMUROGhR1BoHL94jqW3wglnptDEWAv0NFGp2Udrox7MtlP7bpgmOTrqY16qRKqnTB2eMLbUZ2iDRE8pCZf+O0qi1yqfxnRA8LsnnS0RIO0EzddZys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779296231; c=relaxed/simple;
	bh=kdF5hCnb71kDMhz+KJEaBi/2rXrJ9fPmgluQOjjGFd0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=svcQ/roB+cZLioqzThIGyqNm8/QNG+Q3I4xAiOzA9fB01dPjMfayW+HhknE5gYu7wYuStm4DXbSC9tyHLyebpsy7ZCbZyVY5ZOjluMlvo0bh5g4lZWCNx5ekRoDy41xbCnVg1Geeaz2f47wMmFnTtpHcJnOJu6ol4ewCEoes+NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4HJxTml; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E485C1F00893;
	Wed, 20 May 2026 16:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779296230;
	bh=YPJq+Vxzvc6RZ9d0qZrNT1oPAgofYh4O08FvwjKNi4Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l4HJxTmlMt8rZC5ZSPyFMWBzCBJ2c+tqIK9Jg0Fg3r+mhbngyAJyfRLYuSaX1J9nD
	 5r2cMiXIacSZexa03x/v49MTWbwz2vlrwOG27tpL1V4qjgQSc6Gl497QitN5D+7Pt8
	 ZtH+RFkXv9efeXjBUwXpusqaQS57klT1zlXd2yqkPxyttBE9F0C8x7T3knW3RL9Xyf
	 6DRpKeqCsg4LbERPznJccVcBvDtNvMLgIb397irGSuAsmM3h3dxDv9l5hAnewj62Fu
	 ygz5BWX3snBzU7wyxxvj+pTGi12dWzusTMjt/WoTqkNcOhcvrFdSw+IiOs1kNVwnyR
	 xiicvq4GO1vYA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 02/11] arm64: dts: qcom: sc8280xp-arcata: Enable
 backlight
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?SsOpcsO0bWUgZGUgQnJldGFnbmUgdmlhIEI0IFJlbGF5?= <devnull+jerome.debretagne.gmail.com@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260520-surface-sp9-5g-for-next-v1-2-9df52552bf87@gmail.com>
References: <20260520-surface-sp9-5g-for-next-v1-2-9df52552bf87@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 16:57:09 +0000
Message-Id: <20260520165709.E485C1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300806-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,jerome.debretagne.gmail.com,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,0.0.34.96:email,smtp.kernel.org:mid,0.0.0.3:email,0.0.0.2:email]
X-Rspamd-Queue-Id: 24A10592F19
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The eDP backlight regulator (`vreg_edp_bl`) is mapped to the wrong=
 PMIC for its enable GPIO, directly contradicting the hardware findings doc=
umented in the commit message.
--

commit 5bb21a2e354ddc1fbe2cb4a72c610f631fc3961f
Author: J=C3=A9r=C3=B4me de Bretagne <jerome.debretagne@gmail.com>

arm64: dts: qcom: sc8280xp-arcata: Enable backlight

This commit adds backlight nodes and enables the backlight so that it can be
controlled with the buttons on Surface Pro Type Cover keyboards. The nodes
are similar to the ThinkPad X13s but use a different enable GPIO for the
vreg_edp_bl node.

> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts b/arc=
h/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts
> index f2b4470d4407f..14287092fb07e 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts
[ ... ]
> @@ -127,6 +137,22 @@ pmic_glink_con1_sbu: endpoint {
>  		};
>  	};
> =20
> +	vreg_edp_bl: regulator-edp-bl {
> +		compatible =3D "regulator-fixed";
> +
> +		regulator-name =3D "VREG_EDP_BL";
> +		regulator-min-microvolt =3D <3600000>;
> +		regulator-max-microvolt =3D <3600000>;
> +
> +		gpio =3D <&pmc8280c_gpios 6 GPIO_ACTIVE_HIGH>;

[Severity: High]
Does this map to the correct PMIC for the enable GPIO?

The commit message explicitly states that the hardware match for the backli=
ght
enable GPIO was found at platform/c440000.spmi:pmic@3:gpio@8800 (which is
gpio6).

According to sc8280xp-pmics.dtsi, pmic@3 corresponds to the pmc8280_2 PMIC =
and
its pmc8280_2_gpios controller.

However, the patch configures the regulator and pinctrl to use pmc8280c_gpi=
os,
which is physically mapped to pmic@2.

Will this result in toggling the wrong physical pin on pmic@2 instead of
enabling the eDP backlight?

A review of the remainder of the patch series indicates this misconfigurati=
on
is not fixed in subsequent commits.

> +		enable-active-high;
> +
> +		pinctrl-0 =3D <&edp_bl_reg_en>;
> +		pinctrl-names =3D "default";
> +
> +		regulator-boot-on;
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520-surface-sp=
9-5g-for-next-v1-0-9df52552bf87@gmail.com?part=3D2

